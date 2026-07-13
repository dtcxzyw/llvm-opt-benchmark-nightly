inline.NumInlined: 579
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ZSTD_decompressSequencesLong:bb.a
  br i1 %i.yh, label %vec.epilog.middle.block105, label %vec.epilog.vector.body99, !llvm.loop !102

vec.epilog.middle.block105:                       ; preds = %vec.epilog.vector.body99
  %cmp.n106 = icmp eq i64 %i.xy, %n.vec98
  br i1 %cmp.n106, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check92, %vec.epilog.iter.check94, %vec.epilog.middle.block105
  %.238.i.i.ph = phi ptr [ %.150.i.i, %iter.check92 ], [ %i.ya, %vec.epilog.iter.check94 ], [ %i.yf, %vec.epilog.middle.block105 ]
  %.23137.i.i.ph = phi ptr [ %.13049.i.i, %iter.check92 ], [ %i.yb, %vec.epilog.iter.check94 ], [ %i.yg, %vec.epilog.middle.block105 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.yk, %.lr.ph.i.i ], [ %.238.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23137.i.i = phi ptr [ %i.yi, %.lr.ph.i.i ], [ %.23137.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.23137.i.i, i64 1
  %i.yj = load i8, ptr %.23137.i.i, align 1, !tbaa !11
  %i.yk = getelementptr inbounds nuw i8, ptr %.238.i.i, i64 1 ; 2 uses
  store i8 %i.yj, ptr %.238.i.i, align 1, !tbaa !11
  %exitcond.not.i.i = icmp eq ptr %i.yk, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i, !llvm.loop !103

ZSTD_safecopyDstBeforeSrc.exit.i:                 ; preds = %.lr.ph.i.i, %.lr.ph41.i.i, %middle.block87, %vec.epilog.middle.block105, %middle.block55, %vec.epilog.middle.block, %.preheader.i.i
  %i.yl = load i64, ptr %i.we, align 8, !tbaa !94
  %i.ym = sub i64 %i.yl, %i.wl                    ; 2 uses
  store i64 %i.ym, ptr %i.we, align 8, !tbaa !94
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ce, %ZSTD_safecopyDstBeforeSrc.exit.i
  %.sroa.0.0.copyload = phi i64 [ %i.ym, %ZSTD_safecopyDstBeforeSrc.exit.i ], [ %i.wf, %bb.ce ] ; 7 uses
  %.1208.i.i = phi ptr [ %i.wq, %ZSTD_safecopyDstBeforeSrc.exit.i ], [ %.0207.i646.i, %bb.ce ] ; 8 uses
  %.1208.i.i32 = ptrtoaddr ptr %.1208.i.i to i64
  store ptr %i.hv, ptr %i.a, align 8, !tbaa !38
  store i32 0, ptr %i.d, align 8, !tbaa !35
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 16 ; 2 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 11 uses
  %i.yn = getelementptr i8, ptr %.1208.i.i, i64 %.sroa.0.0.copyload ; 7 uses
  %i.yo = add i64 %.sroa.6.0.copyload, %.sroa.0.0.copyload ; 9 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.0.0.copyload
  %i.yq = sub i64 0, %.sroa.11.0.copyload
  %i.yr = getelementptr inbounds i8, ptr %i.yn, i64 %i.yq ; 2 uses
  %i.ys = icmp ugt i64 %.sroa.0.0.copyload, 65536
  %i.yt = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 %i.yo
  %i.yu = icmp ugt ptr %i.yt, %i.hs
  %or.cond.i.i = select i1 %i.ys, i1 true, i1 %i.yu, !prof !104
  br i1 %or.cond.i.i, label %bb.cl, label %.critedge.i.i, !prof !104

.critedge.i.i:                                    ; preds = %thread-pre-split
  %.val242.i = load <2 x i64>, ptr %i.hv, align 4, !tbaa !11
  store <2 x i64> %.val242.i, ptr %.1208.i.i, align 1, !tbaa !11
  %i.yv = icmp samesign ugt i64 %.sroa.0.0.copyload, 16
  br i1 %i.yv, label %bb.cm, label %ZSTD_wildcopy.exit178.i, !prof !52

bb.cl:                                            ; preds = %thread-pre-split
  %i.yw = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.1208.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.we, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hw, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequence.exit.i

bb.cm:                                            ; preds = %.critedge.i.i
  %i.yx = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 16
  %.val206.i = load <2 x i64>, ptr %i.hx, align 4, !tbaa !11
  store <2 x i64> %.val206.i, ptr %i.yx, align 1, !tbaa !11
  %i.yy = icmp samesign ult i64 %.sroa.0.0.copyload, 33
  br i1 %i.yy, label %ZSTD_wildcopy.exit178.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.yz = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 32
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.130.i173.i = phi ptr [ %i.yz, %bb.cn ], [ %i.zc, %bb.co ] ; 3 uses
  %.pn.i174.i = phi ptr [ %i.hx, %bb.cn ], [ %i.zb, %bb.co ] ; 2 uses
  %.1.i175.i = getelementptr inbounds nuw i8, ptr %.pn.i174.i, i64 16
  %.1.i175.val.i = load <2 x i64>, ptr %.1.i175.i, align 1, !tbaa !11
  store <2 x i64> %.1.i175.val.i, ptr %.130.i173.i, align 1, !tbaa !11
  %i.za = getelementptr inbounds nuw i8, ptr %.130.i173.i, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %.pn.i174.i, i64 32 ; 2 uses
  %.val205.i = load <2 x i64>, ptr %i.zb, align 1, !tbaa !11
  store <2 x i64> %.val205.i, ptr %i.za, align 1, !tbaa !11
  %i.zc = getelementptr inbounds nuw i8, ptr %.130.i173.i, i64 32 ; 2 uses
  %i.zd = icmp ult ptr %i.zc, %i.yn
  br i1 %i.zd, label %bb.co, label %ZSTD_wildcopy.exit178.i, !llvm.loop !100

ZSTD_wildcopy.exit178.i:                          ; preds = %bb.co, %bb.cm, %.critedge.i.i
  store ptr %i.yp, ptr %i.a, align 8, !tbaa !38
  %i.ze = ptrtoint ptr %i.yn to i64               ; 2 uses
  %i.zf = sub i64 %i.ze, %i.aj                    ; 3 uses
  %i.zg = icmp ugt i64 %.sroa.11.0.copyload, %i.zf
  br i1 %i.zg, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %ZSTD_wildcopy.exit178.i
  %i.zh = sub i64 %i.ze, %i.ht
  %i.zi = icmp ugt i64 %.sroa.11.0.copyload, %i.zh
  br i1 %i.zi, label %.thread566.i, label %bb.cq, !prof !52

bb.cq:                                            ; preds = %bb.cp
  %i.zj = ptrtoint ptr %i.yr to i64
  %i.zk = sub i64 %i.zj, %i.aj                    ; 3 uses
  %i.zl = getelementptr inbounds i8, ptr %i.t, i64 %i.zk ; 2 uses
  %i.zm = add i64 %i.zk, %.sroa.6.0.copyload      ; 2 uses
  %.not.i16.i = icmp sgt i64 %i.zm, 0
  br i1 %.not.i16.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yn, ptr align 1 %i.zl, i64 %.sroa.6.0.copyload, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.cs:                                            ; preds = %bb.cq
  %gepdiff.i.i = sub nsw i64 0, %i.zk             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yn, ptr align 1 %i.zl, i64 %gepdiff.i.i, i1 false)
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yn, i64 %gepdiff.i.i
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %ZSTD_wildcopy.exit178.i
  %.sroa.6.0 = phi i64 [ %i.zm, %bb.cs ], [ %.sroa.6.0.copyload, %ZSTD_wildcopy.exit178.i ] ; 5 uses
  %.0506.i = phi ptr [ %i.p, %bb.cs ], [ %i.yr, %ZSTD_wildcopy.exit178.i ] ; 9 uses
  %.0505.i = phi ptr [ %i.zn, %bb.cs ], [ %i.yn, %ZSTD_wildcopy.exit178.i ] ; 12 uses
  %i.zo = icmp ugt i64 %.sroa.11.0.copyload, 15
  br i1 %i.zo, label %bb.cu, label %bb.cx, !prof !89

bb.cu:                                            ; preds = %bb.ct
  %i.zp = getelementptr inbounds i8, ptr %.0505.i, i64 %.sroa.6.0
  %.val204.i = load <2 x i64>, ptr %.0506.i, align 1, !tbaa !11
  store <2 x i64> %.val204.i, ptr %.0505.i, align 1, !tbaa !11
  %i.zq = icmp slt i64 %.sroa.6.0, 17
  br i1 %i.zq, label %ZSTD_execSequence.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zr = getelementptr inbounds nuw i8, ptr %.0505.i, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.130.i180.i = phi ptr [ %i.zr, %bb.cv ], [ %i.zu, %bb.cw ] ; 3 uses
  %.pn.i181.i = phi ptr [ %.0506.i, %bb.cv ], [ %i.zt, %bb.cw ] ; 2 uses
  %.1.i182.i = getelementptr inbounds nuw i8, ptr %.pn.i181.i, i64 16
  %.1.i182.val.i = load <2 x i64>, ptr %.1.i182.i, align 1, !tbaa !11
  store <2 x i64> %.1.i182.val.i, ptr %.130.i180.i, align 1, !tbaa !11
  %i.zs = getelementptr inbounds nuw i8, ptr %.130.i180.i, i64 16
  %i.zt = getelementptr inbounds nuw i8, ptr %.pn.i181.i, i64 32 ; 2 uses
  %.val203.i = load <2 x i64>, ptr %i.zt, align 1, !tbaa !11
  store <2 x i64> %.val203.i, ptr %i.zs, align 1, !tbaa !11
  %i.zu = getelementptr inbounds nuw i8, ptr %.130.i180.i, i64 32 ; 2 uses
  %i.zv = icmp ult ptr %i.zu, %i.zp
  br i1 %i.zv, label %bb.cw, label %ZSTD_execSequence.exit.i, !llvm.loop !100

bb.cx:                                            ; preds = %bb.ct
  %i.zw = icmp samesign ult i64 %.sroa.11.0.copyload, 8
  br i1 %i.zw, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.11.0.copyload
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !5
  %i.zz = load i8, ptr %.0506.i, align 1, !tbaa !11
  store i8 %i.zz, ptr %.0505.i, align 1, !tbaa !11
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0506.i, i64 1
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !11
  %i.aac = getelementptr inbounds nuw i8, ptr %.0505.i, i64 1
  store i8 %i.aab, ptr %i.aac, align 1, !tbaa !11
  %i.aad = getelementptr inbounds nuw i8, ptr %.0506.i, i64 2
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !11
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0505.i, i64 2
  store i8 %i.aae, ptr %i.aaf, align 1, !tbaa !11
  %i.aag = getelementptr inbounds nuw i8, ptr %.0506.i, i64 3
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !11
  %i.aai = getelementptr inbounds nuw i8, ptr %.0505.i, i64 3
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !11
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.11.0.copyload
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !5
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %.0506.i, i64 %i.aal ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.0505.i, i64 4
  %.val243.i = load i32, ptr %i.aam, align 1
  store i32 %.val243.i, ptr %i.aan, align 1
  %i.aao = sext i32 %i.zy to i64
  %i.aap = sub nsw i64 0, %i.aao
  %i.aaq = getelementptr inbounds i8, ptr %i.aam, i64 %i.aap
  br label %ZSTD_overlapCopy8.exit197.i

bb.cz:                                            ; preds = %bb.cx
  %.val249.i = load i64, ptr %.0506.i, align 1
  store i64 %.val249.i, ptr %.0505.i, align 1
  br label %ZSTD_overlapCopy8.exit197.i

ZSTD_overlapCopy8.exit197.i:                      ; preds = %bb.cz, %bb.cy
  %.1507.i = phi ptr [ %i.aaq, %bb.cy ], [ %.0506.i, %bb.cz ] ; 2 uses
  %.1507.i33 = ptrtoaddr ptr %.1507.i to i64
  %i.aar = getelementptr inbounds nuw i8, ptr %.1507.i, i64 8 ; 7 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.0505.i, i64 8 ; 6 uses
  %i.aat = icmp ugt i64 %.sroa.6.0, 8
  br i1 %i.aat, label %bb.da, label %ZSTD_execSequence.exit.i

bb.da:                                            ; preds = %ZSTD_overlapCopy8.exit197.i
  %i.aau = ptrtoint ptr %i.aas to i64
  %i.aav = ptrtoint ptr %i.aar to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  %i.aax = getelementptr i8, ptr %.0505.i, i64 %.sroa.6.0 ; 2 uses
  %i.aay = icmp slt i64 %i.aaw, 16
  br i1 %i.aay, label %.preheader598.i.preheader, label %bb.db

.preheader598.i.preheader:                        ; preds = %bb.da
  %8 = tail call i64 @llvm.umin.i64(i64 %.sroa.11.0.copyload, i64 %i.zf)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sroa.11.0.copyload, i64 %i.zf) ; 3 uses
  %i.aaz = add i64 %.sroa.6.0.copyload, %i.aj
  %9 = add i64 %i.aaz, %8
  %i.aba = add i64 %9, %umin
  %i.abb = sub i64 %i.aba, %.sroa.11.0.copyload
  %i.abc = add i64 %umin, %i.ib
  %umax35 = tail call i64 @llvm.umax.i64(i64 %i.abb, i64 %i.abc)
  %i.abd = add i64 %umin, %i.aj
  %10 = sub i64 %umax35, %i.abd
  %11 = add i64 %10, -9                           ; 2 uses
  %i.abe = lshr i64 %11, 3
  %i.abf = add nuw nsw i64 %i.abe, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %11, 72
  br i1 %min.iters.check, label %.preheader598.i.preheader326, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader598.i.preheader
  %i.abg = sub i64 %.sroa.0.0.copyload, %i.aj
  %i.abh = add i64 %i.abg, %.1208.i.i32
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.11.0.copyload, i64 %i.abh)
  %i.abi = add i64 %umax, %i.aj
  %i.abj = sub i64 %.1507.i33, %i.abi
  %diff.check = icmp ugt i64 %i.abj, -32
  br i1 %diff.check, label %.preheader598.i.preheader326, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abf, 4611686018427387900    ; 3 uses
  %i.abk = shl i64 %n.vec, 3                      ; 2 uses
  %i.abl = getelementptr i8, ptr %i.aas, i64 %i.abk
  %i.abm = getelementptr i8, ptr %i.aar, i64 %i.abk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abn = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aas, i64 %i.abn ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.aar, i64 %i.abn ; 2 uses
  %i.abo = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 1
  %wide.load37 = load <2 x i64>, ptr %i.abo, align 1
  %i.abp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load37, ptr %i.abp, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abq = icmp eq i64 %index.next, %n.vec
  br i1 %i.abq, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abf, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %.preheader598.i.preheader326

.preheader598.i.preheader326:                     ; preds = %vector.memcheck, %.preheader598.i.preheader, %middle.block
  %.029.i190.i.ph = phi ptr [ %i.aas, %vector.memcheck ], [ %i.aas, %.preheader598.i.preheader ], [ %i.abl, %middle.block ]
  %.0.i191.i.ph = phi ptr [ %i.aar, %vector.memcheck ], [ %i.aar, %.preheader598.i.preheader ], [ %i.abm, %middle.block ]
  br label %.preheader598.i

.preheader598.i:                                  ; preds = %.preheader598.i.preheader326, %.preheader598.i
  %.029.i190.i = phi ptr [ %i.abr, %.preheader598.i ], [ %.029.i190.i.ph, %.preheader598.i.preheader326 ] ; 2 uses
  %.0.i191.i = phi ptr [ %i.abs, %.preheader598.i ], [ %.0.i191.i.ph, %.preheader598.i.preheader326 ] ; 2 uses
  %.0.i191.val.i = load i64, ptr %.0.i191.i, align 1
  store i64 %.0.i191.val.i, ptr %.029.i190.i, align 1
  %i.abr = getelementptr inbounds nuw i8, ptr %.029.i190.i, i64 8 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.0.i191.i, i64 8
  %i.abt = icmp ult ptr %i.abr, %i.aax
  br i1 %i.abt, label %.preheader598.i, label %ZSTD_execSequence.exit.i, !llvm.loop !106

bb.db:                                            ; preds = %bb.da
  %.val202.i = load <2 x i64>, ptr %i.aar, align 1, !tbaa !11
  store <2 x i64> %.val202.i, ptr %i.aas, align 1, !tbaa !11
  %i.abu = icmp slt i64 %.sroa.6.0, 25
  br i1 %i.abu, label %ZSTD_execSequence.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.abv = getelementptr inbounds nuw i8, ptr %.0505.i, i64 24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %bb.dc
  %.130.i187.i = phi ptr [ %i.abv, %bb.dc ], [ %i.aby, %bb.dd ] ; 3 uses
  %.pn.i188.i = phi ptr [ %i.aar, %bb.dc ], [ %i.abx, %bb.dd ] ; 2 uses
  %.1.i189.i = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 16
  %.1.i189.val.i = load <2 x i64>, ptr %.1.i189.i, align 1, !tbaa !11
  store <2 x i64> %.1.i189.val.i, ptr %.130.i187.i, align 1, !tbaa !11
  %i.abw = getelementptr inbounds nuw i8, ptr %.130.i187.i, i64 16
  %i.abx = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 32 ; 2 uses
  %.val201.i = load <2 x i64>, ptr %i.abx, align 1, !tbaa !11
  store <2 x i64> %.val201.i, ptr %i.abw, align 1, !tbaa !11
  %i.aby = getelementptr inbounds nuw i8, ptr %.130.i187.i, i64 32 ; 2 uses
  %i.abz = icmp ult ptr %i.aby, %i.aax
  br i1 %i.abz, label %bb.dd, label %ZSTD_execSequence.exit.i, !llvm.loop !100

ZSTD_execSequence.exit.i:                         ; preds = %bb.dd, %.preheader598.i, %bb.cw, %middle.block, %bb.db, %ZSTD_overlapCopy8.exit197.i, %bb.cu, %bb.cr, %bb.cl
  %.0.i15.i = phi i64 [ %i.yw, %bb.cl ], [ %i.yo, %bb.cw ], [ %i.yo, %bb.cr ], [ %i.yo, %ZSTD_overlapCopy8.exit197.i ], [ %i.yo, %bb.db ], [ %i.yo, %bb.cu ], [ %i.yo, %middle.block ], [ %i.yo, %.preheader598.i ], [ %i.yo, %bb.dd ] ; 3 uses
  %i.aca = icmp ult i64 %.0.i15.i, -119
  br i1 %i.aca, label %bb.de, label %.thread566.i

bb.de:                                            ; preds = %ZSTD_execSequence.exit.i
  %i.acb = add i64 %.sroa.0.0.i, %.1242.i643.i    ; 3 uses
  %i.acc = icmp ugt i64 %.sink826.i, %i.acb
  %i.acd = select i1 %i.acc, ptr %i.t, ptr %i.p
  %i.ace = getelementptr inbounds i8, ptr %i.acd, i64 %i.acb
  %i.acf = sub i64 0, %.sink826.i
  %i.acg = getelementptr inbounds i8, ptr %i.ace, i64 %i.acf ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.acg, i32 0, i32 3, i32 1)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ach, i32 0, i32 3, i32 1)
  store i64 %.sroa.0.0.i, ptr %i.we, align 8, !tbaa !45
  store i64 %.sroa.9.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !45
  store i64 %.sink826.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !45
  %i.aci = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 %.0.i15.i
  br label %bb.et

bb.df:                                            ; preds = %bb.cd
  %i.acj = getelementptr inbounds i8, ptr %i.wg, i64 -32 ; 2 uses
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %.sroa.544.0.copyload = load i64, ptr %.sroa.544.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1048.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %.sroa.1048.0.copyload = load i64, ptr %.sroa.1048.0..sroa_idx, align 8 ; 11 uses
  %i.ack = getelementptr i8, ptr %.0207.i646.i, i64 %i.wf ; 7 uses
  %i.acl = add i64 %.sroa.544.0.copyload, %i.wf   ; 9 uses
  %i.acm = sub i64 0, %.sroa.1048.0.copyload
  %i.acn = getelementptr inbounds i8, ptr %i.ack, i64 %i.acm ; 2 uses
  %i.aco = icmp ugt ptr %i.wg, %.0226.i645.i
  %i.acp = getelementptr inbounds nuw i8, ptr %.0207.i646.i, i64 %i.acl
  %i.acq = icmp ugt ptr %i.acp, %i.acj
  %or.cond.i35.i = select i1 %i.aco, i1 true, i1 %i.acq, !prof !104
  br i1 %or.cond.i35.i, label %bb.dg, label %.critedge.i36.i, !prof !104

.critedge.i36.i:                                  ; preds = %bb.df
  %.val238.i = load <2 x i64>, ptr %i.wb, align 1, !tbaa !11
  store <2 x i64> %.val238.i, ptr %.0207.i646.i, align 1, !tbaa !11
  %i.acr = icmp ugt i64 %i.wf, 16
  br i1 %i.acr, label %bb.dh, label %ZSTD_wildcopy.exit94.i, !prof !52

bb.dg:                                            ; preds = %bb.df
  %i.acs = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.0207.i646.i, ptr noundef %i.j, ptr noundef nonnull %i.acj, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.we, ptr noundef nonnull %i.a, ptr noundef %.0226.i645.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.dh:                                            ; preds = %.critedge.i36.i
  %i.act = getelementptr inbounds nuw i8, ptr %.0207.i646.i, i64 16
  %i.acu = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %i.acv = add i64 %i.wf, -16
  %.val230.i = load <2 x i64>, ptr %i.acu, align 1, !tbaa !11
  store <2 x i64> %.val230.i, ptr %i.act, align 1, !tbaa !11
  %i.acw = icmp slt i64 %i.acv, 17
  br i1 %i.acw, label %ZSTD_wildcopy.exit94.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.acx = getelementptr inbounds nuw i8, ptr %.0207.i646.i, i64 32
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %bb.di
  %.130.i89.i = phi ptr [ %i.acx, %bb.di ], [ %i.ada, %bb.dj ] ; 3 uses
  %.pn.i90.i = phi ptr [ %i.acu, %bb.di ], [ %i.acz, %bb.dj ] ; 2 uses
  %.1.i91.i = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 16
  %.1.i91.val.i = load <2 x i64>, ptr %.1.i91.i, align 1, !tbaa !11
  store <2 x i64> %.1.i91.val.i, ptr %.130.i89.i, align 1, !tbaa !11
  %i.acy = getelementptr inbounds nuw i8, ptr %.130.i89.i, i64 16
  %i.acz = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 32 ; 2 uses
  %.val229.i = load <2 x i64>, ptr %i.acz, align 1, !tbaa !11
  store <2 x i64> %.val229.i, ptr %i.acy, align 1, !tbaa !11
  %i.ada = getelementptr inbounds nuw i8, ptr %.130.i89.i, i64 32 ; 2 uses
  %i.adb = icmp ult ptr %i.ada, %i.ack
  br i1 %i.adb, label %bb.dj, label %ZSTD_wildcopy.exit94.i, !llvm.loop !100

ZSTD_wildcopy.exit94.i:                           ; preds = %bb.dj, %bb.dh, %.critedge.i36.i
  store ptr %i.wg, ptr %i.a, align 8, !tbaa !38
  %i.adc = ptrtoint ptr %i.ack to i64             ; 2 uses
  %i.add = sub i64 %i.adc, %i.aj                  ; 3 uses
  %i.ade = icmp ugt i64 %.sroa.1048.0.copyload, %i.add
  br i1 %i.ade, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %ZSTD_wildcopy.exit94.i
  %i.adf = sub i64 %i.adc, %i.ht
  %i.adg = icmp ugt i64 %.sroa.1048.0.copyload, %i.adf
  br i1 %i.adg, label %.thread566.i, label %bb.dl, !prof !52

bb.dl:                                            ; preds = %bb.dk
  %i.adh = ptrtoint ptr %i.acn to i64
  %i.adi = sub i64 %i.adh, %i.aj                  ; 3 uses
  %i.adj = getelementptr inbounds i8, ptr %i.t, i64 %i.adi ; 2 uses
  %i.adk = add i64 %i.adi, %.sroa.544.0.copyload  ; 2 uses
  %.not.i38.i = icmp sgt i64 %i.adk, 0
  br i1 %.not.i38.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ack, ptr align 1 %i.adj, i64 %.sroa.544.0.copyload, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.dn:                                            ; preds = %bb.dl
  %gepdiff.i39.i = sub nsw i64 0, %i.adi          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ack, ptr align 1 %i.adj, i64 %gepdiff.i39.i, i1 false)
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %gepdiff.i39.i
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %ZSTD_wildcopy.exit94.i
  %.sroa.544.0 = phi i64 [ %i.adk, %bb.dn ], [ %.sroa.544.0.copyload, %ZSTD_wildcopy.exit94.i ] ; 5 uses
  %.0494.i = phi ptr [ %i.p, %bb.dn ], [ %i.acn, %ZSTD_wildcopy.exit94.i ] ; 9 uses
  %.0493.i = phi ptr [ %i.adl, %bb.dn ], [ %i.ack, %ZSTD_wildcopy.exit94.i ] ; 12 uses
  %i.adm = icmp ugt i64 %.sroa.1048.0.copyload, 15
  br i1 %i.adm, label %bb.dp, label %bb.ds, !prof !89

bb.dp:                                            ; preds = %bb.do
  %i.adn = getelementptr inbounds i8, ptr %.0493.i, i64 %.sroa.544.0
  %.val228.i = load <2 x i64>, ptr %.0494.i, align 1, !tbaa !11
  store <2 x i64> %.val228.i, ptr %.0493.i, align 1, !tbaa !11
  %i.ado = icmp slt i64 %.sroa.544.0, 17
  br i1 %i.ado, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.adp = getelementptr inbounds nuw i8, ptr %.0493.i, i64 16
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %bb.dq
  %.130.i96.i = phi ptr [ %i.adp, %bb.dq ], [ %i.ads, %bb.dr ] ; 3 uses
  %.pn.i97.i = phi ptr [ %.0494.i, %bb.dq ], [ %i.adr, %bb.dr ] ; 2 uses
  %.1.i98.i = getelementptr inbounds nuw i8, ptr %.pn.i97.i, i64 16
  %.1.i98.val.i = load <2 x i64>, ptr %.1.i98.i, align 1, !tbaa !11
  store <2 x i64> %.1.i98.val.i, ptr %.130.i96.i, align 1, !tbaa !11
  %i.adq = getelementptr inbounds nuw i8, ptr %.130.i96.i, i64 16
  %i.adr = getelementptr inbounds nuw i8, ptr %.pn.i97.i, i64 32 ; 2 uses
  %.val227.i = load <2 x i64>, ptr %i.adr, align 1, !tbaa !11
  store <2 x i64> %.val227.i, ptr %i.adq, align 1, !tbaa !11
  %i.ads = getelementptr inbounds nuw i8, ptr %.130.i96.i, i64 32 ; 2 uses
  %i.adt = icmp ult ptr %i.ads, %i.adn
  br i1 %i.adt, label %bb.dr, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

bb.ds:                                            ; preds = %bb.do
  %i.adu = icmp samesign ult i64 %.sroa.1048.0.copyload, 8
  br i1 %i.adu, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1048.0.copyload
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !5
  %i.adx = load i8, ptr %.0494.i, align 1, !tbaa !11
  store i8 %i.adx, ptr %.0493.i, align 1, !tbaa !11
  %i.ady = getelementptr inbounds nuw i8, ptr %.0494.i, i64 1
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !11
  %i.aea = getelementptr inbounds nuw i8, ptr %.0493.i, i64 1
  store i8 %i.adz, ptr %i.aea, align 1, !tbaa !11
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0494.i, i64 2
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !11
  %i.aed = getelementptr inbounds nuw i8, ptr %.0493.i, i64 2
  store i8 %i.aec, ptr %i.aed, align 1, !tbaa !11
  %i.aee = getelementptr inbounds nuw i8, ptr %.0494.i, i64 3
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !11
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0493.i, i64 3
  store i8 %i.aef, ptr %i.aeg, align 1, !tbaa !11
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1048.0.copyload
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !5
  %i.aej = zext i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw i8, ptr %.0494.i, i64 %i.aej ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.0493.i, i64 4
  %.val247.i = load i32, ptr %i.aek, align 1
  store i32 %.val247.i, ptr %i.ael, align 1
  %i.aem = sext i32 %i.adw to i64
  %i.aen = sub nsw i64 0, %i.aem
  %i.aeo = getelementptr inbounds i8, ptr %i.aek, i64 %i.aen
  br label %ZSTD_overlapCopy8.exit193.i

bb.du:                                            ; preds = %bb.ds
  %.val253.i = load i64, ptr %.0494.i, align 1
  store i64 %.val253.i, ptr %.0493.i, align 1
  br label %ZSTD_overlapCopy8.exit193.i

ZSTD_overlapCopy8.exit193.i:                      ; preds = %bb.du, %bb.dt
  %.1495.i = phi ptr [ %i.aeo, %bb.dt ], [ %.0494.i, %bb.du ] ; 2 uses
  %.1495.i112 = ptrtoaddr ptr %.1495.i to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %.1495.i, i64 8 ; 7 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0493.i, i64 8 ; 6 uses
  %i.aer = icmp ugt i64 %.sroa.544.0, 8
  br i1 %i.aer, label %bb.dv, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.dv:                                            ; preds = %ZSTD_overlapCopy8.exit193.i
  %i.aes = ptrtoint ptr %i.aeq to i64
  %i.aet = ptrtoint ptr %i.aep to i64
  %i.aeu = sub i64 %i.aes, %i.aet
  %i.aev = getelementptr i8, ptr %.0493.i, i64 %.sroa.544.0 ; 2 uses
  %i.aew = icmp slt i64 %i.aeu, 16
  br i1 %i.aew, label %.preheader602.i.preheader, label %bb.dw

.preheader602.i.preheader:                        ; preds = %bb.dv
  %12 = tail call i64 @llvm.umin.i64(i64 %.sroa.1048.0.copyload, i64 %i.add)
  %umin114 = tail call i64 @llvm.umax.i64(i64 %.sroa.1048.0.copyload, i64 %i.add) ; 3 uses
  %i.aex = add i64 %.sroa.544.0.copyload, %i.aj
  %13 = add i64 %i.aex, %12
  %i.aey = add i64 %13, %umin114
  %i.aez = sub i64 %i.aey, %.sroa.1048.0.copyload
  %i.afa = add i64 %umin114, %i.ia
  %umax116 = tail call i64 @llvm.umax.i64(i64 %i.aez, i64 %i.afa)
  %i.afb = add i64 %umin114, %i.aj
  %14 = sub i64 %umax116, %i.afb
  %15 = add i64 %14, -9                           ; 2 uses
  %i.afc = lshr i64 %15, 3
  %i.afd = add nuw nsw i64 %i.afc, 1              ; 2 uses
  %min.iters.check118 = icmp ult i64 %15, 72
  br i1 %min.iters.check118, label %.preheader602.i.preheader330, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.preheader602.i.preheader
  %i.afe = sub i64 %i.wf, %i.aj
  %i.aff = add i64 %i.afe, %.0207.i646.i110
  %umax111 = tail call i64 @llvm.umax.i64(i64 %.sroa.1048.0.copyload, i64 %i.aff)
  %i.afg = add i64 %umax111, %i.aj
  %i.afh = sub i64 %.1495.i112, %i.afg
  %diff.check113 = icmp ugt i64 %i.afh, -32
  br i1 %diff.check113, label %.preheader602.i.preheader330, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck109
  %n.vec121 = and i64 %i.afd, 4611686018427387900 ; 3 uses
  %i.afi = shl i64 %n.vec121, 3                   ; 2 uses
  %i.afj = getelementptr i8, ptr %i.aeq, i64 %i.afi
  %i.afk = getelementptr i8, ptr %i.aep, i64 %i.afi
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
  %index123 = phi i64 [ 0, %vector.ph119 ], [ %index.next128, %vector.body122 ] ; 2 uses
  %i.afl = shl i64 %index123, 3                   ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.aeq, i64 %i.afl ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.aep, i64 %i.afl ; 2 uses
  %i.afm = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load126 = load <2 x i64>, ptr %next.gep125, align 1
  %wide.load127 = load <2 x i64>, ptr %i.afm, align 1
  %i.afn = getelementptr i8, ptr %next.gep124, i64 16
  store <2 x i64> %wide.load126, ptr %next.gep124, align 1
  store <2 x i64> %wide.load127, ptr %i.afn, align 1
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.afo = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.afo, label %middle.block129, label %vector.body122, !llvm.loop !107

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %i.afd, %n.vec121
  br i1 %cmp.n130, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %.preheader602.i.preheader330

.preheader602.i.preheader330:                     ; preds = %vector.memcheck109, %.preheader602.i.preheader, %middle.block129
  %.029.i106.i.ph = phi ptr [ %i.aeq, %vector.memcheck109 ], [ %i.aeq, %.preheader602.i.preheader ], [ %i.afj, %middle.block129 ]
  %.0.i107.i.ph = phi ptr [ %i.aep, %vector.memcheck109 ], [ %i.aep, %.preheader602.i.preheader ], [ %i.afk, %middle.block129 ]
  br label %.preheader602.i

.preheader602.i:                                  ; preds = %.preheader602.i.preheader330, %.preheader602.i
  %.029.i106.i = phi ptr [ %i.afp, %.preheader602.i ], [ %.029.i106.i.ph, %.preheader602.i.preheader330 ] ; 2 uses
  %.0.i107.i = phi ptr [ %i.afq, %.preheader602.i ], [ %.0.i107.i.ph, %.preheader602.i.preheader330 ] ; 2 uses
  %.0.i107.val.i = load i64, ptr %.0.i107.i, align 1
  store i64 %.0.i107.val.i, ptr %.029.i106.i, align 1
  %i.afp = getelementptr inbounds nuw i8, ptr %.029.i106.i, i64 8 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.0.i107.i, i64 8
  %i.afr = icmp ult ptr %i.afp, %i.aev
  br i1 %i.afr, label %.preheader602.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !108

bb.dw:                                            ; preds = %bb.dv
  %.val226.i = load <2 x i64>, ptr %i.aep, align 1, !tbaa !11
  store <2 x i64> %.val226.i, ptr %i.aeq, align 1, !tbaa !11
  %i.afs = icmp slt i64 %.sroa.544.0, 25
  br i1 %i.afs, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aft = getelementptr inbounds nuw i8, ptr %.0493.i, i64 24
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %bb.dx
  %.130.i103.i = phi ptr [ %i.aft, %bb.dx ], [ %i.afw, %bb.dy ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.aep, %bb.dx ], [ %i.afv, %bb.dy ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %.1.i105.val.i = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !11
  store <2 x i64> %.1.i105.val.i, ptr %.130.i103.i, align 1, !tbaa !11
  %i.afu = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.afv = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %.val225.i = load <2 x i64>, ptr %i.afv, align 1, !tbaa !11
  store <2 x i64> %.val225.i, ptr %i.afu, align 1, !tbaa !11
  %i.afw = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.afx = icmp ult ptr %i.afw, %i.aev
  br i1 %i.afx, label %bb.dy, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

bb.dz:                                            ; preds = %ZSTD_decodeSequence.exit14.i
  %i.afy = and i32 %.1239.i644.i, 7
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.afz ; 4 uses
  %.sroa.020.0.copyload = load i64, ptr %i.aga, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 11 uses
  %i.agb = getelementptr i8, ptr %.0207.i646.i, i64 %.sroa.020.0.copyload ; 7 uses
  %i.agc = add i64 %.sroa.5.0.copyload, %.sroa.020.0.copyload ; 9 uses
  %i.agd = load ptr, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 %.sroa.020.0.copyload ; 2 uses
  %i.agf = sub i64 0, %.sroa.10.0.copyload
  %i.agg = getelementptr inbounds i8, ptr %i.agb, i64 %i.agf ; 2 uses
  %i.agh = icmp ugt ptr %i.age, %.0226.i645.i
  %i.agi = getelementptr inbounds nuw i8, ptr %.0207.i646.i, i64 %i.agc
  %i.agj = icmp ugt ptr %i.agi, %i.hs
  %or.cond.i17.i = select i1 %i.agh, i1 true, i1 %i.agj, !prof !104
  br i1 %or.cond.i17.i, label %bb.ea, label %.critedge.i18.i, !prof !104

.critedge.i18.i:                                  ; preds = %bb.dz
  %.val241.i = load <2 x i64>, ptr %i.agd, align 1, !tbaa !11
  store <2 x i64> %.val241.i, ptr %.0207.i646.i, align 1, !tbaa !11
  %i.agk = icmp ugt i64 %.sroa.020.0.copyload, 16
  br i1 %i.agk, label %bb.eb, label %ZSTD_wildcopy.exit157.i, !prof !52

bb.ea:                                            ; preds = %bb.dz
  %i.agl = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.0207.i646.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.aga, ptr noundef nonnull %i.a, ptr noundef %.0226.i645.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.eb:                                            ; preds = %.critedge.i18.i
  %i.agm = getelementptr inbounds nuw i8, ptr %.0207.i646.i, i64 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agd, i64 16 ; 2 uses
  %i.ago = add i64 %.sroa.020.0.copyload, -16
  %.val212.i = load <2 x i64>, ptr %i.agn, align 1, !tbaa !11
  store <2 x i64> %.val212.i, ptr %i.agm, align 1, !tbaa !11
  %i.agp = icmp slt i64 %i.ago, 17
  br i1 %i.agp, label %ZSTD_wildcopy.exit157.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.agq = getelementptr inbounds nuw i8, ptr %.0207.i646.i, i64 32
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %bb.ec
  %.130.i152.i = phi ptr [ %i.agq, %bb.ec ], [ %i.agt, %bb.ed ] ; 3 uses
  %.pn.i153.i = phi ptr [ %i.agn, %bb.ec ], [ %i.ags, %bb.ed ] ; 2 uses
  %.1.i154.i = getelementptr inbounds nuw i8, ptr %.pn.i153.i, i64 16
  %.1.i154.val.i = load <2 x i64>, ptr %.1.i154.i, align 1, !tbaa !11
  store <2 x i64> %.1.i154.val.i, ptr %.130.i152.i, align 1, !tbaa !11
  %i.agr = getelementptr inbounds nuw i8, ptr %.130.i152.i, i64 16
  %i.ags = getelementptr inbounds nuw i8, ptr %.pn.i153.i, i64 32 ; 2 uses
  %.val211.i = load <2 x i64>, ptr %i.ags, align 1, !tbaa !11
  store <2 x i64> %.val211.i, ptr %i.agr, align 1, !tbaa !11
  %i.agt = getelementptr inbounds nuw i8, ptr %.130.i152.i, i64 32 ; 2 uses
  %i.agu = icmp ult ptr %i.agt, %i.agb
  br i1 %i.agu, label %bb.ed, label %ZSTD_wildcopy.exit157.i, !llvm.loop !100

ZSTD_wildcopy.exit157.i:                          ; preds = %bb.ed, %bb.eb, %.critedge.i18.i
  store ptr %i.age, ptr %i.a, align 8, !tbaa !38
  %i.agv = ptrtoint ptr %i.agb to i64             ; 2 uses
  %i.agw = sub i64 %i.agv, %i.aj                  ; 3 uses
  %i.agx = icmp ugt i64 %.sroa.10.0.copyload, %i.agw
  br i1 %i.agx, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %ZSTD_wildcopy.exit157.i
  %i.agy = sub i64 %i.agv, %i.ht
  %i.agz = icmp ugt i64 %.sroa.10.0.copyload, %i.agy
  br i1 %i.agz, label %.thread566.i, label %bb.ef, !prof !52

bb.ef:                                            ; preds = %bb.ee
  %i.aha = ptrtoint ptr %i.agg to i64
  %i.ahb = sub i64 %i.aha, %i.aj                  ; 3 uses
  %i.ahc = getelementptr inbounds i8, ptr %i.t, i64 %i.ahb ; 2 uses
  %i.ahd = add i64 %i.ahb, %.sroa.5.0.copyload    ; 2 uses
  %.not.i20.i = icmp sgt i64 %i.ahd, 0
  br i1 %.not.i20.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agb, ptr align 1 %i.ahc, i64 %.sroa.5.0.copyload, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.eh:                                            ; preds = %bb.ef
  %gepdiff.i21.i = sub nsw i64 0, %i.ahb          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agb, ptr align 1 %i.ahc, i64 %gepdiff.i21.i, i1 false)
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agb, i64 %gepdiff.i21.i
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %ZSTD_wildcopy.exit157.i
  %.sroa.5.0 = phi i64 [ %i.ahd, %bb.eh ], [ %.sroa.5.0.copyload, %ZSTD_wildcopy.exit157.i ] ; 5 uses
  %.0503.i = phi ptr [ %i.p, %bb.eh ], [ %i.agg, %ZSTD_wildcopy.exit157.i ] ; 9 uses
  %.0502.i = phi ptr [ %i.ahe, %bb.eh ], [ %i.agb, %ZSTD_wildcopy.exit157.i ] ; 12 uses
  %i.ahf = icmp ugt i64 %.sroa.10.0.copyload, 15
  br i1 %i.ahf, label %bb.ej, label %bb.em, !prof !89

bb.ej:                                            ; preds = %bb.ei
  %i.ahg = getelementptr inbounds i8, ptr %.0502.i, i64 %.sroa.5.0
  %.val210.i = load <2 x i64>, ptr %.0503.i, align 1, !tbaa !11
  store <2 x i64> %.val210.i, ptr %.0502.i, align 1, !tbaa !11
  %i.ahh = icmp slt i64 %.sroa.5.0, 17
  br i1 %i.ahh, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0502.i, i64 16
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.130.i159.i = phi ptr [ %i.ahi, %bb.ek ], [ %i.ahl, %bb.el ] ; 3 uses
  %.pn.i160.i = phi ptr [ %.0503.i, %bb.ek ], [ %i.ahk, %bb.el ] ; 2 uses
  %.1.i161.i = getelementptr inbounds nuw i8, ptr %.pn.i160.i, i64 16
  %.1.i161.val.i = load <2 x i64>, ptr %.1.i161.i, align 1, !tbaa !11
  store <2 x i64> %.1.i161.val.i, ptr %.130.i159.i, align 1, !tbaa !11
  %i.ahj = getelementptr inbounds nuw i8, ptr %.130.i159.i, i64 16
  %i.ahk = getelementptr inbounds nuw i8, ptr %.pn.i160.i, i64 32 ; 2 uses
  %.val209.i = load <2 x i64>, ptr %i.ahk, align 1, !tbaa !11
  store <2 x i64> %.val209.i, ptr %i.ahj, align 1, !tbaa !11
  %i.ahl = getelementptr inbounds nuw i8, ptr %.130.i159.i, i64 32 ; 2 uses
  %i.ahm = icmp ult ptr %i.ahl, %i.ahg
  br i1 %i.ahm, label %bb.el, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

bb.em:                                            ; preds = %bb.ei
  %i.ahn = icmp samesign ult i64 %.sroa.10.0.copyload, 8
  br i1 %i.ahn, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.10.0.copyload
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !5
  %i.ahq = load i8, ptr %.0503.i, align 1, !tbaa !11
  store i8 %i.ahq, ptr %.0502.i, align 1, !tbaa !11
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0503.i, i64 1
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !11
  %i.aht = getelementptr inbounds nuw i8, ptr %.0502.i, i64 1
  store i8 %i.ahs, ptr %i.aht, align 1, !tbaa !11
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0503.i, i64 2
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !11
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0502.i, i64 2
  store i8 %i.ahv, ptr %i.ahw, align 1, !tbaa !11
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0503.i, i64 3
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !11
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0502.i, i64 3
  store i8 %i.ahy, ptr %i.ahz, align 1, !tbaa !11
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.10.0.copyload
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !5
  %i.aic = zext i32 %i.aib to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %.0503.i, i64 %i.aic ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0502.i, i64 4
  %.val244.i = load i32, ptr %i.aid, align 1
  store i32 %.val244.i, ptr %i.aie, align 1
  %i.aif = sext i32 %i.ahp to i64
  %i.aig = sub nsw i64 0, %i.aif
  %i.aih = getelementptr inbounds i8, ptr %i.aid, i64 %i.aig
  br label %ZSTD_overlapCopy8.exit196.i

bb.eo:                                            ; preds = %bb.em
  %.val250.i = load i64, ptr %.0503.i, align 1
  store i64 %.val250.i, ptr %.0502.i, align 1
  br label %ZSTD_overlapCopy8.exit196.i

ZSTD_overlapCopy8.exit196.i:                      ; preds = %bb.eo, %bb.en
  %.1504.i = phi ptr [ %i.aih, %bb.en ], [ %.0503.i, %bb.eo ] ; 2 uses
  %.1504.i135 = ptrtoaddr ptr %.1504.i to i64
  %i.aii = getelementptr inbounds nuw i8, ptr %.1504.i, i64 8 ; 7 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.0502.i, i64 8 ; 6 uses
  %i.aik = icmp ugt i64 %.sroa.5.0, 8
  br i1 %i.aik, label %bb.ep, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.ep:                                            ; preds = %ZSTD_overlapCopy8.exit196.i
  %i.ail = ptrtoint ptr %i.aij to i64
  %i.aim = ptrtoint ptr %i.aii to i64
  %i.ain = sub i64 %i.ail, %i.aim
  %i.aio = getelementptr i8, ptr %.0502.i, i64 %.sroa.5.0 ; 2 uses
  %i.aip = icmp slt i64 %i.ain, 16
  br i1 %i.aip, label %.preheader605.i.preheader, label %bb.eq

.preheader605.i.preheader:                        ; preds = %bb.ep
  %16 = tail call i64 @llvm.umin.i64(i64 %.sroa.10.0.copyload, i64 %i.agw)
  %umin137 = tail call i64 @llvm.umax.i64(i64 %.sroa.10.0.copyload, i64 %i.agw) ; 3 uses
  %i.aiq = add i64 %.sroa.5.0.copyload, %i.aj
  %17 = add i64 %i.aiq, %16
  %i.air = add i64 %17, %umin137
  %i.ais = sub i64 %i.air, %.sroa.10.0.copyload
  %i.ait = add i64 %umin137, %i.hz
  %umax139 = tail call i64 @llvm.umax.i64(i64 %i.ais, i64 %i.ait)
  %i.aiu = add i64 %umin137, %i.aj
  %18 = sub i64 %umax139, %i.aiu
  %19 = add i64 %18, -9                           ; 2 uses
  %i.aiv = lshr i64 %19, 3
  %i.aiw = add nuw nsw i64 %i.aiv, 1              ; 2 uses
  %min.iters.check141 = icmp ult i64 %19, 72
  br i1 %min.iters.check141, label %.preheader605.i.preheader334, label %vector.memcheck133

vector.memcheck133:                               ; preds = %.preheader605.i.preheader
  %i.aix = sub i64 %.sroa.020.0.copyload, %i.aj
  %i.aiy = add i64 %i.aix, %.0207.i646.i110
  %umax134 = tail call i64 @llvm.umax.i64(i64 %.sroa.10.0.copyload, i64 %i.aiy)
  %i.aiz = add i64 %umax134, %i.aj
  %i.aja = sub i64 %.1504.i135, %i.aiz
  %diff.check136 = icmp ugt i64 %i.aja, -32
  br i1 %diff.check136, label %.preheader605.i.preheader334, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck133
  %n.vec144 = and i64 %i.aiw, 4611686018427387900 ; 3 uses
  %i.ajb = shl i64 %n.vec144, 3                   ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.aij, i64 %i.ajb
  %i.ajd = getelementptr i8, ptr %i.aii, i64 %i.ajb
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.aje = shl i64 %index146, 3                   ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.aij, i64 %i.aje ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.aii, i64 %i.aje ; 2 uses
  %i.ajf = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load149 = load <2 x i64>, ptr %next.gep148, align 1
  %wide.load150 = load <2 x i64>, ptr %i.ajf, align 1
  %i.ajg = getelementptr i8, ptr %next.gep147, i64 16
  store <2 x i64> %wide.load149, ptr %next.gep147, align 1
  store <2 x i64> %wide.load150, ptr %i.ajg, align 1
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.ajh = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.ajh, label %middle.block152, label %vector.body145, !llvm.loop !109

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.aiw, %n.vec144
  br i1 %cmp.n153, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %.preheader605.i.preheader334

.preheader605.i.preheader334:                     ; preds = %vector.memcheck133, %.preheader605.i.preheader, %middle.block152
  %.029.i169.i.ph = phi ptr [ %i.aij, %vector.memcheck133 ], [ %i.aij, %.preheader605.i.preheader ], [ %i.ajc, %middle.block152 ]
  %.0.i170.i.ph = phi ptr [ %i.aii, %vector.memcheck133 ], [ %i.aii, %.preheader605.i.preheader ], [ %i.ajd, %middle.block152 ]
  br label %.preheader605.i

.preheader605.i:                                  ; preds = %.preheader605.i.preheader334, %.preheader605.i
  %.029.i169.i = phi ptr [ %i.aji, %.preheader605.i ], [ %.029.i169.i.ph, %.preheader605.i.preheader334 ] ; 2 uses
  %.0.i170.i = phi ptr [ %i.ajj, %.preheader605.i ], [ %.0.i170.i.ph, %.preheader605.i.preheader334 ] ; 2 uses
  %.0.i170.val.i = load i64, ptr %.0.i170.i, align 1
  store i64 %.0.i170.val.i, ptr %.029.i169.i, align 1
  %i.aji = getelementptr inbounds nuw i8, ptr %.029.i169.i, i64 8 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0.i170.i, i64 8
  %i.ajk = icmp ult ptr %i.aji, %i.aio
  br i1 %i.ajk, label %.preheader605.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !110

bb.eq:                                            ; preds = %bb.ep
  %.val208.i = load <2 x i64>, ptr %i.aii, align 1, !tbaa !11
  store <2 x i64> %.val208.i, ptr %i.aij, align 1, !tbaa !11
  %i.ajl = icmp slt i64 %.sroa.5.0, 25
  br i1 %i.ajl, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0502.i, i64 24
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %bb.er
  %.130.i166.i = phi ptr [ %i.ajm, %bb.er ], [ %i.ajp, %bb.es ] ; 3 uses
  %.pn.i167.i = phi ptr [ %i.aii, %bb.er ], [ %i.ajo, %bb.es ] ; 2 uses
  %.1.i168.i = getelementptr inbounds nuw i8, ptr %.pn.i167.i, i64 16
  %.1.i168.val.i = load <2 x i64>, ptr %.1.i168.i, align 1, !tbaa !11
  store <2 x i64> %.1.i168.val.i, ptr %.130.i166.i, align 1, !tbaa !11
  %i.ajn = getelementptr inbounds nuw i8, ptr %.130.i166.i, i64 16
  %i.ajo = getelementptr inbounds nuw i8, ptr %.pn.i167.i, i64 32 ; 2 uses
  %.val207.i = load <2 x i64>, ptr %i.ajo, align 1, !tbaa !11
  store <2 x i64> %.val207.i, ptr %i.ajn, align 1, !tbaa !11
  %i.ajp = getelementptr inbounds nuw i8, ptr %.130.i166.i, i64 32 ; 2 uses
  %i.ajq = icmp ult ptr %i.ajp, %i.aio
  br i1 %i.ajq, label %bb.es, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

ZSTD_execSequenceSplitLitBuffer.exit.i:           ; preds = %bb.es, %.preheader605.i, %bb.el, %bb.dy, %.preheader602.i, %bb.dr, %middle.block152, %middle.block129, %bb.ea, %bb.eg, %bb.ej, %ZSTD_overlapCopy8.exit196.i, %bb.eq, %bb.dg, %bb.dm, %bb.dp, %ZSTD_overlapCopy8.exit193.i, %bb.dw
  %i.ajr = phi i64 [ %i.agc, %middle.block152 ], [ %i.acs, %bb.dg ], [ %i.agc, %bb.eq ], [ %i.acl, %bb.dm ], [ %i.acl, %ZSTD_overlapCopy8.exit193.i ], [ %i.acl, %middle.block129 ], [ %i.acl, %bb.dp ], [ %i.acl, %.preheader602.i ], [ %i.acl, %bb.dw ], [ %i.agl, %bb.ea ], [ %i.acl, %bb.dr ], [ %i.agc, %bb.eg ], [ %i.agc, %ZSTD_overlapCopy8.exit196.i ], [ %i.agc, %bb.el ], [ %i.agc, %bb.ej ], [ %i.agc, %.preheader605.i ], [ %i.acl, %bb.dy ], [ %i.agc, %bb.es ] ; 3 uses
  %i.ajs = icmp ult i64 %i.ajr, -119
  br i1 %i.ajs, label %.thread529.i, label %.thread566.i

.thread529.i:                                     ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i
  %i.ajt = add i64 %.sroa.0.0.i, %.1242.i643.i    ; 3 uses
  %i.aju = icmp ugt i64 %.sink826.i, %i.ajt
  %i.ajv = select i1 %i.aju, ptr %i.t, ptr %i.p
  %i.ajw = getelementptr inbounds i8, ptr %i.ajv, i64 %i.ajt
  %i.ajx = sub i64 0, %.sink826.i
  %i.ajy = getelementptr inbounds i8, ptr %i.ajw, i64 %i.ajx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ajy, i32 0, i32 3, i32 1)
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ajz, i32 0, i32 3, i32 1)
  %i.aka = and i32 %.1239.i644.i, 7
  %i.akb = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.akb ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.akc, align 8, !tbaa !45
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !45
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akc, i64 16
  store i64 %.sink826.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !45
  %i.akd = getelementptr inbounds nuw i8, ptr %.0207.i646.i, i64 %i.ajr
  br label %bb.et

bb.et:                                            ; preds = %.thread529.i, %bb.de
  %.pn.i = phi i64 [ %i.ajt, %.thread529.i ], [ %i.acb, %bb.de ]
  %.3229.i.ph.i = phi ptr [ %.0226.i645.i, %.thread529.i ], [ %i.hw, %bb.de ] ; 2 uses
  %.6213.i.ph.i = phi ptr [ %i.akd, %.thread529.i ], [ %i.aci, %bb.de ] ; 2 uses
  %.6247.i.ph.i = add i64 %.pn.i, %.sroa.9.0.i
  %i.ake = add nuw i32 %.1239.i644.i, 1           ; 2 uses
  %exitcond687.not.i = icmp eq i32 %i.ake, %5
  br i1 %exitcond687.not.i, label %._crit_edge.i, label %bb.bf, !llvm.loop !111

._crit_edge.i:                                    ; preds = %bb.et, %.preheader608.i
  %i.akf = phi i32 [ %i.hi, %.preheader608.i ], [ %i.vu, %bb.et ]
  %i.akg = phi ptr [ %i.hj, %.preheader608.i ], [ %i.vt, %bb.et ]
  %i.akh = phi i64 [ %i.hk, %.preheader608.i ], [ %i.sc, %bb.et ]
  %i.aki = phi i64 [ %i.hl, %.preheader608.i ], [ %.sink827.i, %bb.et ]
  %i.akj = phi i64 [ %i.hm, %.preheader608.i ], [ %.sink826.i, %bb.et ]
  %.1239.i.lcssa.i = phi i32 [ %.0238.i.lcssa.i, %.preheader608.i ], [ %5, %bb.et ]
  %.0226.i.lcssa.i = phi ptr [ %i.n, %.preheader608.i ], [ %.3229.i.ph.i, %bb.et ] ; 2 uses
  %.0207.i.lcssa.i = phi ptr [ %1, %.preheader608.i ], [ %.6213.i.ph.i, %bb.et ] ; 2 uses
  %i.akk = icmp eq ptr %i.akg, %3
  %.not.i = icmp eq i32 %i.akf, 64
  %or.cond.i = select i1 %i.akk, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.eu, label %.thread566.i

bb.eu:                                            ; preds = %._crit_edge.i
  %i.akl = sub nsw i32 %.1239.i.lcssa.i, %i.ah    ; 2 uses
  %i.akm = icmp slt i32 %i.akl, %5
  br i1 %i.akm, label %.lr.ph662.i, label %.preheader.i

.lr.ph662.i:                                      ; preds = %bb.eu
  %i.akn = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 2 uses
  %i.ako = ptrtoint ptr %i.r to i64               ; 3 uses
  %i.akp = ptrtoint ptr %i.j to i64
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %i.akt = add i64 %i.aj, 16
  %i.aku = add i64 %i.aj, 16
  %i.akv = add i64 %i.aj, 16
  br label %bb.ev

.preheader.i:                                     ; preds = %bb.hl, %bb.eu
  %.4230.i.lcssa.i = phi ptr [ %.0226.i.lcssa.i, %bb.eu ], [ %.6232.i.i, %bb.hl ]
  %.7214.i.lcssa.i = phi ptr [ %.0207.i.lcssa.i, %bb.eu ], [ %.12219.i.i, %bb.hl ]
  %i.akw = trunc i64 %i.akj to i32
  store i32 %i.akw, ptr %i.v, align 4, !tbaa !5
  %i.akx = trunc i64 %i.aki to i32
  store i32 %i.akx, ptr %i.z, align 8, !tbaa !5
  %i.aky = trunc i64 %i.akh to i32
  store i32 %i.aky, ptr %i.ad, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.pre698.i = load i32, ptr %i.d, align 8, !tbaa !35
  %.pre699.pre.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.hm

bb.ev:                                            ; preds = %bb.hl, %.lr.ph662.i
  %.7214.i657.i = phi ptr [ %.0207.i.lcssa.i, %.lr.ph662.i ], [ %.12219.i.i, %bb.hl ] ; 26 uses
  %.4230.i655.i = phi ptr [ %.0226.i.lcssa.i, %.lr.ph662.i ], [ %.6232.i.i, %bb.hl ] ; 5 uses
  %.2240.i654.i = phi i32 [ %i.akl, %.lr.ph662.i ], [ %i.ayk, %bb.hl ] ; 2 uses
  %.7214.i657.i260 = ptrtoaddr ptr %.7214.i657.i to i64 ; 2 uses
  %i.akz = and i32 %.2240.i654.i, 7
  %i.ala = zext nneg i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.ala ; 13 uses
  %i.alc = load i32, ptr %i.d, align 8, !tbaa !35
  %i.ald = icmp eq i32 %i.alc, 2
  br i1 %i.ald, label %bb.ew, label %bb.gr

bb.ew:                                            ; preds = %bb.ev
  %i.ale = load ptr, ptr %i.a, align 8, !tbaa !38 ; 14 uses
  %i.alf = load i64, ptr %i.alb, align 8, !tbaa !94 ; 7 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 %i.alf ; 4 uses
  %i.alh = load ptr, ptr %i.m, align 8, !tbaa !34 ; 3 uses
  %i.ali = icmp ugt ptr %i.alg, %i.alh
  br i1 %i.ali, label %bb.ex, label %bb.fx

bb.ex:                                            ; preds = %bb.ew
  %i.alj = ptrtoint ptr %i.alh to i64             ; 2 uses
  %i.alk = ptrtoint ptr %i.ale to i64             ; 4 uses
  %i.all = sub i64 %i.alj, %i.alk                 ; 9 uses
  %.not270.i.i = icmp eq ptr %i.alh, %i.ale
  br i1 %.not270.i.i, label %thread-pre-split58, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.alm = ptrtoint ptr %.7214.i657.i to i64      ; 8 uses
  %i.aln = sub i64 %i.akp, %i.alm
  %i.alo = icmp ugt i64 %i.all, %i.aln
  br i1 %i.alo, label %.thread566.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.alp = sub i64 %i.alm, %i.alk                 ; 2 uses
  %i.alq = getelementptr inbounds i8, ptr %.7214.i657.i, i64 %i.all ; 3 uses
  %i.alr = icmp slt i64 %i.all, 8
  %i.als = icmp sgt i64 %i.alp, -8
  %or.cond.i293.i = or i1 %i.als, %i.alr
  br i1 %or.cond.i293.i, label %.preheader.i312.i, label %bb.fa

.preheader.i312.i:                                ; preds = %bb.ez
  %i.alt = icmp sgt i64 %i.all, 0
end_hunk_0
begin_hunk_1_@ZSTD_decompressSequencesLong:bb.a
  br i1 %i.anh, label %vec.epilog.middle.block255, label %vec.epilog.vector.body249, !llvm.loop !116

vec.epilog.middle.block255:                       ; preds = %vec.epilog.vector.body249
  %cmp.n256 = icmp eq i64 %i.amy, %n.vec248
  br i1 %cmp.n256, label %ZSTD_safecopyDstBeforeSrc.exit316.i, label %.lr.ph.i300.i.preheader

.lr.ph.i300.i.preheader:                          ; preds = %iter.check242, %vec.epilog.iter.check244, %vec.epilog.middle.block255
  %.238.i301.i.ph = phi ptr [ %.150.i296.i, %iter.check242 ], [ %i.ana, %vec.epilog.iter.check244 ], [ %i.anf, %vec.epilog.middle.block255 ]
  %.23137.i302.i.ph = phi ptr [ %.13049.i297.i, %iter.check242 ], [ %i.anb, %vec.epilog.iter.check244 ], [ %i.ang, %vec.epilog.middle.block255 ]
  br label %.lr.ph.i300.i

.lr.ph.i300.i:                                    ; preds = %.lr.ph.i300.i.preheader, %.lr.ph.i300.i
  %.238.i301.i = phi ptr [ %i.ank, %.lr.ph.i300.i ], [ %.238.i301.i.ph, %.lr.ph.i300.i.preheader ] ; 2 uses
  %.23137.i302.i = phi ptr [ %i.ani, %.lr.ph.i300.i ], [ %.23137.i302.i.ph, %.lr.ph.i300.i.preheader ] ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.23137.i302.i, i64 1
  %i.anj = load i8, ptr %.23137.i302.i, align 1, !tbaa !11
  %i.ank = getelementptr inbounds nuw i8, ptr %.238.i301.i, i64 1 ; 2 uses
  store i8 %i.anj, ptr %.238.i301.i, align 1, !tbaa !11
  %exitcond.not.i303.i = icmp eq ptr %i.ank, %scevgep.i299.i
  br i1 %exitcond.not.i303.i, label %ZSTD_safecopyDstBeforeSrc.exit316.i, label %.lr.ph.i300.i, !llvm.loop !117

ZSTD_safecopyDstBeforeSrc.exit316.i:              ; preds = %.lr.ph.i300.i, %.lr.ph41.i313.i, %middle.block237, %vec.epilog.middle.block255, %middle.block197, %vec.epilog.middle.block215, %.preheader.i312.i
  %i.anl = load i64, ptr %i.alb, align 8, !tbaa !94
  %i.anm = sub i64 %i.anl, %i.all                 ; 2 uses
  store i64 %i.anm, ptr %i.alb, align 8, !tbaa !94
  br label %thread-pre-split58

thread-pre-split58:                               ; preds = %bb.ex, %ZSTD_safecopyDstBeforeSrc.exit316.i
  %.sroa.026.0.copyload = phi i64 [ %i.anm, %ZSTD_safecopyDstBeforeSrc.exit316.i ], [ %i.alf, %bb.ex ] ; 7 uses
  %.8215.i.i = phi ptr [ %i.alq, %ZSTD_safecopyDstBeforeSrc.exit316.i ], [ %.7214.i657.i, %bb.ex ] ; 8 uses
  %.8215.i.i157 = ptrtoaddr ptr %.8215.i.i to i64
  store ptr %i.akq, ptr %i.a, align 8, !tbaa !38
  store i32 0, ptr %i.d, align 8, !tbaa !35
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %.sroa.628.0.copyload = load i64, ptr %.sroa.628.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %.sroa.1132.0.copyload = load i64, ptr %.sroa.1132.0..sroa_idx, align 8 ; 11 uses
  %i.ann = getelementptr i8, ptr %.8215.i.i, i64 %.sroa.026.0.copyload ; 7 uses
  %i.ano = add i64 %.sroa.628.0.copyload, %.sroa.026.0.copyload ; 9 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.akq, i64 %.sroa.026.0.copyload
  %i.anq = sub i64 0, %.sroa.1132.0.copyload
  %i.anr = getelementptr inbounds i8, ptr %i.ann, i64 %i.anq ; 2 uses
  %i.ans = icmp ugt i64 %.sroa.026.0.copyload, 65536
  %i.ant = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 %i.ano
  %i.anu = icmp ugt ptr %i.ant, %i.akn
  %or.cond.i23.i = select i1 %i.ans, i1 true, i1 %i.anu, !prof !104
  br i1 %or.cond.i23.i, label %bb.fe, label %.critedge.i24.i, !prof !104

.critedge.i24.i:                                  ; preds = %thread-pre-split58
  %.val240.i = load <2 x i64>, ptr %i.akq, align 4, !tbaa !11
  store <2 x i64> %.val240.i, ptr %.8215.i.i, align 1, !tbaa !11
  %i.anv = icmp samesign ugt i64 %.sroa.026.0.copyload, 16
  br i1 %i.anv, label %bb.ff, label %ZSTD_wildcopy.exit136.i, !prof !52

bb.fe:                                            ; preds = %thread-pre-split58
  %i.anw = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.8215.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.alb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.akr, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %.loopexit.i

bb.ff:                                            ; preds = %.critedge.i24.i
  %i.anx = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 16
  %.val218.i = load <2 x i64>, ptr %i.aks, align 4, !tbaa !11
  store <2 x i64> %.val218.i, ptr %i.anx, align 1, !tbaa !11
  %i.any = icmp samesign ult i64 %.sroa.026.0.copyload, 33
  br i1 %i.any, label %ZSTD_wildcopy.exit136.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.anz = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 32
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fh, %bb.fg
  %.130.i131.i = phi ptr [ %i.anz, %bb.fg ], [ %i.aoc, %bb.fh ] ; 3 uses
  %.pn.i132.i = phi ptr [ %i.aks, %bb.fg ], [ %i.aob, %bb.fh ] ; 2 uses
  %.1.i133.i = getelementptr inbounds nuw i8, ptr %.pn.i132.i, i64 16
  %.1.i133.val.i = load <2 x i64>, ptr %.1.i133.i, align 1, !tbaa !11
  store <2 x i64> %.1.i133.val.i, ptr %.130.i131.i, align 1, !tbaa !11
  %i.aoa = getelementptr inbounds nuw i8, ptr %.130.i131.i, i64 16
  %i.aob = getelementptr inbounds nuw i8, ptr %.pn.i132.i, i64 32 ; 2 uses
  %.val217.i = load <2 x i64>, ptr %i.aob, align 1, !tbaa !11
  store <2 x i64> %.val217.i, ptr %i.aoa, align 1, !tbaa !11
  %i.aoc = getelementptr inbounds nuw i8, ptr %.130.i131.i, i64 32 ; 2 uses
  %i.aod = icmp ult ptr %i.aoc, %i.ann
  br i1 %i.aod, label %bb.fh, label %ZSTD_wildcopy.exit136.i, !llvm.loop !100

ZSTD_wildcopy.exit136.i:                          ; preds = %bb.fh, %bb.ff, %.critedge.i24.i
  store ptr %i.anp, ptr %i.a, align 8, !tbaa !38
  %i.aoe = ptrtoint ptr %i.ann to i64             ; 2 uses
  %i.aof = sub i64 %i.aoe, %i.aj                  ; 3 uses
  %i.aog = icmp ugt i64 %.sroa.1132.0.copyload, %i.aof
  br i1 %i.aog, label %bb.fi, label %bb.fm

bb.fi:                                            ; preds = %ZSTD_wildcopy.exit136.i
  %i.aoh = sub i64 %i.aoe, %i.ako
  %i.aoi = icmp ugt i64 %.sroa.1132.0.copyload, %i.aoh
  br i1 %i.aoi, label %.thread566.i, label %bb.fj, !prof !52

bb.fj:                                            ; preds = %bb.fi
  %i.aoj = ptrtoint ptr %i.anr to i64
  %i.aok = sub i64 %i.aoj, %i.aj                  ; 3 uses
  %i.aol = getelementptr inbounds i8, ptr %i.t, i64 %i.aok ; 2 uses
  %i.aom = add i64 %i.aok, %.sroa.628.0.copyload  ; 2 uses
  %.not.i26.i = icmp sgt i64 %i.aom, 0
  br i1 %.not.i26.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ann, ptr align 1 %i.aol, i64 %.sroa.628.0.copyload, i1 false)
  br label %.loopexit.i

bb.fl:                                            ; preds = %bb.fj
  %gepdiff.i27.i = sub nsw i64 0, %i.aok          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ann, ptr align 1 %i.aol, i64 %gepdiff.i27.i, i1 false)
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ann, i64 %gepdiff.i27.i
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %ZSTD_wildcopy.exit136.i
  %.sroa.628.0 = phi i64 [ %i.aom, %bb.fl ], [ %.sroa.628.0.copyload, %ZSTD_wildcopy.exit136.i ] ; 5 uses
  %.0500.i = phi ptr [ %i.p, %bb.fl ], [ %i.anr, %ZSTD_wildcopy.exit136.i ] ; 9 uses
  %.0499.i = phi ptr [ %i.aon, %bb.fl ], [ %i.ann, %ZSTD_wildcopy.exit136.i ] ; 12 uses
  %i.aoo = icmp ugt i64 %.sroa.1132.0.copyload, 15
  br i1 %i.aoo, label %bb.fn, label %bb.fq, !prof !89

bb.fn:                                            ; preds = %bb.fm
  %i.aop = getelementptr inbounds i8, ptr %.0499.i, i64 %.sroa.628.0
  %.val216.i = load <2 x i64>, ptr %.0500.i, align 1, !tbaa !11
  store <2 x i64> %.val216.i, ptr %.0499.i, align 1, !tbaa !11
  %i.aoq = icmp slt i64 %.sroa.628.0, 17
  br i1 %i.aoq, label %.loopexit.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aor = getelementptr inbounds nuw i8, ptr %.0499.i, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %bb.fo
  %.130.i138.i = phi ptr [ %i.aor, %bb.fo ], [ %i.aou, %bb.fp ] ; 3 uses
  %.pn.i139.i = phi ptr [ %.0500.i, %bb.fo ], [ %i.aot, %bb.fp ] ; 2 uses
  %.1.i140.i = getelementptr inbounds nuw i8, ptr %.pn.i139.i, i64 16
  %.1.i140.val.i = load <2 x i64>, ptr %.1.i140.i, align 1, !tbaa !11
  store <2 x i64> %.1.i140.val.i, ptr %.130.i138.i, align 1, !tbaa !11
  %i.aos = getelementptr inbounds nuw i8, ptr %.130.i138.i, i64 16
  %i.aot = getelementptr inbounds nuw i8, ptr %.pn.i139.i, i64 32 ; 2 uses
  %.val215.i = load <2 x i64>, ptr %i.aot, align 1, !tbaa !11
  store <2 x i64> %.val215.i, ptr %i.aos, align 1, !tbaa !11
  %i.aou = getelementptr inbounds nuw i8, ptr %.130.i138.i, i64 32 ; 2 uses
  %i.aov = icmp ult ptr %i.aou, %i.aop
  br i1 %i.aov, label %bb.fp, label %.loopexit.i, !llvm.loop !100

bb.fq:                                            ; preds = %bb.fm
  %i.aow = icmp samesign ult i64 %.sroa.1132.0.copyload, 8
  br i1 %i.aow, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1132.0.copyload
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !5
  %i.aoz = load i8, ptr %.0500.i, align 1, !tbaa !11
  store i8 %i.aoz, ptr %.0499.i, align 1, !tbaa !11
  %i.apa = getelementptr inbounds nuw i8, ptr %.0500.i, i64 1
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !11
  %i.apc = getelementptr inbounds nuw i8, ptr %.0499.i, i64 1
  store i8 %i.apb, ptr %i.apc, align 1, !tbaa !11
  %i.apd = getelementptr inbounds nuw i8, ptr %.0500.i, i64 2
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !11
  %i.apf = getelementptr inbounds nuw i8, ptr %.0499.i, i64 2
  store i8 %i.ape, ptr %i.apf, align 1, !tbaa !11
  %i.apg = getelementptr inbounds nuw i8, ptr %.0500.i, i64 3
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !11
  %i.api = getelementptr inbounds nuw i8, ptr %.0499.i, i64 3
  store i8 %i.aph, ptr %i.api, align 1, !tbaa !11
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1132.0.copyload
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !5
  %i.apl = zext i32 %i.apk to i64
  %i.apm = getelementptr inbounds nuw i8, ptr %.0500.i, i64 %i.apl ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.0499.i, i64 4
  %.val245.i = load i32, ptr %i.apm, align 1
  store i32 %.val245.i, ptr %i.apn, align 1
  %i.apo = sext i32 %i.aoy to i64
  %i.app = sub nsw i64 0, %i.apo
  %i.apq = getelementptr inbounds i8, ptr %i.apm, i64 %i.app
  br label %ZSTD_overlapCopy8.exit195.i

bb.fs:                                            ; preds = %bb.fq
  %.val251.i = load i64, ptr %.0500.i, align 1
  store i64 %.val251.i, ptr %.0499.i, align 1
  br label %ZSTD_overlapCopy8.exit195.i

ZSTD_overlapCopy8.exit195.i:                      ; preds = %bb.fs, %bb.fr
  %.1501.i = phi ptr [ %i.apq, %bb.fr ], [ %.0500.i, %bb.fs ] ; 2 uses
  %.1501.i159 = ptrtoaddr ptr %.1501.i to i64
  %i.apr = getelementptr inbounds nuw i8, ptr %.1501.i, i64 8 ; 7 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %.0499.i, i64 8 ; 6 uses
  %i.apt = icmp ugt i64 %.sroa.628.0, 8
  br i1 %i.apt, label %bb.ft, label %.loopexit.i

bb.ft:                                            ; preds = %ZSTD_overlapCopy8.exit195.i
  %i.apu = ptrtoint ptr %i.aps to i64
  %i.apv = ptrtoint ptr %i.apr to i64
  %i.apw = sub i64 %i.apu, %i.apv
  %i.apx = getelementptr i8, ptr %.0499.i, i64 %.sroa.628.0 ; 2 uses
  %i.apy = icmp slt i64 %i.apw, 16
  br i1 %i.apy, label %.preheader588.i.preheader, label %bb.fu

.preheader588.i.preheader:                        ; preds = %bb.ft
  %20 = tail call i64 @llvm.umin.i64(i64 %.sroa.1132.0.copyload, i64 %i.aof)
  %umin161 = tail call i64 @llvm.umax.i64(i64 %.sroa.1132.0.copyload, i64 %i.aof) ; 3 uses
  %i.apz = add i64 %.sroa.628.0.copyload, %i.aj
  %21 = add i64 %i.apz, %20
  %i.aqa = add i64 %21, %umin161
  %i.aqb = sub i64 %i.aqa, %.sroa.1132.0.copyload
  %i.aqc = add i64 %umin161, %i.akv
  %umax163 = tail call i64 @llvm.umax.i64(i64 %i.aqb, i64 %i.aqc)
  %i.aqd = add i64 %umin161, %i.aj
  %22 = sub i64 %umax163, %i.aqd
  %23 = add i64 %22, -9                           ; 2 uses
  %i.aqe = lshr i64 %23, 3
  %i.aqf = add nuw nsw i64 %i.aqe, 1              ; 2 uses
  %min.iters.check165 = icmp ult i64 %23, 72
  br i1 %min.iters.check165, label %.preheader588.i.preheader315, label %vector.memcheck156

vector.memcheck156:                               ; preds = %.preheader588.i.preheader
  %i.aqg = sub i64 %.sroa.026.0.copyload, %i.aj
  %i.aqh = add i64 %i.aqg, %.8215.i.i157
  %umax158 = tail call i64 @llvm.umax.i64(i64 %.sroa.1132.0.copyload, i64 %i.aqh)
  %i.aqi = add i64 %umax158, %i.aj
  %i.aqj = sub i64 %.1501.i159, %i.aqi
  %diff.check160 = icmp ugt i64 %i.aqj, -32
  br i1 %diff.check160, label %.preheader588.i.preheader315, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck156
  %n.vec168 = and i64 %i.aqf, 4611686018427387900 ; 3 uses
  %i.aqk = shl i64 %n.vec168, 3                   ; 2 uses
  %i.aql = getelementptr i8, ptr %i.aps, i64 %i.aqk
  %i.aqm = getelementptr i8, ptr %i.apr, i64 %i.aqk
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.aqn = shl i64 %index170, 3                   ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.aps, i64 %i.aqn ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.apr, i64 %i.aqn ; 2 uses
  %i.aqo = getelementptr i8, ptr %next.gep172, i64 16
  %wide.load173 = load <2 x i64>, ptr %next.gep172, align 1
  %wide.load174 = load <2 x i64>, ptr %i.aqo, align 1
  %i.aqp = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x i64> %wide.load173, ptr %next.gep171, align 1
  store <2 x i64> %wide.load174, ptr %i.aqp, align 1
  %index.next175 = add nuw i64 %index170, 4       ; 2 uses
  %i.aqq = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.aqq, label %middle.block176, label %vector.body169, !llvm.loop !118

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.aqf, %n.vec168
  br i1 %cmp.n177, label %.loopexit.i, label %.preheader588.i.preheader315

.preheader588.i.preheader315:                     ; preds = %vector.memcheck156, %.preheader588.i.preheader, %middle.block176
  %.029.i148.i.ph = phi ptr [ %i.aps, %vector.memcheck156 ], [ %i.aps, %.preheader588.i.preheader ], [ %i.aql, %middle.block176 ]
  %.0.i149.i.ph = phi ptr [ %i.apr, %vector.memcheck156 ], [ %i.apr, %.preheader588.i.preheader ], [ %i.aqm, %middle.block176 ]
  br label %.preheader588.i

.preheader588.i:                                  ; preds = %.preheader588.i.preheader315, %.preheader588.i
  %.029.i148.i = phi ptr [ %i.aqr, %.preheader588.i ], [ %.029.i148.i.ph, %.preheader588.i.preheader315 ] ; 2 uses
  %.0.i149.i = phi ptr [ %i.aqs, %.preheader588.i ], [ %.0.i149.i.ph, %.preheader588.i.preheader315 ] ; 2 uses
  %.0.i149.val.i = load i64, ptr %.0.i149.i, align 1
  store i64 %.0.i149.val.i, ptr %.029.i148.i, align 1
  %i.aqr = getelementptr inbounds nuw i8, ptr %.029.i148.i, i64 8 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %.0.i149.i, i64 8
  %i.aqt = icmp ult ptr %i.aqr, %i.apx
  br i1 %i.aqt, label %.preheader588.i, label %.loopexit.i, !llvm.loop !119

bb.fu:                                            ; preds = %bb.ft
  %.val214.i = load <2 x i64>, ptr %i.apr, align 1, !tbaa !11
  store <2 x i64> %.val214.i, ptr %i.aps, align 1, !tbaa !11
  %i.aqu = icmp slt i64 %.sroa.628.0, 25
  br i1 %i.aqu, label %.loopexit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aqv = getelementptr inbounds nuw i8, ptr %.0499.i, i64 24
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fw, %bb.fv
  %.130.i145.i = phi ptr [ %i.aqv, %bb.fv ], [ %i.aqy, %bb.fw ] ; 3 uses
  %.pn.i146.i = phi ptr [ %i.apr, %bb.fv ], [ %i.aqx, %bb.fw ] ; 2 uses
  %.1.i147.i = getelementptr inbounds nuw i8, ptr %.pn.i146.i, i64 16
  %.1.i147.val.i = load <2 x i64>, ptr %.1.i147.i, align 1, !tbaa !11
  store <2 x i64> %.1.i147.val.i, ptr %.130.i145.i, align 1, !tbaa !11
  %i.aqw = getelementptr inbounds nuw i8, ptr %.130.i145.i, i64 16
  %i.aqx = getelementptr inbounds nuw i8, ptr %.pn.i146.i, i64 32 ; 2 uses
  %.val213.i = load <2 x i64>, ptr %i.aqx, align 1, !tbaa !11
  store <2 x i64> %.val213.i, ptr %i.aqw, align 1, !tbaa !11
  %i.aqy = getelementptr inbounds nuw i8, ptr %.130.i145.i, i64 32 ; 2 uses
  %i.aqz = icmp ult ptr %i.aqy, %i.apx
  br i1 %i.aqz, label %bb.fw, label %.loopexit.i, !llvm.loop !100

.loopexit.i:                                      ; preds = %bb.fw, %.preheader588.i, %bb.fp, %middle.block176, %bb.fu, %ZSTD_overlapCopy8.exit195.i, %bb.fn, %bb.fk, %bb.fe
  %.0.i25.i = phi i64 [ %i.anw, %bb.fe ], [ %i.ano, %bb.fp ], [ %i.ano, %bb.fk ], [ %i.ano, %ZSTD_overlapCopy8.exit195.i ], [ %i.ano, %bb.fu ], [ %i.ano, %bb.fn ], [ %i.ano, %middle.block176 ], [ %i.ano, %.preheader588.i ], [ %i.ano, %bb.fw ] ; 3 uses
  %i.ara = icmp ult i64 %.0.i25.i, -119
  %i.arb = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 %.0.i25.i
  br i1 %i.ara, label %bb.hl, label %.thread566.i

bb.fx:                                            ; preds = %bb.ew
  %i.arc = getelementptr inbounds i8, ptr %i.alg, i64 -32 ; 2 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %.sroa.552.0.copyload = load i64, ptr %.sroa.552.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %.sroa.1056.0.copyload = load i64, ptr %.sroa.1056.0..sroa_idx, align 8 ; 11 uses
  %i.ard = getelementptr i8, ptr %.7214.i657.i, i64 %i.alf ; 7 uses
  %i.are = add i64 %.sroa.552.0.copyload, %i.alf  ; 9 uses
  %i.arf = sub i64 0, %.sroa.1056.0.copyload
  %i.arg = getelementptr inbounds i8, ptr %i.ard, i64 %i.arf ; 2 uses
  %i.arh = icmp ugt ptr %i.alg, %.4230.i655.i
  %i.ari = getelementptr inbounds nuw i8, ptr %.7214.i657.i, i64 %i.are
  %i.arj = icmp ugt ptr %i.ari, %i.arc
  %or.cond.i40.i = select i1 %i.arh, i1 true, i1 %i.arj, !prof !104
  br i1 %or.cond.i40.i, label %bb.fy, label %.critedge.i41.i, !prof !104

.critedge.i41.i:                                  ; preds = %bb.fx
  %.val237.i = load <2 x i64>, ptr %i.ale, align 1, !tbaa !11
  store <2 x i64> %.val237.i, ptr %.7214.i657.i, align 1, !tbaa !11
  %i.ark = icmp ugt i64 %i.alf, 16
  br i1 %i.ark, label %bb.fz, label %ZSTD_wildcopy.exit.i, !prof !52

bb.fy:                                            ; preds = %bb.fx
  %i.arl = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.7214.i657.i, ptr noundef %i.j, ptr noundef nonnull %i.arc, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.alb, ptr noundef nonnull %i.a, ptr noundef %.4230.i655.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.fz:                                            ; preds = %.critedge.i41.i
  %i.arm = getelementptr inbounds nuw i8, ptr %.7214.i657.i, i64 16
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ale, i64 16 ; 2 uses
  %i.aro = add i64 %i.alf, -16
  %.val236.i = load <2 x i64>, ptr %i.arn, align 1, !tbaa !11
  store <2 x i64> %.val236.i, ptr %i.arm, align 1, !tbaa !11
  %i.arp = icmp slt i64 %i.aro, 17
  br i1 %i.arp, label %ZSTD_wildcopy.exit.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.arq = getelementptr inbounds nuw i8, ptr %.7214.i657.i, i64 32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gb, %bb.ga
  %.130.i.i = phi ptr [ %i.arq, %bb.ga ], [ %i.art, %bb.gb ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.arn, %bb.ga ], [ %i.ars, %bb.gb ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !11
  %i.arr = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.ars = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val235.i = load <2 x i64>, ptr %i.ars, align 1, !tbaa !11
  store <2 x i64> %.val235.i, ptr %i.arr, align 1, !tbaa !11
  %i.art = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.aru = icmp ult ptr %i.art, %i.ard
  br i1 %i.aru, label %bb.gb, label %ZSTD_wildcopy.exit.i, !llvm.loop !100

ZSTD_wildcopy.exit.i:                             ; preds = %bb.gb, %bb.fz, %.critedge.i41.i
  store ptr %i.alg, ptr %i.a, align 8, !tbaa !38
  %i.arv = ptrtoint ptr %i.ard to i64             ; 2 uses
  %i.arw = sub i64 %i.arv, %i.aj                  ; 3 uses
  %i.arx = icmp ugt i64 %.sroa.1056.0.copyload, %i.arw
  br i1 %i.arx, label %bb.gc, label %bb.gg

bb.gc:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.ary = sub i64 %i.arv, %i.ako
  %i.arz = icmp ugt i64 %.sroa.1056.0.copyload, %i.ary
  br i1 %i.arz, label %.thread566.i, label %bb.gd, !prof !52

bb.gd:                                            ; preds = %bb.gc
  %i.asa = ptrtoint ptr %i.arg to i64
  %i.asb = sub i64 %i.asa, %i.aj                  ; 3 uses
  %i.asc = getelementptr inbounds i8, ptr %i.t, i64 %i.asb ; 2 uses
  %i.asd = add i64 %i.asb, %.sroa.552.0.copyload  ; 2 uses
  %.not.i43.i = icmp sgt i64 %i.asd, 0
  br i1 %.not.i43.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ard, ptr align 1 %i.asc, i64 %.sroa.552.0.copyload, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.gf:                                            ; preds = %bb.gd
  %gepdiff.i44.i = sub nsw i64 0, %i.asb          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ard, ptr align 1 %i.asc, i64 %gepdiff.i44.i, i1 false)
  %i.ase = getelementptr inbounds nuw i8, ptr %i.ard, i64 %gepdiff.i44.i
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %ZSTD_wildcopy.exit.i
  %.sroa.552.0 = phi i64 [ %i.asd, %bb.gf ], [ %.sroa.552.0.copyload, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %.0492.i = phi ptr [ %i.p, %bb.gf ], [ %i.arg, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ase, %bb.gf ], [ %i.ard, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %i.asf = icmp ugt i64 %.sroa.1056.0.copyload, 15
  br i1 %i.asf, label %bb.gh, label %bb.gk, !prof !89

bb.gh:                                            ; preds = %bb.gg
  %i.asg = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.552.0
  %.val234.i = load <2 x i64>, ptr %.0492.i, align 1, !tbaa !11
  store <2 x i64> %.val234.i, ptr %.0.i, align 1, !tbaa !11
  %i.ash = icmp slt i64 %.sroa.552.0, 17
  br i1 %i.ash, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.asi = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %bb.gi
  %.130.i77.i = phi ptr [ %i.asi, %bb.gi ], [ %i.asl, %bb.gj ] ; 3 uses
  %.pn.i78.i = phi ptr [ %.0492.i, %bb.gi ], [ %i.ask, %bb.gj ] ; 2 uses
  %.1.i79.i = getelementptr inbounds nuw i8, ptr %.pn.i78.i, i64 16
  %.1.i79.val.i = load <2 x i64>, ptr %.1.i79.i, align 1, !tbaa !11
  store <2 x i64> %.1.i79.val.i, ptr %.130.i77.i, align 1, !tbaa !11
  %i.asj = getelementptr inbounds nuw i8, ptr %.130.i77.i, i64 16
  %i.ask = getelementptr inbounds nuw i8, ptr %.pn.i78.i, i64 32 ; 2 uses
  %.val233.i = load <2 x i64>, ptr %i.ask, align 1, !tbaa !11
  store <2 x i64> %.val233.i, ptr %i.asj, align 1, !tbaa !11
  %i.asl = getelementptr inbounds nuw i8, ptr %.130.i77.i, i64 32 ; 2 uses
  %i.asm = icmp ult ptr %i.asl, %i.asg
  br i1 %i.asm, label %bb.gj, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !100

bb.gk:                                            ; preds = %bb.gg
  %i.asn = icmp samesign ult i64 %.sroa.1056.0.copyload, 8
  br i1 %i.asn, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1056.0.copyload
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !5
  %i.asq = load i8, ptr %.0492.i, align 1, !tbaa !11
  store i8 %i.asq, ptr %.0.i, align 1, !tbaa !11
  %i.asr = getelementptr inbounds nuw i8, ptr %.0492.i, i64 1
  %i.ass = load i8, ptr %i.asr, align 1, !tbaa !11
  %i.ast = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.ass, ptr %i.ast, align 1, !tbaa !11
  %i.asu = getelementptr inbounds nuw i8, ptr %.0492.i, i64 2
  %i.asv = load i8, ptr %i.asu, align 1, !tbaa !11
  %i.asw = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.asv, ptr %i.asw, align 1, !tbaa !11
  %i.asx = getelementptr inbounds nuw i8, ptr %.0492.i, i64 3
  %i.asy = load i8, ptr %i.asx, align 1, !tbaa !11
  %i.asz = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.asy, ptr %i.asz, align 1, !tbaa !11
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1056.0.copyload
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !5
  %i.atc = zext i32 %i.atb to i64
  %i.atd = getelementptr inbounds nuw i8, ptr %.0492.i, i64 %i.atc ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %.val248.i = load i32, ptr %i.atd, align 1
  store i32 %.val248.i, ptr %i.ate, align 1
  %i.atf = sext i32 %i.asp to i64
  %i.atg = sub nsw i64 0, %i.atf
  %i.ath = getelementptr inbounds i8, ptr %i.atd, i64 %i.atg
  br label %ZSTD_overlapCopy8.exit.i

bb.gm:                                            ; preds = %bb.gk
  %.val254.i = load i64, ptr %.0492.i, align 1
  store i64 %.val254.i, ptr %.0.i, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.gm, %bb.gl
  %.1.i = phi ptr [ %i.ath, %bb.gl ], [ %.0492.i, %bb.gm ] ; 2 uses
  %.1.i262 = ptrtoaddr ptr %.1.i to i64
  %i.ati = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.atk = icmp ugt i64 %.sroa.552.0, 8
  br i1 %i.atk, label %bb.gn, label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.gn:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.atl = ptrtoint ptr %i.atj to i64
  %i.atm = ptrtoint ptr %i.ati to i64
  %i.atn = sub i64 %i.atl, %i.atm
  %i.ato = getelementptr i8, ptr %.0.i, i64 %.sroa.552.0 ; 2 uses
  %i.atp = icmp slt i64 %i.atn, 16
  br i1 %i.atp, label %.preheader592.i.preheader, label %bb.go

.preheader592.i.preheader:                        ; preds = %bb.gn
  %24 = tail call i64 @llvm.umin.i64(i64 %.sroa.1056.0.copyload, i64 %i.arw)
  %umin264 = tail call i64 @llvm.umax.i64(i64 %.sroa.1056.0.copyload, i64 %i.arw) ; 3 uses
  %i.atq = add i64 %.sroa.552.0.copyload, %i.aj
  %25 = add i64 %i.atq, %24
  %i.atr = add i64 %25, %umin264
  %i.ats = sub i64 %i.atr, %.sroa.1056.0.copyload
  %i.att = add i64 %umin264, %i.aku
  %umax266 = tail call i64 @llvm.umax.i64(i64 %i.ats, i64 %i.att)
  %i.atu = add i64 %umin264, %i.aj
  %26 = sub i64 %umax266, %i.atu
  %27 = add i64 %26, -9                           ; 2 uses
  %i.atv = lshr i64 %27, 3
  %i.atw = add nuw nsw i64 %i.atv, 1              ; 2 uses
  %min.iters.check268 = icmp ult i64 %27, 72
  br i1 %min.iters.check268, label %.preheader592.i.preheader319, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.preheader592.i.preheader
  %i.atx = sub i64 %i.alf, %i.aj
  %i.aty = add i64 %i.atx, %.7214.i657.i260
  %umax261 = tail call i64 @llvm.umax.i64(i64 %.sroa.1056.0.copyload, i64 %i.aty)
  %i.atz = add i64 %umax261, %i.aj
  %i.aua = sub i64 %.1.i262, %i.atz
  %diff.check263 = icmp ugt i64 %i.aua, -32
  br i1 %diff.check263, label %.preheader592.i.preheader319, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck259
  %n.vec271 = and i64 %i.atw, 4611686018427387900 ; 3 uses
  %i.aub = shl i64 %n.vec271, 3                   ; 2 uses
  %i.auc = getelementptr i8, ptr %i.atj, i64 %i.aub
  %i.aud = getelementptr i8, ptr %i.ati, i64 %i.aub
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph269
  %index273 = phi i64 [ 0, %vector.ph269 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.aue = shl i64 %index273, 3                   ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.atj, i64 %i.aue ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.ati, i64 %i.aue ; 2 uses
  %i.auf = getelementptr i8, ptr %next.gep275, i64 16
  %wide.load276 = load <2 x i64>, ptr %next.gep275, align 1
  %wide.load277 = load <2 x i64>, ptr %i.auf, align 1
  %i.aug = getelementptr i8, ptr %next.gep274, i64 16
  store <2 x i64> %wide.load276, ptr %next.gep274, align 1
  store <2 x i64> %wide.load277, ptr %i.aug, align 1
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.auh = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.auh, label %middle.block279, label %vector.body272, !llvm.loop !120

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.atw, %n.vec271
  br i1 %cmp.n280, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %.preheader592.i.preheader319

.preheader592.i.preheader319:                     ; preds = %vector.memcheck259, %.preheader592.i.preheader, %middle.block279
  %.029.i.i.ph = phi ptr [ %i.atj, %vector.memcheck259 ], [ %i.atj, %.preheader592.i.preheader ], [ %i.auc, %middle.block279 ]
  %.0.i86.i.ph = phi ptr [ %i.ati, %vector.memcheck259 ], [ %i.ati, %.preheader592.i.preheader ], [ %i.aud, %middle.block279 ]
  br label %.preheader592.i

.preheader592.i:                                  ; preds = %.preheader592.i.preheader319, %.preheader592.i
  %.029.i.i = phi ptr [ %i.aui, %.preheader592.i ], [ %.029.i.i.ph, %.preheader592.i.preheader319 ] ; 2 uses
  %.0.i86.i = phi ptr [ %i.auj, %.preheader592.i ], [ %.0.i86.i.ph, %.preheader592.i.preheader319 ] ; 2 uses
  %.0.i86.val.i = load i64, ptr %.0.i86.i, align 1
  store i64 %.0.i86.val.i, ptr %.029.i.i, align 1
  %i.aui = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 8
  %i.auk = icmp ult ptr %i.aui, %i.ato
  br i1 %i.auk, label %.preheader592.i, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !121

bb.go:                                            ; preds = %bb.gn
  %.val232.i = load <2 x i64>, ptr %i.ati, align 1, !tbaa !11
  store <2 x i64> %.val232.i, ptr %i.atj, align 1, !tbaa !11
  %i.aul = icmp slt i64 %.sroa.552.0, 25
  br i1 %i.aul, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aum = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gq, %bb.gp
  %.130.i83.i = phi ptr [ %i.aum, %bb.gp ], [ %i.aup, %bb.gq ] ; 3 uses
  %.pn.i84.i = phi ptr [ %i.ati, %bb.gp ], [ %i.auo, %bb.gq ] ; 2 uses
  %.1.i85.i = getelementptr inbounds nuw i8, ptr %.pn.i84.i, i64 16
  %.1.i85.val.i = load <2 x i64>, ptr %.1.i85.i, align 1, !tbaa !11
  store <2 x i64> %.1.i85.val.i, ptr %.130.i83.i, align 1, !tbaa !11
  %i.aun = getelementptr inbounds nuw i8, ptr %.130.i83.i, i64 16
  %i.auo = getelementptr inbounds nuw i8, ptr %.pn.i84.i, i64 32 ; 2 uses
  %.val231.i = load <2 x i64>, ptr %i.auo, align 1, !tbaa !11
  store <2 x i64> %.val231.i, ptr %i.aun, align 1, !tbaa !11
  %i.aup = getelementptr inbounds nuw i8, ptr %.130.i83.i, i64 32 ; 2 uses
  %i.auq = icmp ult ptr %i.aup, %i.ato
  br i1 %i.auq, label %bb.gq, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !100

bb.gr:                                            ; preds = %bb.ev
  %.sroa.034.0.copyload = load i64, ptr %i.alb, align 8 ; 6 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %.sroa.1040.0.copyload = load i64, ptr %.sroa.1040.0..sroa_idx, align 8 ; 11 uses
  %i.aur = getelementptr i8, ptr %.7214.i657.i, i64 %.sroa.034.0.copyload ; 7 uses
  %i.aus = add i64 %.sroa.536.0.copyload, %.sroa.034.0.copyload ; 9 uses
  %i.aut = load ptr, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.sroa.034.0.copyload ; 2 uses
  %i.auv = sub i64 0, %.sroa.1040.0.copyload
  %i.auw = getelementptr inbounds i8, ptr %i.aur, i64 %i.auv ; 2 uses
  %i.aux = icmp ugt ptr %i.auu, %.4230.i655.i
  %i.auy = getelementptr inbounds nuw i8, ptr %.7214.i657.i, i64 %i.aus
  %i.auz = icmp ugt ptr %i.auy, %i.akn
  %or.cond.i29.i = select i1 %i.aux, i1 true, i1 %i.auz, !prof !104
  br i1 %or.cond.i29.i, label %bb.gs, label %.critedge.i30.i, !prof !104

.critedge.i30.i:                                  ; preds = %bb.gr
  %.val239.i = load <2 x i64>, ptr %i.aut, align 1, !tbaa !11
  store <2 x i64> %.val239.i, ptr %.7214.i657.i, align 1, !tbaa !11
  %i.ava = icmp ugt i64 %.sroa.034.0.copyload, 16
  br i1 %i.ava, label %bb.gt, label %ZSTD_wildcopy.exit115.i, !prof !52

bb.gs:                                            ; preds = %bb.gr
  %i.avb = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.7214.i657.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.alb, ptr noundef nonnull %i.a, ptr noundef %.4230.i655.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.gt:                                            ; preds = %.critedge.i30.i
  %i.avc = getelementptr inbounds nuw i8, ptr %.7214.i657.i, i64 16
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aut, i64 16 ; 2 uses
  %i.ave = add i64 %.sroa.034.0.copyload, -16
  %.val224.i = load <2 x i64>, ptr %i.avd, align 1, !tbaa !11
  store <2 x i64> %.val224.i, ptr %i.avc, align 1, !tbaa !11
  %i.avf = icmp slt i64 %i.ave, 17
  br i1 %i.avf, label %ZSTD_wildcopy.exit115.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.avg = getelementptr inbounds nuw i8, ptr %.7214.i657.i, i64 32
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gv, %bb.gu
  %.130.i110.i = phi ptr [ %i.avg, %bb.gu ], [ %i.avj, %bb.gv ] ; 3 uses
  %.pn.i111.i = phi ptr [ %i.avd, %bb.gu ], [ %i.avi, %bb.gv ] ; 2 uses
  %.1.i112.i = getelementptr inbounds nuw i8, ptr %.pn.i111.i, i64 16
  %.1.i112.val.i = load <2 x i64>, ptr %.1.i112.i, align 1, !tbaa !11
  store <2 x i64> %.1.i112.val.i, ptr %.130.i110.i, align 1, !tbaa !11
  %i.avh = getelementptr inbounds nuw i8, ptr %.130.i110.i, i64 16
  %i.avi = getelementptr inbounds nuw i8, ptr %.pn.i111.i, i64 32 ; 2 uses
  %.val223.i = load <2 x i64>, ptr %i.avi, align 1, !tbaa !11
  store <2 x i64> %.val223.i, ptr %i.avh, align 1, !tbaa !11
  %i.avj = getelementptr inbounds nuw i8, ptr %.130.i110.i, i64 32 ; 2 uses
  %i.avk = icmp ult ptr %i.avj, %i.aur
  br i1 %i.avk, label %bb.gv, label %ZSTD_wildcopy.exit115.i, !llvm.loop !100

ZSTD_wildcopy.exit115.i:                          ; preds = %bb.gv, %bb.gt, %.critedge.i30.i
  store ptr %i.auu, ptr %i.a, align 8, !tbaa !38
  %i.avl = ptrtoint ptr %i.aur to i64             ; 2 uses
  %i.avm = sub i64 %i.avl, %i.aj                  ; 3 uses
  %i.avn = icmp ugt i64 %.sroa.1040.0.copyload, %i.avm
  br i1 %i.avn, label %bb.gw, label %bb.ha

bb.gw:                                            ; preds = %ZSTD_wildcopy.exit115.i
  %i.avo = sub i64 %i.avl, %i.ako
  %i.avp = icmp ugt i64 %.sroa.1040.0.copyload, %i.avo
  br i1 %i.avp, label %.thread566.i, label %bb.gx, !prof !52

bb.gx:                                            ; preds = %bb.gw
  %i.avq = ptrtoint ptr %i.auw to i64
  %i.avr = sub i64 %i.avq, %i.aj                  ; 3 uses
  %i.avs = getelementptr inbounds i8, ptr %i.t, i64 %i.avr ; 2 uses
  %i.avt = add i64 %i.avr, %.sroa.536.0.copyload  ; 2 uses
  %.not.i32.i = icmp sgt i64 %i.avt, 0
  br i1 %.not.i32.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aur, ptr align 1 %i.avs, i64 %.sroa.536.0.copyload, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.gz:                                            ; preds = %bb.gx
  %gepdiff.i33.i = sub nsw i64 0, %i.avr          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aur, ptr align 1 %i.avs, i64 %gepdiff.i33.i, i1 false)
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aur, i64 %gepdiff.i33.i
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %ZSTD_wildcopy.exit115.i
  %.sroa.536.0 = phi i64 [ %i.avt, %bb.gz ], [ %.sroa.536.0.copyload, %ZSTD_wildcopy.exit115.i ] ; 5 uses
  %.0497.i = phi ptr [ %i.p, %bb.gz ], [ %i.auw, %ZSTD_wildcopy.exit115.i ] ; 9 uses
  %.0496.i = phi ptr [ %i.avu, %bb.gz ], [ %i.aur, %ZSTD_wildcopy.exit115.i ] ; 12 uses
  %i.avv = icmp ugt i64 %.sroa.1040.0.copyload, 15
  br i1 %i.avv, label %bb.hb, label %bb.he, !prof !89

bb.hb:                                            ; preds = %bb.ha
  %i.avw = getelementptr inbounds i8, ptr %.0496.i, i64 %.sroa.536.0
  %.val222.i = load <2 x i64>, ptr %.0497.i, align 1, !tbaa !11
  store <2 x i64> %.val222.i, ptr %.0496.i, align 1, !tbaa !11
  %i.avx = icmp slt i64 %.sroa.536.0, 17
  br i1 %i.avx, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.avy = getelementptr inbounds nuw i8, ptr %.0496.i, i64 16
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %bb.hc
  %.130.i117.i = phi ptr [ %i.avy, %bb.hc ], [ %i.awb, %bb.hd ] ; 3 uses
  %.pn.i118.i = phi ptr [ %.0497.i, %bb.hc ], [ %i.awa, %bb.hd ] ; 2 uses
  %.1.i119.i = getelementptr inbounds nuw i8, ptr %.pn.i118.i, i64 16
  %.1.i119.val.i = load <2 x i64>, ptr %.1.i119.i, align 1, !tbaa !11
  store <2 x i64> %.1.i119.val.i, ptr %.130.i117.i, align 1, !tbaa !11
  %i.avz = getelementptr inbounds nuw i8, ptr %.130.i117.i, i64 16
  %i.awa = getelementptr inbounds nuw i8, ptr %.pn.i118.i, i64 32 ; 2 uses
  %.val221.i = load <2 x i64>, ptr %i.awa, align 1, !tbaa !11
  store <2 x i64> %.val221.i, ptr %i.avz, align 1, !tbaa !11
  %i.awb = getelementptr inbounds nuw i8, ptr %.130.i117.i, i64 32 ; 2 uses
  %i.awc = icmp ult ptr %i.awb, %i.avw
  br i1 %i.awc, label %bb.hd, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !100

bb.he:                                            ; preds = %bb.ha
  %i.awd = icmp samesign ult i64 %.sroa.1040.0.copyload, 8
  br i1 %i.awd, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1040.0.copyload
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !5
  %i.awg = load i8, ptr %.0497.i, align 1, !tbaa !11
  store i8 %i.awg, ptr %.0496.i, align 1, !tbaa !11
  %i.awh = getelementptr inbounds nuw i8, ptr %.0497.i, i64 1
  %i.awi = load i8, ptr %i.awh, align 1, !tbaa !11
  %i.awj = getelementptr inbounds nuw i8, ptr %.0496.i, i64 1
  store i8 %i.awi, ptr %i.awj, align 1, !tbaa !11
  %i.awk = getelementptr inbounds nuw i8, ptr %.0497.i, i64 2
  %i.awl = load i8, ptr %i.awk, align 1, !tbaa !11
  %i.awm = getelementptr inbounds nuw i8, ptr %.0496.i, i64 2
  store i8 %i.awl, ptr %i.awm, align 1, !tbaa !11
  %i.awn = getelementptr inbounds nuw i8, ptr %.0497.i, i64 3
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !11
  %i.awp = getelementptr inbounds nuw i8, ptr %.0496.i, i64 3
  store i8 %i.awo, ptr %i.awp, align 1, !tbaa !11
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1040.0.copyload
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !5
  %i.aws = zext i32 %i.awr to i64
  %i.awt = getelementptr inbounds nuw i8, ptr %.0497.i, i64 %i.aws ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.0496.i, i64 4
  %.val246.i = load i32, ptr %i.awt, align 1
  store i32 %.val246.i, ptr %i.awu, align 1
  %i.awv = sext i32 %i.awf to i64
  %i.aww = sub nsw i64 0, %i.awv
  %i.awx = getelementptr inbounds i8, ptr %i.awt, i64 %i.aww
  br label %ZSTD_overlapCopy8.exit194.i

bb.hg:                                            ; preds = %bb.he
  %.val252.i = load i64, ptr %.0497.i, align 1
  store i64 %.val252.i, ptr %.0496.i, align 1
  br label %ZSTD_overlapCopy8.exit194.i

ZSTD_overlapCopy8.exit194.i:                      ; preds = %bb.hg, %bb.hf
  %.1498.i = phi ptr [ %i.awx, %bb.hf ], [ %.0497.i, %bb.hg ] ; 2 uses
  %.1498.i285 = ptrtoaddr ptr %.1498.i to i64
  %i.awy = getelementptr inbounds nuw i8, ptr %.1498.i, i64 8 ; 7 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %.0496.i, i64 8 ; 6 uses
  %i.axa = icmp ugt i64 %.sroa.536.0, 8
  br i1 %i.axa, label %bb.hh, label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.hh:                                            ; preds = %ZSTD_overlapCopy8.exit194.i
  %i.axb = ptrtoint ptr %i.awz to i64
  %i.axc = ptrtoint ptr %i.awy to i64
  %i.axd = sub i64 %i.axb, %i.axc
  %i.axe = getelementptr i8, ptr %.0496.i, i64 %.sroa.536.0 ; 2 uses
  %i.axf = icmp slt i64 %i.axd, 16
  br i1 %i.axf, label %.preheader595.i.preheader, label %bb.hi

.preheader595.i.preheader:                        ; preds = %bb.hh
  %28 = tail call i64 @llvm.umin.i64(i64 %.sroa.1040.0.copyload, i64 %i.avm)
  %umin287 = tail call i64 @llvm.umax.i64(i64 %.sroa.1040.0.copyload, i64 %i.avm) ; 3 uses
  %i.axg = add i64 %.sroa.536.0.copyload, %i.aj
  %29 = add i64 %i.axg, %28
  %i.axh = add i64 %29, %umin287
  %i.axi = sub i64 %i.axh, %.sroa.1040.0.copyload
  %i.axj = add i64 %umin287, %i.akt
  %umax289 = tail call i64 @llvm.umax.i64(i64 %i.axi, i64 %i.axj)
  %i.axk = add i64 %umin287, %i.aj
  %30 = sub i64 %umax289, %i.axk
  %31 = add i64 %30, -9                           ; 2 uses
  %i.axl = lshr i64 %31, 3
  %i.axm = add nuw nsw i64 %i.axl, 1              ; 2 uses
  %min.iters.check291 = icmp ult i64 %31, 72
  br i1 %min.iters.check291, label %.preheader595.i.preheader323, label %vector.memcheck283

vector.memcheck283:                               ; preds = %.preheader595.i.preheader
  %i.axn = sub i64 %.sroa.034.0.copyload, %i.aj
  %i.axo = add i64 %i.axn, %.7214.i657.i260
  %umax284 = tail call i64 @llvm.umax.i64(i64 %.sroa.1040.0.copyload, i64 %i.axo)
  %i.axp = add i64 %umax284, %i.aj
  %i.axq = sub i64 %.1498.i285, %i.axp
  %diff.check286 = icmp ugt i64 %i.axq, -32
  br i1 %diff.check286, label %.preheader595.i.preheader323, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck283
  %n.vec294 = and i64 %i.axm, 4611686018427387900 ; 3 uses
  %i.axr = shl i64 %n.vec294, 3                   ; 2 uses
  %i.axs = getelementptr i8, ptr %i.awz, i64 %i.axr
  %i.axt = getelementptr i8, ptr %i.awy, i64 %i.axr
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph292
  %index296 = phi i64 [ 0, %vector.ph292 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.axu = shl i64 %index296, 3                   ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.awz, i64 %i.axu ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.awy, i64 %i.axu ; 2 uses
  %i.axv = getelementptr i8, ptr %next.gep298, i64 16
  %wide.load299 = load <2 x i64>, ptr %next.gep298, align 1
  %wide.load300 = load <2 x i64>, ptr %i.axv, align 1
  %i.axw = getelementptr i8, ptr %next.gep297, i64 16
  store <2 x i64> %wide.load299, ptr %next.gep297, align 1
  store <2 x i64> %wide.load300, ptr %i.axw, align 1
  %index.next301 = add nuw i64 %index296, 4       ; 2 uses
  %i.axx = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.axx, label %middle.block302, label %vector.body295, !llvm.loop !122

middle.block302:                                  ; preds = %vector.body295
  %cmp.n303 = icmp eq i64 %i.axm, %n.vec294
  br i1 %cmp.n303, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %.preheader595.i.preheader323

.preheader595.i.preheader323:                     ; preds = %vector.memcheck283, %.preheader595.i.preheader, %middle.block302
  %.029.i127.i.ph = phi ptr [ %i.awz, %vector.memcheck283 ], [ %i.awz, %.preheader595.i.preheader ], [ %i.axs, %middle.block302 ]
  %.0.i128.i.ph = phi ptr [ %i.awy, %vector.memcheck283 ], [ %i.awy, %.preheader595.i.preheader ], [ %i.axt, %middle.block302 ]
  br label %.preheader595.i

.preheader595.i:                                  ; preds = %.preheader595.i.preheader323, %.preheader595.i
  %.029.i127.i = phi ptr [ %i.axy, %.preheader595.i ], [ %.029.i127.i.ph, %.preheader595.i.preheader323 ] ; 2 uses
  %.0.i128.i = phi ptr [ %i.axz, %.preheader595.i ], [ %.0.i128.i.ph, %.preheader595.i.preheader323 ] ; 2 uses
  %.0.i128.val.i = load i64, ptr %.0.i128.i, align 1
  store i64 %.0.i128.val.i, ptr %.029.i127.i, align 1
  %i.axy = getelementptr inbounds nuw i8, ptr %.029.i127.i, i64 8 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %.0.i128.i, i64 8
  %i.aya = icmp ult ptr %i.axy, %i.axe
  br i1 %i.aya, label %.preheader595.i, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !123

bb.hi:                                            ; preds = %bb.hh
  %.val220.i = load <2 x i64>, ptr %i.awy, align 1, !tbaa !11
  store <2 x i64> %.val220.i, ptr %i.awz, align 1, !tbaa !11
  %i.ayb = icmp slt i64 %.sroa.536.0, 25
  br i1 %i.ayb, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.ayc = getelementptr inbounds nuw i8, ptr %.0496.i, i64 24
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hk, %bb.hj
  %.130.i124.i = phi ptr [ %i.ayc, %bb.hj ], [ %i.ayf, %bb.hk ] ; 3 uses
  %.pn.i125.i = phi ptr [ %i.awy, %bb.hj ], [ %i.aye, %bb.hk ] ; 2 uses
  %.1.i126.i = getelementptr inbounds nuw i8, ptr %.pn.i125.i, i64 16
  %.1.i126.val.i = load <2 x i64>, ptr %.1.i126.i, align 1, !tbaa !11
  store <2 x i64> %.1.i126.val.i, ptr %.130.i124.i, align 1, !tbaa !11
  %i.ayd = getelementptr inbounds nuw i8, ptr %.130.i124.i, i64 16
  %i.aye = getelementptr inbounds nuw i8, ptr %.pn.i125.i, i64 32 ; 2 uses
  %.val219.i = load <2 x i64>, ptr %i.aye, align 1, !tbaa !11
  store <2 x i64> %.val219.i, ptr %i.ayd, align 1, !tbaa !11
  %i.ayf = getelementptr inbounds nuw i8, ptr %.130.i124.i, i64 32 ; 2 uses
  %i.ayg = icmp ult ptr %i.ayf, %i.axe
  br i1 %i.ayg, label %bb.hk, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !100

ZSTD_execSequenceSplitLitBuffer.exit45.i:         ; preds = %bb.hk, %.preheader595.i, %bb.hd, %bb.gq, %.preheader592.i, %bb.gj, %middle.block302, %middle.block279, %bb.gs, %bb.gy, %bb.hb, %ZSTD_overlapCopy8.exit194.i, %bb.hi, %bb.fy, %bb.ge, %bb.gh, %ZSTD_overlapCopy8.exit.i, %bb.go
  %i.ayh = phi i64 [ %i.aus, %middle.block302 ], [ %i.arl, %bb.fy ], [ %i.aus, %bb.hi ], [ %i.are, %bb.ge ], [ %i.are, %ZSTD_overlapCopy8.exit.i ], [ %i.are, %middle.block279 ], [ %i.are, %bb.gh ], [ %i.are, %.preheader592.i ], [ %i.are, %bb.go ], [ %i.avb, %bb.gs ], [ %i.are, %bb.gj ], [ %i.aus, %bb.gy ], [ %i.aus, %ZSTD_overlapCopy8.exit194.i ], [ %i.aus, %bb.hd ], [ %i.aus, %bb.hb ], [ %i.aus, %.preheader595.i ], [ %i.are, %bb.gq ], [ %i.aus, %bb.hk ] ; 3 uses
  %i.ayi = icmp ult i64 %i.ayh, -119
  %i.ayj = getelementptr inbounds nuw i8, ptr %.7214.i657.i, i64 %i.ayh
  br i1 %i.ayi, label %bb.hl, label %.thread566.i

bb.hl:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit45.i, %.loopexit.i
  %.6232.i.i = phi ptr [ %i.akr, %.loopexit.i ], [ %.4230.i655.i, %ZSTD_execSequenceSplitLitBuffer.exit45.i ] ; 2 uses
  %.12219.i.i = phi ptr [ %i.arb, %.loopexit.i ], [ %i.ayj, %ZSTD_execSequenceSplitLitBuffer.exit45.i ] ; 2 uses
  %i.ayk = add i32 %.2240.i654.i, 1               ; 2 uses
  %exitcond688.not.i = icmp eq i32 %i.ayk, %5
  br i1 %exitcond688.not.i, label %.preheader.i, label %bb.ev, !llvm.loop !124

.thread566.i:                                     ; preds = %bb.ee, %bb.dk, %bb.cp, %ZSTD_execSequenceSplitLitBuffer.exit.i, %ZSTD_execSequence.exit.i, %bb.cf, %bb.gw, %bb.gc, %bb.fi, %ZSTD_execSequenceSplitLitBuffer.exit45.i, %.loopexit.i, %bb.ey, %._crit_edge.i, %BIT_initDStream.exit.i, %bb.q, %bb.i, %bb.g
  %.12.i.ph.i = phi i64 [ -70, %bb.ey ], [ -20, %bb.g ], [ -20, %bb.q ], [ -20, %bb.i ], [ -20, %._crit_edge.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.gw ], [ -20, %bb.gc ], [ -20, %bb.fi ], [ %.0.i25.i, %.loopexit.i ], [ %i.ayh, %ZSTD_execSequenceSplitLitBuffer.exit45.i ], [ %.0.i15.i, %ZSTD_execSequence.exit.i ], [ -20, %bb.dk ], [ -20, %bb.cp ], [ %i.ajr, %ZSTD_execSequenceSplitLitBuffer.exit.i ], [ -20, %bb.ee ], [ -70, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %ZSTD_decompressSequencesLong_default.exit

bb.hm:                                            ; preds = %.preheader.i, %bb.f
  %.pre699.i = phi ptr [ %.pre699.pre.i, %.preheader.i ], [ %i.l, %bb.f ] ; 3 uses
  %i.ayl = phi i32 [ %.pre698.i, %.preheader.i ], [ %i.e, %bb.f ]
  %.9235.i.i = phi ptr [ %.4230.i.lcssa.i, %.preheader.i ], [ %i.n, %bb.f ] ; 2 uses
  %.15222.i.i = phi ptr [ %.7214.i.lcssa.i, %.preheader.i ], [ %1, %bb.f ] ; 5 uses
  %i.aym = icmp eq i32 %i.ayl, 2
  br i1 %i.aym, label %bb.hn, label %._crit_edge701.i

._crit_edge701.i:                                 ; preds = %bb.hm
  %.pre702.i = ptrtoint ptr %i.j to i64
  br label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  %i.ayn = ptrtoint ptr %.9235.i.i to i64
  %i.ayo = ptrtoint ptr %.pre699.i to i64
  %i.ayp = sub i64 %i.ayn, %i.ayo                 ; 3 uses
  %i.ayq = ptrtoint ptr %i.j to i64               ; 2 uses
  %i.ayr = ptrtoint ptr %.15222.i.i to i64
  %i.ays = sub i64 %i.ayq, %i.ayr
  %.not276.i.i = icmp ugt i64 %i.ayp, %i.ays
  br i1 %.not276.i.i, label %ZSTD_decompressSequencesLong_default.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.not275.i.i = icmp eq ptr %.15222.i.i, null
  br i1 %.not275.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.15222.i.i, ptr align 1 %.pre699.i, i64 %i.ayp, i1 false)
  %i.ayt = getelementptr inbounds nuw i8, ptr %.15222.i.i, i64 %i.ayp
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.16223.i.i = phi ptr [ %i.ayt, %bb.hp ], [ null, %bb.ho ]
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %._crit_edge701.i
  %.pre-phi.i = phi i64 [ %.pre702.i, %._crit_edge701.i ], [ %i.ayq, %bb.hq ]
  %i.ayw = phi ptr [ %.pre699.i, %._crit_edge701.i ], [ %i.ayu, %bb.hq ] ; 2 uses
  %.11237.i.i = phi ptr [ %.9235.i.i, %._crit_edge701.i ], [ %i.ayv, %bb.hq ]
  %.18.i.i = phi ptr [ %.15222.i.i, %._crit_edge701.i ], [ %.16223.i.i, %bb.hq ] ; 4 uses
  %i.ayx = ptrtoint ptr %.11237.i.i to i64
  %i.ayy = ptrtoint ptr %i.ayw to i64
  %i.ayz = sub i64 %i.ayx, %i.ayy                 ; 3 uses
  %i.aza = ptrtoint ptr %.18.i.i to i64
  %i.azb = sub i64 %.pre-phi.i, %i.aza
  %.not278.i.i = icmp ugt i64 %i.ayz, %i.azb
  br i1 %.not278.i.i, label %ZSTD_decompressSequencesLong_default.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.not277.i.i = icmp eq ptr %.18.i.i, null
  br i1 %.not277.i.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.18.i.i, ptr align 1 %i.ayw, i64 %i.ayz, i1 false)
  %i.azc = getelementptr inbounds nuw i8, ptr %.18.i.i, i64 %i.ayz
  %i.azd = ptrtoint ptr %i.azc to i64
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.20.i.ph.i = phi i64 [ 0, %bb.hs ], [ %i.azd, %bb.ht ]
  %i.aze = ptrtoint ptr %1 to i64
  %i.azf = sub i64 %.20.i.ph.i, %i.aze
  br label %ZSTD_decompressSequencesLong_default.exit

ZSTD_decompressSequencesLong_default.exit:        ; preds = %.thread566.i, %bb.hn, %bb.hr, %bb.hu
  %.17.i.i = phi i64 [ %i.azf, %bb.hu ], [ %.12.i.ph.i, %.thread566.i ], [ -70, %bb.hr ], [ -70, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.hv

bb.hv:                                            ; preds = %ZSTD_decompressSequencesLong_default.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.17.i.i, %ZSTD_decompressSequencesLong_default.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %6 = alloca %struct.seq_t, align 8              ; 7 uses
  %7 = alloca %struct.seq_t, align 8              ; 7 uses
  %8 = alloca %struct.seq_t, align 8              ; 7 uses
  %i.a = alloca ptr, align 8                      ; 14 uses
  %9 = alloca %struct.seqState_t, align 8         ; 35 uses
  %i.b = getelementptr i8, ptr %0, i64 30180
  %.val = load i32, ptr %i.b, align 4, !tbaa !31
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %bb.fb

bb.c:                                             ; preds = %bb.a
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30360 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 29904
end_hunk_1
begin_hunk_2_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
ZSTD_decodeSequence.exit189.i.i:                  ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  %i.nm = phi ptr [ %i.nj, %bb.bb ], [ %i.lb, %bb.ba ], [ %i.mw, %bb.az ], [ @BIT_reloadDStream.zeroFilled, %bb.ax ] ; 2 uses
  %i.nn = phi i32 [ %i.nl, %bb.bb ], [ %i.mi, %bb.ba ], [ %i.mx, %bb.az ], [ %i.mi, %bb.ax ] ; 2 uses
  %i.no = phi i64 [ %.val6.i, %bb.bb ], [ %i.ld, %bb.ba ], [ %.val.i64.i, %bb.az ], [ %i.ld, %bb.ax ] ; 2 uses
  %i.np = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sroa.080.0.i ; 2 uses
  %i.nr = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.ns = icmp ugt ptr %i.nq, %i.nr
  br i1 %i.ns, label %bb.bx, label %bb.bc

ZSTD_decodeSequence.exit189.i.thread.i:           ; preds = %bb.av
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.sroa.080.0.i ; 2 uses
  %i.nv = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.nw = icmp ugt ptr %i.nu, %i.nv
  br i1 %i.nw, label %.thread391.i, label %bb.bc

bb.bc:                                            ; preds = %ZSTD_decodeSequence.exit189.i.thread.i, %ZSTD_decodeSequence.exit189.i.i
  %i.nx = phi ptr [ %i.lb, %ZSTD_decodeSequence.exit189.i.thread.i ], [ %i.nm, %ZSTD_decodeSequence.exit189.i.i ] ; 2 uses
  %i.ny = phi i32 [ %i.ln, %ZSTD_decodeSequence.exit189.i.thread.i ], [ %i.nn, %ZSTD_decodeSequence.exit189.i.i ] ; 2 uses
  %i.nz = phi i64 [ %i.ld, %ZSTD_decodeSequence.exit189.i.thread.i ], [ %i.no, %ZSTD_decodeSequence.exit189.i.i ]
  %i.oa = phi ptr [ %i.nu, %ZSTD_decodeSequence.exit189.i.thread.i ], [ %i.nq, %ZSTD_decodeSequence.exit189.i.i ] ; 3 uses
  %i.ob = phi ptr [ %i.nt, %ZSTD_decodeSequence.exit189.i.thread.i ], [ %i.np, %ZSTD_decodeSequence.exit189.i.i ] ; 2 uses
  %i.oc = phi i64 [ %i.hg, %ZSTD_decodeSequence.exit189.i.thread.i ], [ %i.lx, %ZSTD_decodeSequence.exit189.i.i ]
  %i.od = phi i64 [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread.i ], [ %i.mr, %ZSTD_decodeSequence.exit189.i.i ]
  %i.oe = phi i64 [ %i.he, %ZSTD_decodeSequence.exit189.i.thread.i ], [ %i.mh, %ZSTD_decodeSequence.exit189.i.i ]
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.080.0.i, ptr %6, align 8
  store i64 %.sroa.681.0.i, ptr %.sroa.986.0..sroa_idx.i, align 8
  store i64 %.sink.i, ptr %.sroa.10.0..sroa_idx.i, align 8
  %i.og = getelementptr i8, ptr %.0132.i289.i, i64 %.sroa.080.0.i ; 7 uses
  %i.oh = add i64 %.sroa.080.0.i, %.sroa.681.0.i  ; 9 uses
  %i.oi = sub i64 0, %.sink.i
  %i.oj = getelementptr inbounds i8, ptr %i.og, i64 %i.oi ; 2 uses
  %i.ok = icmp ugt ptr %i.oa, %i.h
  %i.ol = getelementptr inbounds nuw i8, ptr %.0132.i289.i, i64 %i.oh
  %i.om = icmp ugt ptr %i.ol, %i.of
  %or.cond.i197.i.i = select i1 %i.ok, i1 true, i1 %i.om, !prof !104
  br i1 %or.cond.i197.i.i, label %bb.bd, label %.critedge.i198.i.i, !prof !104

.critedge.i198.i.i:                               ; preds = %bb.bc
  %.val29.i = load <2 x i64>, ptr %i.ob, align 1, !tbaa !11
  store <2 x i64> %.val29.i, ptr %.0132.i289.i, align 1, !tbaa !11
  %i.on = icmp ugt i64 %.sroa.080.0.i, 16
  br i1 %i.on, label %bb.be, label %ZSTD_wildcopy.exit.i.i, !prof !52

bb.bd:                                            ; preds = %bb.bc
  %i.oo = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.0132.i289.i, ptr noundef %i.d, ptr noundef nonnull %i.of, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.be:                                            ; preds = %.critedge.i198.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %.0132.i289.i, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.or = add i64 %.sroa.080.0.i, -16
  %.val17.i = load <2 x i64>, ptr %i.oq, align 1, !tbaa !11
  store <2 x i64> %.val17.i, ptr %i.op, align 1, !tbaa !11
  %i.os = icmp slt i64 %i.or, 17
  br i1 %i.os, label %ZSTD_wildcopy.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ot = getelementptr inbounds nuw i8, ptr %.0132.i289.i, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i.i = phi ptr [ %i.ot, %bb.bf ], [ %i.ow, %bb.bg ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.oq, %bb.bf ], [ %i.ov, %bb.bg ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.1.i.i.val.i = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i.i.val.i, ptr %.130.i.i.i, align 1, !tbaa !11
  %i.ou = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val16.i = load <2 x i64>, ptr %i.ov, align 1, !tbaa !11
  store <2 x i64> %.val16.i, ptr %i.ou, align 1, !tbaa !11
  %i.ow = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.og
  br i1 %i.ox, label %bb.bg, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !100

ZSTD_wildcopy.exit.i.i:                           ; preds = %bb.bg, %bb.be, %.critedge.i198.i.i
  store ptr %i.oa, ptr %i.a, align 8, !tbaa !38
  %i.oy = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oz = sub i64 %i.oy, %i.gu                    ; 3 uses
  %i.pa = icmp ugt i64 %.sink.i, %i.oz
  br i1 %i.pa, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.pb = sub i64 %i.oy, %i.gv
  %i.pc = icmp ugt i64 %.sink.i, %i.pb
  br i1 %i.pc, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i, label %bb.bi, !prof !52

ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i:  ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread239.i

bb.bi:                                            ; preds = %bb.bh
  %i.pd = ptrtoint ptr %i.oj to i64
  %i.pe = sub i64 %i.pd, %i.gu                    ; 3 uses
  %i.pf = getelementptr inbounds i8, ptr %i.n, i64 %i.pe ; 2 uses
  %i.pg = add nsw i64 %i.pe, %.sroa.681.0.i       ; 3 uses
  %.not.i200.i.i = icmp sgt i64 %i.pg, 0
  br i1 %.not.i200.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pf, i64 %.sroa.681.0.i, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i201.i.i = sub nsw i64 0, %i.pe        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pf, i64 %gepdiff.i201.i.i, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.og, i64 %gepdiff.i201.i.i
  store i64 %i.pg, ptr %.sroa.986.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %ZSTD_wildcopy.exit.i.i
  %.0173.i = phi ptr [ %i.j, %bb.bk ], [ %i.oj, %ZSTD_wildcopy.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ph, %bb.bk ], [ %i.og, %ZSTD_wildcopy.exit.i.i ] ; 12 uses
  %i.pi = phi i64 [ %i.pg, %bb.bk ], [ %.sroa.681.0.i, %ZSTD_wildcopy.exit.i.i ] ; 5 uses
  %i.pj = icmp ugt i64 %.sink.i, 15
  br i1 %i.pj, label %bb.bm, label %bb.bp, !prof !89

bb.bm:                                            ; preds = %bb.bl
  %i.pk = getelementptr inbounds i8, ptr %.0.i, i64 %i.pi
  %.val19.i = load <2 x i64>, ptr %.0173.i, align 1, !tbaa !11
  store <2 x i64> %.val19.i, ptr %.0.i, align 1, !tbaa !11
  %i.pl = icmp slt i64 %i.pi, 17
  br i1 %i.pl, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i233.i.i = phi ptr [ %i.pm, %bb.bn ], [ %i.pp, %bb.bo ] ; 3 uses
  %.pn.i234.i.i = phi ptr [ %.0173.i, %bb.bn ], [ %i.po, %bb.bo ] ; 2 uses
  %.1.i235.i.i = getelementptr inbounds nuw i8, ptr %.pn.i234.i.i, i64 16
  %.1.i235.i.val.i = load <2 x i64>, ptr %.1.i235.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i235.i.val.i, ptr %.130.i233.i.i, align 1, !tbaa !11
  %i.pn = getelementptr inbounds nuw i8, ptr %.130.i233.i.i, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %.pn.i234.i.i, i64 32 ; 2 uses
  %.val18.i = load <2 x i64>, ptr %i.po, align 1, !tbaa !11
  store <2 x i64> %.val18.i, ptr %i.pn, align 1, !tbaa !11
  %i.pp = getelementptr inbounds nuw i8, ptr %.130.i233.i.i, i64 32 ; 2 uses
  %i.pq = icmp ult ptr %i.pp, %i.pk
  br i1 %i.pq, label %bb.bo, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !100

bb.bp:                                            ; preds = %bb.bl
  %i.pr = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !5
  %i.pu = load i8, ptr %.0173.i, align 1, !tbaa !11
  store i8 %i.pu, ptr %.0.i, align 1, !tbaa !11
  %i.pv = getelementptr inbounds nuw i8, ptr %.0173.i, i64 1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !11
  %i.px = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !11
  %i.py = getelementptr inbounds nuw i8, ptr %.0173.i, i64 2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !11
  %i.qa = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !11
  %i.qb = getelementptr inbounds nuw i8, ptr %.0173.i, i64 3
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !11
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !11
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !5
  %i.qg = zext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %.0173.i, i64 %i.qg ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %.val31.i = load i32, ptr %i.qh, align 1
  store i32 %.val31.i, ptr %i.qi, align 1
  %i.qj = sext i32 %i.pt to i64
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds i8, ptr %i.qh, i64 %i.qk
  br label %ZSTD_overlapCopy8.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %.val35.i = load i64, ptr %.0173.i, align 1
  store i64 %.val35.i, ptr %.0.i, align 1
  br label %ZSTD_overlapCopy8.exit.i.i

ZSTD_overlapCopy8.exit.i.i:                       ; preds = %bb.br, %bb.bq
  %.1.i = phi ptr [ %i.ql, %bb.bq ], [ %.0173.i, %bb.br ] ; 2 uses
  %.1.i107 = ptrtoaddr ptr %.1.i to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qo = icmp ugt i64 %i.pi, 8
  br i1 %i.qo, label %bb.bs, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bs:                                            ; preds = %ZSTD_overlapCopy8.exit.i.i
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = getelementptr i8, ptr %.0.i, i64 %i.pi  ; 2 uses
  %i.qt = icmp slt i64 %i.qr, 16
  br i1 %i.qt, label %.preheader269.i.preheader, label %bb.bt

.preheader269.i.preheader:                        ; preds = %bb.bs
  %10 = tail call i64 @llvm.umin.i64(i64 %.sink.i, i64 %i.oz)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.oz) ; 3 uses
  %i.qu = add i64 %.sroa.681.0.i, %i.gu
  %11 = add i64 %i.qu, %10
  %i.qv = add i64 %11, %umin
  %i.qw = sub i64 %i.qv, %.sink.i
  %i.qx = add i64 %umin, %i.gx
  %umax109 = tail call i64 @llvm.umax.i64(i64 %i.qw, i64 %i.qx)
  %i.qy = add i64 %umin, %i.gu
  %12 = sub i64 %umax109, %i.qy
  %13 = add i64 %12, -9                           ; 2 uses
  %i.qz = lshr i64 %13, 3
  %i.ra = add nuw nsw i64 %i.qz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 72
  br i1 %min.iters.check, label %.preheader269.i.preheader255, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader269.i.preheader
  %i.rb = sub i64 %.sroa.080.0.i, %i.gu
  %i.rc = add i64 %i.rb, %.0132.i289.i106
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.rc)
  %i.rd = add i64 %umax, %i.gu
  %i.re = sub i64 %.1.i107, %i.rd
  %diff.check = icmp ugt i64 %i.re, -32
  br i1 %diff.check, label %.preheader269.i.preheader255, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ra, 4611686018427387900     ; 3 uses
  %i.rf = shl i64 %n.vec, 3                       ; 2 uses
  %i.rg = getelementptr i8, ptr %i.qn, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.qm, i64 %i.rf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ri = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qn, i64 %i.ri ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.qm, i64 %i.ri ; 2 uses
  %i.rj = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 1
  %wide.load111 = load <2 x i64>, ptr %i.rj, align 1
  %i.rk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load111, ptr %i.rk, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rl = icmp eq i64 %index.next, %n.vec
  br i1 %i.rl, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ra, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %.preheader269.i.preheader255

.preheader269.i.preheader255:                     ; preds = %vector.memcheck, %.preheader269.i.preheader, %middle.block
  %.029.i.i.i.ph = phi ptr [ %i.qn, %vector.memcheck ], [ %i.qn, %.preheader269.i.preheader ], [ %i.rg, %middle.block ]
  %.0.i242.i.i.ph = phi ptr [ %i.qm, %vector.memcheck ], [ %i.qm, %.preheader269.i.preheader ], [ %i.rh, %middle.block ]
  br label %.preheader269.i

.preheader269.i:                                  ; preds = %.preheader269.i.preheader255, %.preheader269.i
  %.029.i.i.i = phi ptr [ %i.rm, %.preheader269.i ], [ %.029.i.i.i.ph, %.preheader269.i.preheader255 ] ; 2 uses
  %.0.i242.i.i = phi ptr [ %i.rn, %.preheader269.i ], [ %.0.i242.i.i.ph, %.preheader269.i.preheader255 ] ; 2 uses
  %.0.i242.i.val.i = load i64, ptr %.0.i242.i.i, align 1
  store i64 %.0.i242.i.val.i, ptr %.029.i.i.i, align 1
  %i.rm = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.0.i242.i.i, i64 8
  %i.ro = icmp ult ptr %i.rm, %i.qs
  br i1 %i.ro, label %.preheader269.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !131

bb.bt:                                            ; preds = %bb.bs
  %.val21.i = load <2 x i64>, ptr %i.qm, align 1, !tbaa !11
  store <2 x i64> %.val21.i, ptr %i.qn, align 1, !tbaa !11
  %i.rp = icmp slt i64 %i.pi, 25
  br i1 %i.rp, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i239.i.i = phi ptr [ %i.rq, %bb.bu ], [ %i.rt, %bb.bv ] ; 3 uses
  %.pn.i240.i.i = phi ptr [ %i.qm, %bb.bu ], [ %i.rs, %bb.bv ] ; 2 uses
  %.1.i241.i.i = getelementptr inbounds nuw i8, ptr %.pn.i240.i.i, i64 16
  %.1.i241.i.val.i = load <2 x i64>, ptr %.1.i241.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i241.i.val.i, ptr %.130.i239.i.i, align 1, !tbaa !11
  %i.rr = getelementptr inbounds nuw i8, ptr %.130.i239.i.i, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %.pn.i240.i.i, i64 32 ; 2 uses
  %.val20.i = load <2 x i64>, ptr %i.rs, align 1, !tbaa !11
  store <2 x i64> %.val20.i, ptr %i.rr, align 1, !tbaa !11
  %i.rt = getelementptr inbounds nuw i8, ptr %.130.i239.i.i, i64 32 ; 2 uses
  %i.ru = icmp ult ptr %i.rt, %i.qs
  br i1 %i.ru, label %bb.bv, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !100

ZSTD_execSequenceSplitLitBuffer.exit.i.i:         ; preds = %bb.bv, %.preheader269.i, %bb.bo, %middle.block, %bb.bt, %ZSTD_overlapCopy8.exit.i.i, %bb.bm, %bb.bj, %bb.bd
  %.0.i199.i.i = phi i64 [ %i.oo, %bb.bd ], [ %i.oh, %middle.block ], [ %i.oh, %bb.bj ], [ %i.oh, %ZSTD_overlapCopy8.exit.i.i ], [ %i.oh, %bb.bm ], [ %i.oh, %bb.bt ], [ %i.oh, %bb.bo ], [ %i.oh, %.preheader269.i ], [ %i.oh, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rv = icmp ult i64 %.0.i199.i.i, -119
  br i1 %i.rv, label %bb.bw, label %.thread239.i

bb.bw:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %.0132.i289.i, i64 %.0.i199.i.i ; 2 uses
  %i.rx = add nsw i32 %.0125.i291.i, -1           ; 2 uses
  %.not169.i.i = icmp eq i32 %i.rx, 0
  br i1 %.not169.i.i, label %.thread235.i, label %bb.ae, !llvm.loop !132

bb.bx:                                            ; preds = %ZSTD_decodeSequence.exit189.i.i
  %i.ry = icmp sgt i32 %.0125.i291.i, 0
  br i1 %i.ry, label %.thread391.i, label %.thread239.i

.thread391.i:                                     ; preds = %ZSTD_decodeSequence.exit189.i.thread.i, %bb.bx
  %i.rz = phi ptr [ %i.nm, %bb.bx ], [ %i.lb, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.sa = phi i32 [ %i.nn, %bb.bx ], [ %i.ln, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.sb = phi i64 [ %i.no, %bb.bx ], [ %i.ld, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.sc = phi i64 [ %i.mh, %bb.bx ], [ %i.he, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.sd = phi i64 [ %i.mr, %bb.bx ], [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.se = phi i64 [ %i.lx, %bb.bx ], [ %i.hg, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.sf = phi ptr [ %i.np, %bb.bx ], [ %i.nt, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 11 uses
  %i.sg = phi ptr [ %i.nr, %bb.bx ], [ %i.nv, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.sh = ptrtoint ptr %i.sg to i64               ; 2 uses
  %i.si = ptrtoint ptr %i.sf to i64               ; 4 uses
  %i.sj = sub i64 %i.sh, %i.si                    ; 9 uses
  %.not171.i.i = icmp eq ptr %i.sg, %i.sf
  br i1 %.not171.i.i, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %.thread391.i
  %i.sk = ptrtoint ptr %i.d to i64
  %i.sl = ptrtoint ptr %.0132.i289.i to i64       ; 8 uses
  %i.sm = sub i64 %i.sk, %i.sl
  %i.sn = icmp ugt i64 %i.sj, %i.sm
  br i1 %i.sn, label %.thread239.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.so = sub i64 %i.sl, %i.si                    ; 2 uses
  %i.sp = getelementptr inbounds i8, ptr %.0132.i289.i, i64 %i.sj ; 3 uses
  %i.sq = icmp slt i64 %i.sj, 8
  %i.sr = icmp sgt i64 %i.so, -8
  %or.cond.i.i = or i1 %i.sr, %i.sq
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.ca

.preheader.i.i:                                   ; preds = %bb.bz
  %i.ss = icmp sgt i64 %i.sj, 0
  br i1 %i.ss, label %iter.check166, label %ZSTD_safecopyDstBeforeSrc.exit.i

iter.check166:                                    ; preds = %.preheader.i.i
  %i.st = add i64 %i.sl, %i.sh
  %i.su = sub i64 %i.st, %i.si
  %i.sv = add i64 %i.sl, 1
  %umax146 = tail call i64 @llvm.umax.i64(i64 %i.su, i64 %i.sv)
  %i.sw = sub i64 %umax146, %i.sl                 ; 7 uses
  %min.iters.check148.a = icmp ult i64 %i.sw, 4
  %i.sx = sub i64 %i.si, %i.sl
  %diff.check145 = icmp ugt i64 %i.sx, -32
  %or.cond = or i1 %min.iters.check148.a, %diff.check145
  br i1 %or.cond, label %.lr.ph41.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check166
  %min.iters.check150 = icmp ult i64 %i.sw, 32
  br i1 %min.iters.check150, label %vec.epilog.ph170, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %n.mod.vf152 = and i64 %i.sw, 28
  %n.vec153 = and i64 %i.sw, -32                  ; 5 uses
  %i.sy = getelementptr i8, ptr %.0132.i289.i, i64 %n.vec153
  %i.sz = getelementptr i8, ptr %i.sf, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %.0132.i289.i, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.sf, i64 %index155 ; 2 uses
  %i.ta = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep157, align 1, !tbaa !11
  %wide.load159 = load <16 x i8>, ptr %i.ta, align 1, !tbaa !11
  %i.tb = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep156, align 1, !tbaa !11
  store <16 x i8> %wide.load159, ptr %i.tb, align 1, !tbaa !11
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.tc = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.tc, label %middle.block161, label %vector.body154, !llvm.loop !133

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.sw, %n.vec153
  br i1 %cmp.n162, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  %min.epilog.iters.check169 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph41.i.i.preheader, label %vec.epilog.ph170, !prof !97

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec172 = and i64 %i.sw, -4                   ; 4 uses
  %i.td = getelementptr i8, ptr %.0132.i289.i, i64 %n.vec172
  %i.te = getelementptr i8, ptr %i.sf, i64 %n.vec172
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph170
  %index174 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph170 ], [ %index.next178, %vec.epilog.vector.body173 ] ; 3 uses
  %next.gep175 = getelementptr i8, ptr %.0132.i289.i, i64 %index174
  %next.gep176 = getelementptr i8, ptr %i.sf, i64 %index174
  %wide.load177 = load <4 x i8>, ptr %next.gep176, align 1, !tbaa !11
  store <4 x i8> %wide.load177, ptr %next.gep175, align 1, !tbaa !11
  %index.next178 = add nuw i64 %index174, 4       ; 2 uses
  %i.tf = icmp eq i64 %index.next178, %n.vec172
  br i1 %i.tf, label %vec.epilog.middle.block179, label %vec.epilog.vector.body173, !llvm.loop !134

vec.epilog.middle.block179:                       ; preds = %vec.epilog.vector.body173
  %cmp.n180 = icmp eq i64 %i.sw, %n.vec172
  br i1 %cmp.n180, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block179
  %.040.i.i.ph = phi ptr [ %.0132.i289.i, %iter.check166 ], [ %i.sy, %vec.epilog.iter.check168 ], [ %i.td, %vec.epilog.middle.block179 ]
  %.02939.i.i.ph = phi ptr [ %i.sf, %iter.check166 ], [ %i.sz, %vec.epilog.iter.check168 ], [ %i.te, %vec.epilog.middle.block179 ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.040.i.i = phi ptr [ %i.ti, %.lr.ph41.i.i ], [ %.040.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %.02939.i.i = phi ptr [ %i.tg, %.lr.ph41.i.i ], [ %.02939.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
end_hunk_2
begin_hunk_3_@ZSTD_decompressSequencesSplitLitBuffer:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.uj, %.lr.ph.i.i ], [ %.238.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23137.i.i = phi ptr [ %i.uh, %.lr.ph.i.i ], [ %.23137.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.23137.i.i, i64 1
  %i.ui = load i8, ptr %.23137.i.i, align 1, !tbaa !11
  %i.uj = getelementptr inbounds nuw i8, ptr %.238.i.i, i64 1 ; 2 uses
  store i8 %i.ui, ptr %.238.i.i, align 1, !tbaa !11
  %exitcond.not.i.i = icmp eq ptr %i.uj, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i, !llvm.loop !138

ZSTD_safecopyDstBeforeSrc.exit.i:                 ; preds = %.lr.ph.i.i, %.lr.ph41.i.i, %middle.block130, %vec.epilog.middle.block, %middle.block161, %vec.epilog.middle.block179, %.preheader.i.i
  %i.uk = sub i64 %.sroa.080.0.i, %i.sj
  br label %bb.ce

bb.ce:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit.i, %.thread391.i
  %.sroa.083.2.i = phi i64 [ %.sroa.080.0.i, %.thread391.i ], [ %i.uk, %ZSTD_safecopyDstBeforeSrc.exit.i ] ; 8 uses
  %.2134.i.i = phi ptr [ %.0132.i289.i, %.thread391.i ], [ %i.sp, %ZSTD_safecopyDstBeforeSrc.exit.i ] ; 8 uses
  %.2134.i.i184 = ptrtoaddr ptr %.2134.i.i to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.ul, ptr %i.a, align 8, !tbaa !38
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.un, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.083.2.i, ptr %7, align 8
  %.sroa.986.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.681.0.i, ptr %.sroa.986.0..sroa_idx87.i, align 8
  %.sroa.10.0..sroa_idx89.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink.i, ptr %.sroa.10.0..sroa_idx89.i, align 8
  %i.uo = getelementptr i8, ptr %.2134.i.i, i64 %.sroa.083.2.i ; 7 uses
  %i.up = add i64 %.sroa.083.2.i, %.sroa.681.0.i  ; 9 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 %.sroa.083.2.i
  %i.ur = sub i64 0, %.sink.i
  %i.us = getelementptr inbounds i8, ptr %i.uo, i64 %i.ur ; 2 uses
  %i.ut = icmp ugt i64 %.sroa.083.2.i, 65536
  %i.uu = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.2134.i.i, i64 %i.up
  %i.uw = icmp ugt ptr %i.uv, %i.uu
  %or.cond.i191.i.i = select i1 %i.ut, i1 true, i1 %i.uw, !prof !104
  br i1 %or.cond.i191.i.i, label %bb.cf, label %.critedge.i192.i.i, !prof !104

.critedge.i192.i.i:                               ; preds = %bb.ce
  %.val15.i = load <2 x i64>, ptr %i.ul, align 4, !tbaa !11
  store <2 x i64> %.val15.i, ptr %.2134.i.i, align 1, !tbaa !11
  %i.ux = icmp samesign ugt i64 %.sroa.083.2.i, 16
  br i1 %i.ux, label %bb.cg, label %ZSTD_wildcopy.exit250.i.i, !prof !52

bb.cf:                                            ; preds = %bb.ce
  %i.uy = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2134.i.i, ptr noundef %i.d, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.um, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %.loopexit.i

bb.cg:                                            ; preds = %.critedge.i192.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.2134.i.i, i64 16
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10.i = load <2 x i64>, ptr %i.va, align 4, !tbaa !11
  store <2 x i64> %.val10.i, ptr %i.uz, align 1, !tbaa !11
  %i.vb = icmp samesign ult i64 %.sroa.083.2.i, 33
  br i1 %i.vb, label %ZSTD_wildcopy.exit250.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vc = getelementptr inbounds nuw i8, ptr %.2134.i.i, i64 32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.130.i245.i.i = phi ptr [ %i.vc, %bb.ch ], [ %i.vf, %bb.ci ] ; 3 uses
  %.pn.i246.i.i = phi ptr [ %i.va, %bb.ch ], [ %i.ve, %bb.ci ] ; 2 uses
  %.1.i247.i.i = getelementptr inbounds nuw i8, ptr %.pn.i246.i.i, i64 16
  %.1.i247.i.val.i = load <2 x i64>, ptr %.1.i247.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i247.i.val.i, ptr %.130.i245.i.i, align 1, !tbaa !11
  %i.vd = getelementptr inbounds nuw i8, ptr %.130.i245.i.i, i64 16
  %i.ve = getelementptr inbounds nuw i8, ptr %.pn.i246.i.i, i64 32 ; 2 uses
  %.val9.i = load <2 x i64>, ptr %i.ve, align 1, !tbaa !11
  store <2 x i64> %.val9.i, ptr %i.vd, align 1, !tbaa !11
  %i.vf = getelementptr inbounds nuw i8, ptr %.130.i245.i.i, i64 32 ; 2 uses
  %i.vg = icmp ult ptr %i.vf, %i.uo
  br i1 %i.vg, label %bb.ci, label %ZSTD_wildcopy.exit250.i.i, !llvm.loop !100

ZSTD_wildcopy.exit250.i.i:                        ; preds = %bb.ci, %bb.cg, %.critedge.i192.i.i
  store ptr %i.uq, ptr %i.a, align 8, !tbaa !38
  %i.vh = ptrtoint ptr %i.uo to i64               ; 2 uses
  %i.vi = sub i64 %i.vh, %i.gu                    ; 3 uses
  %i.vj = icmp ugt i64 %.sink.i, %i.vi
  br i1 %i.vj, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %ZSTD_wildcopy.exit250.i.i
  %i.vk = sub i64 %i.vh, %i.gv
  %i.vl = icmp ugt i64 %.sink.i, %i.vk
  br i1 %i.vl, label %.loopexit.thread.i, label %bb.ck, !prof !52

.loopexit.thread.i:                               ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread239.i

bb.ck:                                            ; preds = %bb.cj
  %i.vm = ptrtoint ptr %i.us to i64
  %i.vn = sub i64 %i.vm, %i.gu                    ; 3 uses
  %i.vo = getelementptr inbounds i8, ptr %i.n, i64 %i.vn ; 2 uses
  %i.vp = add nsw i64 %i.vn, %.sroa.681.0.i       ; 3 uses
  %.not.i194.i.i = icmp sgt i64 %i.vp, 0
  br i1 %.not.i194.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.uo, ptr align 1 %i.vo, i64 %.sroa.681.0.i, i1 false)
  br label %.loopexit.i

bb.cm:                                            ; preds = %bb.ck
  %gepdiff.i195.i.i = sub nsw i64 0, %i.vn        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.uo, ptr align 1 %i.vo, i64 %gepdiff.i195.i.i, i1 false)
  %i.vq = getelementptr inbounds nuw i8, ptr %i.uo, i64 %gepdiff.i195.i.i
  store i64 %i.vp, ptr %.sroa.986.0..sroa_idx87.i, align 8, !tbaa !129
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %ZSTD_wildcopy.exit250.i.i
  %.0179.i = phi ptr [ %i.vq, %bb.cm ], [ %i.uo, %ZSTD_wildcopy.exit250.i.i ] ; 12 uses
  %.0177.i = phi ptr [ %i.j, %bb.cm ], [ %i.us, %ZSTD_wildcopy.exit250.i.i ] ; 9 uses
  %i.vr = phi i64 [ %i.vp, %bb.cm ], [ %.sroa.681.0.i, %ZSTD_wildcopy.exit250.i.i ] ; 5 uses
  %i.vs = icmp ugt i64 %.sink.i, 15
  br i1 %i.vs, label %bb.co, label %bb.cr, !prof !89

bb.co:                                            ; preds = %bb.cn
  %i.vt = getelementptr inbounds i8, ptr %.0179.i, i64 %i.vr
  %.val12.i = load <2 x i64>, ptr %.0177.i, align 1, !tbaa !11
  store <2 x i64> %.val12.i, ptr %.0179.i, align 1, !tbaa !11
  %i.vu = icmp slt i64 %i.vr, 17
  br i1 %i.vu, label %.loopexit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vv = getelementptr inbounds nuw i8, ptr %.0179.i, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.130.i252.i.i = phi ptr [ %i.vv, %bb.cp ], [ %i.vy, %bb.cq ] ; 3 uses
  %.pn.i253.i.i = phi ptr [ %.0177.i, %bb.cp ], [ %i.vx, %bb.cq ] ; 2 uses
  %.1.i254.i.i = getelementptr inbounds nuw i8, ptr %.pn.i253.i.i, i64 16
  %.1.i254.i.val.i = load <2 x i64>, ptr %.1.i254.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i254.i.val.i, ptr %.130.i252.i.i, align 1, !tbaa !11
  %i.vw = getelementptr inbounds nuw i8, ptr %.130.i252.i.i, i64 16
  %i.vx = getelementptr inbounds nuw i8, ptr %.pn.i253.i.i, i64 32 ; 2 uses
  %.val11.i = load <2 x i64>, ptr %i.vx, align 1, !tbaa !11
  store <2 x i64> %.val11.i, ptr %i.vw, align 1, !tbaa !11
  %i.vy = getelementptr inbounds nuw i8, ptr %.130.i252.i.i, i64 32 ; 2 uses
  %i.vz = icmp ult ptr %i.vy, %i.vt
  br i1 %i.vz, label %bb.cq, label %.loopexit.i, !llvm.loop !100

bb.cr:                                            ; preds = %bb.cn
  %i.wa = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.wa, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !5
  %i.wd = load i8, ptr %.0177.i, align 1, !tbaa !11
  store i8 %i.wd, ptr %.0179.i, align 1, !tbaa !11
  %i.we = getelementptr inbounds nuw i8, ptr %.0177.i, i64 1
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !11
  %i.wg = getelementptr inbounds nuw i8, ptr %.0179.i, i64 1
  store i8 %i.wf, ptr %i.wg, align 1, !tbaa !11
  %i.wh = getelementptr inbounds nuw i8, ptr %.0177.i, i64 2
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !11
  %i.wj = getelementptr inbounds nuw i8, ptr %.0179.i, i64 2
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !11
  %i.wk = getelementptr inbounds nuw i8, ptr %.0177.i, i64 3
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !11
  %i.wm = getelementptr inbounds nuw i8, ptr %.0179.i, i64 3
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !11
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !5
  %i.wp = zext i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %.0177.i, i64 %i.wp ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.0179.i, i64 4
  %.val30.i = load i32, ptr %i.wq, align 1
  store i32 %.val30.i, ptr %i.wr, align 1
  %i.ws = sext i32 %i.wc to i64
  %i.wt = sub nsw i64 0, %i.ws
  %i.wu = getelementptr inbounds i8, ptr %i.wq, i64 %i.wt
  br label %ZSTD_overlapCopy8.exit286.i.i

bb.ct:                                            ; preds = %bb.cr
  %.val33.i = load i64, ptr %.0177.i, align 1
  store i64 %.val33.i, ptr %.0179.i, align 1
  br label %ZSTD_overlapCopy8.exit286.i.i

ZSTD_overlapCopy8.exit286.i.i:                    ; preds = %bb.ct, %bb.cs
  %.1178.i = phi ptr [ %i.wu, %bb.cs ], [ %.0177.i, %bb.ct ] ; 2 uses
  %.1178.i186 = ptrtoaddr ptr %.1178.i to i64
  %i.wv = getelementptr inbounds nuw i8, ptr %.1178.i, i64 8 ; 7 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.0179.i, i64 8 ; 6 uses
  %i.wx = icmp ugt i64 %i.vr, 8
  br i1 %i.wx, label %bb.cu, label %.loopexit.i

bb.cu:                                            ; preds = %ZSTD_overlapCopy8.exit286.i.i
  %i.wy = ptrtoint ptr %i.ww to i64
  %i.wz = ptrtoint ptr %i.wv to i64
  %i.xa = sub i64 %i.wy, %i.wz
  %i.xb = getelementptr i8, ptr %.0179.i, i64 %i.vr ; 2 uses
  %i.xc = icmp slt i64 %i.xa, 16
  br i1 %i.xc, label %.preheader265.i.preheader, label %bb.cv

.preheader265.i.preheader:                        ; preds = %bb.cu
  %14 = tail call i64 @llvm.umin.i64(i64 %.sink.i, i64 %i.vi)
  %umin188 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.vi) ; 3 uses
  %i.xd = add i64 %.sroa.681.0.i, %i.gu
  %15 = add i64 %i.xd, %14
  %i.xe = add i64 %15, %umin188
  %i.xf = sub i64 %i.xe, %.sink.i
  %i.xg = add i64 %umin188, %i.gu
  %i.xh = add i64 %i.xg, 16
  %umax190 = tail call i64 @llvm.umax.i64(i64 %i.xf, i64 %i.xh)
  %i.xi = add i64 %umin188, %i.gu
  %16 = sub i64 %umax190, %i.xi
  %17 = add i64 %16, -9                           ; 2 uses
  %i.xj = lshr i64 %17, 3
  %i.xk = add nuw nsw i64 %i.xj, 1                ; 2 uses
  %min.iters.check192 = icmp ult i64 %17, 184
  br i1 %min.iters.check192, label %.preheader265.i.preheader251, label %vector.memcheck183

vector.memcheck183:                               ; preds = %.preheader265.i.preheader
  %i.xl = add i64 %.sroa.083.2.i, %.2134.i.i184
  %i.xm = sub i64 %i.xl, %i.gu
  %umax185 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.xm)
  %i.xn = add i64 %umax185, %i.gu
  %i.xo = sub i64 %.1178.i186, %i.xn
  %diff.check187 = icmp ugt i64 %i.xo, -32
  br i1 %diff.check187, label %.preheader265.i.preheader251, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck183
  %n.vec195 = and i64 %i.xk, 4611686018427387900  ; 3 uses
  %i.xp = shl i64 %n.vec195, 3                    ; 2 uses
  %i.xq = getelementptr i8, ptr %i.ww, i64 %i.xp
  %i.xr = getelementptr i8, ptr %i.wv, i64 %i.xp
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %i.xs = shl i64 %index197, 3                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.ww, i64 %i.xs ; 2 uses
  %next.gep199 = getelementptr i8, ptr %i.wv, i64 %i.xs ; 2 uses
  %i.xt = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load200 = load <2 x i64>, ptr %next.gep199, align 1
  %wide.load201 = load <2 x i64>, ptr %i.xt, align 1
  %i.xu = getelementptr i8, ptr %next.gep198, i64 16
  store <2 x i64> %wide.load200, ptr %next.gep198, align 1
  store <2 x i64> %wide.load201, ptr %i.xu, align 1
  %index.next202 = add nuw i64 %index197, 4       ; 2 uses
  %i.xv = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.xv, label %middle.block203, label %vector.body196, !llvm.loop !139

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %i.xk, %n.vec195
  br i1 %cmp.n204, label %.loopexit.i, label %.preheader265.i.preheader251

.preheader265.i.preheader251:                     ; preds = %vector.memcheck183, %.preheader265.i.preheader, %middle.block203
  %.029.i262.i.i.ph = phi ptr [ %i.ww, %vector.memcheck183 ], [ %i.ww, %.preheader265.i.preheader ], [ %i.xq, %middle.block203 ]
  %.0.i263.i.i.ph = phi ptr [ %i.wv, %vector.memcheck183 ], [ %i.wv, %.preheader265.i.preheader ], [ %i.xr, %middle.block203 ]
  br label %.preheader265.i

.preheader265.i:                                  ; preds = %.preheader265.i.preheader251, %.preheader265.i
  %.029.i262.i.i = phi ptr [ %i.xw, %.preheader265.i ], [ %.029.i262.i.i.ph, %.preheader265.i.preheader251 ] ; 2 uses
  %.0.i263.i.i = phi ptr [ %i.xx, %.preheader265.i ], [ %.0.i263.i.i.ph, %.preheader265.i.preheader251 ] ; 2 uses
  %.0.i263.i.val.i = load i64, ptr %.0.i263.i.i, align 1
  store i64 %.0.i263.i.val.i, ptr %.029.i262.i.i, align 1
  %i.xw = getelementptr inbounds nuw i8, ptr %.029.i262.i.i, i64 8 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.0.i263.i.i, i64 8
  %i.xy = icmp ult ptr %i.xw, %i.xb
  br i1 %i.xy, label %.preheader265.i, label %.loopexit.i, !llvm.loop !140

bb.cv:                                            ; preds = %bb.cu
  %.val14.i = load <2 x i64>, ptr %i.wv, align 1, !tbaa !11
  store <2 x i64> %.val14.i, ptr %i.ww, align 1, !tbaa !11
  %i.xz = icmp slt i64 %i.vr, 25
  br i1 %i.xz, label %.loopexit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ya = getelementptr inbounds nuw i8, ptr %.0179.i, i64 24
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.130.i259.i.i = phi ptr [ %i.ya, %bb.cw ], [ %i.yd, %bb.cx ] ; 3 uses
  %.pn.i260.i.i = phi ptr [ %i.wv, %bb.cw ], [ %i.yc, %bb.cx ] ; 2 uses
  %.1.i261.i.i = getelementptr inbounds nuw i8, ptr %.pn.i260.i.i, i64 16
  %.1.i261.i.val.i = load <2 x i64>, ptr %.1.i261.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i261.i.val.i, ptr %.130.i259.i.i, align 1, !tbaa !11
  %i.yb = getelementptr inbounds nuw i8, ptr %.130.i259.i.i, i64 16
  %i.yc = getelementptr inbounds nuw i8, ptr %.pn.i260.i.i, i64 32 ; 2 uses
  %.val13.i = load <2 x i64>, ptr %i.yc, align 1, !tbaa !11
  store <2 x i64> %.val13.i, ptr %i.yb, align 1, !tbaa !11
  %i.yd = getelementptr inbounds nuw i8, ptr %.130.i259.i.i, i64 32 ; 2 uses
  %i.ye = icmp ult ptr %i.yd, %i.xb
  br i1 %i.ye, label %bb.cx, label %.loopexit.i, !llvm.loop !100

.loopexit.i:                                      ; preds = %bb.cx, %.preheader265.i, %bb.cq, %middle.block203, %bb.cv, %ZSTD_overlapCopy8.exit286.i.i, %bb.co, %bb.cl, %bb.cf
  %.0.i193.i.i = phi i64 [ %i.uy, %bb.cf ], [ %i.up, %bb.cq ], [ %i.up, %bb.cl ], [ %i.up, %ZSTD_overlapCopy8.exit286.i.i ], [ %i.up, %bb.co ], [ %i.up, %middle.block203 ], [ %i.up, %bb.cv ], [ %i.up, %.preheader265.i ], [ %i.up, %bb.cx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.yf = icmp ult i64 %.0.i193.i.i, -119
  %i.yg = getelementptr inbounds nuw i8, ptr %.2134.i.i, i64 %.0.i193.i.i ; 2 uses
  %i.yh = add nsw i32 %.0125.i291.i, -1           ; 2 uses
  br i1 %i.yf, label %bb.cy, label %.thread239.i

bb.cy:                                            ; preds = %.loopexit.i
  %.not256.i = icmp eq i32 %i.yh, 0
  br i1 %.not256.i, label %.thread235.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !141
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !142
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !143
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !144
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !145
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.yi = add i64 %i.gu, 16
  br label %bb.da

bb.da:                                            ; preds = %bb.er, %bb.cz
  %i.yj = phi ptr [ %i.rz, %bb.cz ], [ %i.aex, %bb.er ] ; 8 uses
  %i.yk = phi i32 [ %i.sa, %bb.cz ], [ %i.aey, %bb.er ] ; 5 uses
  %i.yl = phi i64 [ %i.sb, %bb.cz ], [ %i.aez, %bb.er ] ; 6 uses
  %i.ym = phi i64 [ %i.jv, %bb.cz ], [ %i.abg, %bb.er ] ; 2 uses
  %i.yn = phi i64 [ %.sink470.i, %bb.cz ], [ %.sink472.i, %bb.er ] ; 6 uses
  %i.yo = phi i64 [ %.sink.i, %bb.cz ], [ %.sink471.i, %bb.er ] ; 6 uses
  %i.yp = phi i64 [ %i.sc, %bb.cz ], [ %i.afa, %bb.er ] ; 2 uses
  %i.yq = phi i64 [ %i.sd, %bb.cz ], [ %i.afb, %bb.er ] ; 2 uses
  %i.yr = phi i64 [ %i.se, %bb.cz ], [ %i.afc, %bb.er ] ; 2 uses
  %.4129.i294.i = phi i32 [ %i.yh, %bb.cz ], [ %i.aiw, %bb.er ] ; 2 uses
  %.7139.i292.i = phi ptr [ %i.yg, %bb.cz ], [ %i.aiv, %bb.er ] ; 8 uses
  %.7139.i292.i208 = ptrtoaddr ptr %.7139.i292.i to i64
  %.not260.i = icmp eq i32 %.4129.i294.i, 1
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.yr ; 4 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.yp ; 4 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.yq ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 4
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !41, !noalias !146
  %i.yx = zext i32 %i.yw to i64                   ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !41, !noalias !146 ; 2 uses
  %i.za = zext i32 %i.yz to i64                   ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !41, !noalias !146 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.ys, i64 2
  %i.ze = load i8, ptr %i.zd, align 2, !tbaa !58, !noalias !146 ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yt, i64 2
  %i.zg = load i8, ptr %i.zf, align 2, !tbaa !58, !noalias !146 ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yu, i64 2
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !58, !noalias !146 ; 4 uses
  %i.zj = zext i8 %i.ze to i32                    ; 2 uses
  %i.zk = zext i8 %i.zg to i32                    ; 2 uses
  %i.zl = add i8 %i.zg, %i.ze
  %i.zm = add i8 %i.zl, %i.zi
  %i.zn = load i16, ptr %i.ys, align 4, !tbaa !57, !noalias !146
  %i.zo = load i16, ptr %i.yt, align 4, !tbaa !57, !noalias !146
  %i.zp = load i16, ptr %i.yu, align 4, !tbaa !57, !noalias !146
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ys, i64 3
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !56, !noalias !146 ; 2 uses
  %i.zs = zext i8 %i.zr to i32
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yt, i64 3
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !56, !noalias !146 ; 2 uses
  %i.zv = zext i8 %i.zu to i32
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yu, i64 3
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !56, !noalias !146 ; 2 uses
  %i.zy = zext i8 %i.zx to i32
  %i.zz = icmp ugt i8 %i.zi, 1
  br i1 %i.zz, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.aaa = zext i8 %i.zi to i32                   ; 2 uses
  %i.aab = and i32 %i.yk, 63
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = shl i64 %i.yl, %i.aac
  %i.aae = sub nsw i32 0, %i.aaa
  %i.aaf = and i32 %i.aae, 63
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = lshr i64 %i.aad, %i.aag
  %i.aai = add i32 %i.yk, %i.aaa                  ; 2 uses
  store i32 %i.aai, ptr %i.cp, align 8, !tbaa !83, !noalias !146
  %i.aaj = zext i32 %i.zc to i64
  %i.aak = add i64 %i.aah, %i.aaj
  store i64 %i.yn, ptr %i.aa, align 8, !tbaa !45, !noalias !146
  br label %bb.dh

bb.dc:                                            ; preds = %bb.da
  %i.aal = icmp eq i32 %i.yz, 0                   ; 3 uses
  %i.aam = icmp eq i8 %i.zi, 0
  br i1 %i.aam, label %bb.dd, label %bb.de, !prof !89

bb.dd:                                            ; preds = %bb.dc
  %i.aan = select i1 %i.aal, i64 %i.yn, i64 %i.yo
  %i.aao = select i1 %i.aal, i64 %i.yo, i64 %i.yn
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.aap = zext i1 %i.aal to i32
  %i.aaq = add i32 %i.zc, %i.aap
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = and i32 %i.yk, 63
  %i.aat = zext nneg i32 %i.aas to i64
  %i.aau = shl i64 %i.yl, %i.aat
  %i.aav = lshr i64 %i.aau, 63
  %i.aaw = add i32 %i.yk, 1                       ; 3 uses
  store i32 %i.aaw, ptr %i.cp, align 8, !tbaa !83, !noalias !146
  %i.aax = add nuw nsw i64 %i.aav, %i.aar         ; 3 uses
  %i.aay = icmp eq i64 %i.aax, 3
  br i1 %i.aay, label %.thread218.i, label %bb.df

.thread218.i:                                     ; preds = %bb.de
  %i.aaz = add i64 %i.yo, -1                      ; 2 uses
  %.not.i.i219.i = icmp eq i64 %i.aaz, 0
  %i.aba = select i1 %.not.i.i219.i, i64 -1, i64 %i.aaz
  br label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aax
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !45, !noalias !146 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.abc, 0
  %i.abd = select i1 %.not.i.i.i, i64 -1, i64 %i.abc ; 2 uses
end_hunk_3
begin_hunk_4_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
  %i.aem = sub nsw i64 0, %i.ael
  %i.aen = getelementptr inbounds i8, ptr %i.acm, i64 %i.aem
  %i.aeo = icmp ult ptr %i.aen, %3
  %i.aep = ptrtoint ptr %i.acm to i64
  %i.aeq = sub i64 %i.aep, %i.gw
  %i.aer = trunc i64 %i.aeq to i32
  %.021.i220.i.i = select i1 %i.aeo, i32 %i.aer, i32 %i.aek ; 2 uses
  %i.aes = zext i32 %.021.i220.i.i to i64
  %i.aet = sub nsw i64 0, %i.aes
  %i.aeu = getelementptr inbounds i8, ptr %i.acm, i64 %i.aet ; 3 uses
  store ptr %i.aeu, ptr %i.cz, align 8, !tbaa !78, !noalias !146
  %i.aev = shl i32 %.021.i220.i.i, 3
  %i.aew = sub i32 %i.adt, %i.aev                 ; 2 uses
  store i32 %i.aew, ptr %i.cp, align 8, !tbaa !83, !noalias !146
  %.val8.i = load i64, ptr %i.aeu, align 1, !tbaa !45 ; 2 uses
  store i64 %.val8.i, ptr %9, align 8, !tbaa !79, !noalias !146
  br label %ZSTD_decodeSequence.exit.i.i

ZSTD_decodeSequence.exit.i.i:                     ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.dr
  %i.aex = phi ptr [ %i.acm, %bb.dw ], [ @BIT_reloadDStream.zeroFilled, %bb.dt ], [ %i.aeh, %bb.dv ], [ %i.aeu, %bb.dx ], [ %i.acm, %bb.dr ] ; 2 uses
  %i.aey = phi i32 [ %i.adt, %bb.dw ], [ %i.adt, %bb.dt ], [ %i.aei, %bb.dv ], [ %i.aew, %bb.dx ], [ %i.acy, %bb.dr ] ; 2 uses
  %i.aez = phi i64 [ %i.aco, %bb.dw ], [ %i.aco, %bb.dt ], [ %.val.i79.i, %bb.dv ], [ %.val8.i, %bb.dx ], [ %i.aco, %bb.dr ]
  %i.afa = phi i64 [ %i.ads, %bb.dw ], [ %i.ads, %bb.dt ], [ %i.ads, %bb.dv ], [ %i.ads, %bb.dx ], [ %i.yp, %bb.dr ]
  %i.afb = phi i64 [ %i.aec, %bb.dw ], [ %i.aec, %bb.dt ], [ %i.aec, %bb.dv ], [ %i.aec, %bb.dx ], [ %i.yq, %bb.dr ]
  %i.afc = phi i64 [ %i.adi, %bb.dw ], [ %i.adi, %bb.dt ], [ %i.adi, %bb.dv ], [ %i.adi, %bb.dx ], [ %i.yr, %bb.dr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.i, ptr %8, align 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %.sink471.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.afd = getelementptr i8, ptr %.7139.i292.i, i64 %.sroa.0.0.i ; 7 uses
  %i.afe = add i64 %.sroa.0.0.i, %.sroa.6.0.i     ; 9 uses
  %i.aff = load ptr, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 %.sroa.0.0.i ; 2 uses
  %i.afh = sub i64 0, %.sink471.i
  %i.afi = getelementptr inbounds i8, ptr %i.afd, i64 %i.afh ; 2 uses
  %i.afj = icmp ugt ptr %i.afg, %i.um
  %i.afk = getelementptr inbounds nuw i8, ptr %.7139.i292.i, i64 %i.afe
  %i.afl = icmp ugt ptr %i.afk, %i.uu
  %or.cond.i.i.i = select i1 %i.afj, i1 true, i1 %i.afl, !prof !104
  br i1 %or.cond.i.i.i, label %bb.dy, label %.critedge.i.i.i, !prof !104

.critedge.i.i.i:                                  ; preds = %ZSTD_decodeSequence.exit.i.i
  %.val28.i = load <2 x i64>, ptr %i.aff, align 1, !tbaa !11
  store <2 x i64> %.val28.i, ptr %.7139.i292.i, align 1, !tbaa !11
  %i.afm = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.afm, label %bb.dz, label %ZSTD_wildcopy.exit271.i.i, !prof !52

bb.dy:                                            ; preds = %ZSTD_decodeSequence.exit.i.i
  %i.afn = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.7139.i292.i, ptr noundef %i.d, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.um, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %ZSTD_execSequence.exit.i.i

bb.dz:                                            ; preds = %.critedge.i.i.i
  %i.afo = getelementptr inbounds nuw i8, ptr %.7139.i292.i, i64 16
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aff, i64 16 ; 2 uses
  %i.afq = add i64 %.sroa.0.0.i, -16
  %.val23.i = load <2 x i64>, ptr %i.afp, align 1, !tbaa !11
  store <2 x i64> %.val23.i, ptr %i.afo, align 1, !tbaa !11
  %i.afr = icmp slt i64 %i.afq, 17
  br i1 %i.afr, label %ZSTD_wildcopy.exit271.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.afs = getelementptr inbounds nuw i8, ptr %.7139.i292.i, i64 32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %bb.ea
  %.130.i266.i.i = phi ptr [ %i.afs, %bb.ea ], [ %i.afv, %bb.eb ] ; 3 uses
  %.pn.i267.i.i = phi ptr [ %i.afp, %bb.ea ], [ %i.afu, %bb.eb ] ; 2 uses
  %.1.i268.i.i = getelementptr inbounds nuw i8, ptr %.pn.i267.i.i, i64 16
  %.1.i268.i.val.i = load <2 x i64>, ptr %.1.i268.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i268.i.val.i, ptr %.130.i266.i.i, align 1, !tbaa !11
  %i.aft = getelementptr inbounds nuw i8, ptr %.130.i266.i.i, i64 16
  %i.afu = getelementptr inbounds nuw i8, ptr %.pn.i267.i.i, i64 32 ; 2 uses
  %.val22.i = load <2 x i64>, ptr %i.afu, align 1, !tbaa !11
  store <2 x i64> %.val22.i, ptr %i.aft, align 1, !tbaa !11
  %i.afv = getelementptr inbounds nuw i8, ptr %.130.i266.i.i, i64 32 ; 2 uses
  %i.afw = icmp ult ptr %i.afv, %i.afd
  br i1 %i.afw, label %bb.eb, label %ZSTD_wildcopy.exit271.i.i, !llvm.loop !100

ZSTD_wildcopy.exit271.i.i:                        ; preds = %bb.eb, %bb.dz, %.critedge.i.i.i
  store ptr %i.afg, ptr %i.a, align 8, !tbaa !38
  %i.afx = ptrtoint ptr %i.afd to i64             ; 2 uses
  %i.afy = sub i64 %i.afx, %i.gu                  ; 3 uses
  %i.afz = icmp ugt i64 %.sink471.i, %i.afy
  br i1 %i.afz, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %ZSTD_wildcopy.exit271.i.i
  %i.aga = sub i64 %i.afx, %i.gv
  %i.agb = icmp ugt i64 %.sink471.i, %i.aga
  br i1 %i.agb, label %ZSTD_execSequence.exit.i.thread.i, label %bb.ed, !prof !52

ZSTD_execSequence.exit.i.thread.i:                ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread239.i

bb.ed:                                            ; preds = %bb.ec
  %i.agc = ptrtoint ptr %i.afi to i64
  %i.agd = sub i64 %i.agc, %i.gu                  ; 3 uses
  %i.age = getelementptr inbounds i8, ptr %i.n, i64 %i.agd ; 2 uses
  %i.agf = add nsw i64 %i.agd, %.sroa.6.0.i       ; 3 uses
  %.not.i190.i.i = icmp sgt i64 %i.agf, 0
  br i1 %.not.i190.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afd, ptr align 1 %i.age, i64 %.sroa.6.0.i, i1 false)
  br label %ZSTD_execSequence.exit.i.i

bb.ef:                                            ; preds = %bb.ed
  %gepdiff.i.i.i = sub nsw i64 0, %i.agd          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afd, ptr align 1 %i.age, i64 %gepdiff.i.i.i, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afd, i64 %gepdiff.i.i.i
  store i64 %i.agf, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %ZSTD_wildcopy.exit271.i.i
  %.0176.i = phi ptr [ %i.agg, %bb.ef ], [ %i.afd, %ZSTD_wildcopy.exit271.i.i ] ; 12 uses
  %.0174.i = phi ptr [ %i.j, %bb.ef ], [ %i.afi, %ZSTD_wildcopy.exit271.i.i ] ; 9 uses
  %i.agh = phi i64 [ %i.agf, %bb.ef ], [ %.sroa.6.0.i, %ZSTD_wildcopy.exit271.i.i ] ; 5 uses
  %i.agi = icmp ugt i64 %.sink471.i, 15
  br i1 %i.agi, label %bb.eh, label %bb.ek, !prof !89

bb.eh:                                            ; preds = %bb.eg
  %i.agj = getelementptr inbounds i8, ptr %.0176.i, i64 %i.agh
  %.val25.i = load <2 x i64>, ptr %.0174.i, align 1, !tbaa !11
  store <2 x i64> %.val25.i, ptr %.0176.i, align 1, !tbaa !11
  %i.agk = icmp slt i64 %i.agh, 17
  br i1 %i.agk, label %ZSTD_execSequence.exit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.agl = getelementptr inbounds nuw i8, ptr %.0176.i, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %bb.ei
  %.130.i273.i.i = phi ptr [ %i.agl, %bb.ei ], [ %i.ago, %bb.ej ] ; 3 uses
  %.pn.i274.i.i = phi ptr [ %.0174.i, %bb.ei ], [ %i.agn, %bb.ej ] ; 2 uses
  %.1.i275.i.i = getelementptr inbounds nuw i8, ptr %.pn.i274.i.i, i64 16
  %.1.i275.i.val.i = load <2 x i64>, ptr %.1.i275.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i275.i.val.i, ptr %.130.i273.i.i, align 1, !tbaa !11
  %i.agm = getelementptr inbounds nuw i8, ptr %.130.i273.i.i, i64 16
  %i.agn = getelementptr inbounds nuw i8, ptr %.pn.i274.i.i, i64 32 ; 2 uses
  %.val24.i = load <2 x i64>, ptr %i.agn, align 1, !tbaa !11
  store <2 x i64> %.val24.i, ptr %i.agm, align 1, !tbaa !11
  %i.ago = getelementptr inbounds nuw i8, ptr %.130.i273.i.i, i64 32 ; 2 uses
  %i.agp = icmp ult ptr %i.ago, %i.agj
  br i1 %i.agp, label %bb.ej, label %ZSTD_execSequence.exit.i.i, !llvm.loop !100

bb.ek:                                            ; preds = %bb.eg
  %i.agq = icmp samesign ult i64 %.sink471.i, 8
  br i1 %i.agq, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink471.i
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !5
  %i.agt = load i8, ptr %.0174.i, align 1, !tbaa !11
  store i8 %i.agt, ptr %.0176.i, align 1, !tbaa !11
  %i.agu = getelementptr inbounds nuw i8, ptr %.0174.i, i64 1
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !11
  %i.agw = getelementptr inbounds nuw i8, ptr %.0176.i, i64 1
  store i8 %i.agv, ptr %i.agw, align 1, !tbaa !11
  %i.agx = getelementptr inbounds nuw i8, ptr %.0174.i, i64 2
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !11
  %i.agz = getelementptr inbounds nuw i8, ptr %.0176.i, i64 2
  store i8 %i.agy, ptr %i.agz, align 1, !tbaa !11
  %i.aha = getelementptr inbounds nuw i8, ptr %.0174.i, i64 3
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !11
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0176.i, i64 3
  store i8 %i.ahb, ptr %i.ahc, align 1, !tbaa !11
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink471.i
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !5
  %i.ahf = zext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0174.i, i64 %i.ahf ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0176.i, i64 4
  %.val32.i = load i32, ptr %i.ahg, align 1
  store i32 %.val32.i, ptr %i.ahh, align 1
  %i.ahi = sext i32 %i.ags to i64
  %i.ahj = sub nsw i64 0, %i.ahi
  %i.ahk = getelementptr inbounds i8, ptr %i.ahg, i64 %i.ahj
  br label %ZSTD_overlapCopy8.exit287.i.i

bb.em:                                            ; preds = %bb.ek
  %.val34.i = load i64, ptr %.0174.i, align 1
  store i64 %.val34.i, ptr %.0176.i, align 1
  br label %ZSTD_overlapCopy8.exit287.i.i

ZSTD_overlapCopy8.exit287.i.i:                    ; preds = %bb.em, %bb.el
  %.1175.i = phi ptr [ %i.ahk, %bb.el ], [ %.0174.i, %bb.em ] ; 2 uses
  %.1175.i210 = ptrtoaddr ptr %.1175.i to i64
  %i.ahl = getelementptr inbounds nuw i8, ptr %.1175.i, i64 8 ; 7 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0176.i, i64 8 ; 6 uses
  %i.ahn = icmp ugt i64 %i.agh, 8
  br i1 %i.ahn, label %bb.en, label %ZSTD_execSequence.exit.i.i

bb.en:                                            ; preds = %ZSTD_overlapCopy8.exit287.i.i
  %i.aho = ptrtoint ptr %i.ahm to i64
  %i.ahp = ptrtoint ptr %i.ahl to i64
  %i.ahq = sub i64 %i.aho, %i.ahp
  %i.ahr = getelementptr i8, ptr %.0176.i, i64 %i.agh ; 2 uses
  %i.ahs = icmp slt i64 %i.ahq, 16
  br i1 %i.ahs, label %.preheader262.i.preheader, label %bb.eo

.preheader262.i.preheader:                        ; preds = %bb.en
  %18 = tail call i64 @llvm.umin.i64(i64 %.sink471.i, i64 %i.afy)
  %umin212 = tail call i64 @llvm.umax.i64(i64 %.sink471.i, i64 %i.afy) ; 3 uses
  %i.aht = add i64 %.sroa.6.0.i, %i.gu
  %19 = add i64 %i.aht, %18
  %i.ahu = add i64 %19, %umin212
  %i.ahv = sub i64 %i.ahu, %.sink471.i
  %i.ahw = add i64 %umin212, %i.yi
  %umax214 = tail call i64 @llvm.umax.i64(i64 %i.ahv, i64 %i.ahw)
  %i.ahx = add i64 %umin212, %i.gu
  %20 = sub i64 %umax214, %i.ahx
  %21 = add i64 %20, -9                           ; 2 uses
  %i.ahy = lshr i64 %21, 3
  %i.ahz = add nuw nsw i64 %i.ahy, 1              ; 2 uses
  %min.iters.check216 = icmp ult i64 %21, 72
  br i1 %min.iters.check216, label %.preheader262.i.preheader234, label %vector.memcheck207

vector.memcheck207:                               ; preds = %.preheader262.i.preheader
  %i.aia = sub i64 %.sroa.0.0.i, %i.gu
  %i.aib = add i64 %i.aia, %.7139.i292.i208
  %umax209 = tail call i64 @llvm.umax.i64(i64 %.sink471.i, i64 %i.aib)
  %i.aic = add i64 %umax209, %i.gu
  %i.aid = sub i64 %.1175.i210, %i.aic
  %diff.check211 = icmp ugt i64 %i.aid, -32
  br i1 %diff.check211, label %.preheader262.i.preheader234, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck207
  %n.vec219 = and i64 %i.ahz, 4611686018427387900 ; 3 uses
  %i.aie = shl i64 %n.vec219, 3                   ; 2 uses
  %i.aif = getelementptr i8, ptr %i.ahm, i64 %i.aie
  %i.aig = getelementptr i8, ptr %i.ahl, i64 %i.aie
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next226, %vector.body220 ] ; 2 uses
  %i.aih = shl i64 %index221, 3                   ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.ahm, i64 %i.aih ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.ahl, i64 %i.aih ; 2 uses
  %i.aii = getelementptr i8, ptr %next.gep223, i64 16
  %wide.load224 = load <2 x i64>, ptr %next.gep223, align 1
  %wide.load225 = load <2 x i64>, ptr %i.aii, align 1
  %i.aij = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x i64> %wide.load224, ptr %next.gep222, align 1
  store <2 x i64> %wide.load225, ptr %i.aij, align 1
  %index.next226 = add nuw i64 %index221, 4       ; 2 uses
  %i.aik = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.aik, label %middle.block227, label %vector.body220, !llvm.loop !149

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %i.ahz, %n.vec219
  br i1 %cmp.n228, label %ZSTD_execSequence.exit.i.i, label %.preheader262.i.preheader234

.preheader262.i.preheader234:                     ; preds = %vector.memcheck207, %.preheader262.i.preheader, %middle.block227
  %.029.i283.i.i.ph = phi ptr [ %i.ahm, %vector.memcheck207 ], [ %i.ahm, %.preheader262.i.preheader ], [ %i.aif, %middle.block227 ]
  %.0.i284.i.i.ph = phi ptr [ %i.ahl, %vector.memcheck207 ], [ %i.ahl, %.preheader262.i.preheader ], [ %i.aig, %middle.block227 ]
  br label %.preheader262.i

.preheader262.i:                                  ; preds = %.preheader262.i.preheader234, %.preheader262.i
  %.029.i283.i.i = phi ptr [ %i.ail, %.preheader262.i ], [ %.029.i283.i.i.ph, %.preheader262.i.preheader234 ] ; 2 uses
  %.0.i284.i.i = phi ptr [ %i.aim, %.preheader262.i ], [ %.0.i284.i.i.ph, %.preheader262.i.preheader234 ] ; 2 uses
  %.0.i284.i.val.i = load i64, ptr %.0.i284.i.i, align 1
  store i64 %.0.i284.i.val.i, ptr %.029.i283.i.i, align 1
  %i.ail = getelementptr inbounds nuw i8, ptr %.029.i283.i.i, i64 8 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.0.i284.i.i, i64 8
  %i.ain = icmp ult ptr %i.ail, %i.ahr
  br i1 %i.ain, label %.preheader262.i, label %ZSTD_execSequence.exit.i.i, !llvm.loop !150

bb.eo:                                            ; preds = %bb.en
  %.val27.i = load <2 x i64>, ptr %i.ahl, align 1, !tbaa !11
  store <2 x i64> %.val27.i, ptr %i.ahm, align 1, !tbaa !11
  %i.aio = icmp slt i64 %i.agh, 25
  br i1 %i.aio, label %ZSTD_execSequence.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aip = getelementptr inbounds nuw i8, ptr %.0176.i, i64 24
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.130.i280.i.i = phi ptr [ %i.aip, %bb.ep ], [ %i.ais, %bb.eq ] ; 3 uses
  %.pn.i281.i.i = phi ptr [ %i.ahl, %bb.ep ], [ %i.air, %bb.eq ] ; 2 uses
  %.1.i282.i.i = getelementptr inbounds nuw i8, ptr %.pn.i281.i.i, i64 16
  %.1.i282.i.val.i = load <2 x i64>, ptr %.1.i282.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i282.i.val.i, ptr %.130.i280.i.i, align 1, !tbaa !11
  %i.aiq = getelementptr inbounds nuw i8, ptr %.130.i280.i.i, i64 16
  %i.air = getelementptr inbounds nuw i8, ptr %.pn.i281.i.i, i64 32 ; 2 uses
  %.val26.i = load <2 x i64>, ptr %i.air, align 1, !tbaa !11
  store <2 x i64> %.val26.i, ptr %i.aiq, align 1, !tbaa !11
  %i.ais = getelementptr inbounds nuw i8, ptr %.130.i280.i.i, i64 32 ; 2 uses
  %i.ait = icmp ult ptr %i.ais, %i.ahr
  br i1 %i.ait, label %bb.eq, label %ZSTD_execSequence.exit.i.i, !llvm.loop !100

ZSTD_execSequence.exit.i.i:                       ; preds = %bb.eq, %.preheader262.i, %bb.ej, %middle.block227, %bb.eo, %ZSTD_overlapCopy8.exit287.i.i, %bb.eh, %bb.ee, %bb.dy
  %.0.i.i.i = phi i64 [ %i.afn, %bb.dy ], [ %i.afe, %middle.block227 ], [ %i.afe, %bb.ee ], [ %i.afe, %ZSTD_overlapCopy8.exit287.i.i ], [ %i.afe, %bb.eh ], [ %i.afe, %bb.eo ], [ %i.afe, %bb.ej ], [ %i.afe, %.preheader262.i ], [ %i.afe, %bb.eq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.aiu = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.aiu, label %bb.er, label %.thread239.i

bb.er:                                            ; preds = %ZSTD_execSequence.exit.i.i
  %i.aiv = getelementptr inbounds nuw i8, ptr %.7139.i292.i, i64 %.0.i.i.i ; 2 uses
  %i.aiw = add nsw i32 %.4129.i294.i, -1          ; 2 uses
  %.not173.i.i = icmp eq i32 %i.aiw, 0
  br i1 %.not173.i.i, label %.thread235.i, label %bb.da, !llvm.loop !151

.thread235.i:                                     ; preds = %bb.bw, %bb.er, %bb.cy
  %i.aix = phi ptr [ %i.aex, %bb.er ], [ %i.rz, %bb.cy ], [ %i.nx, %bb.bw ]
  %i.aiy = phi i32 [ %i.aey, %bb.er ], [ %i.sa, %bb.cy ], [ %i.ny, %bb.bw ]
  %i.aiz = phi i64 [ %i.abg, %bb.er ], [ %i.jv, %bb.cy ], [ %i.jv, %bb.bw ]
  %i.aja = phi i64 [ %.sink472.i, %bb.er ], [ %.sink470.i, %bb.cy ], [ %.sink470.i, %bb.bw ]
  %i.ajb = phi i64 [ %.sink471.i, %bb.er ], [ %.sink.i, %bb.cy ], [ %.sink.i, %bb.bw ]
  %.9141.i233.i = phi ptr [ %i.aiv, %bb.er ], [ %i.yg, %bb.cy ], [ %i.rw, %bb.bw ]
  %.2149.i208217232.i = phi ptr [ %i.um, %bb.er ], [ %i.um, %bb.cy ], [ %i.h, %bb.bw ]
  %i.ajc = icmp eq ptr %i.aix, %3
  %.not261.i = icmp eq i32 %i.aiy, 64
  %or.cond.i = select i1 %i.ajc, i1 %.not261.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.thread239.i

.preheader.i:                                     ; preds = %.thread235.i
  %i.ajd = trunc i64 %i.ajb to i32
  store i32 %i.ajd, ptr %i.p, align 4, !tbaa !5
  %i.aje = trunc i64 %i.aja to i32
  store i32 %i.aje, ptr %i.t, align 8, !tbaa !5
  %i.ajf = trunc i64 %i.aiz to i32
  store i32 %i.ajf, ptr %i.x, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.es

.thread239.i:                                     ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i.i, %ZSTD_execSequence.exit.i.i, %.thread235.i, %ZSTD_execSequence.exit.i.thread.i, %.loopexit.i, %.loopexit.thread.i, %bb.by, %bb.bx, %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i, %BIT_initDStream.exit.i, %bb.n, %bb.f, %bb.d
  %.9.i.ph.i = phi i64 [ -20, %.loopexit.thread.i ], [ -20, %bb.bx ], [ -20, %bb.d ], [ %.0.i193.i.i, %.loopexit.i ], [ -20, %ZSTD_execSequence.exit.i.thread.i ], [ -20, %.thread235.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i ], [ %.0.i.i.i, %ZSTD_execSequence.exit.i.i ], [ -20, %bb.f ], [ -70, %bb.by ], [ -20, %bb.n ], [ %.0.i199.i.i, %ZSTD_execSequenceSplitLitBuffer.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %ZSTD_decompressSequencesSplitLitBuffer_default.exit

bb.es:                                            ; preds = %.preheader.i, %bb.c
  %.pre.i = phi ptr [ %.pre.pre.i, %.preheader.i ], [ %i.f, %bb.c ] ; 3 uses
  %.4151.i.i = phi ptr [ %.2149.i208217232.i, %.preheader.i ], [ %i.h, %bb.c ] ; 2 uses
  %.11143.i.i = phi ptr [ %.9141.i233.i, %.preheader.i ], [ %1, %bb.c ] ; 5 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  %i.ajh = load i32, ptr %i.ajg, align 8, !tbaa !35
  %i.aji = icmp eq i32 %i.ajh, 2
  br i1 %i.aji, label %bb.et, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.es
  %.pre331.i = ptrtoint ptr %i.d to i64
  br label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.ajj = ptrtoint ptr %.4151.i.i to i64
  %i.ajk = ptrtoint ptr %.pre.i to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk                 ; 3 uses
  %i.ajm = ptrtoint ptr %i.d to i64               ; 2 uses
  %i.ajn = ptrtoint ptr %.11143.i.i to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  %.not178.i.i = icmp ugt i64 %i.ajl, %i.ajo
  br i1 %.not178.i.i, label %ZSTD_decompressSequencesSplitLitBuffer_default.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not177.i.i = icmp eq ptr %.11143.i.i, null
  br i1 %.not177.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.11143.i.i, ptr align 1 %.pre.i, i64 %i.ajl, i1 false)
  %i.ajp = getelementptr inbounds nuw i8, ptr %.11143.i.i, i64 %i.ajl
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.12144.i.i = phi ptr [ %i.ajp, %bb.ev ], [ null, %bb.eu ]
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %i.ajg, align 8, !tbaa !35
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre331.i, %._crit_edge.i ], [ %i.ajm, %bb.ew ]
  %i.ajs = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ajq, %bb.ew ] ; 2 uses
  %.6153.i.i = phi ptr [ %.4151.i.i, %._crit_edge.i ], [ %i.ajr, %bb.ew ]
  %.14146.i.i = phi ptr [ %.11143.i.i, %._crit_edge.i ], [ %.12144.i.i, %bb.ew ] ; 4 uses
  %i.ajt = ptrtoint ptr %.6153.i.i to i64
  %i.aju = ptrtoint ptr %i.ajs to i64
  %i.ajv = sub i64 %i.ajt, %i.aju                 ; 3 uses
  %i.ajw = ptrtoint ptr %.14146.i.i to i64
  %i.ajx = sub i64 %.pre-phi.i, %i.ajw
  %.not180.i.i = icmp ugt i64 %i.ajv, %i.ajx
  br i1 %.not180.i.i, label %ZSTD_decompressSequencesSplitLitBuffer_default.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %.not179.i.i = icmp eq ptr %.14146.i.i, null
  br i1 %.not179.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14146.i.i, ptr align 1 %i.ajs, i64 %i.ajv, i1 false)
  %i.ajy = getelementptr inbounds nuw i8, ptr %.14146.i.i, i64 %i.ajv
  %i.ajz = ptrtoint ptr %i.ajy to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.16.i.ph.i = phi i64 [ 0, %bb.ey ], [ %i.ajz, %bb.ez ]
  %i.aka = ptrtoint ptr %1 to i64
  %i.akb = sub i64 %.16.i.ph.i, %i.aka
  br label %ZSTD_decompressSequencesSplitLitBuffer_default.exit

ZSTD_decompressSequencesSplitLitBuffer_default.exit: ; preds = %.thread239.i, %bb.et, %bb.ex, %bb.fa
  %.14.i.i = phi i64 [ %i.akb, %bb.fa ], [ %.9.i.ph.i, %.thread239.i ], [ -70, %bb.ex ], [ -70, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.fb

bb.fb:                                            ; preds = %ZSTD_decompressSequencesSplitLitBuffer_default.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.14.i.i, %ZSTD_decompressSequencesSplitLitBuffer_default.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequences(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %6 = alloca %struct.seq_t, align 8              ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
end_hunk_4
begin_hunk_5_@ZSTD_decompressSequences:bb.a
  %i.nj = sub nsw i64 0, %i.ni
  %i.nk = getelementptr inbounds i8, ptr %i.lj, i64 %i.nj
  %i.nl = icmp ult ptr %i.nk, %3
  %i.nm = ptrtoint ptr %i.lj to i64
  %i.nn = sub i64 %i.nm, %i.he
  %i.no = trunc i64 %i.nn to i32
  %.021.i87.i.i = select i1 %i.nl, i32 %i.no, i32 %i.nh ; 2 uses
  %i.np = zext i32 %.021.i87.i.i to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds i8, ptr %i.lj, i64 %i.nq ; 3 uses
  store ptr %i.nr, ptr %i.dg, align 8, !tbaa !78, !noalias !157
  %i.ns = shl i32 %.021.i87.i.i, 3
  %i.nt = sub i32 %i.mq, %i.ns                    ; 2 uses
  store i32 %i.nt, ptr %i.cw, align 8, !tbaa !83, !noalias !157
  %.val6.i = load i64, ptr %i.nr, align 1, !tbaa !45 ; 2 uses
  store i64 %.val6.i, ptr %7, align 8, !tbaa !79, !noalias !157
  br label %ZSTD_decodeSequence.exit.i.i

ZSTD_decodeSequence.exit.i.i:                     ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %i.nu = phi ptr [ %i.lj, %bb.bd ], [ @BIT_reloadDStream.zeroFilled, %bb.ba ], [ %i.ne, %bb.bc ], [ %i.nr, %bb.be ], [ %i.lj, %bb.ay ] ; 2 uses
  %i.nv = phi i32 [ %i.mq, %bb.bd ], [ %i.mq, %bb.ba ], [ %i.nf, %bb.bc ], [ %i.nt, %bb.be ], [ %i.lv, %bb.ay ] ; 2 uses
  %i.nw = phi i64 [ %i.ll, %bb.bd ], [ %i.ll, %bb.ba ], [ %.val.i44.i, %bb.bc ], [ %.val6.i, %bb.be ], [ %i.ll, %bb.ay ]
  %i.nx = phi i64 [ %i.mp, %bb.bd ], [ %i.mp, %bb.ba ], [ %i.mp, %bb.bc ], [ %i.mp, %bb.be ], [ %i.hm, %bb.ay ]
  %i.ny = phi i64 [ %i.mz, %bb.bd ], [ %i.mz, %bb.ba ], [ %i.mz, %bb.bc ], [ %i.mz, %bb.be ], [ %i.hn, %bb.ay ]
  %i.nz = phi i64 [ %i.mf, %bb.bd ], [ %i.mf, %bb.ba ], [ %i.mf, %bb.bc ], [ %i.mf, %bb.be ], [ %i.ho, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.i, ptr %6, align 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %.sink.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.oa = getelementptr i8, ptr %.068.i103.i, i64 %.sroa.0.0.i ; 7 uses
  %i.ob = add i64 %.sroa.0.0.i, %.sroa.6.0.i      ; 9 uses
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.sroa.0.0.i ; 2 uses
  %i.oe = sub i64 0, %.sink.i
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 %i.oe ; 2 uses
  %i.og = icmp ugt ptr %i.od, %i.o
  %i.oh = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 %i.ob
  %i.oi = icmp ugt ptr %i.oh, %i.hb
  %or.cond.i.i.i = select i1 %i.og, i1 true, i1 %i.oi, !prof !104
  br i1 %or.cond.i.i.i, label %bb.bf, label %.critedge.i.i.i, !prof !104

.critedge.i.i.i:                                  ; preds = %ZSTD_decodeSequence.exit.i.i
  %.val13.i = load <2 x i64>, ptr %i.oc, align 1, !tbaa !11
  store <2 x i64> %.val13.i, ptr %.068.i103.i, align 1, !tbaa !11
  %i.oj = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.oj, label %bb.bg, label %ZSTD_wildcopy.exit.i.i, !prof !52

bb.bf:                                            ; preds = %ZSTD_decodeSequence.exit.i.i
  %i.ok = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.068.i103.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u)
  br label %ZSTD_execSequence.exit.i.i

bb.bg:                                            ; preds = %.critedge.i.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.on = add i64 %.sroa.0.0.i, -16
  %.val8.i = load <2 x i64>, ptr %i.om, align 1, !tbaa !11
  store <2 x i64> %.val8.i, ptr %i.ol, align 1, !tbaa !11
  %i.oo = icmp slt i64 %i.on, 17
  br i1 %i.oo, label %ZSTD_wildcopy.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.op = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.130.i.i.i = phi ptr [ %i.op, %bb.bh ], [ %i.os, %bb.bi ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.om, %bb.bh ], [ %i.or, %bb.bi ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.1.i.i.val.i = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i.i.val.i, ptr %.130.i.i.i, align 1, !tbaa !11
  %i.oq = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val7.i = load <2 x i64>, ptr %i.or, align 1, !tbaa !11
  store <2 x i64> %.val7.i, ptr %i.oq, align 1, !tbaa !11
  %i.os = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.ot = icmp ult ptr %i.os, %i.oa
  br i1 %i.ot, label %bb.bi, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !100

ZSTD_wildcopy.exit.i.i:                           ; preds = %bb.bi, %bb.bg, %.critedge.i.i.i
  store ptr %i.od, ptr %i.a, align 8, !tbaa !38
  %i.ou = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.ov = sub i64 %i.ou, %i.hc                    ; 3 uses
  %i.ow = icmp ugt i64 %.sink.i, %i.ov
  br i1 %i.ow, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.ox = sub i64 %i.ou, %i.hd
  %i.oy = icmp ugt i64 %.sink.i, %i.ox
  br i1 %i.oy, label %ZSTD_execSequence.exit.i.thread.i, label %bb.bk, !prof !52

ZSTD_execSequence.exit.i.thread.i:                ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread84.i

bb.bk:                                            ; preds = %bb.bj
  %i.oz = ptrtoint ptr %i.of to i64
  %i.pa = sub i64 %i.oz, %i.hc                    ; 3 uses
  %i.pb = getelementptr inbounds i8, ptr %i.u, i64 %i.pa ; 2 uses
  %i.pc = add nsw i64 %i.pa, %.sroa.6.0.i         ; 3 uses
  %.not.i82.i.i = icmp sgt i64 %i.pc, 0
  br i1 %.not.i82.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pb, i64 %.sroa.6.0.i, i1 false)
  br label %ZSTD_execSequence.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %gepdiff.i.i.i = sub nsw i64 0, %i.pa           ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pb, i64 %gepdiff.i.i.i, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oa, i64 %gepdiff.i.i.i
  store i64 %i.pc, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %ZSTD_wildcopy.exit.i.i
  %.071.i = phi ptr [ %i.q, %bb.bm ], [ %i.of, %ZSTD_wildcopy.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.pd, %bb.bm ], [ %i.oa, %ZSTD_wildcopy.exit.i.i ] ; 12 uses
  %i.pe = phi i64 [ %i.pc, %bb.bm ], [ %.sroa.6.0.i, %ZSTD_wildcopy.exit.i.i ] ; 5 uses
  %i.pf = icmp ugt i64 %.sink.i, 15
  br i1 %i.pf, label %bb.bo, label %bb.br, !prof !89

bb.bo:                                            ; preds = %bb.bn
  %i.pg = getelementptr inbounds i8, ptr %.0.i, i64 %i.pe
  %.val10.i = load <2 x i64>, ptr %.071.i, align 1, !tbaa !11
  store <2 x i64> %.val10.i, ptr %.0.i, align 1, !tbaa !11
  %i.ph = icmp slt i64 %i.pe, 17
  br i1 %i.ph, label %ZSTD_execSequence.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.130.i97.i.i = phi ptr [ %i.pi, %bb.bp ], [ %i.pl, %bb.bq ] ; 3 uses
  %.pn.i98.i.i = phi ptr [ %.071.i, %bb.bp ], [ %i.pk, %bb.bq ] ; 2 uses
  %.1.i99.i.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 16
  %.1.i99.i.val.i = load <2 x i64>, ptr %.1.i99.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i99.i.val.i, ptr %.130.i97.i.i, align 1, !tbaa !11
  %i.pj = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 32 ; 2 uses
  %.val9.i = load <2 x i64>, ptr %i.pk, align 1, !tbaa !11
  store <2 x i64> %.val9.i, ptr %i.pj, align 1, !tbaa !11
  %i.pl = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 32 ; 2 uses
  %i.pm = icmp ult ptr %i.pl, %i.pg
  br i1 %i.pm, label %bb.bq, label %ZSTD_execSequence.exit.i.i, !llvm.loop !100

bb.br:                                            ; preds = %bb.bn
  %i.pn = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.po = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !5
  %i.pq = load i8, ptr %.071.i, align 1, !tbaa !11
  store i8 %i.pq, ptr %.0.i, align 1, !tbaa !11
  %i.pr = getelementptr inbounds nuw i8, ptr %.071.i, i64 1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !11
  %i.pt = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !11
  %i.pu = getelementptr inbounds nuw i8, ptr %.071.i, i64 2
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !11
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !11
  %i.px = getelementptr inbounds nuw i8, ptr %.071.i, i64 3
  %i.py = load i8, ptr %i.px, align 1, !tbaa !11
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !11
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !5
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %.071.i, i64 %i.qc ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %.val14.i = load i32, ptr %i.qd, align 1
  store i32 %.val14.i, ptr %i.qe, align 1
  %i.qf = sext i32 %i.pp to i64
  %i.qg = sub nsw i64 0, %i.qf
  %i.qh = getelementptr inbounds i8, ptr %i.qd, i64 %i.qg
  br label %ZSTD_overlapCopy8.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %.val15.i = load i64, ptr %.071.i, align 1
  store i64 %.val15.i, ptr %.0.i, align 1
  br label %ZSTD_overlapCopy8.exit.i.i

ZSTD_overlapCopy8.exit.i.i:                       ; preds = %bb.bt, %bb.bs
  %.1.i = phi ptr [ %i.qh, %bb.bs ], [ %.071.i, %bb.bt ] ; 2 uses
  %.1.i18 = ptrtoaddr ptr %.1.i to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qk = icmp ugt i64 %i.pe, 8
  br i1 %i.qk, label %bb.bu, label %ZSTD_execSequence.exit.i.i

bb.bu:                                            ; preds = %ZSTD_overlapCopy8.exit.i.i
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = ptrtoint ptr %i.qi to i64
  %i.qn = sub i64 %i.ql, %i.qm
  %i.qo = getelementptr i8, ptr %.0.i, i64 %i.pe  ; 2 uses
  %i.qp = icmp slt i64 %i.qn, 16
  br i1 %i.qp, label %.preheader97.i.preheader, label %bb.bv

.preheader97.i.preheader:                         ; preds = %bb.bu
  %8 = tail call i64 @llvm.umin.i64(i64 %.sink.i, i64 %i.ov)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.ov) ; 3 uses
  %i.qq = add i64 %.sroa.6.0.i, %i.hc
  %9 = add i64 %i.qq, %8
  %i.qr = add i64 %9, %umin
  %i.qs = sub i64 %i.qr, %.sink.i
  %i.qt = add i64 %umin, %i.hf
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.qs, i64 %i.qt)
  %i.qu = add i64 %umin, %i.hc
  %10 = sub i64 %umax20, %i.qu
  %11 = add i64 %10, -9                           ; 2 uses
  %i.qv = lshr i64 %11, 3
  %i.qw = add nuw nsw i64 %i.qv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 72
  br i1 %min.iters.check, label %.preheader97.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader97.i.preheader
  %i.qx = sub i64 %.sroa.0.0.i, %i.hc
  %i.qy = add i64 %i.qx, %.068.i103.i17
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.qy)
  %i.qz = add i64 %umax, %i.hc
  %i.ra = sub i64 %.1.i18, %i.qz
  %diff.check = icmp ugt i64 %i.ra, -32
  br i1 %diff.check, label %.preheader97.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qw, 4611686018427387900     ; 3 uses
  %i.rb = shl i64 %n.vec, 3                       ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qj, i64 %i.rb
  %i.rd = getelementptr i8, ptr %i.qi, i64 %i.rb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.re = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qj, i64 %i.re ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.qi, i64 %i.re ; 2 uses
  %i.rf = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 1
  %wide.load22 = load <2 x i64>, ptr %i.rf, align 1
  %i.rg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load22, ptr %i.rg, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rh = icmp eq i64 %index.next, %n.vec
  br i1 %i.rh, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qw, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i.i, label %.preheader97.i.preheader25

.preheader97.i.preheader25:                       ; preds = %vector.memcheck, %.preheader97.i.preheader, %middle.block
  %.029.i.i.i.ph = phi ptr [ %i.qj, %vector.memcheck ], [ %i.qj, %.preheader97.i.preheader ], [ %i.rc, %middle.block ]
  %.0.i106.i.i.ph = phi ptr [ %i.qi, %vector.memcheck ], [ %i.qi, %.preheader97.i.preheader ], [ %i.rd, %middle.block ]
  br label %.preheader97.i

.preheader97.i:                                   ; preds = %.preheader97.i.preheader25, %.preheader97.i
  %.029.i.i.i = phi ptr [ %i.ri, %.preheader97.i ], [ %.029.i.i.i.ph, %.preheader97.i.preheader25 ] ; 2 uses
  %.0.i106.i.i = phi ptr [ %i.rj, %.preheader97.i ], [ %.0.i106.i.i.ph, %.preheader97.i.preheader25 ] ; 2 uses
  %.0.i106.i.val.i = load i64, ptr %.0.i106.i.i, align 1
  store i64 %.0.i106.i.val.i, ptr %.029.i.i.i, align 1
  %i.ri = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i106.i.i, i64 8
  %i.rk = icmp ult ptr %i.ri, %i.qo
  br i1 %i.rk, label %.preheader97.i, label %ZSTD_execSequence.exit.i.i, !llvm.loop !161

bb.bv:                                            ; preds = %bb.bu
  %.val12.i = load <2 x i64>, ptr %i.qi, align 1, !tbaa !11
  store <2 x i64> %.val12.i, ptr %i.qj, align 1, !tbaa !11
  %i.rl = icmp slt i64 %i.pe, 25
  br i1 %i.rl, label %ZSTD_execSequence.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rm = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.130.i103.i.i = phi ptr [ %i.rm, %bb.bw ], [ %i.rp, %bb.bx ] ; 3 uses
  %.pn.i104.i.i = phi ptr [ %i.qi, %bb.bw ], [ %i.ro, %bb.bx ] ; 2 uses
  %.1.i105.i.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i.i, i64 16
  %.1.i105.i.val.i = load <2 x i64>, ptr %.1.i105.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i105.i.val.i, ptr %.130.i103.i.i, align 1, !tbaa !11
  %i.rn = getelementptr inbounds nuw i8, ptr %.130.i103.i.i, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %.pn.i104.i.i, i64 32 ; 2 uses
  %.val11.i = load <2 x i64>, ptr %i.ro, align 1, !tbaa !11
  store <2 x i64> %.val11.i, ptr %i.rn, align 1, !tbaa !11
  %i.rp = getelementptr inbounds nuw i8, ptr %.130.i103.i.i, i64 32 ; 2 uses
  %i.rq = icmp ult ptr %i.rp, %i.qo
  br i1 %i.rq, label %bb.bx, label %ZSTD_execSequence.exit.i.i, !llvm.loop !100

ZSTD_execSequence.exit.i.i:                       ; preds = %bb.bx, %.preheader97.i, %bb.bq, %middle.block, %bb.bv, %ZSTD_overlapCopy8.exit.i.i, %bb.bo, %bb.bl, %bb.bf
  %.0.i.i.i = phi i64 [ %i.ok, %bb.bf ], [ %i.ob, %middle.block ], [ %i.ob, %bb.bl ], [ %i.ob, %ZSTD_overlapCopy8.exit.i.i ], [ %i.ob, %bb.bo ], [ %i.ob, %bb.bv ], [ %i.ob, %bb.bq ], [ %i.ob, %.preheader97.i ], [ %i.ob, %bb.bx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rr = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.rr, label %bb.by, label %.thread84.i

bb.by:                                            ; preds = %ZSTD_execSequence.exit.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 %.0.i.i.i ; 2 uses
  %i.rt = add nsw i32 %.063.i105.i, -1            ; 2 uses
  %.not77.i.i = icmp eq i32 %i.rt, 0
  br i1 %.not77.i.i, label %bb.bz, label %bb.ah, !llvm.loop !162

bb.bz:                                            ; preds = %bb.by
  %i.ru = icmp eq ptr %i.nu, %3
  %.not96.i = icmp eq i32 %i.nv, 64
  %or.cond.i = select i1 %i.ru, i1 %.not96.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.thread84.i

.preheader.i:                                     ; preds = %bb.bz
  %i.rv = trunc i64 %.sink.i to i32
  store i32 %i.rv, ptr %i.w, align 4, !tbaa !5
  %i.rw = trunc i64 %.sink160.i to i32
  store i32 %i.rw, ptr %i.aa, align 8, !tbaa !5
  %i.rx = trunc i64 %i.kd to i32
  store i32 %i.rx, ptr %i.ae, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.ca

.thread84.i:                                      ; preds = %ZSTD_execSequence.exit.i.i, %bb.bz, %ZSTD_execSequence.exit.i.thread.i, %BIT_initDStream.exit.i, %bb.q, %bb.i, %bb.g
  %.2.i.ph.i = phi i64 [ -20, %bb.g ], [ -20, %ZSTD_execSequence.exit.i.thread.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.bz ], [ -20, %bb.i ], [ -20, %bb.q ], [ %.0.i.i.i, %ZSTD_execSequence.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %ZSTD_decompressSequences_default.exit

bb.ca:                                            ; preds = %.preheader.i, %bb.f
  %i.ry = phi ptr [ %.pre.i, %.preheader.i ], [ %i.l, %bb.f ] ; 2 uses
  %.371.i.i = phi ptr [ %i.rs, %.preheader.i ], [ %1, %bb.f ] ; 4 uses
  %i.rz = ptrtoint ptr %i.o to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa                    ; 3 uses
  %i.sc = ptrtoint ptr %i.j to i64
  %i.sd = ptrtoint ptr %.371.i.i to i64
  %i.se = sub i64 %i.sc, %i.sd
  %.not81.i.i = icmp ugt i64 %i.sb, %i.se
  br i1 %.not81.i.i, label %ZSTD_decompressSequences_default.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not80.i.i = icmp eq ptr %.371.i.i, null
  br i1 %.not80.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i.i, ptr align 1 %i.ry, i64 %i.sb, i1 false)
  %i.sf = getelementptr inbounds nuw i8, ptr %.371.i.i, i64 %i.sb
  %i.sg = ptrtoint ptr %i.sf to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.573.i.ph.i = phi i64 [ 0, %bb.cb ], [ %i.sg, %bb.cc ]
  %i.sh = ptrtoint ptr %1 to i64
  %i.si = sub i64 %.573.i.ph.i, %i.sh
  br label %ZSTD_decompressSequences_default.exit

ZSTD_decompressSequences_default.exit:            ; preds = %.thread84.i, %bb.ca, %bb.cd
  %.5.i.i = phi i64 [ %i.si, %bb.cd ], [ %.2.i.ph.i, %.thread84.i ], [ -70, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ce

bb.ce:                                            ; preds = %ZSTD_decompressSequences_default.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.5.i.i, %ZSTD_decompressSequences_default.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_checkContinuity(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29888 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = icmp ne ptr %1, %i.b
  %i.d = icmp ne i64 %2, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %i.b, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29896 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %.neg = sub i64 %i.i, %i.h
  %i.j = getelementptr inbounds i8, ptr %1, i64 %.neg
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %i.j, ptr %i.k, align 8, !tbaa !70
  store ptr %1, ptr %i.f, align 8, !tbaa !73
  store ptr %1, ptr %i.a, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_decompressBlock_deprecated(ptr noundef initializes((30176, 30180)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 0, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 29888 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163  ; 3 uses
  %i.d = icmp ne ptr %1, %i.c
  %i.e = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %bb.b, label %ZSTD_checkContinuity.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %i.c, ptr %i.f, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 29896 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %.neg.i = sub i64 %i.j, %i.i
  %i.k = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %i.k, ptr %i.l, align 8, !tbaa !70
end_hunk_5
begin_hunk_6_@ZSTD_decompressSequencesSplitLitBuffer_bmi2:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 21 uses
  br i1 %i.cw, label %bb.n, label %bb.o, !prof !52

bb.n:                                             ; preds = %bb.m
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !78
  br label %ZSTD_initFseState.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i38 = icmp slt i64 %.idx, 8
  br i1 %.not.i.i38, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = lshr i32 %i.co, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = sub nsw i64 0, %i.cz
  %i.db = getelementptr inbounds i8, ptr %.ptr, i64 %i.da ; 4 uses
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !78
  %i.dc = and i32 %i.co, 7                        ; 2 uses
  store i32 %i.dc, ptr %i.cn, align 8, !tbaa !83
  %.val.i.i = load i64, ptr %i.db, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i.i, ptr %9, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit

bb.q:                                             ; preds = %bb.o
  %i.dd = icmp eq i64 %.idx, 0
  br i1 %i.dd, label %ZSTD_initFseState.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = lshr i32 %i.co, 3
  %i.df = zext nneg i32 %i.de to i64
  %.021.i.i40390 = tail call i64 @llvm.smin.i64(i64 %.idx, i64 %i.df) ; 2 uses
  %.021.i.i40 = trunc i64 %.021.i.i40390 to i32
  %i.dg = and i64 %.021.i.i40390, 4294967295
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %.ptr, i64 %i.dh ; 4 uses
  store ptr %i.di, ptr %i.cx, align 8, !tbaa !78
  %i.dj = shl i32 %.021.i.i40, 3
  %i.dk = sub i32 %i.co, %i.dj                    ; 2 uses
  store i32 %i.dk, ptr %i.cn, align 8, !tbaa !83
  %.val.i41 = load i64, ptr %i.di, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i41, ptr %9, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit

ZSTD_initFseState.exit:                           ; preds = %bb.n, %bb.p, %bb.q, %bb.r
  %i.dl = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.n ], [ %i.db, %bb.p ], [ %i.cg, %bb.q ], [ %i.di, %bb.r ]
  %i.dm = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.n ], [ %i.db, %bb.p ], [ %3, %bb.q ], [ %i.di, %bb.r ] ; 7 uses
  %i.dn = phi i32 [ %i.co, %bb.n ], [ %i.dc, %bb.p ], [ %i.co, %bb.q ], [ %i.dk, %bb.r ]
  %i.do = phi i64 [ %i.ci, %bb.n ], [ %.val.i.i, %bb.p ], [ %i.ci, %bb.q ], [ %.val.i41, %bb.r ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !84
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !71 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !63 ; 2 uses
  %i.dw = add i32 %i.dn, %i.dv                    ; 8 uses
  %i.dx = sub i32 0, %i.dw
  %i.dy = and i32 %i.dx, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = lshr i64 %i.do, %i.dz
  %i.eb = zext nneg i32 %i.dv to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.eb
  %i.ec = xor i64 %notmask.i.i42, -1
  %i.ed = and i64 %i.ea, %i.ec                    ; 2 uses
  store i64 %i.ed, ptr %i.dr, align 8, !tbaa !81
  %i.ee = icmp ugt i32 %i.dw, 64
  br i1 %i.ee, label %bb.s, label %bb.t, !prof !52

bb.s:                                             ; preds = %ZSTD_initFseState.exit
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !78
  br label %ZSTD_initFseState.exit48

bb.t:                                             ; preds = %ZSTD_initFseState.exit
  %.not.i.i43 = icmp ult ptr %i.dm, %i.ab
  br i1 %.not.i.i43, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = lshr i32 %i.dw, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.dm, i64 %i.eh ; 4 uses
  store ptr %i.ei, ptr %i.cx, align 8, !tbaa !78
  %i.ej = and i32 %i.dw, 7
  %.val.i.i44 = load i64, ptr %i.ei, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i.i44, ptr %9, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit48

bb.v:                                             ; preds = %bb.t
  %i.ek = icmp eq ptr %i.dm, %3
  br i1 %i.ek, label %ZSTD_initFseState.exit48, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = lshr i32 %i.dw, 3                       ; 2 uses
  %i.em = zext nneg i32 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.dm, i64 %i.en
  %i.ep = icmp ult ptr %i.eo, %3
  %i.eq = ptrtoint ptr %i.dm to i64
  %i.er = ptrtoint ptr %3 to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = trunc i64 %i.es to i32
  %.021.i.i46 = select i1 %i.ep, i32 %i.et, i32 %i.el ; 2 uses
  %i.eu = zext i32 %.021.i.i46 to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.dm, i64 %i.ev ; 4 uses
  store ptr %i.ew, ptr %i.cx, align 8, !tbaa !78
  %i.ex = shl i32 %.021.i.i46, 3
  %i.ey = sub i32 %i.dw, %i.ex
  %.val.i47 = load i64, ptr %i.ew, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i47, ptr %9, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit48

ZSTD_initFseState.exit48:                         ; preds = %bb.s, %bb.u, %bb.v, %bb.w
  %i.ez = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.s ], [ %i.ei, %bb.u ], [ %i.dl, %bb.v ], [ %i.ew, %bb.w ]
  %i.fa = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.s ], [ %i.ei, %bb.u ], [ %i.dm, %bb.v ], [ %i.ew, %bb.w ] ; 6 uses
  %i.fb = phi i32 [ %i.dw, %bb.s ], [ %i.ej, %bb.u ], [ %i.dw, %bb.v ], [ %i.ey, %bb.w ]
  %i.fc = phi i64 [ %i.do, %bb.s ], [ %.val.i.i44, %bb.u ], [ %i.do, %bb.v ], [ %.val.i47, %bb.w ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !84
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !85 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !63 ; 2 uses
  %i.fk = add i32 %i.fb, %i.fj                    ; 9 uses
  %i.fl = sub i32 0, %i.fk
  %i.fm = and i32 %i.fl, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = lshr i64 %i.fc, %i.fn
  %i.fp = zext nneg i32 %i.fj to i64
  %notmask.i.i49 = shl nsw i64 -1, %i.fp
  %i.fq = xor i64 %notmask.i.i49, -1
  %i.fr = and i64 %i.fo, %i.fq                    ; 2 uses
  store i32 %i.fk, ptr %i.cn, align 8, !tbaa !83
  store i64 %i.fr, ptr %i.ff, align 8, !tbaa !81
  %i.fs = icmp ugt i32 %i.fk, 64
  br i1 %i.fs, label %bb.x, label %bb.y, !prof !52

bb.x:                                             ; preds = %ZSTD_initFseState.exit48
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !78
  br label %ZSTD_initFseState.exit55

bb.y:                                             ; preds = %ZSTD_initFseState.exit48
  %.not.i.i50 = icmp ult ptr %i.fa, %i.ab
  br i1 %.not.i.i50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = lshr i32 %i.fk, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds i8, ptr %i.fa, i64 %i.fv ; 3 uses
  store ptr %i.fw, ptr %i.cx, align 8, !tbaa !78
  %i.fx = and i32 %i.fk, 7                        ; 2 uses
  store i32 %i.fx, ptr %i.cn, align 8, !tbaa !83
  %.val.i.i51 = load i64, ptr %i.fw, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i.i51, ptr %9, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit55

bb.aa:                                            ; preds = %bb.y
  %i.fy = icmp eq ptr %i.fa, %3
  br i1 %i.fy, label %ZSTD_initFseState.exit55, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = lshr i32 %i.fk, 3                       ; 2 uses
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = sub nsw i64 0, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %i.fa, i64 %i.gb
  %i.gd = icmp ult ptr %i.gc, %3
  %i.ge = ptrtoint ptr %i.fa to i64
  %i.gf = ptrtoint ptr %3 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = trunc i64 %i.gg to i32
  %.021.i.i53 = select i1 %i.gd, i32 %i.gh, i32 %i.fz ; 2 uses
  %i.gi = zext i32 %.021.i.i53 to i64
  %i.gj = sub nsw i64 0, %i.gi
  %i.gk = getelementptr inbounds i8, ptr %i.fa, i64 %i.gj ; 3 uses
  store ptr %i.gk, ptr %i.cx, align 8, !tbaa !78
  %i.gl = shl i32 %.021.i.i53, 3
  %i.gm = sub i32 %i.fk, %i.gl                    ; 2 uses
  store i32 %i.gm, ptr %i.cn, align 8, !tbaa !83
  %.val.i54 = load i64, ptr %i.gk, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i54, ptr %9, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit55

ZSTD_initFseState.exit55:                         ; preds = %bb.x, %bb.z, %bb.aa, %bb.ab
  %i.gn = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.x ], [ %i.fw, %bb.z ], [ %i.ez, %bb.aa ], [ %i.gk, %bb.ab ]
  %i.go = phi i32 [ %i.fk, %bb.x ], [ %i.fx, %bb.z ], [ %i.fk, %bb.aa ], [ %i.gm, %bb.ab ]
  %i.gp = phi i64 [ %i.fc, %bb.x ], [ %.val.i.i51, %bb.z ], [ %i.fc, %bb.aa ], [ %.val.i54, %bb.ab ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !84
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !125
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 4 uses
  %.sroa.986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gu = ptrtoint ptr %i.h to i64                ; 21 uses
  %i.gv = ptrtoint ptr %i.j to i64                ; 3 uses
  %10 = ptrtoint ptr %3 to i64
  %i.gw = ptrtoint ptr %3 to i64
  %invariant.op = add i64 %i.gu, 16
  br label %bb.ac

bb.ac:                                            ; preds = %ZSTD_initFseState.exit55, %bb.bu
  %i.gx = phi ptr [ %i.gn, %ZSTD_initFseState.exit55 ], [ %i.nw, %bb.bu ] ; 8 uses
  %i.gy = phi i32 [ %i.go, %ZSTD_initFseState.exit55 ], [ %i.nx, %bb.bu ] ; 5 uses
  %i.gz = phi i64 [ %i.gp, %ZSTD_initFseState.exit55 ], [ %i.ny, %bb.bu ] ; 6 uses
  %i.ha = phi i64 [ %i.x, %ZSTD_initFseState.exit55 ], [ %i.ju, %bb.bu ] ; 2 uses
  %i.hb = phi i64 [ %i.t, %ZSTD_initFseState.exit55 ], [ %.sink470, %bb.bu ] ; 6 uses
  %i.hc = phi i64 [ %i.q, %ZSTD_initFseState.exit55 ], [ %.sink, %bb.bu ] ; 6 uses
  %i.hd = phi i64 [ %i.fr, %ZSTD_initFseState.exit55 ], [ %i.od, %bb.bu ] ; 3 uses
  %i.he = phi i64 [ %i.ed, %ZSTD_initFseState.exit55 ], [ %i.oc, %bb.bu ] ; 3 uses
  %i.hf = phi i64 [ %i.cv, %ZSTD_initFseState.exit55 ], [ %i.ob, %bb.bu ] ; 3 uses
  %.0125.i291 = phi i32 [ %5, %ZSTD_initFseState.exit55 ], [ %i.rw, %bb.bu ] ; 4 uses
  %.0132.i289 = phi ptr [ %1, %ZSTD_initFseState.exit55 ], [ %i.rv, %bb.bu ] ; 20 uses
  %.0132.i28976 = ptrtoaddr ptr %.0132.i289 to i64
  %.not = icmp eq i32 %.0125.i291, 1
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.hf ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.hd ; 4 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.he ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !41, !noalias !217
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !41, !noalias !217 ; 2 uses
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !41, !noalias !217 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !58, !noalias !217 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hu = load i8, ptr %i.ht, align 2, !tbaa !58, !noalias !217 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hw = load i8, ptr %i.hv, align 2, !tbaa !58, !noalias !217 ; 4 uses
  %i.hx = zext i8 %i.hs to i32                    ; 2 uses
  %i.hy = zext i8 %i.hu to i32                    ; 2 uses
  %i.hz = add i8 %i.hu, %i.hs
  %i.ia = add i8 %i.hz, %i.hw
  %i.ib = load i16, ptr %i.hg, align 4, !tbaa !57, !noalias !217
  %i.ic = load i16, ptr %i.hh, align 4, !tbaa !57, !noalias !217
  %i.id = load i16, ptr %i.hi, align 4, !tbaa !57, !noalias !217
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !56, !noalias !217 ; 2 uses
  %i.ig = zext i8 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hh, i64 3
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !56, !noalias !217 ; 2 uses
  %i.ij = zext i8 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !56, !noalias !217 ; 2 uses
  %i.im = zext i8 %i.il to i32
  %i.in = icmp ugt i8 %i.hw, 1
  br i1 %i.in, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.io = zext i8 %i.hw to i32                    ; 2 uses
  %i.ip = and i32 %i.gy, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl i64 %i.gz, %i.iq
  %i.is = sub nsw i32 0, %i.io
  %i.it = and i32 %i.is, 63
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = lshr i64 %i.ir, %i.iu
  %i.iw = add i32 %i.gy, %i.io                    ; 2 uses
  store i32 %i.iw, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %i.ix = zext i32 %i.hq to i64
  %i.iy = add i64 %i.iv, %i.ix
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !45, !noalias !217
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.iz = icmp eq i32 %i.hn, 0                    ; 3 uses
  %i.ja = icmp eq i8 %i.hw, 0
  br i1 %i.ja, label %bb.af, label %bb.ag, !prof !89

bb.af:                                            ; preds = %bb.ae
  %i.jb = select i1 %i.iz, i64 %i.hb, i64 %i.hc
  %i.jc = select i1 %i.iz, i64 %i.hc, i64 %i.hb
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.jd = zext i1 %i.iz to i32
  %i.je = add i32 %i.hq, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = and i32 %i.gy, 63
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl i64 %i.gz, %i.jh
  %i.jj = lshr i64 %i.ji, 63
  %i.jk = add i32 %i.gy, 1                        ; 3 uses
  store i32 %i.jk, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %i.jl = add nuw nsw i64 %i.jj, %i.jf            ; 3 uses
  %i.jm = icmp eq i64 %i.jl, 3
  br i1 %i.jm, label %.thread, label %bb.ah

.thread:                                          ; preds = %bb.ag
  %i.jn = add i64 %i.hc, -1                       ; 2 uses
  %.not.i183.i185 = icmp eq i64 %i.jn, 0
  %i.jo = select i1 %.not.i183.i185, i64 -1, i64 %i.jn
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jl
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !45, !noalias !217 ; 2 uses
  %.not.i183.i = icmp eq i64 %i.jq, 0
  %i.jr = select i1 %.not.i183.i, i64 -1, i64 %i.jq ; 2 uses
  %.not101.i184.i = icmp eq i64 %i.jl, 1
  br i1 %.not101.i184.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread, %bb.ah
  %i.js = phi i64 [ %i.jo, %.thread ], [ %i.jr, %bb.ah ]
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !45, !noalias !217
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.af, %bb.ad
  %i.jt = phi i32 [ %i.iw, %bb.ad ], [ %i.gy, %bb.af ], [ %i.jk, %bb.ai ], [ %i.jk, %bb.ah ] ; 3 uses
  %.sink470 = phi i64 [ %i.hc, %bb.ad ], [ %i.jc, %bb.af ], [ %i.hc, %bb.ai ], [ %i.hc, %bb.ah ] ; 5 uses
  %.sink = phi i64 [ %i.iy, %bb.ad ], [ %i.jb, %bb.af ], [ %i.js, %bb.ai ], [ %i.jr, %bb.ah ] ; 29 uses
  %i.ju = phi i64 [ %i.hb, %bb.ad ], [ %i.ha, %bb.af ], [ %i.hb, %bb.ai ], [ %i.ha, %bb.ah ] ; 4 uses
  store i64 %.sink470, ptr %i.gs, align 8, !tbaa !45, !noalias !217
  store i64 %.sink, ptr %i.o, align 8, !tbaa !45, !noalias !217
  %.not102.i186.i = icmp eq i8 %i.hu, 0
  br i1 %.not102.i186.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jv = and i32 %i.jt, 63
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = shl i64 %i.gz, %i.jw
  %i.jy = sub nsw i32 0, %i.hy
  %i.jz = and i32 %i.jy, 63
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = lshr i64 %i.jx, %i.ka
  %i.kc = add i32 %i.jt, %i.hy                    ; 2 uses
  store i32 %i.kc, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %i.kd = add i64 %i.kb, %i.hl
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ke = phi i32 [ %i.jt, %bb.aj ], [ %i.kc, %bb.ak ] ; 8 uses
  %.sroa.681.0 = phi i64 [ %i.hl, %bb.aj ], [ %i.kd, %bb.ak ] ; 12 uses
  %i.kf = icmp ugt i8 %i.ia, 30
  br i1 %i.kf, label %bb.am, label %BIT_reloadDStream.exit.i, !prof !52

bb.am:                                            ; preds = %bb.al
  %i.kg = icmp ugt i32 %i.ke, 64
  br i1 %i.kg, label %bb.an, label %bb.ao, !prof !52

bb.an:                                            ; preds = %bb.am
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !78, !noalias !217
  br label %BIT_reloadDStream.exit.i

bb.ao:                                            ; preds = %bb.am
  %.not.i202.i = icmp ult ptr %i.gx, %i.ab
  br i1 %.not.i202.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kh = lshr i32 %i.ke, 3
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = sub nsw i64 0, %i.ki
  %i.kk = getelementptr inbounds i8, ptr %i.gx, i64 %i.kj ; 3 uses
  store ptr %i.kk, ptr %i.cx, align 8, !tbaa !78, !noalias !217
  %i.kl = and i32 %i.ke, 7                        ; 2 uses
  store i32 %i.kl, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %.val.i61 = load i64, ptr %i.kk, align 1, !tbaa !45, !noalias !217 ; 2 uses
  store i64 %.val.i61, ptr %9, align 8, !tbaa !79, !noalias !217
  br label %BIT_reloadDStream.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.km = icmp eq ptr %i.gx, %3
  br i1 %i.km, label %BIT_reloadDStream.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kn = lshr i32 %i.ke, 3                       ; 2 uses
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = sub nsw i64 0, %i.ko
  %i.kq = getelementptr inbounds i8, ptr %i.gx, i64 %i.kp
  %i.kr = icmp ult ptr %i.kq, %3
  %i.ks = ptrtoint ptr %i.gx to i64
  %i.kt = sub i64 %i.ks, %10
  %i.ku = trunc i64 %i.kt to i32
  %.021.i.i = select i1 %i.kr, i32 %i.ku, i32 %i.kn ; 2 uses
  %i.kv = zext i32 %.021.i.i to i64
  %i.kw = sub nsw i64 0, %i.kv
  %i.kx = getelementptr inbounds i8, ptr %i.gx, i64 %i.kw ; 3 uses
  store ptr %i.kx, ptr %i.cx, align 8, !tbaa !78, !noalias !217
  %i.ky = shl i32 %.021.i.i, 3
  %i.kz = sub i32 %i.ke, %i.ky                    ; 2 uses
  store i32 %i.kz, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %.val = load i64, ptr %i.kx, align 1, !tbaa !45 ; 2 uses
  store i64 %.val, ptr %9, align 8, !tbaa !79, !noalias !217
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.aq, %bb.an, %bb.ap, %bb.ar, %bb.al
  %i.la = phi ptr [ %i.gx, %bb.aq ], [ @BIT_reloadDStream.zeroFilled, %bb.an ], [ %i.kk, %bb.ap ], [ %i.kx, %bb.ar ], [ %i.gx, %bb.al ] ; 9 uses
  %i.lb = phi i32 [ %i.ke, %bb.aq ], [ %i.ke, %bb.an ], [ %i.kl, %bb.ap ], [ %i.kz, %bb.ar ], [ %i.ke, %bb.al ] ; 3 uses
  %i.lc = phi i64 [ %i.gz, %bb.aq ], [ %i.gz, %bb.an ], [ %.val.i61, %bb.ap ], [ %.val, %bb.ar ], [ %i.gz, %bb.al ] ; 8 uses
  %.not103.i187.i = icmp eq i8 %i.hs, 0
  br i1 %.not103.i187.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %BIT_reloadDStream.exit.i
  %i.ld = and i32 %i.lb, 63
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl i64 %i.lc, %i.le
  %i.lg = sub nsw i32 0, %i.hx
  %i.lh = and i32 %i.lg, 63
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = lshr i64 %i.lf, %i.li
  %i.lk = add i32 %i.lb, %i.hx                    ; 2 uses
  store i32 %i.lk, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %i.ll = add i64 %i.lj, %i.ho
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %BIT_reloadDStream.exit.i
  %i.lm = phi i32 [ %i.lb, %BIT_reloadDStream.exit.i ], [ %i.lk, %bb.as ] ; 3 uses
  %.sroa.080.0 = phi i64 [ %i.ho, %BIT_reloadDStream.exit.i ], [ %i.ll, %bb.as ] ; 10 uses
  br i1 %.not, label %ZSTD_decodeSequence.exit189.i.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ln = add i32 %i.lm, %i.ig                    ; 2 uses
  %i.lo = sub i32 0, %i.ln
  %i.lp = and i32 %i.lo, 63
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = lshr i64 %i.lc, %i.lq
  %i.ls = zext nneg i8 %i.if to i64
  %notmask.i.i226.i = shl nsw i64 -1, %i.ls
  %i.lt = xor i64 %notmask.i.i226.i, -1
  %i.lu = and i64 %i.lr, %i.lt
  %i.lv = zext i16 %i.ib to i64
  %i.lw = add nuw i64 %i.lu, %i.lv                ; 3 uses
  store i64 %i.lw, ptr %i.cj, align 8, !tbaa !81, !noalias !217
  %i.lx = add i32 %i.ln, %i.ij                    ; 2 uses
  %i.ly = sub i32 0, %i.lx
  %i.lz = and i32 %i.ly, 63
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = lshr i64 %i.lc, %i.ma
  %i.mc = zext nneg i8 %i.ii to i64
  %notmask.i.i225.i = shl nsw i64 -1, %i.mc
  %i.md = xor i64 %notmask.i.i225.i, -1
  %i.me = and i64 %i.mb, %i.md
  %i.mf = zext i16 %i.ic to i64
  %i.mg = add nuw i64 %i.me, %i.mf                ; 3 uses
  store i64 %i.mg, ptr %i.ff, align 8, !tbaa !81, !noalias !217
  %i.mh = add i32 %i.lx, %i.im                    ; 9 uses
  %i.mi = sub i32 0, %i.mh
  %i.mj = and i32 %i.mi, 63
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = lshr i64 %i.lc, %i.mk
  %i.mm = zext nneg i8 %i.il to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.mm
  %i.mn = xor i64 %notmask.i.i.i, -1
  %i.mo = and i64 %i.ml, %i.mn
  store i32 %i.mh, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %i.mp = zext i16 %i.id to i64
  %i.mq = add nuw i64 %i.mo, %i.mp                ; 3 uses
  store i64 %i.mq, ptr %i.dr, align 8, !tbaa !81, !noalias !217
  %i.mr = icmp ugt i32 %i.mh, 64
  br i1 %i.mr, label %bb.av, label %bb.aw, !prof !52

bb.av:                                            ; preds = %bb.au
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !78, !noalias !217
  br label %ZSTD_decodeSequence.exit189.i

bb.aw:                                            ; preds = %bb.au
  %.not.i204.i = icmp ult ptr %i.la, %i.ab
  br i1 %.not.i204.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ms = lshr i32 %i.mh, 3
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = sub nsw i64 0, %i.mt
  %i.mv = getelementptr inbounds i8, ptr %i.la, i64 %i.mu ; 3 uses
  store ptr %i.mv, ptr %i.cx, align 8, !tbaa !78, !noalias !217
  %i.mw = and i32 %i.mh, 7                        ; 2 uses
  store i32 %i.mw, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %.val.i64 = load i64, ptr %i.mv, align 1, !tbaa !45, !noalias !217 ; 2 uses
  store i64 %.val.i64, ptr %9, align 8, !tbaa !79, !noalias !217
  br label %ZSTD_decodeSequence.exit189.i

bb.ay:                                            ; preds = %bb.aw
  %i.mx = icmp eq ptr %i.la, %3
  br i1 %i.mx, label %ZSTD_decodeSequence.exit189.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.my = lshr i32 %i.mh, 3                       ; 2 uses
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = sub nsw i64 0, %i.mz
  %i.nb = getelementptr inbounds i8, ptr %i.la, i64 %i.na
  %i.nc = icmp ult ptr %i.nb, %3
  %i.nd = ptrtoint ptr %i.la to i64
  %i.ne = sub i64 %i.nd, %i.gw
  %i.nf = trunc i64 %i.ne to i32
  %.021.i206.i = select i1 %i.nc, i32 %i.nf, i32 %i.my ; 2 uses
  %i.ng = zext i32 %.021.i206.i to i64
  %i.nh = sub nsw i64 0, %i.ng
  %i.ni = getelementptr inbounds i8, ptr %i.la, i64 %i.nh ; 3 uses
  store ptr %i.ni, ptr %i.cx, align 8, !tbaa !78, !noalias !217
  %i.nj = shl i32 %.021.i206.i, 3
  %i.nk = sub i32 %i.mh, %i.nj                    ; 2 uses
  store i32 %i.nk, ptr %i.cn, align 8, !tbaa !83, !noalias !217
  %.val6 = load i64, ptr %i.ni, align 1, !tbaa !45 ; 2 uses
  store i64 %.val6, ptr %9, align 8, !tbaa !79, !noalias !217
  br label %ZSTD_decodeSequence.exit189.i

ZSTD_decodeSequence.exit189.i:                    ; preds = %bb.ay, %bb.av, %bb.ax, %bb.az
  %i.nl = phi ptr [ %i.la, %bb.ay ], [ @BIT_reloadDStream.zeroFilled, %bb.av ], [ %i.mv, %bb.ax ], [ %i.ni, %bb.az ] ; 2 uses
  %i.nm = phi i32 [ %i.mh, %bb.ay ], [ %i.mh, %bb.av ], [ %i.mw, %bb.ax ], [ %i.nk, %bb.az ] ; 2 uses
  %i.nn = phi i64 [ %i.lc, %bb.ay ], [ %i.lc, %bb.av ], [ %.val.i64, %bb.ax ], [ %.val6, %bb.az ] ; 2 uses
  %i.no = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sroa.080.0 ; 2 uses
  %i.nq = load ptr, ptr %i.e, align 8, !tbaa !34  ; 2 uses
  %i.nr = icmp ugt ptr %i.np, %i.nq
  br i1 %i.nr, label %bb.bv, label %bb.ba

ZSTD_decodeSequence.exit189.i.thread:             ; preds = %bb.at
  %i.ns = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %.sroa.080.0 ; 2 uses
  %i.nu = load ptr, ptr %i.e, align 8, !tbaa !34  ; 2 uses
  %i.nv = icmp ugt ptr %i.nt, %i.nu
  br i1 %i.nv, label %.thread391, label %bb.ba

bb.ba:                                            ; preds = %ZSTD_decodeSequence.exit189.i.thread, %ZSTD_decodeSequence.exit189.i
  %i.nw = phi ptr [ %i.la, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.nl, %ZSTD_decodeSequence.exit189.i ] ; 2 uses
  %i.nx = phi i32 [ %i.lm, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.nm, %ZSTD_decodeSequence.exit189.i ] ; 2 uses
  %i.ny = phi i64 [ %i.lc, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.nn, %ZSTD_decodeSequence.exit189.i ]
  %i.nz = phi ptr [ %i.nt, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.np, %ZSTD_decodeSequence.exit189.i ] ; 3 uses
  %i.oa = phi ptr [ %i.ns, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.no, %ZSTD_decodeSequence.exit189.i ] ; 2 uses
  %i.ob = phi i64 [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.lw, %ZSTD_decodeSequence.exit189.i ]
  %i.oc = phi i64 [ %i.he, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.mq, %ZSTD_decodeSequence.exit189.i ]
  %i.od = phi i64 [ %i.hd, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.mg, %ZSTD_decodeSequence.exit189.i ]
  %i.oe = getelementptr inbounds i8, ptr %i.nz, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.080.0, ptr %6, align 8
  store i64 %.sroa.681.0, ptr %.sroa.986.0..sroa_idx, align 8
  store i64 %.sink, ptr %.sroa.10.0..sroa_idx, align 8
  %i.of = getelementptr i8, ptr %.0132.i289, i64 %.sroa.080.0 ; 7 uses
  %i.og = add i64 %.sroa.080.0, %.sroa.681.0      ; 9 uses
  %i.oh = sub i64 0, %.sink
  %i.oi = getelementptr inbounds i8, ptr %i.of, i64 %i.oh ; 2 uses
  %i.oj = icmp ugt ptr %i.nz, %i.f
  %i.ok = getelementptr inbounds nuw i8, ptr %.0132.i289, i64 %i.og
  %i.ol = icmp ugt ptr %i.ok, %i.oe
  %or.cond.i197.i = select i1 %i.oj, i1 true, i1 %i.ol, !prof !104
  br i1 %or.cond.i197.i, label %bb.bb, label %.critedge.i198.i, !prof !104

.critedge.i198.i:                                 ; preds = %bb.ba
  %.val29 = load <2 x i64>, ptr %i.oa, align 1, !tbaa !11
  store <2 x i64> %.val29, ptr %.0132.i289, align 1, !tbaa !11
  %i.om = icmp ugt i64 %.sroa.080.0, 16
  br i1 %i.om, label %bb.bc, label %ZSTD_wildcopy.exit.i, !prof !52

bb.bb:                                            ; preds = %bb.ba
  %i.on = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.0132.i289, ptr noundef %i.b, ptr noundef nonnull %i.oe, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bc:                                            ; preds = %.critedge.i198.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.0132.i289, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 2 uses
  %i.oq = add i64 %.sroa.080.0, -16
  %.val17 = load <2 x i64>, ptr %i.op, align 1, !tbaa !11
  store <2 x i64> %.val17, ptr %i.oo, align 1, !tbaa !11
  %i.or = icmp slt i64 %i.oq, 17
  br i1 %i.or, label %ZSTD_wildcopy.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.os = getelementptr inbounds nuw i8, ptr %.0132.i289, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.130.i.i = phi ptr [ %i.os, %bb.bd ], [ %i.ov, %bb.be ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.op, %bb.bd ], [ %i.ou, %bb.be ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.i.val = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i.i.val, ptr %.130.i.i, align 1, !tbaa !11
  %i.ot = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val16 = load <2 x i64>, ptr %i.ou, align 1, !tbaa !11
  store <2 x i64> %.val16, ptr %i.ot, align 1, !tbaa !11
  %i.ov = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.ow = icmp ult ptr %i.ov, %i.of
  br i1 %i.ow, label %bb.be, label %ZSTD_wildcopy.exit.i, !llvm.loop !100

ZSTD_wildcopy.exit.i:                             ; preds = %bb.be, %bb.bc, %.critedge.i198.i
  store ptr %i.nz, ptr %i.a, align 8, !tbaa !38
  %i.ox = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.oy = sub i64 %i.ox, %i.gu                    ; 3 uses
  %i.oz = icmp ugt i64 %.sink, %i.oy
  br i1 %i.oz, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.pa = sub i64 %i.ox, %i.gv
  %i.pb = icmp ugt i64 %.sink, %i.pa
  br i1 %i.pb, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread, label %bb.bg, !prof !52

ZSTD_execSequenceSplitLitBuffer.exit.i.thread:    ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread239

bb.bg:                                            ; preds = %bb.bf
  %i.pc = ptrtoint ptr %i.oi to i64
  %i.pd = sub i64 %i.pc, %i.gu                    ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %i.l, i64 %i.pd ; 2 uses
  %i.pf = add nsw i64 %i.pd, %.sroa.681.0         ; 3 uses
  %.not.i200.i = icmp sgt i64 %i.pf, 0
  br i1 %.not.i200.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pe, i64 %.sroa.681.0, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i201.i = sub nsw i64 0, %i.pd          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pe, i64 %gepdiff.i201.i, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.of, i64 %gepdiff.i201.i
  store i64 %i.pf, ptr %.sroa.986.0..sroa_idx, align 8, !tbaa !129
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %ZSTD_wildcopy.exit.i
  %.0173 = phi ptr [ %i.h, %bb.bi ], [ %i.oi, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pg, %bb.bi ], [ %i.of, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %i.ph = phi i64 [ %i.pf, %bb.bi ], [ %.sroa.681.0, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %i.pi = icmp ugt i64 %.sink, 15
  br i1 %i.pi, label %bb.bk, label %bb.bn, !prof !89

bb.bk:                                            ; preds = %bb.bj
  %i.pj = getelementptr inbounds i8, ptr %.0, i64 %i.ph
  %.val19 = load <2 x i64>, ptr %.0173, align 1, !tbaa !11
  store <2 x i64> %.val19, ptr %.0, align 1, !tbaa !11
  %i.pk = icmp slt i64 %i.ph, 17
  br i1 %i.pk, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pl = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.130.i233.i = phi ptr [ %i.pl, %bb.bl ], [ %i.po, %bb.bm ] ; 3 uses
  %.pn.i234.i = phi ptr [ %.0173, %bb.bl ], [ %i.pn, %bb.bm ] ; 2 uses
  %.1.i235.i = getelementptr inbounds nuw i8, ptr %.pn.i234.i, i64 16
  %.1.i235.i.val = load <2 x i64>, ptr %.1.i235.i, align 1, !tbaa !11
  store <2 x i64> %.1.i235.i.val, ptr %.130.i233.i, align 1, !tbaa !11
  %i.pm = getelementptr inbounds nuw i8, ptr %.130.i233.i, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %.pn.i234.i, i64 32 ; 2 uses
  %.val18 = load <2 x i64>, ptr %i.pn, align 1, !tbaa !11
  store <2 x i64> %.val18, ptr %i.pm, align 1, !tbaa !11
  %i.po = getelementptr inbounds nuw i8, ptr %.130.i233.i, i64 32 ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pj
  br i1 %i.pp, label %bb.bm, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

bb.bn:                                            ; preds = %bb.bj
  %i.pq = icmp samesign ult i64 %.sink, 8
  br i1 %i.pq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !5
  %i.pt = load i8, ptr %.0173, align 1, !tbaa !11
  store i8 %i.pt, ptr %.0, align 1, !tbaa !11
  %i.pu = getelementptr inbounds nuw i8, ptr %.0173, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !11
  %i.pw = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !11
  %i.px = getelementptr inbounds nuw i8, ptr %.0173, i64 2
  %i.py = load i8, ptr %i.px, align 1, !tbaa !11
  %i.pz = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !11
  %i.qa = getelementptr inbounds nuw i8, ptr %.0173, i64 3
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !11
  %i.qc = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !11
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !5
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %.0173, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.val31 = load i32, ptr %i.qg, align 1
  store i32 %.val31, ptr %i.qh, align 1
  %i.qi = sext i32 %i.ps to i64
  %i.qj = sub nsw i64 0, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qg, i64 %i.qj
  br label %ZSTD_overlapCopy8.exit.i

bb.bp:                                            ; preds = %bb.bn
  %.val35 = load i64, ptr %.0173, align 1
  store i64 %.val35, ptr %.0, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.bp, %bb.bo
  %.1 = phi ptr [ %i.qk, %bb.bo ], [ %.0173, %bb.bp ] ; 2 uses
  %.177 = ptrtoaddr ptr %.1 to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qn = icmp ugt i64 %i.ph, 8
  br i1 %i.qn, label %bb.bq, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bq:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.ql to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = getelementptr i8, ptr %.0, i64 %i.ph    ; 2 uses
  %i.qs = icmp slt i64 %i.qq, 16
  br i1 %i.qs, label %.preheader269.preheader, label %bb.br

.preheader269.preheader:                          ; preds = %bb.bq
  %11 = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.oy)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.oy) ; 3 uses
  %i.qt = add i64 %.sroa.681.0, %i.gu
  %12 = add i64 %i.qt, %11
  %i.qu = add i64 %12, %umin
  %i.qv = sub i64 %i.qu, %.sink
  %i.qw = add i64 %umin, %invariant.op
  %umax79 = tail call i64 @llvm.umax.i64(i64 %i.qv, i64 %i.qw)
  %i.qx = add i64 %umin, %i.gu
  %13 = sub i64 %umax79, %i.qx
  %14 = add i64 %13, -9                           ; 2 uses
  %i.qy = lshr i64 %14, 3
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 72
  br i1 %min.iters.check, label %.preheader269.preheader220, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader269.preheader
  %i.ra = sub i64 %.sroa.080.0, %i.gu
  %i.rb = add i64 %i.ra, %.0132.i28976
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.rb)
  %i.rc = add i64 %umax, %i.gu
  %i.rd = sub i64 %.177, %i.rc
  %diff.check = icmp ugt i64 %i.rd, -32
  br i1 %diff.check, label %.preheader269.preheader220, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qz, 4611686018427387900     ; 3 uses
  %i.re = shl i64 %n.vec, 3                       ; 2 uses
  %i.rf = getelementptr i8, ptr %i.qm, i64 %i.re
  %i.rg = getelementptr i8, ptr %i.ql, i64 %i.re
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qm, i64 %i.rh ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.ql, i64 %i.rh ; 2 uses
  %i.ri = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 1
  %wide.load81 = load <2 x i64>, ptr %i.ri, align 1
  %i.rj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load81, ptr %i.rj, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rk = icmp eq i64 %index.next, %n.vec
  br i1 %i.rk, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qz, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %.preheader269.preheader220

.preheader269.preheader220:                       ; preds = %vector.memcheck, %.preheader269.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.qm, %vector.memcheck ], [ %i.qm, %.preheader269.preheader ], [ %i.rf, %middle.block ]
  %.0.i242.i.ph = phi ptr [ %i.ql, %vector.memcheck ], [ %i.ql, %.preheader269.preheader ], [ %i.rg, %middle.block ]
  br label %.preheader269

.preheader269:                                    ; preds = %.preheader269.preheader220, %.preheader269
  %.029.i.i = phi ptr [ %i.rl, %.preheader269 ], [ %.029.i.i.ph, %.preheader269.preheader220 ] ; 2 uses
  %.0.i242.i = phi ptr [ %i.rm, %.preheader269 ], [ %.0.i242.i.ph, %.preheader269.preheader220 ] ; 2 uses
  %.0.i242.i.val = load i64, ptr %.0.i242.i, align 1
  store i64 %.0.i242.i.val, ptr %.029.i.i, align 1
  %i.rl = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0.i242.i, i64 8
  %i.rn = icmp ult ptr %i.rl, %i.qr
  br i1 %i.rn, label %.preheader269, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !221

bb.br:                                            ; preds = %bb.bq
  %.val21 = load <2 x i64>, ptr %i.ql, align 1, !tbaa !11
  store <2 x i64> %.val21, ptr %i.qm, align 1, !tbaa !11
  %i.ro = icmp slt i64 %i.ph, 25
  br i1 %i.ro, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rp = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.130.i239.i = phi ptr [ %i.rp, %bb.bs ], [ %i.rs, %bb.bt ] ; 3 uses
  %.pn.i240.i = phi ptr [ %i.ql, %bb.bs ], [ %i.rr, %bb.bt ] ; 2 uses
  %.1.i241.i = getelementptr inbounds nuw i8, ptr %.pn.i240.i, i64 16
  %.1.i241.i.val = load <2 x i64>, ptr %.1.i241.i, align 1, !tbaa !11
  store <2 x i64> %.1.i241.i.val, ptr %.130.i239.i, align 1, !tbaa !11
  %i.rq = getelementptr inbounds nuw i8, ptr %.130.i239.i, i64 16
  %i.rr = getelementptr inbounds nuw i8, ptr %.pn.i240.i, i64 32 ; 2 uses
  %.val20 = load <2 x i64>, ptr %i.rr, align 1, !tbaa !11
  store <2 x i64> %.val20, ptr %i.rq, align 1, !tbaa !11
  %i.rs = getelementptr inbounds nuw i8, ptr %.130.i239.i, i64 32 ; 2 uses
  %i.rt = icmp ult ptr %i.rs, %i.qr
  br i1 %i.rt, label %bb.bt, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

ZSTD_execSequenceSplitLitBuffer.exit.i:           ; preds = %bb.bt, %.preheader269, %bb.bm, %middle.block, %bb.br, %bb.bk, %ZSTD_overlapCopy8.exit.i, %bb.bh, %bb.bb
  %.0.i199.i = phi i64 [ %i.on, %bb.bb ], [ %i.og, %middle.block ], [ %i.og, %bb.bh ], [ %i.og, %ZSTD_overlapCopy8.exit.i ], [ %i.og, %bb.bk ], [ %i.og, %bb.br ], [ %i.og, %bb.bm ], [ %i.og, %.preheader269 ], [ %i.og, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ru = icmp ult i64 %.0.i199.i, -119
  br i1 %i.ru, label %bb.bu, label %.thread239

bb.bu:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i
  %i.rv = getelementptr inbounds nuw i8, ptr %.0132.i289, i64 %.0.i199.i ; 2 uses
  %i.rw = add nsw i32 %.0125.i291, -1             ; 2 uses
  %.not169.i = icmp eq i32 %i.rw, 0
  br i1 %.not169.i, label %.thread235, label %bb.ac, !llvm.loop !132

bb.bv:                                            ; preds = %ZSTD_decodeSequence.exit189.i
  %i.rx = icmp sgt i32 %.0125.i291, 0
  br i1 %i.rx, label %.thread391, label %.thread239

.thread391:                                       ; preds = %ZSTD_decodeSequence.exit189.i.thread, %bb.bv
  %i.ry = phi ptr [ %i.nl, %bb.bv ], [ %i.la, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.rz = phi i32 [ %i.nm, %bb.bv ], [ %i.lm, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.sa = phi i64 [ %i.nn, %bb.bv ], [ %i.lc, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.sb = phi i64 [ %i.mg, %bb.bv ], [ %i.hd, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.sc = phi i64 [ %i.mq, %bb.bv ], [ %i.he, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.sd = phi i64 [ %i.lw, %bb.bv ], [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.se = phi ptr [ %i.no, %bb.bv ], [ %i.ns, %ZSTD_decodeSequence.exit189.i.thread ] ; 11 uses
  %i.sf = phi ptr [ %i.nq, %bb.bv ], [ %i.nu, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.sg = ptrtoint ptr %i.sf to i64               ; 2 uses
  %i.sh = ptrtoint ptr %i.se to i64               ; 4 uses
  %i.si = sub i64 %i.sg, %i.sh                    ; 9 uses
  %.not171.i = icmp eq ptr %i.sf, %i.se
  br i1 %.not171.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.thread391
  %i.sj = ptrtoint ptr %i.b to i64
  %i.sk = ptrtoint ptr %.0132.i289 to i64         ; 8 uses
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = icmp ugt i64 %i.si, %i.sl
  br i1 %i.sm, label %.thread239, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sn = sub i64 %i.sk, %i.sh                    ; 2 uses
  %i.so = getelementptr inbounds i8, ptr %.0132.i289, i64 %i.si ; 3 uses
  %i.sp = icmp slt i64 %i.si, 8
  %i.sq = icmp sgt i64 %i.sn, -8
  %or.cond.i = or i1 %i.sp, %i.sq
  br i1 %or.cond.i, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.bx
  %i.sr = icmp sgt i64 %i.si, 0
  br i1 %i.sr, label %iter.check136, label %ZSTD_safecopyDstBeforeSrc.exit

iter.check136:                                    ; preds = %.preheader.i
  %i.ss = add i64 %i.sk, %i.sg
  %i.st = sub i64 %i.ss, %i.sh
  %i.su = add i64 %i.sk, 1
  %umax116 = tail call i64 @llvm.umax.i64(i64 %i.st, i64 %i.su)
  %i.sv = sub i64 %umax116, %i.sk                 ; 7 uses
  %min.iters.check118.a = icmp ult i64 %i.sv, 4
  %i.sw = sub i64 %i.sh, %i.sk
  %diff.check115 = icmp ugt i64 %i.sw, -32
  %or.cond203 = or i1 %min.iters.check118.a, %diff.check115
  br i1 %or.cond203, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %iter.check136
  %min.iters.check120 = icmp ult i64 %i.sv, 32
  br i1 %min.iters.check120, label %vec.epilog.ph140, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %n.mod.vf122 = and i64 %i.sv, 28
  %n.vec123 = and i64 %i.sv, -32                  ; 5 uses
  %i.sx = getelementptr i8, ptr %.0132.i289, i64 %n.vec123
  %i.sy = getelementptr i8, ptr %i.se, i64 %n.vec123
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph121
  %index125 = phi i64 [ 0, %vector.ph121 ], [ %index.next130, %vector.body124 ] ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.0132.i289, i64 %index125 ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.se, i64 %index125 ; 2 uses
  %i.sz = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load128 = load <16 x i8>, ptr %next.gep127, align 1, !tbaa !11
  %wide.load129 = load <16 x i8>, ptr %i.sz, align 1, !tbaa !11
  %i.ta = getelementptr i8, ptr %next.gep126, i64 16
  store <16 x i8> %wide.load128, ptr %next.gep126, align 1, !tbaa !11
  store <16 x i8> %wide.load129, ptr %i.ta, align 1, !tbaa !11
  %index.next130 = add nuw i64 %index125, 32      ; 2 uses
  %i.tb = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.tb, label %middle.block131, label %vector.body124, !llvm.loop !222

middle.block131:                                  ; preds = %vector.body124
  %cmp.n132 = icmp eq i64 %i.sv, %n.vec123
  br i1 %cmp.n132, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check138

vec.epilog.iter.check138:                         ; preds = %middle.block131
  %min.epilog.iters.check139 = icmp eq i64 %n.mod.vf122, 0
  br i1 %min.epilog.iters.check139, label %.lr.ph41.i.preheader, label %vec.epilog.ph140, !prof !97

vec.epilog.ph140:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check138
  %vec.epilog.resume.val133 = phi i64 [ %n.vec123, %vec.epilog.iter.check138 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec142 = and i64 %i.sv, -4                   ; 4 uses
  %i.tc = getelementptr i8, ptr %.0132.i289, i64 %n.vec142
  %i.td = getelementptr i8, ptr %i.se, i64 %n.vec142
  br label %vec.epilog.vector.body143

vec.epilog.vector.body143:                        ; preds = %vec.epilog.vector.body143, %vec.epilog.ph140
  %index144 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph140 ], [ %index.next148, %vec.epilog.vector.body143 ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %.0132.i289, i64 %index144
  %next.gep146 = getelementptr i8, ptr %i.se, i64 %index144
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !11
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !11
  %index.next148 = add nuw i64 %index144, 4       ; 2 uses
  %i.te = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.te, label %vec.epilog.middle.block149, label %vec.epilog.vector.body143, !llvm.loop !223

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body143
  %cmp.n150 = icmp eq i64 %i.sv, %n.vec142
  br i1 %cmp.n150, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check136, %vec.epilog.iter.check138, %vec.epilog.middle.block149
  %.040.i.ph = phi ptr [ %.0132.i289, %iter.check136 ], [ %i.sx, %vec.epilog.iter.check138 ], [ %i.tc, %vec.epilog.middle.block149 ]
  %.02939.i.ph = phi ptr [ %i.se, %iter.check136 ], [ %i.sy, %vec.epilog.iter.check138 ], [ %i.td, %vec.epilog.middle.block149 ]
  br label %.lr.ph41.i

end_hunk_6
begin_hunk_7_@ZSTD_decompressSequencesSplitLitBuffer_bmi2:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.238.i = phi ptr [ %i.ui, %.lr.ph.i ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23137.i = phi ptr [ %i.ug, %.lr.ph.i ], [ %.23137.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.23137.i, i64 1
  %i.uh = load i8, ptr %.23137.i, align 1, !tbaa !11
  %i.ui = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  store i8 %i.uh, ptr %.238.i, align 1, !tbaa !11
  %exitcond.not.i = icmp eq ptr %i.ui, %scevgep.i
  br i1 %exitcond.not.i, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph.i, !llvm.loop !227

ZSTD_safecopyDstBeforeSrc.exit:                   ; preds = %.lr.ph.i, %.lr.ph41.i, %middle.block100, %vec.epilog.middle.block, %middle.block131, %vec.epilog.middle.block149, %.preheader.i
  %i.uj = sub i64 %.sroa.080.0, %i.si
  br label %bb.cc

bb.cc:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit, %.thread391
  %.sroa.083.2 = phi i64 [ %.sroa.080.0, %.thread391 ], [ %i.uj, %ZSTD_safecopyDstBeforeSrc.exit ] ; 8 uses
  %.2134.i = phi ptr [ %.0132.i289, %.thread391 ], [ %i.so, %ZSTD_safecopyDstBeforeSrc.exit ] ; 8 uses
  %.2134.i154 = ptrtoaddr ptr %.2134.i to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.uk, ptr %i.a, align 8, !tbaa !38
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.um, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.083.2, ptr %7, align 8
  %.sroa.986.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.681.0, ptr %.sroa.986.0..sroa_idx87, align 8
  %.sroa.10.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink, ptr %.sroa.10.0..sroa_idx89, align 8
  %i.un = getelementptr i8, ptr %.2134.i, i64 %.sroa.083.2 ; 7 uses
  %i.uo = add i64 %.sroa.083.2, %.sroa.681.0      ; 9 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uk, i64 %.sroa.083.2
  %i.uq = sub i64 0, %.sink
  %i.ur = getelementptr inbounds i8, ptr %i.un, i64 %i.uq ; 2 uses
  %i.us = icmp ugt i64 %.sroa.083.2, 65536
  %i.ut = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.2134.i, i64 %i.uo
  %i.uv = icmp ugt ptr %i.uu, %i.ut
  %or.cond.i191.i = select i1 %i.us, i1 true, i1 %i.uv, !prof !104
  br i1 %or.cond.i191.i, label %bb.cd, label %.critedge.i192.i, !prof !104

.critedge.i192.i:                                 ; preds = %bb.cc
  %.val15 = load <2 x i64>, ptr %i.uk, align 4, !tbaa !11
  store <2 x i64> %.val15, ptr %.2134.i, align 1, !tbaa !11
  %i.uw = icmp samesign ugt i64 %.sroa.083.2, 16
  br i1 %i.uw, label %bb.ce, label %ZSTD_wildcopy.exit250.i, !prof !52

bb.cd:                                            ; preds = %bb.cc
  %i.ux = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2134.i, ptr noundef %i.b, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ul, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %.loopexit

bb.ce:                                            ; preds = %.critedge.i192.i
  %i.uy = getelementptr inbounds nuw i8, ptr %.2134.i, i64 16
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10 = load <2 x i64>, ptr %i.uz, align 4, !tbaa !11
  store <2 x i64> %.val10, ptr %i.uy, align 1, !tbaa !11
  %i.va = icmp samesign ult i64 %.sroa.083.2, 33
  br i1 %i.va, label %ZSTD_wildcopy.exit250.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vb = getelementptr inbounds nuw i8, ptr %.2134.i, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.130.i245.i = phi ptr [ %i.vb, %bb.cf ], [ %i.ve, %bb.cg ] ; 3 uses
  %.pn.i246.i = phi ptr [ %i.uz, %bb.cf ], [ %i.vd, %bb.cg ] ; 2 uses
  %.1.i247.i = getelementptr inbounds nuw i8, ptr %.pn.i246.i, i64 16
  %.1.i247.i.val = load <2 x i64>, ptr %.1.i247.i, align 1, !tbaa !11
  store <2 x i64> %.1.i247.i.val, ptr %.130.i245.i, align 1, !tbaa !11
  %i.vc = getelementptr inbounds nuw i8, ptr %.130.i245.i, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %.pn.i246.i, i64 32 ; 2 uses
  %.val9 = load <2 x i64>, ptr %i.vd, align 1, !tbaa !11
  store <2 x i64> %.val9, ptr %i.vc, align 1, !tbaa !11
  %i.ve = getelementptr inbounds nuw i8, ptr %.130.i245.i, i64 32 ; 2 uses
  %i.vf = icmp ult ptr %i.ve, %i.un
  br i1 %i.vf, label %bb.cg, label %ZSTD_wildcopy.exit250.i, !llvm.loop !100

ZSTD_wildcopy.exit250.i:                          ; preds = %bb.cg, %bb.ce, %.critedge.i192.i
  store ptr %i.up, ptr %i.a, align 8, !tbaa !38
  %i.vg = ptrtoint ptr %i.un to i64               ; 2 uses
  %i.vh = sub i64 %i.vg, %i.gu                    ; 3 uses
  %i.vi = icmp ugt i64 %.sink, %i.vh
  br i1 %i.vi, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %ZSTD_wildcopy.exit250.i
  %i.vj = sub i64 %i.vg, %i.gv
  %i.vk = icmp ugt i64 %.sink, %i.vj
  br i1 %i.vk, label %.loopexit.thread, label %bb.ci, !prof !52

.loopexit.thread:                                 ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread239

bb.ci:                                            ; preds = %bb.ch
  %i.vl = ptrtoint ptr %i.ur to i64
  %i.vm = sub i64 %i.vl, %i.gu                    ; 3 uses
  %i.vn = getelementptr inbounds i8, ptr %i.l, i64 %i.vm ; 2 uses
  %i.vo = add nsw i64 %i.vm, %.sroa.681.0         ; 3 uses
  %.not.i194.i = icmp sgt i64 %i.vo, 0
  br i1 %.not.i194.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.un, ptr align 1 %i.vn, i64 %.sroa.681.0, i1 false)
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %gepdiff.i195.i = sub nsw i64 0, %i.vm          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.un, ptr align 1 %i.vn, i64 %gepdiff.i195.i, i1 false)
  %i.vp = getelementptr inbounds nuw i8, ptr %i.un, i64 %gepdiff.i195.i
  store i64 %i.vo, ptr %.sroa.986.0..sroa_idx87, align 8, !tbaa !129
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %ZSTD_wildcopy.exit250.i
  %.0179 = phi ptr [ %i.vp, %bb.ck ], [ %i.un, %ZSTD_wildcopy.exit250.i ] ; 12 uses
  %.0177 = phi ptr [ %i.h, %bb.ck ], [ %i.ur, %ZSTD_wildcopy.exit250.i ] ; 9 uses
  %i.vq = phi i64 [ %i.vo, %bb.ck ], [ %.sroa.681.0, %ZSTD_wildcopy.exit250.i ] ; 5 uses
  %i.vr = icmp ugt i64 %.sink, 15
  br i1 %i.vr, label %bb.cm, label %bb.cp, !prof !89

bb.cm:                                            ; preds = %bb.cl
  %i.vs = getelementptr inbounds i8, ptr %.0179, i64 %i.vq
  %.val12 = load <2 x i64>, ptr %.0177, align 1, !tbaa !11
  store <2 x i64> %.val12, ptr %.0179, align 1, !tbaa !11
  %i.vt = icmp slt i64 %i.vq, 17
  br i1 %i.vt, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vu = getelementptr inbounds nuw i8, ptr %.0179, i64 16
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.130.i252.i = phi ptr [ %i.vu, %bb.cn ], [ %i.vx, %bb.co ] ; 3 uses
  %.pn.i253.i = phi ptr [ %.0177, %bb.cn ], [ %i.vw, %bb.co ] ; 2 uses
  %.1.i254.i = getelementptr inbounds nuw i8, ptr %.pn.i253.i, i64 16
  %.1.i254.i.val = load <2 x i64>, ptr %.1.i254.i, align 1, !tbaa !11
  store <2 x i64> %.1.i254.i.val, ptr %.130.i252.i, align 1, !tbaa !11
  %i.vv = getelementptr inbounds nuw i8, ptr %.130.i252.i, i64 16
  %i.vw = getelementptr inbounds nuw i8, ptr %.pn.i253.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.vw, align 1, !tbaa !11
  store <2 x i64> %.val11, ptr %i.vv, align 1, !tbaa !11
  %i.vx = getelementptr inbounds nuw i8, ptr %.130.i252.i, i64 32 ; 2 uses
  %i.vy = icmp ult ptr %i.vx, %i.vs
  br i1 %i.vy, label %bb.co, label %.loopexit, !llvm.loop !100

bb.cp:                                            ; preds = %bb.cl
  %i.vz = icmp samesign ult i64 %.sink, 8
  br i1 %i.vz, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !5
  %i.wc = load i8, ptr %.0177, align 1, !tbaa !11
  store i8 %i.wc, ptr %.0179, align 1, !tbaa !11
  %i.wd = getelementptr inbounds nuw i8, ptr %.0177, i64 1
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !11
  %i.wf = getelementptr inbounds nuw i8, ptr %.0179, i64 1
  store i8 %i.we, ptr %i.wf, align 1, !tbaa !11
  %i.wg = getelementptr inbounds nuw i8, ptr %.0177, i64 2
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !11
  %i.wi = getelementptr inbounds nuw i8, ptr %.0179, i64 2
  store i8 %i.wh, ptr %i.wi, align 1, !tbaa !11
  %i.wj = getelementptr inbounds nuw i8, ptr %.0177, i64 3
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !11
  %i.wl = getelementptr inbounds nuw i8, ptr %.0179, i64 3
  store i8 %i.wk, ptr %i.wl, align 1, !tbaa !11
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !5
  %i.wo = zext i32 %i.wn to i64
  %i.wp = getelementptr inbounds nuw i8, ptr %.0177, i64 %i.wo ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.0179, i64 4
  %.val30 = load i32, ptr %i.wp, align 1
  store i32 %.val30, ptr %i.wq, align 1
  %i.wr = sext i32 %i.wb to i64
  %i.ws = sub nsw i64 0, %i.wr
  %i.wt = getelementptr inbounds i8, ptr %i.wp, i64 %i.ws
  br label %ZSTD_overlapCopy8.exit286.i

bb.cr:                                            ; preds = %bb.cp
  %.val33 = load i64, ptr %.0177, align 1
  store i64 %.val33, ptr %.0179, align 1
  br label %ZSTD_overlapCopy8.exit286.i

ZSTD_overlapCopy8.exit286.i:                      ; preds = %bb.cr, %bb.cq
  %.1178 = phi ptr [ %i.wt, %bb.cq ], [ %.0177, %bb.cr ] ; 2 uses
  %.1178156 = ptrtoaddr ptr %.1178 to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %.1178, i64 8 ; 7 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.0179, i64 8 ; 6 uses
  %i.ww = icmp ugt i64 %i.vq, 8
  br i1 %i.ww, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %ZSTD_overlapCopy8.exit286.i
  %i.wx = ptrtoint ptr %i.wv to i64
  %i.wy = ptrtoint ptr %i.wu to i64
  %i.wz = sub i64 %i.wx, %i.wy
  %i.xa = getelementptr i8, ptr %.0179, i64 %i.vq ; 2 uses
  %i.xb = icmp slt i64 %i.wz, 16
  br i1 %i.xb, label %.preheader265.preheader, label %bb.ct

.preheader265.preheader:                          ; preds = %bb.cs
  %15 = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.vh)
  %umin158 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.vh) ; 3 uses
  %i.xc = add i64 %.sroa.681.0, %i.gu
  %16 = add i64 %i.xc, %15
  %i.xd = add i64 %16, %umin158
  %i.xe = sub i64 %i.xd, %.sink
  %i.xf = add i64 %umin158, %i.gu
  %i.xg = add i64 %i.xf, 16
  %umax160 = tail call i64 @llvm.umax.i64(i64 %i.xe, i64 %i.xg)
  %i.xh = add i64 %umin158, %i.gu
  %17 = sub i64 %umax160, %i.xh
  %18 = add i64 %17, -9                           ; 2 uses
  %i.xi = lshr i64 %18, 3
  %i.xj = add nuw nsw i64 %i.xi, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %18, 184
  br i1 %min.iters.check162, label %.preheader265.preheader216, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.preheader265.preheader
  %i.xk = add i64 %.sroa.083.2, %.2134.i154
  %i.xl = sub i64 %i.xk, %i.gu
  %umax155 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.xl)
  %i.xm = add i64 %umax155, %i.gu
  %i.xn = sub i64 %.1178156, %i.xm
  %diff.check157 = icmp ugt i64 %i.xn, -32
  br i1 %diff.check157, label %.preheader265.preheader216, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck153
  %n.vec165 = and i64 %i.xj, 4611686018427387900  ; 3 uses
  %i.xo = shl i64 %n.vec165, 3                    ; 2 uses
  %i.xp = getelementptr i8, ptr %i.wv, i64 %i.xo
  %i.xq = getelementptr i8, ptr %i.wu, i64 %i.xo
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next172, %vector.body166 ] ; 2 uses
  %i.xr = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.wv, i64 %i.xr ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.wu, i64 %i.xr ; 2 uses
  %i.xs = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load170 = load <2 x i64>, ptr %next.gep169, align 1
  %wide.load171 = load <2 x i64>, ptr %i.xs, align 1
  %i.xt = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x i64> %wide.load170, ptr %next.gep168, align 1
  store <2 x i64> %wide.load171, ptr %i.xt, align 1
  %index.next172 = add nuw i64 %index167, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.xu, label %middle.block173, label %vector.body166, !llvm.loop !228

middle.block173:                                  ; preds = %vector.body166
  %cmp.n174 = icmp eq i64 %i.xj, %n.vec165
  br i1 %cmp.n174, label %.loopexit, label %.preheader265.preheader216

.preheader265.preheader216:                       ; preds = %vector.memcheck153, %.preheader265.preheader, %middle.block173
  %.029.i262.i.ph = phi ptr [ %i.wv, %vector.memcheck153 ], [ %i.wv, %.preheader265.preheader ], [ %i.xp, %middle.block173 ]
  %.0.i263.i.ph = phi ptr [ %i.wu, %vector.memcheck153 ], [ %i.wu, %.preheader265.preheader ], [ %i.xq, %middle.block173 ]
  br label %.preheader265

.preheader265:                                    ; preds = %.preheader265.preheader216, %.preheader265
  %.029.i262.i = phi ptr [ %i.xv, %.preheader265 ], [ %.029.i262.i.ph, %.preheader265.preheader216 ] ; 2 uses
  %.0.i263.i = phi ptr [ %i.xw, %.preheader265 ], [ %.0.i263.i.ph, %.preheader265.preheader216 ] ; 2 uses
  %.0.i263.i.val = load i64, ptr %.0.i263.i, align 1
  store i64 %.0.i263.i.val, ptr %.029.i262.i, align 1
  %i.xv = getelementptr inbounds nuw i8, ptr %.029.i262.i, i64 8 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.0.i263.i, i64 8
  %i.xx = icmp ult ptr %i.xv, %i.xa
  br i1 %i.xx, label %.preheader265, label %.loopexit, !llvm.loop !229

bb.ct:                                            ; preds = %bb.cs
  %.val14 = load <2 x i64>, ptr %i.wu, align 1, !tbaa !11
  store <2 x i64> %.val14, ptr %i.wv, align 1, !tbaa !11
  %i.xy = icmp slt i64 %i.vq, 25
  br i1 %i.xy, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xz = getelementptr inbounds nuw i8, ptr %.0179, i64 24
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.130.i259.i = phi ptr [ %i.xz, %bb.cu ], [ %i.yc, %bb.cv ] ; 3 uses
  %.pn.i260.i = phi ptr [ %i.wu, %bb.cu ], [ %i.yb, %bb.cv ] ; 2 uses
  %.1.i261.i = getelementptr inbounds nuw i8, ptr %.pn.i260.i, i64 16
  %.1.i261.i.val = load <2 x i64>, ptr %.1.i261.i, align 1, !tbaa !11
  store <2 x i64> %.1.i261.i.val, ptr %.130.i259.i, align 1, !tbaa !11
  %i.ya = getelementptr inbounds nuw i8, ptr %.130.i259.i, i64 16
  %i.yb = getelementptr inbounds nuw i8, ptr %.pn.i260.i, i64 32 ; 2 uses
  %.val13 = load <2 x i64>, ptr %i.yb, align 1, !tbaa !11
  store <2 x i64> %.val13, ptr %i.ya, align 1, !tbaa !11
  %i.yc = getelementptr inbounds nuw i8, ptr %.130.i259.i, i64 32 ; 2 uses
  %i.yd = icmp ult ptr %i.yc, %i.xa
  br i1 %i.yd, label %bb.cv, label %.loopexit, !llvm.loop !100

.loopexit:                                        ; preds = %bb.cv, %.preheader265, %bb.co, %middle.block173, %bb.cd, %bb.cj, %ZSTD_overlapCopy8.exit286.i, %bb.cm, %bb.ct
  %.0.i193.i = phi i64 [ %i.ux, %bb.cd ], [ %i.uo, %bb.co ], [ %i.uo, %bb.cj ], [ %i.uo, %ZSTD_overlapCopy8.exit286.i ], [ %i.uo, %bb.cm ], [ %i.uo, %middle.block173 ], [ %i.uo, %bb.ct ], [ %i.uo, %.preheader265 ], [ %i.uo, %bb.cv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ye = icmp ult i64 %.0.i193.i, -119
  %i.yf = getelementptr inbounds nuw i8, ptr %.2134.i, i64 %.0.i193.i ; 2 uses
  %i.yg = add nsw i32 %.0125.i291, -1             ; 2 uses
  br i1 %i.ye, label %bb.cw, label %.thread239

bb.cw:                                            ; preds = %.loopexit
  %.not256 = icmp eq i32 %i.yg, 0
  br i1 %.not256, label %.thread235, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !141
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !142
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !143
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !144
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !145
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %19 = ptrtoint ptr %3 to i64
  %i.yh = ptrtoint ptr %3 to i64
  %invariant.op369 = add i64 %i.gu, 16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ep
  %i.yi = phi ptr [ %i.ry, %bb.cx ], [ %i.aew, %bb.ep ] ; 8 uses
  %i.yj = phi i32 [ %i.rz, %bb.cx ], [ %i.aex, %bb.ep ] ; 5 uses
  %i.yk = phi i64 [ %i.sa, %bb.cx ], [ %i.aey, %bb.ep ] ; 6 uses
  %i.yl = phi i64 [ %i.ju, %bb.cx ], [ %i.abf, %bb.ep ] ; 2 uses
  %i.ym = phi i64 [ %.sink470, %bb.cx ], [ %.sink472, %bb.ep ] ; 6 uses
  %i.yn = phi i64 [ %.sink, %bb.cx ], [ %.sink471, %bb.ep ] ; 6 uses
  %i.yo = phi i64 [ %i.sb, %bb.cx ], [ %i.aez, %bb.ep ] ; 2 uses
  %i.yp = phi i64 [ %i.sc, %bb.cx ], [ %i.afa, %bb.ep ] ; 2 uses
  %i.yq = phi i64 [ %i.sd, %bb.cx ], [ %i.afb, %bb.ep ] ; 2 uses
  %.4129.i294 = phi i32 [ %i.yg, %bb.cx ], [ %i.aiv, %bb.ep ] ; 2 uses
  %.7139.i292 = phi ptr [ %i.yf, %bb.cx ], [ %i.aiu, %bb.ep ] ; 8 uses
  %.7139.i292178 = ptrtoaddr ptr %.7139.i292 to i64
  %.not260 = icmp eq i32 %.4129.i294, 1
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.yq ; 4 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.yo ; 4 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.yp ; 4 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !41, !noalias !230
  %i.yw = zext i32 %i.yv to i64                   ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !41, !noalias !230 ; 2 uses
  %i.yz = zext i32 %i.yy to i64                   ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yt, i64 4
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !41, !noalias !230 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yr, i64 2
  %i.zd = load i8, ptr %i.zc, align 2, !tbaa !58, !noalias !230 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.ys, i64 2
  %i.zf = load i8, ptr %i.ze, align 2, !tbaa !58, !noalias !230 ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yt, i64 2
  %i.zh = load i8, ptr %i.zg, align 2, !tbaa !58, !noalias !230 ; 4 uses
  %i.zi = zext i8 %i.zd to i32                    ; 2 uses
  %i.zj = zext i8 %i.zf to i32                    ; 2 uses
  %i.zk = add i8 %i.zf, %i.zd
  %i.zl = add i8 %i.zk, %i.zh
  %i.zm = load i16, ptr %i.yr, align 4, !tbaa !57, !noalias !230
  %i.zn = load i16, ptr %i.ys, align 4, !tbaa !57, !noalias !230
  %i.zo = load i16, ptr %i.yt, align 4, !tbaa !57, !noalias !230
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yr, i64 3
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !56, !noalias !230 ; 2 uses
  %i.zr = zext i8 %i.zq to i32
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ys, i64 3
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !56, !noalias !230 ; 2 uses
  %i.zu = zext i8 %i.zt to i32
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yt, i64 3
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !56, !noalias !230 ; 2 uses
  %i.zx = zext i8 %i.zw to i32
  %i.zy = icmp ugt i8 %i.zh, 1
  br i1 %i.zy, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.zz = zext i8 %i.zh to i32                    ; 2 uses
  %i.aaa = and i32 %i.yj, 63
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = shl i64 %i.yk, %i.aab
  %i.aad = sub nsw i32 0, %i.zz
  %i.aae = and i32 %i.aad, 63
  %i.aaf = zext nneg i32 %i.aae to i64
  %i.aag = lshr i64 %i.aac, %i.aaf
  %i.aah = add i32 %i.yj, %i.zz                   ; 2 uses
  store i32 %i.aah, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %i.aai = zext i32 %i.zb to i64
  %i.aaj = add i64 %i.aag, %i.aai
  store i64 %i.ym, ptr %i.gt, align 8, !tbaa !45, !noalias !230
  br label %bb.df

bb.da:                                            ; preds = %bb.cy
  %i.aak = icmp eq i32 %i.yy, 0                   ; 3 uses
  %i.aal = icmp eq i8 %i.zh, 0
  br i1 %i.aal, label %bb.db, label %bb.dc, !prof !89

bb.db:                                            ; preds = %bb.da
  %i.aam = select i1 %i.aak, i64 %i.ym, i64 %i.yn
  %i.aan = select i1 %i.aak, i64 %i.yn, i64 %i.ym
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.aao = zext i1 %i.aak to i32
  %i.aap = add i32 %i.zb, %i.aao
  %i.aaq = zext i32 %i.aap to i64
  %i.aar = and i32 %i.yj, 63
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = shl i64 %i.yk, %i.aas
  %i.aau = lshr i64 %i.aat, 63
  %i.aav = add i32 %i.yj, 1                       ; 3 uses
  store i32 %i.aav, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %i.aaw = add nuw nsw i64 %i.aau, %i.aaq         ; 3 uses
  %i.aax = icmp eq i64 %i.aaw, 3
  br i1 %i.aax, label %.thread218, label %bb.dd

.thread218:                                       ; preds = %bb.dc
  %i.aay = add i64 %i.yn, -1                      ; 2 uses
  %.not.i.i219 = icmp eq i64 %i.aay, 0
  %i.aaz = select i1 %.not.i.i219, i64 -1, i64 %i.aay
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aaw
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !45, !noalias !230 ; 2 uses
  %.not.i.i = icmp eq i64 %i.abb, 0
  %i.abc = select i1 %.not.i.i, i64 -1, i64 %i.abb ; 2 uses
  %.not101.i.i = icmp eq i64 %i.aaw, 1
  br i1 %.not101.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.thread218, %bb.dd
  %i.abd = phi i64 [ %i.aaz, %.thread218 ], [ %i.abc, %bb.dd ]
  store i64 %i.ym, ptr %i.gt, align 8, !tbaa !45, !noalias !230
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de, %bb.db, %bb.cz
  %i.abe = phi i32 [ %i.aah, %bb.cz ], [ %i.yj, %bb.db ], [ %i.aav, %bb.de ], [ %i.aav, %bb.dd ] ; 3 uses
  %.sink472 = phi i64 [ %i.yn, %bb.cz ], [ %i.aan, %bb.db ], [ %i.yn, %bb.de ], [ %i.yn, %bb.dd ] ; 3 uses
  %.sink471 = phi i64 [ %i.aaj, %bb.cz ], [ %i.aam, %bb.db ], [ %i.abd, %bb.de ], [ %i.abc, %bb.dd ] ; 15 uses
  %i.abf = phi i64 [ %i.ym, %bb.cz ], [ %i.yl, %bb.db ], [ %i.ym, %bb.de ], [ %i.yl, %bb.dd ] ; 2 uses
  store i64 %.sink472, ptr %i.gs, align 8, !tbaa !45, !noalias !230
  store i64 %.sink471, ptr %i.o, align 8, !tbaa !45, !noalias !230
  %.not102.i.i = icmp eq i8 %i.zf, 0
  br i1 %.not102.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.abg = and i32 %i.abe, 63
  %i.abh = zext nneg i32 %i.abg to i64
  %i.abi = shl i64 %i.yk, %i.abh
  %i.abj = sub nsw i32 0, %i.zj
  %i.abk = and i32 %i.abj, 63
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = lshr i64 %i.abi, %i.abl
  %i.abn = add i32 %i.abe, %i.zj                  ; 2 uses
  store i32 %i.abn, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %i.abo = add i64 %i.abm, %i.yw
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.abp = phi i32 [ %i.abe, %bb.df ], [ %i.abn, %bb.dg ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.yw, %bb.df ], [ %i.abo, %bb.dg ] ; 6 uses
  %i.abq = icmp ugt i8 %i.zl, 30
  br i1 %i.abq, label %bb.di, label %BIT_reloadDStream.exit217.i, !prof !52

bb.di:                                            ; preds = %bb.dh
  %i.abr = icmp ugt i32 %i.abp, 64
  br i1 %i.abr, label %bb.dj, label %bb.dk, !prof !52

bb.dj:                                            ; preds = %bb.di
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !78, !noalias !230
  br label %BIT_reloadDStream.exit217.i

bb.dk:                                            ; preds = %bb.di
  %.not.i211.i = icmp ult ptr %i.yi, %i.ab
  br i1 %.not.i211.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.abs = lshr i32 %i.abp, 3
  %i.abt = zext nneg i32 %i.abs to i64
  %i.abu = sub nsw i64 0, %i.abt
  %i.abv = getelementptr inbounds i8, ptr %i.yi, i64 %i.abu ; 3 uses
  store ptr %i.abv, ptr %i.cx, align 8, !tbaa !78, !noalias !230
  %i.abw = and i32 %i.abp, 7                      ; 2 uses
  store i32 %i.abw, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %.val.i76 = load i64, ptr %i.abv, align 1, !tbaa !45, !noalias !230 ; 2 uses
  store i64 %.val.i76, ptr %9, align 8, !tbaa !79, !noalias !230
  br label %BIT_reloadDStream.exit217.i

bb.dm:                                            ; preds = %bb.dk
  %i.abx = icmp eq ptr %i.yi, %3
  br i1 %i.abx, label %BIT_reloadDStream.exit217.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aby = lshr i32 %i.abp, 3                     ; 2 uses
  %i.abz = zext nneg i32 %i.aby to i64
  %i.aca = sub nsw i64 0, %i.abz
  %i.acb = getelementptr inbounds i8, ptr %i.yi, i64 %i.aca
  %i.acc = icmp ult ptr %i.acb, %3
  %i.acd = ptrtoint ptr %i.yi to i64
  %i.ace = sub i64 %i.acd, %19
  %i.acf = trunc i64 %i.ace to i32
  %.021.i213.i = select i1 %i.acc, i32 %i.acf, i32 %i.aby ; 2 uses
  %i.acg = zext i32 %.021.i213.i to i64
  %i.ach = sub nsw i64 0, %i.acg
  %i.aci = getelementptr inbounds i8, ptr %i.yi, i64 %i.ach ; 3 uses
  store ptr %i.aci, ptr %i.cx, align 8, !tbaa !78, !noalias !230
  %i.acj = shl i32 %.021.i213.i, 3
  %i.ack = sub i32 %i.abp, %i.acj                 ; 2 uses
  store i32 %i.ack, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %.val7 = load i64, ptr %i.aci, align 1, !tbaa !45 ; 2 uses
  store i64 %.val7, ptr %9, align 8, !tbaa !79, !noalias !230
  br label %BIT_reloadDStream.exit217.i

BIT_reloadDStream.exit217.i:                      ; preds = %bb.dm, %bb.dj, %bb.dl, %bb.dn, %bb.dh
  %i.acl = phi ptr [ %i.yi, %bb.dm ], [ @BIT_reloadDStream.zeroFilled, %bb.dj ], [ %i.abv, %bb.dl ], [ %i.aci, %bb.dn ], [ %i.yi, %bb.dh ] ; 8 uses
  %i.acm = phi i32 [ %i.abp, %bb.dm ], [ %i.abp, %bb.dj ], [ %i.abw, %bb.dl ], [ %i.ack, %bb.dn ], [ %i.abp, %bb.dh ] ; 3 uses
  %i.acn = phi i64 [ %i.yk, %bb.dm ], [ %i.yk, %bb.dj ], [ %.val.i76, %bb.dl ], [ %.val7, %bb.dn ], [ %i.yk, %bb.dh ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.zd, 0
  br i1 %.not103.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %BIT_reloadDStream.exit217.i
  %i.aco = and i32 %i.acm, 63
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = shl i64 %i.acn, %i.acp
  %i.acr = sub nsw i32 0, %i.zi
  %i.acs = and i32 %i.acr, 63
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = lshr i64 %i.acq, %i.act
  %i.acv = add i32 %i.acm, %i.zi                  ; 2 uses
  store i32 %i.acv, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %i.acw = add i64 %i.acu, %i.yz
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %BIT_reloadDStream.exit217.i
  %i.acx = phi i32 [ %i.acm, %BIT_reloadDStream.exit217.i ], [ %i.acv, %bb.do ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.yz, %BIT_reloadDStream.exit217.i ], [ %i.acw, %bb.do ] ; 7 uses
  br i1 %.not260, label %ZSTD_decodeSequence.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.acy = add i32 %i.acx, %i.zr                  ; 2 uses
  %i.acz = sub i32 0, %i.acy
  %i.ada = and i32 %i.acz, 63
  %i.adb = zext nneg i32 %i.ada to i64
  %i.adc = lshr i64 %i.acn, %i.adb
  %i.add = zext nneg i8 %i.zq to i64
  %notmask.i.i229.i = shl nsw i64 -1, %i.add
  %i.ade = xor i64 %notmask.i.i229.i, -1
  %i.adf = and i64 %i.adc, %i.ade
  %i.adg = zext i16 %i.zm to i64
  %i.adh = add nuw i64 %i.adf, %i.adg             ; 5 uses
  store i64 %i.adh, ptr %i.cj, align 8, !tbaa !81, !noalias !230
  %i.adi = add i32 %i.acy, %i.zu                  ; 2 uses
  %i.adj = sub i32 0, %i.adi
  %i.adk = and i32 %i.adj, 63
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = lshr i64 %i.acn, %i.adl
  %i.adn = zext nneg i8 %i.zt to i64
  %notmask.i.i228.i = shl nsw i64 -1, %i.adn
  %i.ado = xor i64 %notmask.i.i228.i, -1
  %i.adp = and i64 %i.adm, %i.ado
  %i.adq = zext i16 %i.zn to i64
  %i.adr = add nuw i64 %i.adp, %i.adq             ; 5 uses
  store i64 %i.adr, ptr %i.ff, align 8, !tbaa !81, !noalias !230
  %i.ads = add i32 %i.adi, %i.zx                  ; 9 uses
  %i.adt = sub i32 0, %i.ads
  %i.adu = and i32 %i.adt, 63
  %i.adv = zext nneg i32 %i.adu to i64
  %i.adw = lshr i64 %i.acn, %i.adv
  %i.adx = zext nneg i8 %i.zw to i64
  %notmask.i.i227.i = shl nsw i64 -1, %i.adx
  %i.ady = xor i64 %notmask.i.i227.i, -1
  %i.adz = and i64 %i.adw, %i.ady
  store i32 %i.ads, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %i.aea = zext i16 %i.zo to i64
  %i.aeb = add nuw i64 %i.adz, %i.aea             ; 5 uses
  store i64 %i.aeb, ptr %i.dr, align 8, !tbaa !81, !noalias !230
  %i.aec = icmp ugt i32 %i.ads, 64
  br i1 %i.aec, label %bb.dr, label %bb.ds, !prof !52

bb.dr:                                            ; preds = %bb.dq
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !78, !noalias !230
  br label %ZSTD_decodeSequence.exit.i

bb.ds:                                            ; preds = %bb.dq
  %.not.i218.i = icmp ult ptr %i.acl, %i.ab
  br i1 %.not.i218.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aed = lshr i32 %i.ads, 3
  %i.aee = zext nneg i32 %i.aed to i64
  %i.aef = sub nsw i64 0, %i.aee
  %i.aeg = getelementptr inbounds i8, ptr %i.acl, i64 %i.aef ; 3 uses
  store ptr %i.aeg, ptr %i.cx, align 8, !tbaa !78, !noalias !230
  %i.aeh = and i32 %i.ads, 7                      ; 2 uses
  store i32 %i.aeh, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %.val.i79 = load i64, ptr %i.aeg, align 1, !tbaa !45, !noalias !230 ; 2 uses
  store i64 %.val.i79, ptr %9, align 8, !tbaa !79, !noalias !230
  br label %ZSTD_decodeSequence.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.aei = icmp eq ptr %i.acl, %3
  br i1 %i.aei, label %ZSTD_decodeSequence.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aej = lshr i32 %i.ads, 3                     ; 2 uses
  %i.aek = zext nneg i32 %i.aej to i64
  %i.ael = sub nsw i64 0, %i.aek
  %i.aem = getelementptr inbounds i8, ptr %i.acl, i64 %i.ael
  %i.aen = icmp ult ptr %i.aem, %3
  %i.aeo = ptrtoint ptr %i.acl to i64
  %i.aep = sub i64 %i.aeo, %i.yh
  %i.aeq = trunc i64 %i.aep to i32
  %.021.i220.i = select i1 %i.aen, i32 %i.aeq, i32 %i.aej ; 2 uses
  %i.aer = zext i32 %.021.i220.i to i64
  %i.aes = sub nsw i64 0, %i.aer
  %i.aet = getelementptr inbounds i8, ptr %i.acl, i64 %i.aes ; 3 uses
  store ptr %i.aet, ptr %i.cx, align 8, !tbaa !78, !noalias !230
  %i.aeu = shl i32 %.021.i220.i, 3
  %i.aev = sub i32 %i.ads, %i.aeu                 ; 2 uses
  store i32 %i.aev, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %.val8 = load i64, ptr %i.aet, align 1, !tbaa !45 ; 2 uses
  store i64 %.val8, ptr %9, align 8, !tbaa !79, !noalias !230
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.du, %bb.dr, %bb.dt, %bb.dv, %bb.dp
  %i.aew = phi ptr [ %i.acl, %bb.du ], [ @BIT_reloadDStream.zeroFilled, %bb.dr ], [ %i.aeg, %bb.dt ], [ %i.aet, %bb.dv ], [ %i.acl, %bb.dp ] ; 2 uses
  %i.aex = phi i32 [ %i.ads, %bb.du ], [ %i.ads, %bb.dr ], [ %i.aeh, %bb.dt ], [ %i.aev, %bb.dv ], [ %i.acx, %bb.dp ] ; 2 uses
  %i.aey = phi i64 [ %i.acn, %bb.du ], [ %i.acn, %bb.dr ], [ %.val.i79, %bb.dt ], [ %.val8, %bb.dv ], [ %i.acn, %bb.dp ]
  %i.aez = phi i64 [ %i.adr, %bb.du ], [ %i.adr, %bb.dr ], [ %i.adr, %bb.dt ], [ %i.adr, %bb.dv ], [ %i.yo, %bb.dp ]
  %i.afa = phi i64 [ %i.aeb, %bb.du ], [ %i.aeb, %bb.dr ], [ %i.aeb, %bb.dt ], [ %i.aeb, %bb.dv ], [ %i.yp, %bb.dp ]
  %i.afb = phi i64 [ %i.adh, %bb.du ], [ %i.adh, %bb.dr ], [ %i.adh, %bb.dt ], [ %i.adh, %bb.dv ], [ %i.yq, %bb.dp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0, ptr %8, align 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sink471, ptr %.sroa.9.0..sroa_idx, align 8
  %i.afc = getelementptr i8, ptr %.7139.i292, i64 %.sroa.0.0 ; 7 uses
  %i.afd = add i64 %.sroa.0.0, %.sroa.6.0         ; 9 uses
  %i.afe = load ptr, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 %.sroa.0.0 ; 2 uses
  %i.afg = sub i64 0, %.sink471
  %i.afh = getelementptr inbounds i8, ptr %i.afc, i64 %i.afg ; 2 uses
  %i.afi = icmp ugt ptr %i.aff, %i.ul
  %i.afj = getelementptr inbounds nuw i8, ptr %.7139.i292, i64 %i.afd
  %i.afk = icmp ugt ptr %i.afj, %i.ut
  %or.cond.i.i = select i1 %i.afi, i1 true, i1 %i.afk, !prof !104
  br i1 %or.cond.i.i, label %bb.dw, label %.critedge.i.i, !prof !104

.critedge.i.i:                                    ; preds = %ZSTD_decodeSequence.exit.i
  %.val28 = load <2 x i64>, ptr %i.afe, align 1, !tbaa !11
  store <2 x i64> %.val28, ptr %.7139.i292, align 1, !tbaa !11
  %i.afl = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.afl, label %bb.dx, label %ZSTD_wildcopy.exit271.i, !prof !52

bb.dw:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.afm = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.7139.i292, ptr noundef %i.b, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ul, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %ZSTD_execSequence.exit.i

bb.dx:                                            ; preds = %.critedge.i.i
  %i.afn = getelementptr inbounds nuw i8, ptr %.7139.i292, i64 16
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afe, i64 16 ; 2 uses
  %i.afp = add i64 %.sroa.0.0, -16
  %.val23 = load <2 x i64>, ptr %i.afo, align 1, !tbaa !11
  store <2 x i64> %.val23, ptr %i.afn, align 1, !tbaa !11
  %i.afq = icmp slt i64 %i.afp, 17
  br i1 %i.afq, label %ZSTD_wildcopy.exit271.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.afr = getelementptr inbounds nuw i8, ptr %.7139.i292, i64 32
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %bb.dy
  %.130.i266.i = phi ptr [ %i.afr, %bb.dy ], [ %i.afu, %bb.dz ] ; 3 uses
  %.pn.i267.i = phi ptr [ %i.afo, %bb.dy ], [ %i.aft, %bb.dz ] ; 2 uses
  %.1.i268.i = getelementptr inbounds nuw i8, ptr %.pn.i267.i, i64 16
  %.1.i268.i.val = load <2 x i64>, ptr %.1.i268.i, align 1, !tbaa !11
  store <2 x i64> %.1.i268.i.val, ptr %.130.i266.i, align 1, !tbaa !11
  %i.afs = getelementptr inbounds nuw i8, ptr %.130.i266.i, i64 16
  %i.aft = getelementptr inbounds nuw i8, ptr %.pn.i267.i, i64 32 ; 2 uses
  %.val22 = load <2 x i64>, ptr %i.aft, align 1, !tbaa !11
  store <2 x i64> %.val22, ptr %i.afs, align 1, !tbaa !11
  %i.afu = getelementptr inbounds nuw i8, ptr %.130.i266.i, i64 32 ; 2 uses
  %i.afv = icmp ult ptr %i.afu, %i.afc
  br i1 %i.afv, label %bb.dz, label %ZSTD_wildcopy.exit271.i, !llvm.loop !100

ZSTD_wildcopy.exit271.i:                          ; preds = %bb.dz, %bb.dx, %.critedge.i.i
  store ptr %i.aff, ptr %i.a, align 8, !tbaa !38
  %i.afw = ptrtoint ptr %i.afc to i64             ; 2 uses
  %i.afx = sub i64 %i.afw, %i.gu                  ; 3 uses
  %i.afy = icmp ugt i64 %.sink471, %i.afx
  br i1 %i.afy, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %ZSTD_wildcopy.exit271.i
  %i.afz = sub i64 %i.afw, %i.gv
  %i.aga = icmp ugt i64 %.sink471, %i.afz
  br i1 %i.aga, label %ZSTD_execSequence.exit.i.thread, label %bb.eb, !prof !52

ZSTD_execSequence.exit.i.thread:                  ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread239

bb.eb:                                            ; preds = %bb.ea
  %i.agb = ptrtoint ptr %i.afh to i64
  %i.agc = sub i64 %i.agb, %i.gu                  ; 3 uses
  %i.agd = getelementptr inbounds i8, ptr %i.l, i64 %i.agc ; 2 uses
  %i.age = add nsw i64 %i.agc, %.sroa.6.0         ; 3 uses
  %.not.i190.i = icmp sgt i64 %i.age, 0
  br i1 %.not.i190.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afc, ptr align 1 %i.agd, i64 %.sroa.6.0, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.ed:                                            ; preds = %bb.eb
  %gepdiff.i.i = sub nsw i64 0, %i.agc            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afc, ptr align 1 %i.agd, i64 %gepdiff.i.i, i1 false)
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afc, i64 %gepdiff.i.i
  store i64 %i.age, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !129
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %ZSTD_wildcopy.exit271.i
  %.0176 = phi ptr [ %i.agf, %bb.ed ], [ %i.afc, %ZSTD_wildcopy.exit271.i ] ; 12 uses
  %.0174 = phi ptr [ %i.h, %bb.ed ], [ %i.afh, %ZSTD_wildcopy.exit271.i ] ; 9 uses
  %i.agg = phi i64 [ %i.age, %bb.ed ], [ %.sroa.6.0, %ZSTD_wildcopy.exit271.i ] ; 5 uses
  %i.agh = icmp ugt i64 %.sink471, 15
  br i1 %i.agh, label %bb.ef, label %bb.ei, !prof !89

bb.ef:                                            ; preds = %bb.ee
  %i.agi = getelementptr inbounds i8, ptr %.0176, i64 %i.agg
  %.val25 = load <2 x i64>, ptr %.0174, align 1, !tbaa !11
  store <2 x i64> %.val25, ptr %.0176, align 1, !tbaa !11
  %i.agj = icmp slt i64 %i.agg, 17
  br i1 %i.agj, label %ZSTD_execSequence.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.agk = getelementptr inbounds nuw i8, ptr %.0176, i64 16
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %bb.eg
  %.130.i273.i = phi ptr [ %i.agk, %bb.eg ], [ %i.agn, %bb.eh ] ; 3 uses
  %.pn.i274.i = phi ptr [ %.0174, %bb.eg ], [ %i.agm, %bb.eh ] ; 2 uses
  %.1.i275.i = getelementptr inbounds nuw i8, ptr %.pn.i274.i, i64 16
  %.1.i275.i.val = load <2 x i64>, ptr %.1.i275.i, align 1, !tbaa !11
  store <2 x i64> %.1.i275.i.val, ptr %.130.i273.i, align 1, !tbaa !11
  %i.agl = getelementptr inbounds nuw i8, ptr %.130.i273.i, i64 16
  %i.agm = getelementptr inbounds nuw i8, ptr %.pn.i274.i, i64 32 ; 2 uses
  %.val24 = load <2 x i64>, ptr %i.agm, align 1, !tbaa !11
  store <2 x i64> %.val24, ptr %i.agl, align 1, !tbaa !11
  %i.agn = getelementptr inbounds nuw i8, ptr %.130.i273.i, i64 32 ; 2 uses
  %i.ago = icmp ult ptr %i.agn, %i.agi
  br i1 %i.ago, label %bb.eh, label %ZSTD_execSequence.exit.i, !llvm.loop !100

bb.ei:                                            ; preds = %bb.ee
  %i.agp = icmp samesign ult i64 %.sink471, 8
  br i1 %i.agp, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink471
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !5
  %i.ags = load i8, ptr %.0174, align 1, !tbaa !11
  store i8 %i.ags, ptr %.0176, align 1, !tbaa !11
  %i.agt = getelementptr inbounds nuw i8, ptr %.0174, i64 1
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !11
  %i.agv = getelementptr inbounds nuw i8, ptr %.0176, i64 1
  store i8 %i.agu, ptr %i.agv, align 1, !tbaa !11
  %i.agw = getelementptr inbounds nuw i8, ptr %.0174, i64 2
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !11
  %i.agy = getelementptr inbounds nuw i8, ptr %.0176, i64 2
  store i8 %i.agx, ptr %i.agy, align 1, !tbaa !11
  %i.agz = getelementptr inbounds nuw i8, ptr %.0174, i64 3
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !11
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0176, i64 3
  store i8 %i.aha, ptr %i.ahb, align 1, !tbaa !11
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink471
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !5
  %i.ahe = zext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0174, i64 %i.ahe ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0176, i64 4
  %.val32 = load i32, ptr %i.ahf, align 1
  store i32 %.val32, ptr %i.ahg, align 1
  %i.ahh = sext i32 %i.agr to i64
  %i.ahi = sub nsw i64 0, %i.ahh
  %i.ahj = getelementptr inbounds i8, ptr %i.ahf, i64 %i.ahi
  br label %ZSTD_overlapCopy8.exit287.i

bb.ek:                                            ; preds = %bb.ei
  %.val34 = load i64, ptr %.0174, align 1
  store i64 %.val34, ptr %.0176, align 1
  br label %ZSTD_overlapCopy8.exit287.i

ZSTD_overlapCopy8.exit287.i:                      ; preds = %bb.ek, %bb.ej
  %.1175 = phi ptr [ %i.ahj, %bb.ej ], [ %.0174, %bb.ek ] ; 2 uses
  %.1175180 = ptrtoaddr ptr %.1175 to i64
  %i.ahk = getelementptr inbounds nuw i8, ptr %.1175, i64 8 ; 7 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0176, i64 8 ; 6 uses
  %i.ahm = icmp ugt i64 %i.agg, 8
  br i1 %i.ahm, label %bb.el, label %ZSTD_execSequence.exit.i

bb.el:                                            ; preds = %ZSTD_overlapCopy8.exit287.i
  %i.ahn = ptrtoint ptr %i.ahl to i64
  %i.aho = ptrtoint ptr %i.ahk to i64
  %i.ahp = sub i64 %i.ahn, %i.aho
  %i.ahq = getelementptr i8, ptr %.0176, i64 %i.agg ; 2 uses
  %i.ahr = icmp slt i64 %i.ahp, 16
  br i1 %i.ahr, label %.preheader262.preheader, label %bb.em

.preheader262.preheader:                          ; preds = %bb.el
  %20 = tail call i64 @llvm.umin.i64(i64 %.sink471, i64 %i.afx)
  %umin182 = tail call i64 @llvm.umax.i64(i64 %.sink471, i64 %i.afx) ; 3 uses
  %i.ahs = add i64 %.sroa.6.0, %i.gu
  %21 = add i64 %i.ahs, %20
  %i.aht = add i64 %21, %umin182
  %i.ahu = sub i64 %i.aht, %.sink471
  %i.ahv = add i64 %umin182, %invariant.op369
  %umax184 = tail call i64 @llvm.umax.i64(i64 %i.ahu, i64 %i.ahv)
  %i.ahw = add i64 %umin182, %i.gu
  %22 = sub i64 %umax184, %i.ahw
  %23 = add i64 %22, -9                           ; 2 uses
  %i.ahx = lshr i64 %23, 3
  %i.ahy = add nuw nsw i64 %i.ahx, 1              ; 2 uses
  %min.iters.check186 = icmp ult i64 %23, 72
  br i1 %min.iters.check186, label %.preheader262.preheader205, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.preheader262.preheader
  %i.ahz = sub i64 %.sroa.0.0, %i.gu
  %i.aia = add i64 %i.ahz, %.7139.i292178
  %umax179 = tail call i64 @llvm.umax.i64(i64 %.sink471, i64 %i.aia)
  %i.aib = add i64 %umax179, %i.gu
  %i.aic = sub i64 %.1175180, %i.aib
  %diff.check181 = icmp ugt i64 %i.aic, -32
  br i1 %diff.check181, label %.preheader262.preheader205, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck177
  %n.vec189 = and i64 %i.ahy, 4611686018427387900 ; 3 uses
  %i.aid = shl i64 %n.vec189, 3                   ; 2 uses
  %i.aie = getelementptr i8, ptr %i.ahl, i64 %i.aid
  %i.aif = getelementptr i8, ptr %i.ahk, i64 %i.aid
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %i.aig = shl i64 %index191, 3                   ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.ahl, i64 %i.aig ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.ahk, i64 %i.aig ; 2 uses
  %i.aih = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <2 x i64>, ptr %next.gep193, align 1
  %wide.load195 = load <2 x i64>, ptr %i.aih, align 1
  %i.aii = getelementptr i8, ptr %next.gep192, i64 16
  store <2 x i64> %wide.load194, ptr %next.gep192, align 1
  store <2 x i64> %wide.load195, ptr %i.aii, align 1
  %index.next196 = add nuw i64 %index191, 4       ; 2 uses
  %i.aij = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.aij, label %middle.block197, label %vector.body190, !llvm.loop !233

middle.block197:                                  ; preds = %vector.body190
  %cmp.n198 = icmp eq i64 %i.ahy, %n.vec189
  br i1 %cmp.n198, label %ZSTD_execSequence.exit.i, label %.preheader262.preheader205

.preheader262.preheader205:                       ; preds = %vector.memcheck177, %.preheader262.preheader, %middle.block197
  %.029.i283.i.ph = phi ptr [ %i.ahl, %vector.memcheck177 ], [ %i.ahl, %.preheader262.preheader ], [ %i.aie, %middle.block197 ]
  %.0.i284.i.ph = phi ptr [ %i.ahk, %vector.memcheck177 ], [ %i.ahk, %.preheader262.preheader ], [ %i.aif, %middle.block197 ]
  br label %.preheader262

.preheader262:                                    ; preds = %.preheader262.preheader205, %.preheader262
  %.029.i283.i = phi ptr [ %i.aik, %.preheader262 ], [ %.029.i283.i.ph, %.preheader262.preheader205 ] ; 2 uses
  %.0.i284.i = phi ptr [ %i.ail, %.preheader262 ], [ %.0.i284.i.ph, %.preheader262.preheader205 ] ; 2 uses
  %.0.i284.i.val = load i64, ptr %.0.i284.i, align 1
  store i64 %.0.i284.i.val, ptr %.029.i283.i, align 1
  %i.aik = getelementptr inbounds nuw i8, ptr %.029.i283.i, i64 8 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.0.i284.i, i64 8
  %i.aim = icmp ult ptr %i.aik, %i.ahq
  br i1 %i.aim, label %.preheader262, label %ZSTD_execSequence.exit.i, !llvm.loop !234

bb.em:                                            ; preds = %bb.el
  %.val27 = load <2 x i64>, ptr %i.ahk, align 1, !tbaa !11
  store <2 x i64> %.val27, ptr %i.ahl, align 1, !tbaa !11
  %i.ain = icmp slt i64 %i.agg, 25
  br i1 %i.ain, label %ZSTD_execSequence.exit.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aio = getelementptr inbounds nuw i8, ptr %.0176, i64 24
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %bb.en
  %.130.i280.i = phi ptr [ %i.aio, %bb.en ], [ %i.air, %bb.eo ] ; 3 uses
  %.pn.i281.i = phi ptr [ %i.ahk, %bb.en ], [ %i.aiq, %bb.eo ] ; 2 uses
  %.1.i282.i = getelementptr inbounds nuw i8, ptr %.pn.i281.i, i64 16
  %.1.i282.i.val = load <2 x i64>, ptr %.1.i282.i, align 1, !tbaa !11
  store <2 x i64> %.1.i282.i.val, ptr %.130.i280.i, align 1, !tbaa !11
  %i.aip = getelementptr inbounds nuw i8, ptr %.130.i280.i, i64 16
  %i.aiq = getelementptr inbounds nuw i8, ptr %.pn.i281.i, i64 32 ; 2 uses
  %.val26 = load <2 x i64>, ptr %i.aiq, align 1, !tbaa !11
  store <2 x i64> %.val26, ptr %i.aip, align 1, !tbaa !11
  %i.air = getelementptr inbounds nuw i8, ptr %.130.i280.i, i64 32 ; 2 uses
  %i.ais = icmp ult ptr %i.air, %i.ahq
  br i1 %i.ais, label %bb.eo, label %ZSTD_execSequence.exit.i, !llvm.loop !100

ZSTD_execSequence.exit.i:                         ; preds = %bb.eo, %.preheader262, %bb.eh, %middle.block197, %bb.em, %bb.ef, %ZSTD_overlapCopy8.exit287.i, %bb.ec, %bb.dw
  %.0.i.i = phi i64 [ %i.afm, %bb.dw ], [ %i.afd, %middle.block197 ], [ %i.afd, %bb.ec ], [ %i.afd, %ZSTD_overlapCopy8.exit287.i ], [ %i.afd, %bb.ef ], [ %i.afd, %bb.em ], [ %i.afd, %bb.eh ], [ %i.afd, %.preheader262 ], [ %i.afd, %bb.eo ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ait = icmp ult i64 %.0.i.i, -119
  br i1 %i.ait, label %bb.ep, label %.thread239

bb.ep:                                            ; preds = %ZSTD_execSequence.exit.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %.7139.i292, i64 %.0.i.i ; 2 uses
  %i.aiv = add nsw i32 %.4129.i294, -1            ; 2 uses
  %.not173.i = icmp eq i32 %i.aiv, 0
  br i1 %.not173.i, label %.thread235, label %bb.cy, !llvm.loop !151

.thread235:                                       ; preds = %bb.bu, %bb.ep, %bb.cw
  %i.aiw = phi ptr [ %i.aew, %bb.ep ], [ %i.ry, %bb.cw ], [ %i.nw, %bb.bu ]
  %i.aix = phi i32 [ %i.aex, %bb.ep ], [ %i.rz, %bb.cw ], [ %i.nx, %bb.bu ]
  %i.aiy = phi i64 [ %i.abf, %bb.ep ], [ %i.ju, %bb.cw ], [ %i.ju, %bb.bu ]
  %i.aiz = phi i64 [ %.sink472, %bb.ep ], [ %.sink470, %bb.cw ], [ %.sink470, %bb.bu ]
  %i.aja = phi i64 [ %.sink471, %bb.ep ], [ %.sink, %bb.cw ], [ %.sink, %bb.bu ]
  %.9141.i233 = phi ptr [ %i.aiu, %bb.ep ], [ %i.yf, %bb.cw ], [ %i.rv, %bb.bu ]
  %.2149.i208217232 = phi ptr [ %i.ul, %bb.ep ], [ %i.ul, %bb.cw ], [ %i.f, %bb.bu ]
  %i.ajb = icmp eq ptr %i.aiw, %3
  %.not261 = icmp eq i32 %i.aix, 64
  %or.cond = select i1 %i.ajb, i1 %.not261, i1 false
  br i1 %or.cond, label %.preheader, label %.thread239

.preheader:                                       ; preds = %.thread235
  %i.ajc = trunc i64 %i.aja to i32
  store i32 %i.ajc, ptr %i.n, align 4, !tbaa !5
  %i.ajd = trunc i64 %i.aiz to i32
  store i32 %i.ajd, ptr %i.r, align 8, !tbaa !5
  %i.aje = trunc i64 %i.aiy to i32
  store i32 %i.aje, ptr %i.v, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.eq

.thread239:                                       ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i, %ZSTD_execSequence.exit.i, %bb.l, %bb.d, %bb.b, %.loopexit.thread, %.loopexit, %BIT_initDStream.exit, %ZSTD_execSequence.exit.i.thread, %bb.bv, %ZSTD_execSequenceSplitLitBuffer.exit.i.thread, %bb.bw, %.thread235
  %.9.i.ph = phi i64 [ -20, %.loopexit.thread ], [ -20, %bb.bv ], [ -20, %bb.b ], [ %.0.i193.i, %.loopexit ], [ -20, %ZSTD_execSequence.exit.i.thread ], [ -20, %.thread235 ], [ -20, %BIT_initDStream.exit ], [ -20, %ZSTD_execSequenceSplitLitBuffer.exit.i.thread ], [ %.0.i.i, %ZSTD_execSequence.exit.i ], [ -20, %bb.d ], [ -70, %bb.bw ], [ -20, %bb.l ], [ %.0.i199.i, %ZSTD_execSequenceSplitLitBuffer.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %ZSTD_decompressSequences_bodySplitLitBuffer.exit

bb.eq:                                            ; preds = %.preheader, %bb.a
  %.pre = phi ptr [ %.pre.pre, %.preheader ], [ %i.d, %bb.a ] ; 3 uses
  %.4151.i = phi ptr [ %.2149.i208217232, %.preheader ], [ %i.f, %bb.a ] ; 2 uses
  %.11143.i = phi ptr [ %.9141.i233, %.preheader ], [ %1, %bb.a ] ; 5 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  %i.ajg = load i32, ptr %i.ajf, align 8, !tbaa !35
  %i.ajh = icmp eq i32 %i.ajg, 2
  br i1 %i.ajh, label %bb.er, label %._crit_edge

._crit_edge:                                      ; preds = %bb.eq
  %.pre331 = ptrtoint ptr %i.b to i64
  br label %bb.ev

bb.er:                                            ; preds = %bb.eq
  %i.aji = ptrtoint ptr %.4151.i to i64
  %i.ajj = ptrtoint ptr %.pre to i64
  %i.ajk = sub i64 %i.aji, %i.ajj                 ; 3 uses
  %i.ajl = ptrtoint ptr %i.b to i64               ; 2 uses
  %i.ajm = ptrtoint ptr %.11143.i to i64
  %i.ajn = sub i64 %i.ajl, %i.ajm
  %.not178.i = icmp ugt i64 %i.ajk, %i.ajn
  br i1 %.not178.i, label %ZSTD_decompressSequences_bodySplitLitBuffer.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.not177.i = icmp eq ptr %.11143.i, null
  br i1 %.not177.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.11143.i, ptr align 1 %.pre, i64 %i.ajk, i1 false)
  %i.ajo = getelementptr inbounds nuw i8, ptr %.11143.i, i64 %i.ajk
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et
  %.12144.i = phi ptr [ %i.ajo, %bb.et ], [ null, %bb.es ]
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %i.ajf, align 8, !tbaa !35
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge, %bb.eu
  %.pre-phi = phi i64 [ %.pre331, %._crit_edge ], [ %i.ajl, %bb.eu ]
  %i.ajr = phi ptr [ %.pre, %._crit_edge ], [ %i.ajp, %bb.eu ] ; 2 uses
  %.6153.i = phi ptr [ %.4151.i, %._crit_edge ], [ %i.ajq, %bb.eu ]
  %.14146.i = phi ptr [ %.11143.i, %._crit_edge ], [ %.12144.i, %bb.eu ] ; 4 uses
  %i.ajs = ptrtoint ptr %.6153.i to i64
  %i.ajt = ptrtoint ptr %i.ajr to i64
  %i.aju = sub i64 %i.ajs, %i.ajt                 ; 3 uses
  %i.ajv = ptrtoint ptr %.14146.i to i64
  %i.ajw = sub i64 %.pre-phi, %i.ajv
  %.not180.i = icmp ugt i64 %i.aju, %i.ajw
  br i1 %.not180.i, label %ZSTD_decompressSequences_bodySplitLitBuffer.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.not179.i = icmp eq ptr %.14146.i, null
  br i1 %.not179.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14146.i, ptr align 1 %i.ajr, i64 %i.aju, i1 false)
  %i.ajx = getelementptr inbounds nuw i8, ptr %.14146.i, i64 %i.aju
  %i.ajy = ptrtoint ptr %i.ajx to i64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.16.i.ph = phi i64 [ 0, %bb.ew ], [ %i.ajy, %bb.ex ]
  %i.ajz = ptrtoint ptr %1 to i64
  %i.aka = sub i64 %.16.i.ph, %i.ajz
  br label %ZSTD_decompressSequences_bodySplitLitBuffer.exit

ZSTD_decompressSequences_bodySplitLitBuffer.exit: ; preds = %bb.er, %bb.ev, %.thread239, %bb.ey
  %.14.i = phi i64 [ %i.aka, %bb.ey ], [ %.9.i.ph, %.thread239 ], [ -70, %bb.ev ], [ -70, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.14.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressSequences_bmi2(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #14 {
bb.a:
  %6 = alloca %struct.seq_t, align 8              ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %struct.seqState_t, align 8         ; 33 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  %i.d = icmp eq i32 %i.c, 0
end_hunk_7
begin_hunk_8_@ZSTD_decompressSequences_bmi2:bb.a
  br label %ZSTD_initFseState.exit

bb.r:                                             ; preds = %bb.p
  %.not.i.i18 = icmp slt i64 %.idx, 8
  br i1 %.not.i.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = lshr i32 %i.cv, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %.ptr, i64 %i.dh ; 4 uses
  store ptr %i.di, ptr %i.de, align 8, !tbaa !78
  %i.dj = and i32 %i.cv, 7                        ; 2 uses
  store i32 %i.dj, ptr %i.cu, align 8, !tbaa !83
  %.val.i.i = load i64, ptr %i.di, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i.i, ptr %7, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = icmp eq i64 %.idx, 0
  br i1 %i.dk, label %ZSTD_initFseState.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = lshr i32 %i.cv, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %.021.i.i20148 = tail call i64 @llvm.smin.i64(i64 %.idx, i64 %i.dm) ; 2 uses
  %.021.i.i20 = trunc i64 %.021.i.i20148 to i32
  %i.dn = and i64 %.021.i.i20148, 4294967295
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.ptr, i64 %i.do ; 4 uses
  store ptr %i.dp, ptr %i.de, align 8, !tbaa !78
  %i.dq = shl i32 %.021.i.i20, 3
  %i.dr = sub i32 %i.cv, %i.dq                    ; 2 uses
  store i32 %i.dr, ptr %i.cu, align 8, !tbaa !83
  %.val.i21 = load i64, ptr %i.dp, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i21, ptr %7, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit

ZSTD_initFseState.exit:                           ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %i.ds = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.q ], [ %i.di, %bb.s ], [ %i.cn, %bb.t ], [ %i.dp, %bb.u ]
  %i.dt = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.q ], [ %i.di, %bb.s ], [ %3, %bb.t ], [ %i.dp, %bb.u ] ; 7 uses
  %i.du = phi i32 [ %i.cv, %bb.q ], [ %i.dj, %bb.s ], [ %i.cv, %bb.t ], [ %i.dr, %bb.u ]
  %i.dv = phi i64 [ %i.cp, %bb.q ], [ %.val.i.i, %bb.s ], [ %i.cp, %bb.t ], [ %.val.i21, %bb.u ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !84
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !71 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !63 ; 2 uses
  %i.ed = add i32 %i.du, %i.ec                    ; 8 uses
  %i.ee = sub i32 0, %i.ed
  %i.ef = and i32 %i.ee, 63
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = lshr i64 %i.dv, %i.eg
  %i.ei = zext nneg i32 %i.ec to i64
  %notmask.i.i22 = shl nsw i64 -1, %i.ei
  %i.ej = xor i64 %notmask.i.i22, -1
  %i.ek = and i64 %i.eh, %i.ej                    ; 2 uses
  store i64 %i.ek, ptr %i.dy, align 8, !tbaa !81
  %i.el = icmp ugt i32 %i.ed, 64
  br i1 %i.el, label %bb.v, label %bb.w, !prof !52

bb.v:                                             ; preds = %ZSTD_initFseState.exit
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !78
  br label %ZSTD_initFseState.exit28

bb.w:                                             ; preds = %ZSTD_initFseState.exit
  %.not.i.i23 = icmp ult ptr %i.dt, %i.ai
  br i1 %.not.i.i23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = lshr i32 %i.ed, 3
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.dt, i64 %i.eo ; 4 uses
  store ptr %i.ep, ptr %i.de, align 8, !tbaa !78
  %i.eq = and i32 %i.ed, 7
  %.val.i.i24 = load i64, ptr %i.ep, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i.i24, ptr %7, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit28

bb.y:                                             ; preds = %bb.w
  %i.er = icmp eq ptr %i.dt, %3
  br i1 %i.er, label %ZSTD_initFseState.exit28, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = lshr i32 %i.ed, 3                       ; 2 uses
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.dt, i64 %i.eu
  %i.ew = icmp ult ptr %i.ev, %3
  %i.ex = ptrtoint ptr %i.dt to i64
  %i.ey = ptrtoint ptr %3 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %.021.i.i26 = select i1 %i.ew, i32 %i.fa, i32 %i.es ; 2 uses
  %i.fb = zext i32 %.021.i.i26 to i64
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %i.dt, i64 %i.fc ; 4 uses
  store ptr %i.fd, ptr %i.de, align 8, !tbaa !78
  %i.fe = shl i32 %.021.i.i26, 3
  %i.ff = sub i32 %i.ed, %i.fe
  %.val.i27 = load i64, ptr %i.fd, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i27, ptr %7, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit28

ZSTD_initFseState.exit28:                         ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  %i.fg = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.v ], [ %i.ep, %bb.x ], [ %i.ds, %bb.y ], [ %i.fd, %bb.z ]
  %i.fh = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.v ], [ %i.ep, %bb.x ], [ %i.dt, %bb.y ], [ %i.fd, %bb.z ] ; 6 uses
  %i.fi = phi i32 [ %i.ed, %bb.v ], [ %i.eq, %bb.x ], [ %i.ed, %bb.y ], [ %i.ff, %bb.z ]
  %i.fj = phi i64 [ %i.dv, %bb.v ], [ %.val.i.i24, %bb.x ], [ %i.dv, %bb.y ], [ %.val.i27, %bb.z ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !84
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !85 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !63 ; 2 uses
  %i.fr = add i32 %i.fi, %i.fq                    ; 9 uses
  %i.fs = sub i32 0, %i.fr
  %i.ft = and i32 %i.fs, 63
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i64 %i.fj, %i.fu
  %i.fw = zext nneg i32 %i.fq to i64
  %notmask.i.i29 = shl nsw i64 -1, %i.fw
  %i.fx = xor i64 %notmask.i.i29, -1
  %i.fy = and i64 %i.fv, %i.fx                    ; 2 uses
  store i32 %i.fr, ptr %i.cu, align 8, !tbaa !83
  store i64 %i.fy, ptr %i.fm, align 8, !tbaa !81
  %i.fz = icmp ugt i32 %i.fr, 64
  br i1 %i.fz, label %bb.aa, label %bb.ab, !prof !52

bb.aa:                                            ; preds = %ZSTD_initFseState.exit28
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !78
  br label %ZSTD_initFseState.exit35

bb.ab:                                            ; preds = %ZSTD_initFseState.exit28
  %.not.i.i30 = icmp ult ptr %i.fh, %i.ai
  br i1 %.not.i.i30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = lshr i32 %i.fr, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = sub nsw i64 0, %i.gb
  %i.gd = getelementptr inbounds i8, ptr %i.fh, i64 %i.gc ; 3 uses
  store ptr %i.gd, ptr %i.de, align 8, !tbaa !78
  %i.ge = and i32 %i.fr, 7                        ; 2 uses
  store i32 %i.ge, ptr %i.cu, align 8, !tbaa !83
  %.val.i.i31 = load i64, ptr %i.gd, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i.i31, ptr %7, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit35

bb.ad:                                            ; preds = %bb.ab
  %i.gf = icmp eq ptr %i.fh, %3
  br i1 %i.gf, label %ZSTD_initFseState.exit35, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gg = lshr i32 %i.fr, 3                       ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = sub nsw i64 0, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %i.fh, i64 %i.gi
  %i.gk = icmp ult ptr %i.gj, %3
  %i.gl = ptrtoint ptr %i.fh to i64
  %i.gm = ptrtoint ptr %3 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = trunc i64 %i.gn to i32
  %.021.i.i33 = select i1 %i.gk, i32 %i.go, i32 %i.gg ; 2 uses
  %i.gp = zext i32 %.021.i.i33 to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.fh, i64 %i.gq ; 3 uses
  store ptr %i.gr, ptr %i.de, align 8, !tbaa !78
  %i.gs = shl i32 %.021.i.i33, 3
  %i.gt = sub i32 %i.fr, %i.gs                    ; 2 uses
  store i32 %i.gt, ptr %i.cu, align 8, !tbaa !83
  %.val.i34 = load i64, ptr %i.gr, align 1, !tbaa !45 ; 2 uses
  store i64 %.val.i34, ptr %7, align 8, !tbaa !79
  br label %ZSTD_initFseState.exit35

ZSTD_initFseState.exit35:                         ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %i.gu = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.aa ], [ %i.gd, %bb.ac ], [ %i.fg, %bb.ad ], [ %i.gr, %bb.ae ]
  %i.gv = phi i32 [ %i.fr, %bb.aa ], [ %i.ge, %bb.ac ], [ %i.fr, %bb.ad ], [ %i.gt, %bb.ae ]
  %i.gw = phi i64 [ %i.fj, %bb.aa ], [ %.val.i.i31, %bb.ac ], [ %i.fj, %bb.ad ], [ %.val.i34, %bb.ae ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !84
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !152
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !153
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !154
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !155
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !156
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gz = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.hc = ptrtoint ptr %i.o to i64                ; 7 uses
  %i.hd = ptrtoint ptr %i.q to i64
  %8 = ptrtoint ptr %3 to i64
  %i.he = ptrtoint ptr %3 to i64
  %invariant.op = add i64 %i.hc, 16
  br label %bb.af

bb.af:                                            ; preds = %ZSTD_initFseState.exit35, %bb.bw
  %i.hf = phi ptr [ %i.gu, %ZSTD_initFseState.exit35 ], [ %i.nt, %bb.bw ] ; 8 uses
  %i.hg = phi i32 [ %i.gv, %ZSTD_initFseState.exit35 ], [ %i.nu, %bb.bw ] ; 5 uses
  %i.hh = phi i64 [ %i.gw, %ZSTD_initFseState.exit35 ], [ %i.nv, %bb.bw ] ; 6 uses
  %i.hi = phi i64 [ %i.ae, %ZSTD_initFseState.exit35 ], [ %i.kc, %bb.bw ] ; 2 uses
  %i.hj = phi i64 [ %i.aa, %ZSTD_initFseState.exit35 ], [ %.sink160, %bb.bw ] ; 6 uses
  %i.hk = phi i64 [ %i.x, %ZSTD_initFseState.exit35 ], [ %.sink, %bb.bw ] ; 6 uses
  %i.hl = phi i64 [ %i.fy, %ZSTD_initFseState.exit35 ], [ %i.nw, %bb.bw ] ; 2 uses
  %i.hm = phi i64 [ %i.ek, %ZSTD_initFseState.exit35 ], [ %i.nx, %bb.bw ] ; 2 uses
  %i.hn = phi i64 [ %i.dc, %ZSTD_initFseState.exit35 ], [ %i.ny, %bb.bw ] ; 2 uses
  %.063.i105 = phi i32 [ %5, %ZSTD_initFseState.exit35 ], [ %i.rs, %bb.bw ] ; 2 uses
  %.068.i103 = phi ptr [ %1, %ZSTD_initFseState.exit35 ], [ %i.rr, %bb.bw ] ; 8 uses
  %.068.i10311 = ptrtoaddr ptr %.068.i103 to i64
  %.not = icmp eq i32 %.063.i105, 1
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.hn ; 4 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hl ; 4 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.hm ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !41, !noalias !235
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !41, !noalias !235 ; 2 uses
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !41, !noalias !235 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !58, !noalias !235 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.ic = load i8, ptr %i.ib, align 2, !tbaa !58, !noalias !235 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.ie = load i8, ptr %i.id, align 2, !tbaa !58, !noalias !235 ; 4 uses
  %i.if = zext i8 %i.ia to i32                    ; 2 uses
  %i.ig = zext i8 %i.ic to i32                    ; 2 uses
  %i.ih = add i8 %i.ic, %i.ia
  %i.ii = add i8 %i.ih, %i.ie
  %i.ij = load i16, ptr %i.ho, align 4, !tbaa !57, !noalias !235
  %i.ik = load i16, ptr %i.hp, align 4, !tbaa !57, !noalias !235
  %i.il = load i16, ptr %i.hq, align 4, !tbaa !57, !noalias !235
  %i.im = getelementptr inbounds nuw i8, ptr %i.ho, i64 3
  %i.in = load i8, ptr %i.im, align 1, !tbaa !56, !noalias !235 ; 2 uses
  %i.io = zext i8 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !56, !noalias !235 ; 2 uses
  %i.ir = zext i8 %i.iq to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.it = load i8, ptr %i.is, align 1, !tbaa !56, !noalias !235 ; 2 uses
  %i.iu = zext i8 %i.it to i32
  %i.iv = icmp ugt i8 %i.ie, 1
  br i1 %i.iv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.iw = zext i8 %i.ie to i32                    ; 2 uses
  %i.ix = and i32 %i.hg, 63
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl i64 %i.hh, %i.iy
  %i.ja = sub nsw i32 0, %i.iw
  %i.jb = and i32 %i.ja, 63
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = lshr i64 %i.iz, %i.jc
  %i.je = add i32 %i.hg, %i.iw                    ; 2 uses
  store i32 %i.je, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %i.jf = zext i32 %i.hy to i64
  %i.jg = add i64 %i.jd, %i.jf
  store i64 %i.hj, ptr %i.hb, align 8, !tbaa !45, !noalias !235
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.jh = icmp eq i32 %i.hv, 0                    ; 3 uses
  %i.ji = icmp eq i8 %i.ie, 0
  br i1 %i.ji, label %bb.ai, label %bb.aj, !prof !89

bb.ai:                                            ; preds = %bb.ah
  %i.jj = select i1 %i.jh, i64 %i.hj, i64 %i.hk
  %i.jk = select i1 %i.jh, i64 %i.hk, i64 %i.hj
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.jl = zext i1 %i.jh to i32
  %i.jm = add i32 %i.hy, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %i.jo = and i32 %i.hg, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl i64 %i.hh, %i.jp
  %i.jr = lshr i64 %i.jq, 63
  %i.js = add i32 %i.hg, 1                        ; 3 uses
  store i32 %i.js, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %i.jt = add nuw nsw i64 %i.jr, %i.jn            ; 3 uses
  %i.ju = icmp eq i64 %i.jt, 3
  br i1 %i.ju, label %.thread, label %bb.ak

.thread:                                          ; preds = %bb.aj
  %i.jv = add i64 %i.hk, -1                       ; 2 uses
  %.not.i.i77 = icmp eq i64 %i.jv, 0
  %i.jw = select i1 %.not.i.i77, i64 -1, i64 %i.jv
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.jt
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !45, !noalias !235 ; 2 uses
  %.not.i.i = icmp eq i64 %i.jy, 0
  %i.jz = select i1 %.not.i.i, i64 -1, i64 %i.jy  ; 2 uses
  %.not101.i.i = icmp eq i64 %i.jt, 1
  br i1 %.not101.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.ka = phi i64 [ %i.jw, %.thread ], [ %i.jz, %bb.ak ]
  store i64 %i.hj, ptr %i.hb, align 8, !tbaa !45, !noalias !235
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai, %bb.ag
  %i.kb = phi i32 [ %i.je, %bb.ag ], [ %i.hg, %bb.ai ], [ %i.js, %bb.al ], [ %i.js, %bb.ak ] ; 3 uses
  %.sink160 = phi i64 [ %i.hk, %bb.ag ], [ %i.jk, %bb.ai ], [ %i.hk, %bb.al ], [ %i.hk, %bb.ak ] ; 3 uses
  %.sink = phi i64 [ %i.jg, %bb.ag ], [ %i.jj, %bb.ai ], [ %i.ka, %bb.al ], [ %i.jz, %bb.ak ] ; 15 uses
  %i.kc = phi i64 [ %i.hj, %bb.ag ], [ %i.hi, %bb.ai ], [ %i.hj, %bb.al ], [ %i.hi, %bb.ak ] ; 2 uses
  store i64 %.sink160, ptr %i.ha, align 8, !tbaa !45, !noalias !235
  store i64 %.sink, ptr %i.v, align 8, !tbaa !45, !noalias !235
  %.not102.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not102.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kd = and i32 %i.kb, 63
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = shl i64 %i.hh, %i.ke
  %i.kg = sub nsw i32 0, %i.ig
  %i.kh = and i32 %i.kg, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = lshr i64 %i.kf, %i.ki
  %i.kk = add i32 %i.kb, %i.ig                    ; 2 uses
  store i32 %i.kk, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %i.kl = add i64 %i.kj, %i.ht
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.km = phi i32 [ %i.kb, %bb.am ], [ %i.kk, %bb.an ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.ht, %bb.am ], [ %i.kl, %bb.an ] ; 6 uses
  %i.kn = icmp ugt i8 %i.ii, 30
  br i1 %i.kn, label %bb.ap, label %BIT_reloadDStream.exit.i, !prof !52

bb.ap:                                            ; preds = %bb.ao
  %i.ko = icmp ugt i32 %i.km, 64
  br i1 %i.ko, label %bb.aq, label %bb.ar, !prof !52

bb.aq:                                            ; preds = %bb.ap
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !78, !noalias !235
  br label %BIT_reloadDStream.exit.i

bb.ar:                                            ; preds = %bb.ap
  %.not.i83.i = icmp ult ptr %i.hf, %i.ai
  br i1 %.not.i83.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kp = lshr i32 %i.km, 3
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = sub nsw i64 0, %i.kq
  %i.ks = getelementptr inbounds i8, ptr %i.hf, i64 %i.kr ; 3 uses
  store ptr %i.ks, ptr %i.de, align 8, !tbaa !78, !noalias !235
  %i.kt = and i32 %i.km, 7                        ; 2 uses
  store i32 %i.kt, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %.val.i41 = load i64, ptr %i.ks, align 1, !tbaa !45, !noalias !235 ; 2 uses
  store i64 %.val.i41, ptr %7, align 8, !tbaa !79, !noalias !235
  br label %BIT_reloadDStream.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.ku = icmp eq ptr %i.hf, %3
  br i1 %i.ku, label %BIT_reloadDStream.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kv = lshr i32 %i.km, 3                       ; 2 uses
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = sub nsw i64 0, %i.kw
  %i.ky = getelementptr inbounds i8, ptr %i.hf, i64 %i.kx
  %i.kz = icmp ult ptr %i.ky, %3
  %i.la = ptrtoint ptr %i.hf to i64
  %i.lb = sub i64 %i.la, %8
  %i.lc = trunc i64 %i.lb to i32
  %.021.i.i = select i1 %i.kz, i32 %i.lc, i32 %i.kv ; 2 uses
  %i.ld = zext i32 %.021.i.i to i64
  %i.le = sub nsw i64 0, %i.ld
  %i.lf = getelementptr inbounds i8, ptr %i.hf, i64 %i.le ; 3 uses
  store ptr %i.lf, ptr %i.de, align 8, !tbaa !78, !noalias !235
  %i.lg = shl i32 %.021.i.i, 3
  %i.lh = sub i32 %i.km, %i.lg                    ; 2 uses
  store i32 %i.lh, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %.val = load i64, ptr %i.lf, align 1, !tbaa !45 ; 2 uses
  store i64 %.val, ptr %7, align 8, !tbaa !79, !noalias !235
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.at, %bb.aq, %bb.as, %bb.au, %bb.ao
  %i.li = phi ptr [ %i.hf, %bb.at ], [ @BIT_reloadDStream.zeroFilled, %bb.aq ], [ %i.ks, %bb.as ], [ %i.lf, %bb.au ], [ %i.hf, %bb.ao ] ; 8 uses
  %i.lj = phi i32 [ %i.km, %bb.at ], [ %i.km, %bb.aq ], [ %i.kt, %bb.as ], [ %i.lh, %bb.au ], [ %i.km, %bb.ao ] ; 3 uses
  %i.lk = phi i64 [ %i.hh, %bb.at ], [ %i.hh, %bb.aq ], [ %.val.i41, %bb.as ], [ %.val, %bb.au ], [ %i.hh, %bb.ao ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not103.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %BIT_reloadDStream.exit.i
  %i.ll = and i32 %i.lj, 63
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = shl i64 %i.lk, %i.lm
  %i.lo = sub nsw i32 0, %i.if
  %i.lp = and i32 %i.lo, 63
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = lshr i64 %i.ln, %i.lq
  %i.ls = add i32 %i.lj, %i.if                    ; 2 uses
  store i32 %i.ls, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %i.lt = add i64 %i.lr, %i.hw
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %BIT_reloadDStream.exit.i
  %i.lu = phi i32 [ %i.lj, %BIT_reloadDStream.exit.i ], [ %i.ls, %bb.av ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.hw, %BIT_reloadDStream.exit.i ], [ %i.lt, %bb.av ] ; 7 uses
  br i1 %.not, label %ZSTD_decodeSequence.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lv = add i32 %i.lu, %i.io                    ; 2 uses
  %i.lw = sub i32 0, %i.lv
  %i.lx = and i32 %i.lw, 63
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = lshr i64 %i.lk, %i.ly
  %i.ma = zext nneg i8 %i.in to i64
  %notmask.i.i93.i = shl nsw i64 -1, %i.ma
  %i.mb = xor i64 %notmask.i.i93.i, -1
  %i.mc = and i64 %i.lz, %i.mb
  %i.md = zext i16 %i.ij to i64
  %i.me = add nuw i64 %i.mc, %i.md                ; 5 uses
  store i64 %i.me, ptr %i.cq, align 8, !tbaa !81, !noalias !235
  %i.mf = add i32 %i.lv, %i.ir                    ; 2 uses
  %i.mg = sub i32 0, %i.mf
  %i.mh = and i32 %i.mg, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = lshr i64 %i.lk, %i.mi
  %i.mk = zext nneg i8 %i.iq to i64
  %notmask.i.i92.i = shl nsw i64 -1, %i.mk
  %i.ml = xor i64 %notmask.i.i92.i, -1
  %i.mm = and i64 %i.mj, %i.ml
  %i.mn = zext i16 %i.ik to i64
  %i.mo = add nuw i64 %i.mm, %i.mn                ; 5 uses
  store i64 %i.mo, ptr %i.fm, align 8, !tbaa !81, !noalias !235
  %i.mp = add i32 %i.mf, %i.iu                    ; 9 uses
  %i.mq = sub i32 0, %i.mp
  %i.mr = and i32 %i.mq, 63
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = lshr i64 %i.lk, %i.ms
  %i.mu = zext nneg i8 %i.it to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.mu
  %i.mv = xor i64 %notmask.i.i.i, -1
  %i.mw = and i64 %i.mt, %i.mv
  store i32 %i.mp, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %i.mx = zext i16 %i.il to i64
  %i.my = add nuw i64 %i.mw, %i.mx                ; 5 uses
  store i64 %i.my, ptr %i.dy, align 8, !tbaa !81, !noalias !235
  %i.mz = icmp ugt i32 %i.mp, 64
  br i1 %i.mz, label %bb.ay, label %bb.az, !prof !52

bb.ay:                                            ; preds = %bb.ax
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !78, !noalias !235
  br label %ZSTD_decodeSequence.exit.i

bb.az:                                            ; preds = %bb.ax
  %.not.i85.i = icmp ult ptr %i.li, %i.ai
  br i1 %.not.i85.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.na = lshr i32 %i.mp, 3
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = sub nsw i64 0, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.li, i64 %i.nc ; 3 uses
  store ptr %i.nd, ptr %i.de, align 8, !tbaa !78, !noalias !235
  %i.ne = and i32 %i.mp, 7                        ; 2 uses
  store i32 %i.ne, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %.val.i44 = load i64, ptr %i.nd, align 1, !tbaa !45, !noalias !235 ; 2 uses
  store i64 %.val.i44, ptr %7, align 8, !tbaa !79, !noalias !235
  br label %ZSTD_decodeSequence.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.nf = icmp eq ptr %i.li, %3
  br i1 %i.nf, label %ZSTD_decodeSequence.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ng = lshr i32 %i.mp, 3                       ; 2 uses
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = sub nsw i64 0, %i.nh
  %i.nj = getelementptr inbounds i8, ptr %i.li, i64 %i.ni
  %i.nk = icmp ult ptr %i.nj, %3
  %i.nl = ptrtoint ptr %i.li to i64
  %i.nm = sub i64 %i.nl, %i.he
  %i.nn = trunc i64 %i.nm to i32
  %.021.i87.i = select i1 %i.nk, i32 %i.nn, i32 %i.ng ; 2 uses
  %i.no = zext i32 %.021.i87.i to i64
  %i.np = sub nsw i64 0, %i.no
  %i.nq = getelementptr inbounds i8, ptr %i.li, i64 %i.np ; 3 uses
  store ptr %i.nq, ptr %i.de, align 8, !tbaa !78, !noalias !235
  %i.nr = shl i32 %.021.i87.i, 3
  %i.ns = sub i32 %i.mp, %i.nr                    ; 2 uses
  store i32 %i.ns, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %.val6 = load i64, ptr %i.nq, align 1, !tbaa !45 ; 2 uses
  store i64 %.val6, ptr %7, align 8, !tbaa !79, !noalias !235
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.bb, %bb.ay, %bb.ba, %bb.bc, %bb.aw
  %i.nt = phi ptr [ %i.li, %bb.bb ], [ @BIT_reloadDStream.zeroFilled, %bb.ay ], [ %i.nd, %bb.ba ], [ %i.nq, %bb.bc ], [ %i.li, %bb.aw ] ; 2 uses
  %i.nu = phi i32 [ %i.mp, %bb.bb ], [ %i.mp, %bb.ay ], [ %i.ne, %bb.ba ], [ %i.ns, %bb.bc ], [ %i.lu, %bb.aw ] ; 2 uses
  %i.nv = phi i64 [ %i.lk, %bb.bb ], [ %i.lk, %bb.ay ], [ %.val.i44, %bb.ba ], [ %.val6, %bb.bc ], [ %i.lk, %bb.aw ]
  %i.nw = phi i64 [ %i.mo, %bb.bb ], [ %i.mo, %bb.ay ], [ %i.mo, %bb.ba ], [ %i.mo, %bb.bc ], [ %i.hl, %bb.aw ]
  %i.nx = phi i64 [ %i.my, %bb.bb ], [ %i.my, %bb.ay ], [ %i.my, %bb.ba ], [ %i.my, %bb.bc ], [ %i.hm, %bb.aw ]
  %i.ny = phi i64 [ %i.me, %bb.bb ], [ %i.me, %bb.ay ], [ %i.me, %bb.ba ], [ %i.me, %bb.bc ], [ %i.hn, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0, ptr %6, align 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sink, ptr %.sroa.9.0..sroa_idx, align 8
  %i.nz = getelementptr i8, ptr %.068.i103, i64 %.sroa.0.0 ; 7 uses
  %i.oa = add i64 %.sroa.0.0, %.sroa.6.0          ; 9 uses
  %i.ob = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.sroa.0.0 ; 2 uses
  %i.od = sub i64 0, %.sink
  %i.oe = getelementptr inbounds i8, ptr %i.nz, i64 %i.od ; 2 uses
  %i.of = icmp ugt ptr %i.oc, %i.m
  %i.og = getelementptr inbounds nuw i8, ptr %.068.i103, i64 %i.oa
  %i.oh = icmp ugt ptr %i.og, %i.gz
  %or.cond.i.i = select i1 %i.of, i1 true, i1 %i.oh, !prof !104
  br i1 %or.cond.i.i, label %bb.bd, label %.critedge.i.i, !prof !104

.critedge.i.i:                                    ; preds = %ZSTD_decodeSequence.exit.i
  %.val13 = load <2 x i64>, ptr %i.ob, align 1, !tbaa !11
  store <2 x i64> %.val13, ptr %.068.i103, align 1, !tbaa !11
  %i.oi = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.oi, label %bb.be, label %ZSTD_wildcopy.exit.i, !prof !52

bb.bd:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.oj = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.068.i103, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s)
  br label %ZSTD_execSequence.exit.i

bb.be:                                            ; preds = %.critedge.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %.068.i103, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.om = add i64 %.sroa.0.0, -16
  %.val8 = load <2 x i64>, ptr %i.ol, align 1, !tbaa !11
  store <2 x i64> %.val8, ptr %i.ok, align 1, !tbaa !11
  %i.on = icmp slt i64 %i.om, 17
  br i1 %i.on, label %ZSTD_wildcopy.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oo = getelementptr inbounds nuw i8, ptr %.068.i103, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i = phi ptr [ %i.oo, %bb.bf ], [ %i.or, %bb.bg ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.ol, %bb.bf ], [ %i.oq, %bb.bg ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.i.val = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !11
  store <2 x i64> %.1.i.i.val, ptr %.130.i.i, align 1, !tbaa !11
  %i.op = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val7 = load <2 x i64>, ptr %i.oq, align 1, !tbaa !11
  store <2 x i64> %.val7, ptr %i.op, align 1, !tbaa !11
  %i.or = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.os = icmp ult ptr %i.or, %i.nz
  br i1 %i.os, label %bb.bg, label %ZSTD_wildcopy.exit.i, !llvm.loop !100

ZSTD_wildcopy.exit.i:                             ; preds = %bb.bg, %bb.be, %.critedge.i.i
  store ptr %i.oc, ptr %i.a, align 8, !tbaa !38
  %i.ot = ptrtoint ptr %i.nz to i64               ; 2 uses
  %i.ou = sub i64 %i.ot, %i.hc                    ; 3 uses
  %i.ov = icmp ugt i64 %.sink, %i.ou
  br i1 %i.ov, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.ow = sub i64 %i.ot, %i.hd
  %i.ox = icmp ugt i64 %.sink, %i.ow
  br i1 %i.ox, label %ZSTD_execSequence.exit.i.thread, label %bb.bi, !prof !52

ZSTD_execSequence.exit.i.thread:                  ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread84

bb.bi:                                            ; preds = %bb.bh
  %i.oy = ptrtoint ptr %i.oe to i64
  %i.oz = sub i64 %i.oy, %i.hc                    ; 3 uses
  %i.pa = getelementptr inbounds i8, ptr %i.s, i64 %i.oz ; 2 uses
  %i.pb = add nsw i64 %i.oz, %.sroa.6.0           ; 3 uses
  %.not.i82.i = icmp sgt i64 %i.pb, 0
  br i1 %.not.i82.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nz, ptr align 1 %i.pa, i64 %.sroa.6.0, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i.i = sub nsw i64 0, %i.oz             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nz, ptr align 1 %i.pa, i64 %gepdiff.i.i, i1 false)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nz, i64 %gepdiff.i.i
  store i64 %i.pb, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !129
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %ZSTD_wildcopy.exit.i
  %.071 = phi ptr [ %i.o, %bb.bk ], [ %i.oe, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pc, %bb.bk ], [ %i.nz, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %i.pd = phi i64 [ %i.pb, %bb.bk ], [ %.sroa.6.0, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %i.pe = icmp ugt i64 %.sink, 15
  br i1 %i.pe, label %bb.bm, label %bb.bp, !prof !89

bb.bm:                                            ; preds = %bb.bl
  %i.pf = getelementptr inbounds i8, ptr %.0, i64 %i.pd
  %.val10 = load <2 x i64>, ptr %.071, align 1, !tbaa !11
  store <2 x i64> %.val10, ptr %.0, align 1, !tbaa !11
  %i.pg = icmp slt i64 %i.pd, 17
  br i1 %i.pg, label %ZSTD_execSequence.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ph = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i97.i = phi ptr [ %i.ph, %bb.bn ], [ %i.pk, %bb.bo ] ; 3 uses
  %.pn.i98.i = phi ptr [ %.071, %bb.bn ], [ %i.pj, %bb.bo ] ; 2 uses
  %.1.i99.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 16
  %.1.i99.i.val = load <2 x i64>, ptr %.1.i99.i, align 1, !tbaa !11
  store <2 x i64> %.1.i99.i.val, ptr %.130.i97.i, align 1, !tbaa !11
  %i.pi = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 32 ; 2 uses
  %.val9 = load <2 x i64>, ptr %i.pj, align 1, !tbaa !11
  store <2 x i64> %.val9, ptr %i.pi, align 1, !tbaa !11
  %i.pk = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 32 ; 2 uses
  %i.pl = icmp ult ptr %i.pk, %i.pf
  br i1 %i.pl, label %bb.bo, label %ZSTD_execSequence.exit.i, !llvm.loop !100

bb.bp:                                            ; preds = %bb.bl
  %i.pm = icmp samesign ult i64 %.sink, 8
  br i1 %i.pm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !5
  %i.pp = load i8, ptr %.071, align 1, !tbaa !11
  store i8 %i.pp, ptr %.0, align 1, !tbaa !11
  %i.pq = getelementptr inbounds nuw i8, ptr %.071, i64 1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !11
  %i.ps = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !11
  %i.pt = getelementptr inbounds nuw i8, ptr %.071, i64 2
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !11
  %i.pv = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !11
  %i.pw = getelementptr inbounds nuw i8, ptr %.071, i64 3
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !11
  %i.py = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.px, ptr %i.py, align 1, !tbaa !11
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !5
  %i.qb = zext i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %.071, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.val14 = load i32, ptr %i.qc, align 1
  store i32 %.val14, ptr %i.qd, align 1
  %i.qe = sext i32 %i.po to i64
  %i.qf = sub nsw i64 0, %i.qe
  %i.qg = getelementptr inbounds i8, ptr %i.qc, i64 %i.qf
  br label %ZSTD_overlapCopy8.exit.i

bb.br:                                            ; preds = %bb.bp
  %.val15 = load i64, ptr %.071, align 1
  store i64 %.val15, ptr %.0, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.br, %bb.bq
  %.1 = phi ptr [ %i.qg, %bb.bq ], [ %.071, %bb.br ] ; 2 uses
  %.112 = ptrtoaddr ptr %.1 to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qj = icmp ugt i64 %i.pd, 8
  br i1 %i.qj, label %bb.bs, label %ZSTD_execSequence.exit.i

bb.bs:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = getelementptr i8, ptr %.0, i64 %i.pd    ; 2 uses
  %i.qo = icmp slt i64 %i.qm, 16
  br i1 %i.qo, label %.preheader97.preheader, label %bb.bt

.preheader97.preheader:                           ; preds = %bb.bs
  %9 = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.ou)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.ou) ; 3 uses
  %i.qp = add i64 %.sroa.6.0, %i.hc
  %10 = add i64 %i.qp, %9
  %i.qq = add i64 %10, %umin
  %i.qr = sub i64 %i.qq, %.sink
  %i.qs = add i64 %umin, %invariant.op
  %umax14 = tail call i64 @llvm.umax.i64(i64 %i.qr, i64 %i.qs)
  %i.qt = add i64 %umin, %i.hc
  %11 = sub i64 %umax14, %i.qt
  %12 = add i64 %11, -9                           ; 2 uses
  %i.qu = lshr i64 %12, 3
  %i.qv = add nuw nsw i64 %i.qu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  br i1 %min.iters.check, label %.preheader97.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader97.preheader
  %i.qw = sub i64 %.sroa.0.0, %i.hc
  %i.qx = add i64 %i.qw, %.068.i10311
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.qx)
  %i.qy = add i64 %umax, %i.hc
  %i.qz = sub i64 %.112, %i.qy
  %diff.check = icmp ugt i64 %i.qz, -32
  br i1 %diff.check, label %.preheader97.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qv, 4611686018427387900     ; 3 uses
  %i.ra = shl i64 %n.vec, 3                       ; 2 uses
  %i.rb = getelementptr i8, ptr %i.qi, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.qh, i64 %i.ra
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qi, i64 %i.rd ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.qh, i64 %i.rd ; 2 uses
  %i.re = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 1
  %wide.load16 = load <2 x i64>, ptr %i.re, align 1
  %i.rf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load16, ptr %i.rf, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rg = icmp eq i64 %index.next, %n.vec
  br i1 %i.rg, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qv, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %.preheader97.preheader19

.preheader97.preheader19:                         ; preds = %vector.memcheck, %.preheader97.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.qi, %vector.memcheck ], [ %i.qi, %.preheader97.preheader ], [ %i.rb, %middle.block ]
  %.0.i106.i.ph = phi ptr [ %i.qh, %vector.memcheck ], [ %i.qh, %.preheader97.preheader ], [ %i.rc, %middle.block ]
  br label %.preheader97

.preheader97:                                     ; preds = %.preheader97.preheader19, %.preheader97
  %.029.i.i = phi ptr [ %i.rh, %.preheader97 ], [ %.029.i.i.ph, %.preheader97.preheader19 ] ; 2 uses
  %.0.i106.i = phi ptr [ %i.ri, %.preheader97 ], [ %.0.i106.i.ph, %.preheader97.preheader19 ] ; 2 uses
  %.0.i106.i.val = load i64, ptr %.0.i106.i, align 1
  store i64 %.0.i106.i.val, ptr %.029.i.i, align 1
  %i.rh = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0.i106.i, i64 8
  %i.rj = icmp ult ptr %i.rh, %i.qn
  br i1 %i.rj, label %.preheader97, label %ZSTD_execSequence.exit.i, !llvm.loop !239

bb.bt:                                            ; preds = %bb.bs
  %.val12 = load <2 x i64>, ptr %i.qh, align 1, !tbaa !11
  store <2 x i64> %.val12, ptr %i.qi, align 1, !tbaa !11
  %i.rk = icmp slt i64 %i.pd, 25
  br i1 %i.rk, label %ZSTD_execSequence.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rl = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i103.i = phi ptr [ %i.rl, %bb.bu ], [ %i.ro, %bb.bv ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.qh, %bb.bu ], [ %i.rn, %bb.bv ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %.1.i105.i.val = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !11
  store <2 x i64> %.1.i105.i.val, ptr %.130.i103.i, align 1, !tbaa !11
  %i.rm = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.rn, align 1, !tbaa !11
  store <2 x i64> %.val11, ptr %i.rm, align 1, !tbaa !11
  %i.ro = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.rp = icmp ult ptr %i.ro, %i.qn
  br i1 %i.rp, label %bb.bv, label %ZSTD_execSequence.exit.i, !llvm.loop !100

ZSTD_execSequence.exit.i:                         ; preds = %bb.bv, %.preheader97, %bb.bo, %middle.block, %bb.bt, %bb.bm, %ZSTD_overlapCopy8.exit.i, %bb.bj, %bb.bd
  %.0.i.i = phi i64 [ %i.oj, %bb.bd ], [ %i.oa, %middle.block ], [ %i.oa, %bb.bj ], [ %i.oa, %ZSTD_overlapCopy8.exit.i ], [ %i.oa, %bb.bm ], [ %i.oa, %bb.bt ], [ %i.oa, %bb.bo ], [ %i.oa, %.preheader97 ], [ %i.oa, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rq = icmp ult i64 %.0.i.i, -119
  br i1 %i.rq, label %bb.bw, label %.thread84

bb.bw:                                            ; preds = %ZSTD_execSequence.exit.i
  %i.rr = getelementptr inbounds nuw i8, ptr %.068.i103, i64 %.0.i.i ; 2 uses
  %i.rs = add nsw i32 %.063.i105, -1              ; 2 uses
  %.not77.i = icmp eq i32 %i.rs, 0
  br i1 %.not77.i, label %bb.bx, label %bb.af, !llvm.loop !162

bb.bx:                                            ; preds = %bb.bw
  %i.rt = icmp eq ptr %i.nt, %3
  %.not96 = icmp eq i32 %i.nu, 64
  %or.cond = select i1 %i.rt, i1 %.not96, i1 false
  br i1 %or.cond, label %.preheader, label %.thread84

.preheader:                                       ; preds = %bb.bx
  %i.ru = trunc i64 %.sink to i32
  store i32 %i.ru, ptr %i.u, align 4, !tbaa !5
  %i.rv = trunc i64 %.sink160 to i32
  store i32 %i.rv, ptr %i.y, align 8, !tbaa !5
  %i.rw = trunc i64 %i.kc to i32
  store i32 %i.rw, ptr %i.ac, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.by

.thread84:                                        ; preds = %ZSTD_execSequence.exit.i, %bb.o, %bb.g, %bb.e, %BIT_initDStream.exit, %ZSTD_execSequence.exit.i.thread, %bb.bx
  %.2.i.ph = phi i64 [ -20, %bb.e ], [ -20, %ZSTD_execSequence.exit.i.thread ], [ -20, %BIT_initDStream.exit ], [ -20, %bb.bx ], [ -20, %bb.g ], [ -20, %bb.o ], [ %.0.i.i, %ZSTD_execSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %ZSTD_decompressSequences_body.exit

bb.by:                                            ; preds = %.preheader, %bb.d
  %i.rx = phi ptr [ %.pre, %.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %.371.i = phi ptr [ %i.rr, %.preheader ], [ %1, %bb.d ] ; 4 uses
  %i.ry = ptrtoint ptr %i.m to i64
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz                    ; 3 uses
  %i.sb = ptrtoint ptr %i.h to i64
  %i.sc = ptrtoint ptr %.371.i to i64
  %i.sd = sub i64 %i.sb, %i.sc
  %.not81.i = icmp ugt i64 %i.sa, %i.sd
  br i1 %.not81.i, label %ZSTD_decompressSequences_body.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not80.i = icmp eq ptr %.371.i, null
  br i1 %.not80.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i, ptr align 1 %i.rx, i64 %i.sa, i1 false)
  %i.se = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.sa
  %i.sf = ptrtoint ptr %i.se to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.573.i.ph = phi i64 [ 0, %bb.bz ], [ %i.sf, %bb.ca ]
  %i.sg = ptrtoint ptr %1 to i64
  %i.sh = sub i64 %.573.i.ph, %i.sg
  br label %ZSTD_decompressSequences_body.exit

ZSTD_decompressSequences_body.exit:               ; preds = %bb.by, %.thread84, %bb.cb
  %.5.i = phi i64 [ %i.sh, %bb.cb ], [ %.2.i.ph, %.thread84 ], [ -70, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.5.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!7, !7, i64 0}
end_hunk_8
