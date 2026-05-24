inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@ZSTD_decompressSequencesLong:bb.a

vec.epilog.middle.block105:                       ; preds = %vec.epilog.vector.body99
  %cmp.n106 = icmp eq i64 %i.yb, %n.vec98
  br i1 %cmp.n106, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check92, %vec.epilog.iter.check94, %vec.epilog.middle.block105
  %.237.i.i.ph = phi ptr [ %.149.i.i, %iter.check92 ], [ %i.yd, %vec.epilog.iter.check94 ], [ %i.yi, %vec.epilog.middle.block105 ]
  %.23136.i.i.ph = phi ptr [ %.13048.i.i, %iter.check92 ], [ %i.ye, %vec.epilog.iter.check94 ], [ %i.yj, %vec.epilog.middle.block105 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.237.i.i = phi ptr [ %i.yn, %.lr.ph.i.i ], [ %.237.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23136.i.i = phi ptr [ %i.yl, %.lr.ph.i.i ], [ %.23136.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.23136.i.i, i64 1
  %i.ym = load i8, ptr %.23136.i.i, align 1, !tbaa !11
  %i.yn = getelementptr inbounds nuw i8, ptr %.237.i.i, i64 1 ; 2 uses
  store i8 %i.ym, ptr %.237.i.i, align 1, !tbaa !11
  %exitcond.not.i.i = icmp eq ptr %i.yn, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i, !llvm.loop !103

ZSTD_safecopyDstBeforeSrc.exit.i:                 ; preds = %.lr.ph.i.i, %.lr.ph40.i.i, %middle.block87, %vec.epilog.middle.block105, %middle.block55, %vec.epilog.middle.block, %.preheader.i.i
  %i.yo = load i64, ptr %i.we, align 8, !tbaa !94
  %i.yp = sub i64 %i.yo, %i.wl                    ; 2 uses
  store i64 %i.yp, ptr %i.we, align 8, !tbaa !94
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ce, %ZSTD_safecopyDstBeforeSrc.exit.i
  %.sroa.0.0.copyload = phi i64 [ %i.yp, %ZSTD_safecopyDstBeforeSrc.exit.i ], [ %i.wf, %bb.ce ] ; 7 uses
  %.1208.i.i = phi ptr [ %i.wq, %ZSTD_safecopyDstBeforeSrc.exit.i ], [ %.0207.i587.i, %bb.ce ] ; 8 uses
  %.1208.i.i32 = ptrtoaddr ptr %.1208.i.i to i64
  store ptr %i.hv, ptr %i.a, align 8, !tbaa !38
  store i32 0, ptr %i.d, align 8, !tbaa !35
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 16 ; 2 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 11 uses
  %i.yq = getelementptr i8, ptr %.1208.i.i, i64 %.sroa.0.0.copyload ; 7 uses
  %i.yr = add i64 %.sroa.6.0.copyload, %.sroa.0.0.copyload ; 9 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.0.0.copyload
  %i.yt = sub i64 0, %.sroa.11.0.copyload
  %i.yu = getelementptr inbounds i8, ptr %i.yq, i64 %i.yt ; 2 uses
  %i.yv = icmp ugt i64 %.sroa.0.0.copyload, 65536
  %i.yw = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 %i.yr
  %i.yx = icmp ugt ptr %i.yw, %i.hs
  %or.cond.i.i = select i1 %i.yv, i1 true, i1 %i.yx, !prof !104
  br i1 %or.cond.i.i, label %bb.cl, label %.critedge.i.i, !prof !104

.critedge.i.i:                                    ; preds = %thread-pre-split
  %i.yy = load <2 x i64>, ptr %i.hv, align 1, !tbaa !11
  store <2 x i64> %i.yy, ptr %.1208.i.i, align 1, !tbaa !11
  %i.yz = icmp samesign ugt i64 %.sroa.0.0.copyload, 16
  br i1 %i.yz, label %bb.cm, label %ZSTD_wildcopy.exit178.i, !prof !52

bb.cl:                                            ; preds = %thread-pre-split
  %i.za = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.1208.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.we, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hw, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequence.exit.i

bb.cm:                                            ; preds = %.critedge.i.i
  %i.zb = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 16
  %i.zc = load <2 x i64>, ptr %i.hx, align 1, !tbaa !11
  store <2 x i64> %i.zc, ptr %i.zb, align 1, !tbaa !11
  %i.zd = icmp samesign ult i64 %.sroa.0.0.copyload, 33
  br i1 %i.zd, label %ZSTD_wildcopy.exit178.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ze = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 32
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.130.i173.i = phi ptr [ %i.ze, %bb.cn ], [ %i.zj, %bb.co ] ; 3 uses
  %.pn.i174.i = phi ptr [ %i.hx, %bb.cn ], [ %i.zh, %bb.co ] ; 2 uses
  %.1.i175.i = getelementptr inbounds nuw i8, ptr %.pn.i174.i, i64 16
  %i.zf = load <2 x i64>, ptr %.1.i175.i, align 1, !tbaa !11
  store <2 x i64> %i.zf, ptr %.130.i173.i, align 1, !tbaa !11
  %i.zg = getelementptr inbounds nuw i8, ptr %.130.i173.i, i64 16
  %i.zh = getelementptr inbounds nuw i8, ptr %.pn.i174.i, i64 32 ; 2 uses
  %i.zi = load <2 x i64>, ptr %i.zh, align 1, !tbaa !11
  store <2 x i64> %i.zi, ptr %i.zg, align 1, !tbaa !11
  %i.zj = getelementptr inbounds nuw i8, ptr %.130.i173.i, i64 32 ; 2 uses
  %i.zk = icmp ult ptr %i.zj, %i.yq
  br i1 %i.zk, label %bb.co, label %ZSTD_wildcopy.exit178.i, !llvm.loop !100

ZSTD_wildcopy.exit178.i:                          ; preds = %bb.co, %bb.cm, %.critedge.i.i
  store ptr %i.ys, ptr %i.a, align 8, !tbaa !38
  %i.zl = ptrtoint ptr %i.yq to i64               ; 2 uses
  %i.zm = sub i64 %i.zl, %i.aj                    ; 3 uses
  %i.zn = icmp ugt i64 %.sroa.11.0.copyload, %i.zm
  br i1 %i.zn, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %ZSTD_wildcopy.exit178.i
  %i.zo = sub i64 %i.zl, %i.ht
  %i.zp = icmp ugt i64 %.sroa.11.0.copyload, %i.zo
  br i1 %i.zp, label %.thread508.i, label %bb.cq, !prof !52

bb.cq:                                            ; preds = %bb.cp
  %i.zq = ptrtoint ptr %i.yu to i64
  %i.zr = sub i64 %i.zq, %i.aj                    ; 3 uses
  %i.zs = getelementptr inbounds i8, ptr %i.t, i64 %i.zr ; 2 uses
  %i.zt = add i64 %i.zr, %.sroa.6.0.copyload      ; 2 uses
  %.not.i16.i = icmp sgt i64 %i.zt, 0
  br i1 %.not.i16.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yq, ptr align 1 %i.zs, i64 %.sroa.6.0.copyload, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.cs:                                            ; preds = %bb.cq
  %gepdiff.i.i = sub nsw i64 0, %i.zr             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yq, ptr align 1 %i.zs, i64 %gepdiff.i.i, i1 false)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yq, i64 %gepdiff.i.i
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %ZSTD_wildcopy.exit178.i
  %.sroa.6.0 = phi i64 [ %i.zt, %bb.cs ], [ %.sroa.6.0.copyload, %ZSTD_wildcopy.exit178.i ] ; 5 uses
  %.0448.i = phi ptr [ %i.p, %bb.cs ], [ %i.yu, %ZSTD_wildcopy.exit178.i ] ; 9 uses
  %.0447.i = phi ptr [ %i.zu, %bb.cs ], [ %i.yq, %ZSTD_wildcopy.exit178.i ] ; 12 uses
  %i.zv = icmp ugt i64 %.sroa.11.0.copyload, 15
  br i1 %i.zv, label %bb.cu, label %bb.cx, !prof !89

bb.cu:                                            ; preds = %bb.ct
  %i.zw = getelementptr inbounds i8, ptr %.0447.i, i64 %.sroa.6.0
  %i.zx = load <2 x i64>, ptr %.0448.i, align 1, !tbaa !11
  store <2 x i64> %i.zx, ptr %.0447.i, align 1, !tbaa !11
  %i.zy = icmp slt i64 %.sroa.6.0, 17
  br i1 %i.zy, label %ZSTD_execSequence.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zz = getelementptr inbounds nuw i8, ptr %.0447.i, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.130.i180.i = phi ptr [ %i.zz, %bb.cv ], [ %i.aae, %bb.cw ] ; 3 uses
  %.pn.i181.i = phi ptr [ %.0448.i, %bb.cv ], [ %i.aac, %bb.cw ] ; 2 uses
  %.1.i182.i = getelementptr inbounds nuw i8, ptr %.pn.i181.i, i64 16
  %i.aaa = load <2 x i64>, ptr %.1.i182.i, align 1, !tbaa !11
  store <2 x i64> %i.aaa, ptr %.130.i180.i, align 1, !tbaa !11
  %i.aab = getelementptr inbounds nuw i8, ptr %.130.i180.i, i64 16
  %i.aac = getelementptr inbounds nuw i8, ptr %.pn.i181.i, i64 32 ; 2 uses
  %i.aad = load <2 x i64>, ptr %i.aac, align 1, !tbaa !11
  store <2 x i64> %i.aad, ptr %i.aab, align 1, !tbaa !11
  %i.aae = getelementptr inbounds nuw i8, ptr %.130.i180.i, i64 32 ; 2 uses
  %i.aaf = icmp ult ptr %i.aae, %i.zw
  br i1 %i.aaf, label %bb.cw, label %ZSTD_execSequence.exit.i, !llvm.loop !100

bb.cx:                                            ; preds = %bb.ct
  %i.aag = icmp samesign ult i64 %.sroa.11.0.copyload, 8
  br i1 %i.aag, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.11.0.copyload
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !5
  %i.aaj = load i8, ptr %.0448.i, align 1, !tbaa !11
  store i8 %i.aaj, ptr %.0447.i, align 1, !tbaa !11
  %i.aak = getelementptr inbounds nuw i8, ptr %.0448.i, i64 1
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !11
  %i.aam = getelementptr inbounds nuw i8, ptr %.0447.i, i64 1
  store i8 %i.aal, ptr %i.aam, align 1, !tbaa !11
  %i.aan = getelementptr inbounds nuw i8, ptr %.0448.i, i64 2
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !11
  %i.aap = getelementptr inbounds nuw i8, ptr %.0447.i, i64 2
  store i8 %i.aao, ptr %i.aap, align 1, !tbaa !11
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0448.i, i64 3
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !11
  %i.aas = getelementptr inbounds nuw i8, ptr %.0447.i, i64 3
  store i8 %i.aar, ptr %i.aas, align 1, !tbaa !11
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.11.0.copyload
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !5
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0448.i, i64 %i.aav ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.0447.i, i64 4
  %i.aay = load i32, ptr %i.aaw, align 1
  store i32 %i.aay, ptr %i.aax, align 1
  %i.aaz = sext i32 %i.aai to i64
  %i.aba = sub nsw i64 0, %i.aaz
  %i.abb = getelementptr inbounds i8, ptr %i.aaw, i64 %i.aba
  br label %ZSTD_overlapCopy8.exit197.i

bb.cz:                                            ; preds = %bb.cx
  %i.abc = load i64, ptr %.0448.i, align 1
  store i64 %i.abc, ptr %.0447.i, align 1
  br label %ZSTD_overlapCopy8.exit197.i

ZSTD_overlapCopy8.exit197.i:                      ; preds = %bb.cz, %bb.cy
  %.1449.i = phi ptr [ %i.abb, %bb.cy ], [ %.0448.i, %bb.cz ] ; 2 uses
  %.1449.i33 = ptrtoaddr ptr %.1449.i to i64
  %i.abd = getelementptr inbounds nuw i8, ptr %.1449.i, i64 8 ; 7 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.0447.i, i64 8 ; 6 uses
  %i.abf = icmp ugt i64 %.sroa.6.0, 8
  br i1 %i.abf, label %bb.da, label %ZSTD_execSequence.exit.i

bb.da:                                            ; preds = %ZSTD_overlapCopy8.exit197.i
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = ptrtoint ptr %i.abd to i64
  %i.abi = sub i64 %i.abg, %i.abh
  %i.abj = getelementptr i8, ptr %.0447.i, i64 %.sroa.6.0 ; 2 uses
  %i.abk = icmp slt i64 %i.abi, 16
  br i1 %i.abk, label %.preheader539.i.preheader, label %bb.db

.preheader539.i.preheader:                        ; preds = %bb.da
  %i.abl = add i64 %.sroa.6.0.copyload, %i.aj
  %i.abm = add i64 %.sroa.11.0.copyload, %i.zm
  %umax34 = tail call i64 @llvm.umax.i64(i64 %.sroa.11.0.copyload, i64 %i.zm) ; 2 uses
  %i.abn = add i64 %i.abl, %i.abm
  %i.abo = sub i64 %i.abn, %.sroa.11.0.copyload
  %i.abp = add i64 %i.hz, %umax34
  %umax35 = tail call i64 @llvm.umax.i64(i64 %i.abo, i64 %i.abp)
  %i.abq = add i64 %umax35, -9
  %i.abr = add i64 %umax34, %i.aj
  %i.abs = sub i64 %i.abq, %i.abr                 ; 2 uses
  %i.abt = lshr i64 %i.abs, 3
  %i.abu = add nuw nsw i64 %i.abt, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.abs, 72
  br i1 %min.iters.check, label %.preheader539.i.preheader326, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader539.i.preheader
  %i.abv = sub i64 %.sroa.0.0.copyload, %i.aj
  %i.abw = add i64 %i.abv, %.1208.i.i32
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.11.0.copyload, i64 %i.abw)
  %i.abx = add i64 %umax, %i.aj
  %i.aby = sub i64 %i.abx, %.1449.i33
  %diff.check = icmp ult i64 %i.aby, 32
  br i1 %diff.check, label %.preheader539.i.preheader326, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abu, 4611686018427387900    ; 3 uses
  %i.abz = shl i64 %n.vec, 3                      ; 2 uses
  %i.aca = getelementptr i8, ptr %i.abe, i64 %i.abz
  %i.acb = getelementptr i8, ptr %i.abd, i64 %i.abz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.acc = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.abe, i64 %i.acc ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.abd, i64 %i.acc ; 2 uses
  %i.acd = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 1
  %wide.load37 = load <2 x i64>, ptr %i.acd, align 1
  %i.ace = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load37, ptr %i.ace, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.acf = icmp eq i64 %index.next, %n.vec
  br i1 %i.acf, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abu, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %.preheader539.i.preheader326

.preheader539.i.preheader326:                     ; preds = %vector.memcheck, %.preheader539.i.preheader, %middle.block
  %.029.i190.i.ph = phi ptr [ %i.abe, %vector.memcheck ], [ %i.abe, %.preheader539.i.preheader ], [ %i.aca, %middle.block ]
  %.0.i191.i.ph = phi ptr [ %i.abd, %vector.memcheck ], [ %i.abd, %.preheader539.i.preheader ], [ %i.acb, %middle.block ]
  br label %.preheader539.i

.preheader539.i:                                  ; preds = %.preheader539.i.preheader326, %.preheader539.i
  %.029.i190.i = phi ptr [ %i.ach, %.preheader539.i ], [ %.029.i190.i.ph, %.preheader539.i.preheader326 ] ; 2 uses
  %.0.i191.i = phi ptr [ %i.aci, %.preheader539.i ], [ %.0.i191.i.ph, %.preheader539.i.preheader326 ] ; 2 uses
  %i.acg = load i64, ptr %.0.i191.i, align 1
  store i64 %i.acg, ptr %.029.i190.i, align 1
  %i.ach = getelementptr inbounds nuw i8, ptr %.029.i190.i, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.0.i191.i, i64 8
  %i.acj = icmp ult ptr %i.ach, %i.abj
  br i1 %i.acj, label %.preheader539.i, label %ZSTD_execSequence.exit.i, !llvm.loop !106

bb.db:                                            ; preds = %bb.da
  %i.ack = load <2 x i64>, ptr %i.abd, align 1, !tbaa !11
  store <2 x i64> %i.ack, ptr %i.abe, align 1, !tbaa !11
  %i.acl = icmp slt i64 %.sroa.6.0, 25
  br i1 %i.acl, label %ZSTD_execSequence.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.acm = getelementptr inbounds nuw i8, ptr %.0447.i, i64 24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %bb.dc
  %.130.i187.i = phi ptr [ %i.acm, %bb.dc ], [ %i.acr, %bb.dd ] ; 3 uses
  %.pn.i188.i = phi ptr [ %i.abd, %bb.dc ], [ %i.acp, %bb.dd ] ; 2 uses
  %.1.i189.i = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 16
  %i.acn = load <2 x i64>, ptr %.1.i189.i, align 1, !tbaa !11
  store <2 x i64> %i.acn, ptr %.130.i187.i, align 1, !tbaa !11
  %i.aco = getelementptr inbounds nuw i8, ptr %.130.i187.i, i64 16
  %i.acp = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 32 ; 2 uses
  %i.acq = load <2 x i64>, ptr %i.acp, align 1, !tbaa !11
  store <2 x i64> %i.acq, ptr %i.aco, align 1, !tbaa !11
  %i.acr = getelementptr inbounds nuw i8, ptr %.130.i187.i, i64 32 ; 2 uses
  %i.acs = icmp ult ptr %i.acr, %i.abj
  br i1 %i.acs, label %bb.dd, label %ZSTD_execSequence.exit.i, !llvm.loop !100

ZSTD_execSequence.exit.i:                         ; preds = %bb.dd, %.preheader539.i, %bb.cw, %middle.block, %bb.db, %ZSTD_overlapCopy8.exit197.i, %bb.cu, %bb.cr, %bb.cl
  %.0.i15.i = phi i64 [ %i.za, %bb.cl ], [ %i.yr, %bb.cw ], [ %i.yr, %bb.cr ], [ %i.yr, %ZSTD_overlapCopy8.exit197.i ], [ %i.yr, %bb.db ], [ %i.yr, %bb.cu ], [ %i.yr, %middle.block ], [ %i.yr, %.preheader539.i ], [ %i.yr, %bb.dd ] ; 3 uses
  %i.act = icmp ult i64 %.0.i15.i, -119
  br i1 %i.act, label %bb.de, label %.thread508.i

bb.de:                                            ; preds = %ZSTD_execSequence.exit.i
  %i.acu = add i64 %.sroa.0.0.i, %.1242.i584.i    ; 3 uses
  %i.acv = icmp ugt i64 %.sink767.i, %i.acu
  %i.acw = select i1 %i.acv, ptr %i.t, ptr %i.p
  %i.acx = getelementptr inbounds i8, ptr %i.acw, i64 %i.acu
  %i.acy = sub i64 0, %.sink767.i
  %i.acz = getelementptr inbounds i8, ptr %i.acx, i64 %i.acy ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.acz, i32 0, i32 3, i32 1)
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ada, i32 0, i32 3, i32 1)
  store i64 %.sroa.0.0.i, ptr %i.we, align 8, !tbaa !45
  store i64 %.sroa.9.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !45
  store i64 %.sink767.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !45
  %i.adb = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 %.0.i15.i
  br label %bb.et

bb.df:                                            ; preds = %bb.cd
  %i.adc = getelementptr inbounds i8, ptr %i.wg, i64 -32 ; 2 uses
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %.sroa.544.0.copyload = load i64, ptr %.sroa.544.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1048.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %.sroa.1048.0.copyload = load i64, ptr %.sroa.1048.0..sroa_idx, align 8 ; 11 uses
  %i.add = getelementptr i8, ptr %.0207.i587.i, i64 %i.wf ; 7 uses
  %i.ade = add i64 %.sroa.544.0.copyload, %i.wf   ; 9 uses
  %i.adf = sub i64 0, %.sroa.1048.0.copyload
  %i.adg = getelementptr inbounds i8, ptr %i.add, i64 %i.adf ; 2 uses
  %i.adh = icmp ugt ptr %i.wg, %.0226.i586.i
  %i.adi = getelementptr inbounds nuw i8, ptr %.0207.i587.i, i64 %i.ade
  %i.adj = icmp ugt ptr %i.adi, %i.adc
  %or.cond.i35.i = select i1 %i.adh, i1 true, i1 %i.adj, !prof !104
  br i1 %or.cond.i35.i, label %bb.dg, label %.critedge.i36.i, !prof !104

.critedge.i36.i:                                  ; preds = %bb.df
  %i.adk = load <2 x i64>, ptr %i.wb, align 1, !tbaa !11
  store <2 x i64> %i.adk, ptr %.0207.i587.i, align 1, !tbaa !11
  %i.adl = icmp ugt i64 %i.wf, 16
  br i1 %i.adl, label %bb.dh, label %ZSTD_wildcopy.exit94.i, !prof !52

bb.dg:                                            ; preds = %bb.df
  %i.adm = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.0207.i587.i, ptr noundef %i.j, ptr noundef nonnull %i.adc, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.we, ptr noundef nonnull %i.a, ptr noundef %.0226.i586.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.dh:                                            ; preds = %.critedge.i36.i
  %i.adn = getelementptr inbounds nuw i8, ptr %.0207.i587.i, i64 16
  %i.ado = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %i.adp = add i64 %i.wf, -16
  %i.adq = load <2 x i64>, ptr %i.ado, align 1, !tbaa !11
  store <2 x i64> %i.adq, ptr %i.adn, align 1, !tbaa !11
  %i.adr = icmp slt i64 %i.adp, 17
  br i1 %i.adr, label %ZSTD_wildcopy.exit94.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ads = getelementptr inbounds nuw i8, ptr %.0207.i587.i, i64 32
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %bb.di
  %.130.i89.i = phi ptr [ %i.ads, %bb.di ], [ %i.adx, %bb.dj ] ; 3 uses
  %.pn.i90.i = phi ptr [ %i.ado, %bb.di ], [ %i.adv, %bb.dj ] ; 2 uses
  %.1.i91.i = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 16
  %i.adt = load <2 x i64>, ptr %.1.i91.i, align 1, !tbaa !11
  store <2 x i64> %i.adt, ptr %.130.i89.i, align 1, !tbaa !11
  %i.adu = getelementptr inbounds nuw i8, ptr %.130.i89.i, i64 16
  %i.adv = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 32 ; 2 uses
  %i.adw = load <2 x i64>, ptr %i.adv, align 1, !tbaa !11
  store <2 x i64> %i.adw, ptr %i.adu, align 1, !tbaa !11
  %i.adx = getelementptr inbounds nuw i8, ptr %.130.i89.i, i64 32 ; 2 uses
  %i.ady = icmp ult ptr %i.adx, %i.add
  br i1 %i.ady, label %bb.dj, label %ZSTD_wildcopy.exit94.i, !llvm.loop !100

ZSTD_wildcopy.exit94.i:                           ; preds = %bb.dj, %bb.dh, %.critedge.i36.i
  store ptr %i.wg, ptr %i.a, align 8, !tbaa !38
  %i.adz = ptrtoint ptr %i.add to i64             ; 2 uses
  %i.aea = sub i64 %i.adz, %i.aj                  ; 3 uses
  %i.aeb = icmp ugt i64 %.sroa.1048.0.copyload, %i.aea
  br i1 %i.aeb, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %ZSTD_wildcopy.exit94.i
  %i.aec = sub i64 %i.adz, %i.ht
  %i.aed = icmp ugt i64 %.sroa.1048.0.copyload, %i.aec
  br i1 %i.aed, label %.thread508.i, label %bb.dl, !prof !52

bb.dl:                                            ; preds = %bb.dk
  %i.aee = ptrtoint ptr %i.adg to i64
  %i.aef = sub i64 %i.aee, %i.aj                  ; 3 uses
  %i.aeg = getelementptr inbounds i8, ptr %i.t, i64 %i.aef ; 2 uses
  %i.aeh = add i64 %i.aef, %.sroa.544.0.copyload  ; 2 uses
  %.not.i38.i = icmp sgt i64 %i.aeh, 0
  br i1 %.not.i38.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.add, ptr align 1 %i.aeg, i64 %.sroa.544.0.copyload, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.dn:                                            ; preds = %bb.dl
  %gepdiff.i39.i = sub nsw i64 0, %i.aef          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.add, ptr align 1 %i.aeg, i64 %gepdiff.i39.i, i1 false)
  %i.aei = getelementptr inbounds nuw i8, ptr %i.add, i64 %gepdiff.i39.i
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %ZSTD_wildcopy.exit94.i
  %.sroa.544.0 = phi i64 [ %i.aeh, %bb.dn ], [ %.sroa.544.0.copyload, %ZSTD_wildcopy.exit94.i ] ; 5 uses
  %.0436.i = phi ptr [ %i.p, %bb.dn ], [ %i.adg, %ZSTD_wildcopy.exit94.i ] ; 9 uses
  %.0435.i = phi ptr [ %i.aei, %bb.dn ], [ %i.add, %ZSTD_wildcopy.exit94.i ] ; 12 uses
  %i.aej = icmp ugt i64 %.sroa.1048.0.copyload, 15
  br i1 %i.aej, label %bb.dp, label %bb.ds, !prof !89

bb.dp:                                            ; preds = %bb.do
  %i.aek = getelementptr inbounds i8, ptr %.0435.i, i64 %.sroa.544.0
  %i.ael = load <2 x i64>, ptr %.0436.i, align 1, !tbaa !11
  store <2 x i64> %i.ael, ptr %.0435.i, align 1, !tbaa !11
  %i.aem = icmp slt i64 %.sroa.544.0, 17
  br i1 %i.aem, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aen = getelementptr inbounds nuw i8, ptr %.0435.i, i64 16
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %bb.dq
  %.130.i96.i = phi ptr [ %i.aen, %bb.dq ], [ %i.aes, %bb.dr ] ; 3 uses
  %.pn.i97.i = phi ptr [ %.0436.i, %bb.dq ], [ %i.aeq, %bb.dr ] ; 2 uses
  %.1.i98.i = getelementptr inbounds nuw i8, ptr %.pn.i97.i, i64 16
  %i.aeo = load <2 x i64>, ptr %.1.i98.i, align 1, !tbaa !11
  store <2 x i64> %i.aeo, ptr %.130.i96.i, align 1, !tbaa !11
  %i.aep = getelementptr inbounds nuw i8, ptr %.130.i96.i, i64 16
  %i.aeq = getelementptr inbounds nuw i8, ptr %.pn.i97.i, i64 32 ; 2 uses
  %i.aer = load <2 x i64>, ptr %i.aeq, align 1, !tbaa !11
  store <2 x i64> %i.aer, ptr %i.aep, align 1, !tbaa !11
  %i.aes = getelementptr inbounds nuw i8, ptr %.130.i96.i, i64 32 ; 2 uses
  %i.aet = icmp ult ptr %i.aes, %i.aek
  br i1 %i.aet, label %bb.dr, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

bb.ds:                                            ; preds = %bb.do
  %i.aeu = icmp samesign ult i64 %.sroa.1048.0.copyload, 8
  br i1 %i.aeu, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1048.0.copyload
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !5
  %i.aex = load i8, ptr %.0436.i, align 1, !tbaa !11
  store i8 %i.aex, ptr %.0435.i, align 1, !tbaa !11
  %i.aey = getelementptr inbounds nuw i8, ptr %.0436.i, i64 1
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !11
  %i.afa = getelementptr inbounds nuw i8, ptr %.0435.i, i64 1
  store i8 %i.aez, ptr %i.afa, align 1, !tbaa !11
  %i.afb = getelementptr inbounds nuw i8, ptr %.0436.i, i64 2
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !11
  %i.afd = getelementptr inbounds nuw i8, ptr %.0435.i, i64 2
  store i8 %i.afc, ptr %i.afd, align 1, !tbaa !11
  %i.afe = getelementptr inbounds nuw i8, ptr %.0436.i, i64 3
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !11
  %i.afg = getelementptr inbounds nuw i8, ptr %.0435.i, i64 3
  store i8 %i.aff, ptr %i.afg, align 1, !tbaa !11
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1048.0.copyload
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !5
  %i.afj = zext i32 %i.afi to i64
  %i.afk = getelementptr inbounds nuw i8, ptr %.0436.i, i64 %i.afj ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.0435.i, i64 4
  %i.afm = load i32, ptr %i.afk, align 1
  store i32 %i.afm, ptr %i.afl, align 1
  %i.afn = sext i32 %i.aew to i64
  %i.afo = sub nsw i64 0, %i.afn
  %i.afp = getelementptr inbounds i8, ptr %i.afk, i64 %i.afo
  br label %ZSTD_overlapCopy8.exit193.i

bb.du:                                            ; preds = %bb.ds
  %i.afq = load i64, ptr %.0436.i, align 1
  store i64 %i.afq, ptr %.0435.i, align 1
  br label %ZSTD_overlapCopy8.exit193.i

ZSTD_overlapCopy8.exit193.i:                      ; preds = %bb.du, %bb.dt
  %.1437.i = phi ptr [ %i.afp, %bb.dt ], [ %.0436.i, %bb.du ] ; 2 uses
  %.1437.i112 = ptrtoaddr ptr %.1437.i to i64
  %i.afr = getelementptr inbounds nuw i8, ptr %.1437.i, i64 8 ; 7 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.0435.i, i64 8 ; 6 uses
  %i.aft = icmp ugt i64 %.sroa.544.0, 8
  br i1 %i.aft, label %bb.dv, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.dv:                                            ; preds = %ZSTD_overlapCopy8.exit193.i
  %i.afu = ptrtoint ptr %i.afs to i64
  %i.afv = ptrtoint ptr %i.afr to i64
  %i.afw = sub i64 %i.afu, %i.afv
  %i.afx = getelementptr i8, ptr %.0435.i, i64 %.sroa.544.0 ; 2 uses
  %i.afy = icmp slt i64 %i.afw, 16
  br i1 %i.afy, label %.preheader543.i.preheader, label %bb.dw

.preheader543.i.preheader:                        ; preds = %bb.dv
  %i.afz = add i64 %.sroa.544.0.copyload, %i.aj
  %i.aga = add i64 %.sroa.1048.0.copyload, %i.aea
  %umax115 = tail call i64 @llvm.umax.i64(i64 %.sroa.1048.0.copyload, i64 %i.aea) ; 2 uses
  %i.agb = add i64 %i.afz, %i.aga
  %i.agc = sub i64 %i.agb, %.sroa.1048.0.copyload
  %i.agd = add i64 %i.ia, %umax115
  %umax116 = tail call i64 @llvm.umax.i64(i64 %i.agc, i64 %i.agd)
  %i.age = add i64 %umax116, -9
  %i.agf = add i64 %umax115, %i.aj
  %i.agg = sub i64 %i.age, %i.agf                 ; 2 uses
  %i.agh = lshr i64 %i.agg, 3
  %i.agi = add nuw nsw i64 %i.agh, 1              ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.agg, 72
  br i1 %min.iters.check118, label %.preheader543.i.preheader330, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.preheader543.i.preheader
  %i.agj = sub i64 %i.wf, %i.aj
  %i.agk = add i64 %i.agj, %.0207.i587.i110
  %umax111 = tail call i64 @llvm.umax.i64(i64 %.sroa.1048.0.copyload, i64 %i.agk)
  %i.agl = add i64 %umax111, %i.aj
  %i.agm = sub i64 %i.agl, %.1437.i112
  %diff.check113 = icmp ult i64 %i.agm, 32
  br i1 %diff.check113, label %.preheader543.i.preheader330, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck109
  %n.vec121 = and i64 %i.agi, 4611686018427387900 ; 3 uses
  %i.agn = shl i64 %n.vec121, 3                   ; 2 uses
  %i.ago = getelementptr i8, ptr %i.afs, i64 %i.agn
  %i.agp = getelementptr i8, ptr %i.afr, i64 %i.agn
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
  %index123 = phi i64 [ 0, %vector.ph119 ], [ %index.next128, %vector.body122 ] ; 2 uses
  %i.agq = shl i64 %index123, 3                   ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.afs, i64 %i.agq ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.afr, i64 %i.agq ; 2 uses
  %i.agr = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load126 = load <2 x i64>, ptr %next.gep125, align 1
  %wide.load127 = load <2 x i64>, ptr %i.agr, align 1
  %i.ags = getelementptr i8, ptr %next.gep124, i64 16
  store <2 x i64> %wide.load126, ptr %next.gep124, align 1
  store <2 x i64> %wide.load127, ptr %i.ags, align 1
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.agt = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.agt, label %middle.block129, label %vector.body122, !llvm.loop !107

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %i.agi, %n.vec121
  br i1 %cmp.n130, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %.preheader543.i.preheader330

.preheader543.i.preheader330:                     ; preds = %vector.memcheck109, %.preheader543.i.preheader, %middle.block129
  %.029.i106.i.ph = phi ptr [ %i.afs, %vector.memcheck109 ], [ %i.afs, %.preheader543.i.preheader ], [ %i.ago, %middle.block129 ]
  %.0.i107.i.ph = phi ptr [ %i.afr, %vector.memcheck109 ], [ %i.afr, %.preheader543.i.preheader ], [ %i.agp, %middle.block129 ]
  br label %.preheader543.i

.preheader543.i:                                  ; preds = %.preheader543.i.preheader330, %.preheader543.i
  %.029.i106.i = phi ptr [ %i.agv, %.preheader543.i ], [ %.029.i106.i.ph, %.preheader543.i.preheader330 ] ; 2 uses
  %.0.i107.i = phi ptr [ %i.agw, %.preheader543.i ], [ %.0.i107.i.ph, %.preheader543.i.preheader330 ] ; 2 uses
  %i.agu = load i64, ptr %.0.i107.i, align 1
  store i64 %i.agu, ptr %.029.i106.i, align 1
  %i.agv = getelementptr inbounds nuw i8, ptr %.029.i106.i, i64 8 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.0.i107.i, i64 8
  %i.agx = icmp ult ptr %i.agv, %i.afx
  br i1 %i.agx, label %.preheader543.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !108

bb.dw:                                            ; preds = %bb.dv
  %i.agy = load <2 x i64>, ptr %i.afr, align 1, !tbaa !11
  store <2 x i64> %i.agy, ptr %i.afs, align 1, !tbaa !11
  %i.agz = icmp slt i64 %.sroa.544.0, 25
  br i1 %i.agz, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aha = getelementptr inbounds nuw i8, ptr %.0435.i, i64 24
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %bb.dx
  %.130.i103.i = phi ptr [ %i.aha, %bb.dx ], [ %i.ahf, %bb.dy ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.afr, %bb.dx ], [ %i.ahd, %bb.dy ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %i.ahb = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !11
  store <2 x i64> %i.ahb, ptr %.130.i103.i, align 1, !tbaa !11
  %i.ahc = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %i.ahe = load <2 x i64>, ptr %i.ahd, align 1, !tbaa !11
  store <2 x i64> %i.ahe, ptr %i.ahc, align 1, !tbaa !11
  %i.ahf = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.ahg = icmp ult ptr %i.ahf, %i.afx
  br i1 %i.ahg, label %bb.dy, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

bb.dz:                                            ; preds = %ZSTD_decodeSequence.exit14.i
  %i.ahh = and i32 %.1239.i585.i, 7
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.ahi ; 4 uses
  %.sroa.020.0.copyload = load i64, ptr %i.ahj, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 11 uses
  %i.ahk = getelementptr i8, ptr %.0207.i587.i, i64 %.sroa.020.0.copyload ; 7 uses
  %i.ahl = add i64 %.sroa.5.0.copyload, %.sroa.020.0.copyload ; 9 uses
  %i.ahm = load ptr, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %.sroa.020.0.copyload ; 2 uses
  %i.aho = sub i64 0, %.sroa.10.0.copyload
  %i.ahp = getelementptr inbounds i8, ptr %i.ahk, i64 %i.aho ; 2 uses
  %i.ahq = icmp ugt ptr %i.ahn, %.0226.i586.i
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0207.i587.i, i64 %i.ahl
  %i.ahs = icmp ugt ptr %i.ahr, %i.hs
  %or.cond.i17.i = select i1 %i.ahq, i1 true, i1 %i.ahs, !prof !104
  br i1 %or.cond.i17.i, label %bb.ea, label %.critedge.i18.i, !prof !104

.critedge.i18.i:                                  ; preds = %bb.dz
  %i.aht = load <2 x i64>, ptr %i.ahm, align 1, !tbaa !11
  store <2 x i64> %i.aht, ptr %.0207.i587.i, align 1, !tbaa !11
  %i.ahu = icmp ugt i64 %.sroa.020.0.copyload, 16
  br i1 %i.ahu, label %bb.eb, label %ZSTD_wildcopy.exit157.i, !prof !52

bb.ea:                                            ; preds = %bb.dz
  %i.ahv = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.0207.i587.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.ahj, ptr noundef nonnull %i.a, ptr noundef %.0226.i586.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.eb:                                            ; preds = %.critedge.i18.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0207.i587.i, i64 16
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16 ; 2 uses
  %i.ahy = add i64 %.sroa.020.0.copyload, -16
  %i.ahz = load <2 x i64>, ptr %i.ahx, align 1, !tbaa !11
  store <2 x i64> %i.ahz, ptr %i.ahw, align 1, !tbaa !11
  %i.aia = icmp slt i64 %i.ahy, 17
  br i1 %i.aia, label %ZSTD_wildcopy.exit157.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aib = getelementptr inbounds nuw i8, ptr %.0207.i587.i, i64 32
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %bb.ec
  %.130.i152.i = phi ptr [ %i.aib, %bb.ec ], [ %i.aig, %bb.ed ] ; 3 uses
  %.pn.i153.i = phi ptr [ %i.ahx, %bb.ec ], [ %i.aie, %bb.ed ] ; 2 uses
  %.1.i154.i = getelementptr inbounds nuw i8, ptr %.pn.i153.i, i64 16
  %i.aic = load <2 x i64>, ptr %.1.i154.i, align 1, !tbaa !11
  store <2 x i64> %i.aic, ptr %.130.i152.i, align 1, !tbaa !11
  %i.aid = getelementptr inbounds nuw i8, ptr %.130.i152.i, i64 16
  %i.aie = getelementptr inbounds nuw i8, ptr %.pn.i153.i, i64 32 ; 2 uses
  %i.aif = load <2 x i64>, ptr %i.aie, align 1, !tbaa !11
  store <2 x i64> %i.aif, ptr %i.aid, align 1, !tbaa !11
  %i.aig = getelementptr inbounds nuw i8, ptr %.130.i152.i, i64 32 ; 2 uses
  %i.aih = icmp ult ptr %i.aig, %i.ahk
  br i1 %i.aih, label %bb.ed, label %ZSTD_wildcopy.exit157.i, !llvm.loop !100

ZSTD_wildcopy.exit157.i:                          ; preds = %bb.ed, %bb.eb, %.critedge.i18.i
  store ptr %i.ahn, ptr %i.a, align 8, !tbaa !38
  %i.aii = ptrtoint ptr %i.ahk to i64             ; 2 uses
  %i.aij = sub i64 %i.aii, %i.aj                  ; 3 uses
  %i.aik = icmp ugt i64 %.sroa.10.0.copyload, %i.aij
  br i1 %i.aik, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %ZSTD_wildcopy.exit157.i
  %i.ail = sub i64 %i.aii, %i.ht
  %i.aim = icmp ugt i64 %.sroa.10.0.copyload, %i.ail
  br i1 %i.aim, label %.thread508.i, label %bb.ef, !prof !52

bb.ef:                                            ; preds = %bb.ee
  %i.ain = ptrtoint ptr %i.ahp to i64
  %i.aio = sub i64 %i.ain, %i.aj                  ; 3 uses
  %i.aip = getelementptr inbounds i8, ptr %i.t, i64 %i.aio ; 2 uses
  %i.aiq = add i64 %i.aio, %.sroa.5.0.copyload    ; 2 uses
  %.not.i20.i = icmp sgt i64 %i.aiq, 0
  br i1 %.not.i20.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ahk, ptr align 1 %i.aip, i64 %.sroa.5.0.copyload, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.eh:                                            ; preds = %bb.ef
  %gepdiff.i21.i = sub nsw i64 0, %i.aio          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ahk, ptr align 1 %i.aip, i64 %gepdiff.i21.i, i1 false)
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %gepdiff.i21.i
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %ZSTD_wildcopy.exit157.i
  %.sroa.5.0 = phi i64 [ %i.aiq, %bb.eh ], [ %.sroa.5.0.copyload, %ZSTD_wildcopy.exit157.i ] ; 5 uses
  %.0445.i = phi ptr [ %i.p, %bb.eh ], [ %i.ahp, %ZSTD_wildcopy.exit157.i ] ; 9 uses
  %.0444.i = phi ptr [ %i.air, %bb.eh ], [ %i.ahk, %ZSTD_wildcopy.exit157.i ] ; 12 uses
  %i.ais = icmp ugt i64 %.sroa.10.0.copyload, 15
  br i1 %i.ais, label %bb.ej, label %bb.em, !prof !89

bb.ej:                                            ; preds = %bb.ei
  %i.ait = getelementptr inbounds i8, ptr %.0444.i, i64 %.sroa.5.0
  %i.aiu = load <2 x i64>, ptr %.0445.i, align 1, !tbaa !11
  store <2 x i64> %i.aiu, ptr %.0444.i, align 1, !tbaa !11
  %i.aiv = icmp slt i64 %.sroa.5.0, 17
  br i1 %i.aiv, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0444.i, i64 16
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.130.i159.i = phi ptr [ %i.aiw, %bb.ek ], [ %i.ajb, %bb.el ] ; 3 uses
  %.pn.i160.i = phi ptr [ %.0445.i, %bb.ek ], [ %i.aiz, %bb.el ] ; 2 uses
  %.1.i161.i = getelementptr inbounds nuw i8, ptr %.pn.i160.i, i64 16
  %i.aix = load <2 x i64>, ptr %.1.i161.i, align 1, !tbaa !11
  store <2 x i64> %i.aix, ptr %.130.i159.i, align 1, !tbaa !11
  %i.aiy = getelementptr inbounds nuw i8, ptr %.130.i159.i, i64 16
  %i.aiz = getelementptr inbounds nuw i8, ptr %.pn.i160.i, i64 32 ; 2 uses
  %i.aja = load <2 x i64>, ptr %i.aiz, align 1, !tbaa !11
  store <2 x i64> %i.aja, ptr %i.aiy, align 1, !tbaa !11
  %i.ajb = getelementptr inbounds nuw i8, ptr %.130.i159.i, i64 32 ; 2 uses
  %i.ajc = icmp ult ptr %i.ajb, %i.ait
  br i1 %i.ajc, label %bb.el, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

bb.em:                                            ; preds = %bb.ei
  %i.ajd = icmp samesign ult i64 %.sroa.10.0.copyload, 8
  br i1 %i.ajd, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.10.0.copyload
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !5
  %i.ajg = load i8, ptr %.0445.i, align 1, !tbaa !11
  store i8 %i.ajg, ptr %.0444.i, align 1, !tbaa !11
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0445.i, i64 1
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !11
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0444.i, i64 1
  store i8 %i.aji, ptr %i.ajj, align 1, !tbaa !11
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0445.i, i64 2
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !11
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0444.i, i64 2
  store i8 %i.ajl, ptr %i.ajm, align 1, !tbaa !11
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0445.i, i64 3
  %i.ajo = load i8, ptr %i.ajn, align 1, !tbaa !11
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0444.i, i64 3
  store i8 %i.ajo, ptr %i.ajp, align 1, !tbaa !11
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.10.0.copyload
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !5
  %i.ajs = zext i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0445.i, i64 %i.ajs ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.0444.i, i64 4
  %i.ajv = load i32, ptr %i.ajt, align 1
  store i32 %i.ajv, ptr %i.aju, align 1
  %i.ajw = sext i32 %i.ajf to i64
  %i.ajx = sub nsw i64 0, %i.ajw
  %i.ajy = getelementptr inbounds i8, ptr %i.ajt, i64 %i.ajx
  br label %ZSTD_overlapCopy8.exit196.i

bb.eo:                                            ; preds = %bb.em
  %i.ajz = load i64, ptr %.0445.i, align 1
  store i64 %i.ajz, ptr %.0444.i, align 1
  br label %ZSTD_overlapCopy8.exit196.i

ZSTD_overlapCopy8.exit196.i:                      ; preds = %bb.eo, %bb.en
  %.1446.i = phi ptr [ %i.ajy, %bb.en ], [ %.0445.i, %bb.eo ] ; 2 uses
  %.1446.i135 = ptrtoaddr ptr %.1446.i to i64
  %i.aka = getelementptr inbounds nuw i8, ptr %.1446.i, i64 8 ; 7 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.0444.i, i64 8 ; 6 uses
  %i.akc = icmp ugt i64 %.sroa.5.0, 8
  br i1 %i.akc, label %bb.ep, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.ep:                                            ; preds = %ZSTD_overlapCopy8.exit196.i
  %i.akd = ptrtoint ptr %i.akb to i64
  %i.ake = ptrtoint ptr %i.aka to i64
  %i.akf = sub i64 %i.akd, %i.ake
  %i.akg = getelementptr i8, ptr %.0444.i, i64 %.sroa.5.0 ; 2 uses
  %i.akh = icmp slt i64 %i.akf, 16
  br i1 %i.akh, label %.preheader546.i.preheader, label %bb.eq

.preheader546.i.preheader:                        ; preds = %bb.ep
  %i.aki = add i64 %.sroa.5.0.copyload, %i.aj
  %i.akj = add i64 %.sroa.10.0.copyload, %i.aij
  %umax138 = tail call i64 @llvm.umax.i64(i64 %.sroa.10.0.copyload, i64 %i.aij) ; 2 uses
  %i.akk = add i64 %i.aki, %i.akj
  %i.akl = sub i64 %i.akk, %.sroa.10.0.copyload
  %i.akm = add i64 %i.ib, %umax138
  %umax139 = tail call i64 @llvm.umax.i64(i64 %i.akl, i64 %i.akm)
  %i.akn = add i64 %umax139, -9
  %i.ako = add i64 %umax138, %i.aj
  %i.akp = sub i64 %i.akn, %i.ako                 ; 2 uses
  %i.akq = lshr i64 %i.akp, 3
  %i.akr = add nuw nsw i64 %i.akq, 1              ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.akp, 72
  br i1 %min.iters.check141, label %.preheader546.i.preheader334, label %vector.memcheck133

vector.memcheck133:                               ; preds = %.preheader546.i.preheader
  %i.aks = sub i64 %.sroa.020.0.copyload, %i.aj
  %i.akt = add i64 %i.aks, %.0207.i587.i110
  %umax134 = tail call i64 @llvm.umax.i64(i64 %.sroa.10.0.copyload, i64 %i.akt)
  %i.aku = add i64 %umax134, %i.aj
  %i.akv = sub i64 %i.aku, %.1446.i135
  %diff.check136 = icmp ult i64 %i.akv, 32
  br i1 %diff.check136, label %.preheader546.i.preheader334, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck133
  %n.vec144 = and i64 %i.akr, 4611686018427387900 ; 3 uses
  %i.akw = shl i64 %n.vec144, 3                   ; 2 uses
  %i.akx = getelementptr i8, ptr %i.akb, i64 %i.akw
  %i.aky = getelementptr i8, ptr %i.aka, i64 %i.akw
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.akz = shl i64 %index146, 3                   ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.akb, i64 %i.akz ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.aka, i64 %i.akz ; 2 uses
  %i.ala = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load149 = load <2 x i64>, ptr %next.gep148, align 1
  %wide.load150 = load <2 x i64>, ptr %i.ala, align 1
  %i.alb = getelementptr i8, ptr %next.gep147, i64 16
  store <2 x i64> %wide.load149, ptr %next.gep147, align 1
  store <2 x i64> %wide.load150, ptr %i.alb, align 1
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.alc = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.alc, label %middle.block152, label %vector.body145, !llvm.loop !109

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.akr, %n.vec144
  br i1 %cmp.n153, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %.preheader546.i.preheader334

.preheader546.i.preheader334:                     ; preds = %vector.memcheck133, %.preheader546.i.preheader, %middle.block152
  %.029.i169.i.ph = phi ptr [ %i.akb, %vector.memcheck133 ], [ %i.akb, %.preheader546.i.preheader ], [ %i.akx, %middle.block152 ]
  %.0.i170.i.ph = phi ptr [ %i.aka, %vector.memcheck133 ], [ %i.aka, %.preheader546.i.preheader ], [ %i.aky, %middle.block152 ]
  br label %.preheader546.i

.preheader546.i:                                  ; preds = %.preheader546.i.preheader334, %.preheader546.i
  %.029.i169.i = phi ptr [ %i.ale, %.preheader546.i ], [ %.029.i169.i.ph, %.preheader546.i.preheader334 ] ; 2 uses
  %.0.i170.i = phi ptr [ %i.alf, %.preheader546.i ], [ %.0.i170.i.ph, %.preheader546.i.preheader334 ] ; 2 uses
  %i.ald = load i64, ptr %.0.i170.i, align 1
  store i64 %i.ald, ptr %.029.i169.i, align 1
  %i.ale = getelementptr inbounds nuw i8, ptr %.029.i169.i, i64 8 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.0.i170.i, i64 8
  %i.alg = icmp ult ptr %i.ale, %i.akg
  br i1 %i.alg, label %.preheader546.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !110

bb.eq:                                            ; preds = %bb.ep
  %i.alh = load <2 x i64>, ptr %i.aka, align 1, !tbaa !11
  store <2 x i64> %i.alh, ptr %i.akb, align 1, !tbaa !11
  %i.ali = icmp slt i64 %.sroa.5.0, 25
  br i1 %i.ali, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.alj = getelementptr inbounds nuw i8, ptr %.0444.i, i64 24
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %bb.er
  %.130.i166.i = phi ptr [ %i.alj, %bb.er ], [ %i.alo, %bb.es ] ; 3 uses
  %.pn.i167.i = phi ptr [ %i.aka, %bb.er ], [ %i.alm, %bb.es ] ; 2 uses
  %.1.i168.i = getelementptr inbounds nuw i8, ptr %.pn.i167.i, i64 16
  %i.alk = load <2 x i64>, ptr %.1.i168.i, align 1, !tbaa !11
  store <2 x i64> %i.alk, ptr %.130.i166.i, align 1, !tbaa !11
  %i.all = getelementptr inbounds nuw i8, ptr %.130.i166.i, i64 16
  %i.alm = getelementptr inbounds nuw i8, ptr %.pn.i167.i, i64 32 ; 2 uses
  %i.aln = load <2 x i64>, ptr %i.alm, align 1, !tbaa !11
  store <2 x i64> %i.aln, ptr %i.all, align 1, !tbaa !11
  %i.alo = getelementptr inbounds nuw i8, ptr %.130.i166.i, i64 32 ; 2 uses
  %i.alp = icmp ult ptr %i.alo, %i.akg
  br i1 %i.alp, label %bb.es, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

ZSTD_execSequenceSplitLitBuffer.exit.i:           ; preds = %bb.es, %.preheader546.i, %bb.el, %bb.dy, %.preheader543.i, %bb.dr, %middle.block152, %middle.block129, %bb.ea, %bb.eg, %bb.ej, %ZSTD_overlapCopy8.exit196.i, %bb.eq, %bb.dg, %bb.dm, %bb.dp, %ZSTD_overlapCopy8.exit193.i, %bb.dw
  %i.alq = phi i64 [ %i.ahl, %middle.block152 ], [ %i.adm, %bb.dg ], [ %i.ahl, %bb.eq ], [ %i.ade, %bb.dm ], [ %i.ade, %ZSTD_overlapCopy8.exit193.i ], [ %i.ade, %middle.block129 ], [ %i.ade, %bb.dp ], [ %i.ade, %.preheader543.i ], [ %i.ade, %bb.dw ], [ %i.ahv, %bb.ea ], [ %i.ade, %bb.dr ], [ %i.ahl, %bb.eg ], [ %i.ahl, %ZSTD_overlapCopy8.exit196.i ], [ %i.ahl, %bb.el ], [ %i.ahl, %bb.ej ], [ %i.ahl, %.preheader546.i ], [ %i.ade, %bb.dy ], [ %i.ahl, %bb.es ] ; 3 uses
  %i.alr = icmp ult i64 %i.alq, -119
  br i1 %i.alr, label %.thread471.i, label %.thread508.i

.thread471.i:                                     ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i
  %i.als = add i64 %.sroa.0.0.i, %.1242.i584.i    ; 3 uses
  %i.alt = icmp ugt i64 %.sink767.i, %i.als
  %i.alu = select i1 %i.alt, ptr %i.t, ptr %i.p
  %i.alv = getelementptr inbounds i8, ptr %i.alu, i64 %i.als
  %i.alw = sub i64 0, %.sink767.i
  %i.alx = getelementptr inbounds i8, ptr %i.alv, i64 %i.alw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.alx, i32 0, i32 3, i32 1)
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aly, i32 0, i32 3, i32 1)
  %i.alz = and i32 %.1239.i585.i, 7
  %i.ama = zext nneg i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.ama ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.amb, align 8, !tbaa !45
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !45
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  store i64 %.sink767.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !45
  %i.amc = getelementptr inbounds nuw i8, ptr %.0207.i587.i, i64 %i.alq
  br label %bb.et

bb.et:                                            ; preds = %.thread471.i, %bb.de
  %.pn.i = phi i64 [ %i.als, %.thread471.i ], [ %i.acu, %bb.de ]
  %.3229.i.ph.i = phi ptr [ %.0226.i586.i, %.thread471.i ], [ %i.hw, %bb.de ] ; 2 uses
  %.6213.i.ph.i = phi ptr [ %i.amc, %.thread471.i ], [ %i.adb, %bb.de ] ; 2 uses
  %.6247.i.ph.i = add i64 %.pn.i, %.sroa.9.0.i
  %i.amd = add nuw i32 %.1239.i585.i, 1           ; 2 uses
  %exitcond628.not.i = icmp eq i32 %i.amd, %5
  br i1 %exitcond628.not.i, label %._crit_edge.i, label %bb.bf, !llvm.loop !111

._crit_edge.i:                                    ; preds = %bb.et, %.preheader549.i
  %i.ame = phi i32 [ %i.hi, %.preheader549.i ], [ %i.vu, %bb.et ]
  %i.amf = phi ptr [ %i.hj, %.preheader549.i ], [ %i.vt, %bb.et ]
  %i.amg = phi i64 [ %i.hk, %.preheader549.i ], [ %i.sc, %bb.et ]
  %i.amh = phi i64 [ %i.hl, %.preheader549.i ], [ %.sink768.i, %bb.et ]
  %i.ami = phi i64 [ %i.hm, %.preheader549.i ], [ %.sink767.i, %bb.et ]
  %.1239.i.lcssa.i = phi i32 [ %.0238.i.lcssa.i, %.preheader549.i ], [ %5, %bb.et ]
  %.0226.i.lcssa.i = phi ptr [ %i.n, %.preheader549.i ], [ %.3229.i.ph.i, %bb.et ] ; 2 uses
  %.0207.i.lcssa.i = phi ptr [ %1, %.preheader549.i ], [ %.6213.i.ph.i, %bb.et ] ; 2 uses
  %i.amj = icmp eq ptr %i.amf, %3
  %.not.i = icmp eq i32 %i.ame, 64
  %or.cond.i = select i1 %i.amj, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.eu, label %.thread508.i

bb.eu:                                            ; preds = %._crit_edge.i
  %i.amk = sub nsw i32 %.1239.i.lcssa.i, %i.ah    ; 2 uses
  %i.aml = icmp slt i32 %i.amk, %5
  br i1 %i.aml, label %.lr.ph603.i, label %.preheader.i

.lr.ph603.i:                                      ; preds = %bb.eu
  %i.amm = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 2 uses
  %i.amn = ptrtoint ptr %i.r to i64               ; 3 uses
  %i.amo = ptrtoint ptr %i.j to i64
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %i.ams = add i64 %i.aj, 16
  %i.amt = add i64 %i.aj, 16
  %i.amu = add i64 %i.aj, 16
  br label %bb.ev

.preheader.i:                                     ; preds = %bb.hl, %bb.eu
  %.4230.i.lcssa.i = phi ptr [ %.0226.i.lcssa.i, %bb.eu ], [ %.6232.i.i, %bb.hl ]
  %.7214.i.lcssa.i = phi ptr [ %.0207.i.lcssa.i, %bb.eu ], [ %.12219.i.i, %bb.hl ]
  %i.amv = trunc i64 %i.ami to i32
  store i32 %i.amv, ptr %i.v, align 4, !tbaa !5
  %i.amw = trunc i64 %i.amh to i32
  store i32 %i.amw, ptr %i.z, align 4, !tbaa !5
  %i.amx = trunc i64 %i.amg to i32
  store i32 %i.amx, ptr %i.ad, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.pre639.i = load i32, ptr %i.d, align 8, !tbaa !35
  %.pre640.pre.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.hm

bb.ev:                                            ; preds = %bb.hl, %.lr.ph603.i
  %.7214.i598.i = phi ptr [ %.0207.i.lcssa.i, %.lr.ph603.i ], [ %.12219.i.i, %bb.hl ] ; 26 uses
  %.4230.i596.i = phi ptr [ %.0226.i.lcssa.i, %.lr.ph603.i ], [ %.6232.i.i, %bb.hl ] ; 5 uses
  %.2240.i595.i = phi i32 [ %i.amk, %.lr.ph603.i ], [ %i.bci, %bb.hl ] ; 2 uses
  %.7214.i598.i260 = ptrtoaddr ptr %.7214.i598.i to i64 ; 2 uses
  %i.amy = and i32 %.2240.i595.i, 7
  %i.amz = zext nneg i32 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.amz ; 13 uses
  %i.anb = load i32, ptr %i.d, align 8, !tbaa !35
  %i.anc = icmp eq i32 %i.anb, 2
  br i1 %i.anc, label %bb.ew, label %bb.gr

bb.ew:                                            ; preds = %bb.ev
  %i.and = load ptr, ptr %i.a, align 8, !tbaa !38 ; 14 uses
  %i.ane = load i64, ptr %i.ana, align 8, !tbaa !94 ; 7 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.ane ; 4 uses
  %i.ang = load ptr, ptr %i.m, align 8, !tbaa !34 ; 3 uses
  %i.anh = icmp ugt ptr %i.anf, %i.ang
  br i1 %i.anh, label %bb.ex, label %bb.fx

bb.ex:                                            ; preds = %bb.ew
  %i.ani = ptrtoint ptr %i.ang to i64             ; 2 uses
  %i.anj = ptrtoint ptr %i.and to i64             ; 4 uses
  %i.ank = sub i64 %i.ani, %i.anj                 ; 9 uses
  %.not270.i.i = icmp eq ptr %i.ang, %i.and
  br i1 %.not270.i.i, label %thread-pre-split58, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.anl = ptrtoint ptr %.7214.i598.i to i64      ; 8 uses
  %i.anm = sub i64 %i.amo, %i.anl
  %i.ann = icmp ugt i64 %i.ank, %i.anm
  br i1 %i.ann, label %.thread508.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
end_hunk_0
begin_hunk_1_@ZSTD_decompressSequencesLong:bb.a

vec.epilog.middle.block255:                       ; preds = %vec.epilog.vector.body249
  %cmp.n256 = icmp eq i64 %i.apa, %n.vec248
  br i1 %cmp.n256, label %ZSTD_safecopyDstBeforeSrc.exit258.i, label %.lr.ph.i245.i.preheader

.lr.ph.i245.i.preheader:                          ; preds = %iter.check242, %vec.epilog.iter.check244, %vec.epilog.middle.block255
  %.237.i246.i.ph = phi ptr [ %.149.i241.i, %iter.check242 ], [ %i.apc, %vec.epilog.iter.check244 ], [ %i.aph, %vec.epilog.middle.block255 ]
  %.23136.i247.i.ph = phi ptr [ %.13048.i242.i, %iter.check242 ], [ %i.apd, %vec.epilog.iter.check244 ], [ %i.api, %vec.epilog.middle.block255 ]
  br label %.lr.ph.i245.i

.lr.ph.i245.i:                                    ; preds = %.lr.ph.i245.i.preheader, %.lr.ph.i245.i
  %.237.i246.i = phi ptr [ %i.apm, %.lr.ph.i245.i ], [ %.237.i246.i.ph, %.lr.ph.i245.i.preheader ] ; 2 uses
  %.23136.i247.i = phi ptr [ %i.apk, %.lr.ph.i245.i ], [ %.23136.i247.i.ph, %.lr.ph.i245.i.preheader ] ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.23136.i247.i, i64 1
  %i.apl = load i8, ptr %.23136.i247.i, align 1, !tbaa !11
  %i.apm = getelementptr inbounds nuw i8, ptr %.237.i246.i, i64 1 ; 2 uses
  store i8 %i.apl, ptr %.237.i246.i, align 1, !tbaa !11
  %exitcond.not.i248.i = icmp eq ptr %i.apm, %scevgep.i244.i
  br i1 %exitcond.not.i248.i, label %ZSTD_safecopyDstBeforeSrc.exit258.i, label %.lr.ph.i245.i, !llvm.loop !117

ZSTD_safecopyDstBeforeSrc.exit258.i:              ; preds = %.lr.ph.i245.i, %.lr.ph40.i255.i, %middle.block237, %vec.epilog.middle.block255, %middle.block197, %vec.epilog.middle.block215, %.preheader.i254.i
  %i.apn = load i64, ptr %i.ana, align 8, !tbaa !94
  %i.apo = sub i64 %i.apn, %i.ank                 ; 2 uses
  store i64 %i.apo, ptr %i.ana, align 8, !tbaa !94
  br label %thread-pre-split58

thread-pre-split58:                               ; preds = %bb.ex, %ZSTD_safecopyDstBeforeSrc.exit258.i
  %.sroa.026.0.copyload = phi i64 [ %i.apo, %ZSTD_safecopyDstBeforeSrc.exit258.i ], [ %i.ane, %bb.ex ] ; 7 uses
  %.8215.i.i = phi ptr [ %i.anp, %ZSTD_safecopyDstBeforeSrc.exit258.i ], [ %.7214.i598.i, %bb.ex ] ; 8 uses
  %.8215.i.i157 = ptrtoaddr ptr %.8215.i.i to i64
  store ptr %i.amp, ptr %i.a, align 8, !tbaa !38
  store i32 0, ptr %i.d, align 8, !tbaa !35
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %.sroa.628.0.copyload = load i64, ptr %.sroa.628.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %.sroa.1132.0.copyload = load i64, ptr %.sroa.1132.0..sroa_idx, align 8 ; 11 uses
  %i.app = getelementptr i8, ptr %.8215.i.i, i64 %.sroa.026.0.copyload ; 7 uses
  %i.apq = add i64 %.sroa.628.0.copyload, %.sroa.026.0.copyload ; 9 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.amp, i64 %.sroa.026.0.copyload
  %i.aps = sub i64 0, %.sroa.1132.0.copyload
  %i.apt = getelementptr inbounds i8, ptr %i.app, i64 %i.aps ; 2 uses
  %i.apu = icmp ugt i64 %.sroa.026.0.copyload, 65536
  %i.apv = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 %i.apq
  %i.apw = icmp ugt ptr %i.apv, %i.amm
  %or.cond.i23.i = select i1 %i.apu, i1 true, i1 %i.apw, !prof !104
  br i1 %or.cond.i23.i, label %bb.fe, label %.critedge.i24.i, !prof !104

.critedge.i24.i:                                  ; preds = %thread-pre-split58
  %i.apx = load <2 x i64>, ptr %i.amp, align 1, !tbaa !11
  store <2 x i64> %i.apx, ptr %.8215.i.i, align 1, !tbaa !11
  %i.apy = icmp samesign ugt i64 %.sroa.026.0.copyload, 16
  br i1 %i.apy, label %bb.ff, label %ZSTD_wildcopy.exit136.i, !prof !52

bb.fe:                                            ; preds = %thread-pre-split58
  %i.apz = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.8215.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.ana, ptr noundef nonnull %i.a, ptr noundef nonnull %i.amq, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %.loopexit.i

bb.ff:                                            ; preds = %.critedge.i24.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 16
  %i.aqb = load <2 x i64>, ptr %i.amr, align 1, !tbaa !11
  store <2 x i64> %i.aqb, ptr %i.aqa, align 1, !tbaa !11
  %i.aqc = icmp samesign ult i64 %.sroa.026.0.copyload, 33
  br i1 %i.aqc, label %ZSTD_wildcopy.exit136.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aqd = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 32
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fh, %bb.fg
  %.130.i131.i = phi ptr [ %i.aqd, %bb.fg ], [ %i.aqi, %bb.fh ] ; 3 uses
  %.pn.i132.i = phi ptr [ %i.amr, %bb.fg ], [ %i.aqg, %bb.fh ] ; 2 uses
  %.1.i133.i = getelementptr inbounds nuw i8, ptr %.pn.i132.i, i64 16
  %i.aqe = load <2 x i64>, ptr %.1.i133.i, align 1, !tbaa !11
  store <2 x i64> %i.aqe, ptr %.130.i131.i, align 1, !tbaa !11
  %i.aqf = getelementptr inbounds nuw i8, ptr %.130.i131.i, i64 16
  %i.aqg = getelementptr inbounds nuw i8, ptr %.pn.i132.i, i64 32 ; 2 uses
  %i.aqh = load <2 x i64>, ptr %i.aqg, align 1, !tbaa !11
  store <2 x i64> %i.aqh, ptr %i.aqf, align 1, !tbaa !11
  %i.aqi = getelementptr inbounds nuw i8, ptr %.130.i131.i, i64 32 ; 2 uses
  %i.aqj = icmp ult ptr %i.aqi, %i.app
  br i1 %i.aqj, label %bb.fh, label %ZSTD_wildcopy.exit136.i, !llvm.loop !100

ZSTD_wildcopy.exit136.i:                          ; preds = %bb.fh, %bb.ff, %.critedge.i24.i
  store ptr %i.apr, ptr %i.a, align 8, !tbaa !38
  %i.aqk = ptrtoint ptr %i.app to i64             ; 2 uses
  %i.aql = sub i64 %i.aqk, %i.aj                  ; 3 uses
  %i.aqm = icmp ugt i64 %.sroa.1132.0.copyload, %i.aql
  br i1 %i.aqm, label %bb.fi, label %bb.fm

bb.fi:                                            ; preds = %ZSTD_wildcopy.exit136.i
  %i.aqn = sub i64 %i.aqk, %i.amn
  %i.aqo = icmp ugt i64 %.sroa.1132.0.copyload, %i.aqn
  br i1 %i.aqo, label %.thread508.i, label %bb.fj, !prof !52

bb.fj:                                            ; preds = %bb.fi
  %i.aqp = ptrtoint ptr %i.apt to i64
  %i.aqq = sub i64 %i.aqp, %i.aj                  ; 3 uses
  %i.aqr = getelementptr inbounds i8, ptr %i.t, i64 %i.aqq ; 2 uses
  %i.aqs = add i64 %i.aqq, %.sroa.628.0.copyload  ; 2 uses
  %.not.i26.i = icmp sgt i64 %i.aqs, 0
  br i1 %.not.i26.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.app, ptr align 1 %i.aqr, i64 %.sroa.628.0.copyload, i1 false)
  br label %.loopexit.i

bb.fl:                                            ; preds = %bb.fj
  %gepdiff.i27.i = sub nsw i64 0, %i.aqq          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.app, ptr align 1 %i.aqr, i64 %gepdiff.i27.i, i1 false)
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.app, i64 %gepdiff.i27.i
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %ZSTD_wildcopy.exit136.i
  %.sroa.628.0 = phi i64 [ %i.aqs, %bb.fl ], [ %.sroa.628.0.copyload, %ZSTD_wildcopy.exit136.i ] ; 5 uses
  %.0442.i = phi ptr [ %i.p, %bb.fl ], [ %i.apt, %ZSTD_wildcopy.exit136.i ] ; 9 uses
  %.0441.i = phi ptr [ %i.aqt, %bb.fl ], [ %i.app, %ZSTD_wildcopy.exit136.i ] ; 12 uses
  %i.aqu = icmp ugt i64 %.sroa.1132.0.copyload, 15
  br i1 %i.aqu, label %bb.fn, label %bb.fq, !prof !89

bb.fn:                                            ; preds = %bb.fm
  %i.aqv = getelementptr inbounds i8, ptr %.0441.i, i64 %.sroa.628.0
  %i.aqw = load <2 x i64>, ptr %.0442.i, align 1, !tbaa !11
  store <2 x i64> %i.aqw, ptr %.0441.i, align 1, !tbaa !11
  %i.aqx = icmp slt i64 %.sroa.628.0, 17
  br i1 %i.aqx, label %.loopexit.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aqy = getelementptr inbounds nuw i8, ptr %.0441.i, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %bb.fo
  %.130.i138.i = phi ptr [ %i.aqy, %bb.fo ], [ %i.ard, %bb.fp ] ; 3 uses
  %.pn.i139.i = phi ptr [ %.0442.i, %bb.fo ], [ %i.arb, %bb.fp ] ; 2 uses
  %.1.i140.i = getelementptr inbounds nuw i8, ptr %.pn.i139.i, i64 16
  %i.aqz = load <2 x i64>, ptr %.1.i140.i, align 1, !tbaa !11
  store <2 x i64> %i.aqz, ptr %.130.i138.i, align 1, !tbaa !11
  %i.ara = getelementptr inbounds nuw i8, ptr %.130.i138.i, i64 16
  %i.arb = getelementptr inbounds nuw i8, ptr %.pn.i139.i, i64 32 ; 2 uses
  %i.arc = load <2 x i64>, ptr %i.arb, align 1, !tbaa !11
  store <2 x i64> %i.arc, ptr %i.ara, align 1, !tbaa !11
  %i.ard = getelementptr inbounds nuw i8, ptr %.130.i138.i, i64 32 ; 2 uses
  %i.are = icmp ult ptr %i.ard, %i.aqv
  br i1 %i.are, label %bb.fp, label %.loopexit.i, !llvm.loop !100

bb.fq:                                            ; preds = %bb.fm
  %i.arf = icmp samesign ult i64 %.sroa.1132.0.copyload, 8
  br i1 %i.arf, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1132.0.copyload
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !5
  %i.ari = load i8, ptr %.0442.i, align 1, !tbaa !11
  store i8 %i.ari, ptr %.0441.i, align 1, !tbaa !11
  %i.arj = getelementptr inbounds nuw i8, ptr %.0442.i, i64 1
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !11
  %i.arl = getelementptr inbounds nuw i8, ptr %.0441.i, i64 1
  store i8 %i.ark, ptr %i.arl, align 1, !tbaa !11
  %i.arm = getelementptr inbounds nuw i8, ptr %.0442.i, i64 2
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !11
  %i.aro = getelementptr inbounds nuw i8, ptr %.0441.i, i64 2
  store i8 %i.arn, ptr %i.aro, align 1, !tbaa !11
  %i.arp = getelementptr inbounds nuw i8, ptr %.0442.i, i64 3
  %i.arq = load i8, ptr %i.arp, align 1, !tbaa !11
  %i.arr = getelementptr inbounds nuw i8, ptr %.0441.i, i64 3
  store i8 %i.arq, ptr %i.arr, align 1, !tbaa !11
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1132.0.copyload
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !5
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr %.0442.i, i64 %i.aru ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.0441.i, i64 4
  %i.arx = load i32, ptr %i.arv, align 1
  store i32 %i.arx, ptr %i.arw, align 1
  %i.ary = sext i32 %i.arh to i64
  %i.arz = sub nsw i64 0, %i.ary
  %i.asa = getelementptr inbounds i8, ptr %i.arv, i64 %i.arz
  br label %ZSTD_overlapCopy8.exit195.i

bb.fs:                                            ; preds = %bb.fq
  %i.asb = load i64, ptr %.0442.i, align 1
  store i64 %i.asb, ptr %.0441.i, align 1
  br label %ZSTD_overlapCopy8.exit195.i

ZSTD_overlapCopy8.exit195.i:                      ; preds = %bb.fs, %bb.fr
  %.1443.i = phi ptr [ %i.asa, %bb.fr ], [ %.0442.i, %bb.fs ] ; 2 uses
  %.1443.i159 = ptrtoaddr ptr %.1443.i to i64
  %i.asc = getelementptr inbounds nuw i8, ptr %.1443.i, i64 8 ; 7 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %.0441.i, i64 8 ; 6 uses
  %i.ase = icmp ugt i64 %.sroa.628.0, 8
  br i1 %i.ase, label %bb.ft, label %.loopexit.i

bb.ft:                                            ; preds = %ZSTD_overlapCopy8.exit195.i
  %i.asf = ptrtoint ptr %i.asd to i64
  %i.asg = ptrtoint ptr %i.asc to i64
  %i.ash = sub i64 %i.asf, %i.asg
  %i.asi = getelementptr i8, ptr %.0441.i, i64 %.sroa.628.0 ; 2 uses
  %i.asj = icmp slt i64 %i.ash, 16
  br i1 %i.asj, label %.preheader529.i.preheader, label %bb.fu

.preheader529.i.preheader:                        ; preds = %bb.ft
  %i.ask = add i64 %.sroa.628.0.copyload, %i.aj
  %i.asl = add i64 %.sroa.1132.0.copyload, %i.aql
  %umax162 = tail call i64 @llvm.umax.i64(i64 %.sroa.1132.0.copyload, i64 %i.aql) ; 2 uses
  %i.asm = add i64 %i.ask, %i.asl
  %i.asn = sub i64 %i.asm, %.sroa.1132.0.copyload
  %i.aso = add i64 %i.ams, %umax162
  %umax163 = tail call i64 @llvm.umax.i64(i64 %i.asn, i64 %i.aso)
  %i.asp = add i64 %umax163, -9
  %i.asq = add i64 %umax162, %i.aj
  %i.asr = sub i64 %i.asp, %i.asq                 ; 2 uses
  %i.ass = lshr i64 %i.asr, 3
  %i.ast = add nuw nsw i64 %i.ass, 1              ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.asr, 72
  br i1 %min.iters.check165, label %.preheader529.i.preheader315, label %vector.memcheck156

vector.memcheck156:                               ; preds = %.preheader529.i.preheader
  %i.asu = sub i64 %.sroa.026.0.copyload, %i.aj
  %i.asv = add i64 %i.asu, %.8215.i.i157
  %umax158 = tail call i64 @llvm.umax.i64(i64 %.sroa.1132.0.copyload, i64 %i.asv)
  %i.asw = add i64 %umax158, %i.aj
  %i.asx = sub i64 %i.asw, %.1443.i159
  %diff.check160 = icmp ult i64 %i.asx, 32
  br i1 %diff.check160, label %.preheader529.i.preheader315, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck156
  %n.vec168 = and i64 %i.ast, 4611686018427387900 ; 3 uses
  %i.asy = shl i64 %n.vec168, 3                   ; 2 uses
  %i.asz = getelementptr i8, ptr %i.asd, i64 %i.asy
  %i.ata = getelementptr i8, ptr %i.asc, i64 %i.asy
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.atb = shl i64 %index170, 3                   ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.asd, i64 %i.atb ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.asc, i64 %i.atb ; 2 uses
  %i.atc = getelementptr i8, ptr %next.gep172, i64 16
  %wide.load173 = load <2 x i64>, ptr %next.gep172, align 1
  %wide.load174 = load <2 x i64>, ptr %i.atc, align 1
  %i.atd = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x i64> %wide.load173, ptr %next.gep171, align 1
  store <2 x i64> %wide.load174, ptr %i.atd, align 1
  %index.next175 = add nuw i64 %index170, 4       ; 2 uses
  %i.ate = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.ate, label %middle.block176, label %vector.body169, !llvm.loop !118

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.ast, %n.vec168
  br i1 %cmp.n177, label %.loopexit.i, label %.preheader529.i.preheader315

.preheader529.i.preheader315:                     ; preds = %vector.memcheck156, %.preheader529.i.preheader, %middle.block176
  %.029.i148.i.ph = phi ptr [ %i.asd, %vector.memcheck156 ], [ %i.asd, %.preheader529.i.preheader ], [ %i.asz, %middle.block176 ]
  %.0.i149.i.ph = phi ptr [ %i.asc, %vector.memcheck156 ], [ %i.asc, %.preheader529.i.preheader ], [ %i.ata, %middle.block176 ]
  br label %.preheader529.i

.preheader529.i:                                  ; preds = %.preheader529.i.preheader315, %.preheader529.i
  %.029.i148.i = phi ptr [ %i.atg, %.preheader529.i ], [ %.029.i148.i.ph, %.preheader529.i.preheader315 ] ; 2 uses
  %.0.i149.i = phi ptr [ %i.ath, %.preheader529.i ], [ %.0.i149.i.ph, %.preheader529.i.preheader315 ] ; 2 uses
  %i.atf = load i64, ptr %.0.i149.i, align 1
  store i64 %i.atf, ptr %.029.i148.i, align 1
  %i.atg = getelementptr inbounds nuw i8, ptr %.029.i148.i, i64 8 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %.0.i149.i, i64 8
  %i.ati = icmp ult ptr %i.atg, %i.asi
  br i1 %i.ati, label %.preheader529.i, label %.loopexit.i, !llvm.loop !119

bb.fu:                                            ; preds = %bb.ft
  %i.atj = load <2 x i64>, ptr %i.asc, align 1, !tbaa !11
  store <2 x i64> %i.atj, ptr %i.asd, align 1, !tbaa !11
  %i.atk = icmp slt i64 %.sroa.628.0, 25
  br i1 %i.atk, label %.loopexit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.atl = getelementptr inbounds nuw i8, ptr %.0441.i, i64 24
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fw, %bb.fv
  %.130.i145.i = phi ptr [ %i.atl, %bb.fv ], [ %i.atq, %bb.fw ] ; 3 uses
  %.pn.i146.i = phi ptr [ %i.asc, %bb.fv ], [ %i.ato, %bb.fw ] ; 2 uses
  %.1.i147.i = getelementptr inbounds nuw i8, ptr %.pn.i146.i, i64 16
  %i.atm = load <2 x i64>, ptr %.1.i147.i, align 1, !tbaa !11
  store <2 x i64> %i.atm, ptr %.130.i145.i, align 1, !tbaa !11
  %i.atn = getelementptr inbounds nuw i8, ptr %.130.i145.i, i64 16
  %i.ato = getelementptr inbounds nuw i8, ptr %.pn.i146.i, i64 32 ; 2 uses
  %i.atp = load <2 x i64>, ptr %i.ato, align 1, !tbaa !11
  store <2 x i64> %i.atp, ptr %i.atn, align 1, !tbaa !11
  %i.atq = getelementptr inbounds nuw i8, ptr %.130.i145.i, i64 32 ; 2 uses
  %i.atr = icmp ult ptr %i.atq, %i.asi
  br i1 %i.atr, label %bb.fw, label %.loopexit.i, !llvm.loop !100

.loopexit.i:                                      ; preds = %bb.fw, %.preheader529.i, %bb.fp, %middle.block176, %bb.fu, %ZSTD_overlapCopy8.exit195.i, %bb.fn, %bb.fk, %bb.fe
  %.0.i25.i = phi i64 [ %i.apz, %bb.fe ], [ %i.apq, %bb.fp ], [ %i.apq, %bb.fk ], [ %i.apq, %ZSTD_overlapCopy8.exit195.i ], [ %i.apq, %bb.fu ], [ %i.apq, %bb.fn ], [ %i.apq, %middle.block176 ], [ %i.apq, %.preheader529.i ], [ %i.apq, %bb.fw ] ; 3 uses
  %i.ats = icmp ult i64 %.0.i25.i, -119
  %i.att = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 %.0.i25.i
  br i1 %i.ats, label %bb.hl, label %.thread508.i

bb.fx:                                            ; preds = %bb.ew
  %i.atu = getelementptr inbounds i8, ptr %i.anf, i64 -32 ; 2 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %.sroa.552.0.copyload = load i64, ptr %.sroa.552.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %.sroa.1056.0.copyload = load i64, ptr %.sroa.1056.0..sroa_idx, align 8 ; 11 uses
  %i.atv = getelementptr i8, ptr %.7214.i598.i, i64 %i.ane ; 7 uses
  %i.atw = add i64 %.sroa.552.0.copyload, %i.ane  ; 9 uses
  %i.atx = sub i64 0, %.sroa.1056.0.copyload
  %i.aty = getelementptr inbounds i8, ptr %i.atv, i64 %i.atx ; 2 uses
  %i.atz = icmp ugt ptr %i.anf, %.4230.i596.i
  %i.aua = getelementptr inbounds nuw i8, ptr %.7214.i598.i, i64 %i.atw
  %i.aub = icmp ugt ptr %i.aua, %i.atu
  %or.cond.i40.i = select i1 %i.atz, i1 true, i1 %i.aub, !prof !104
  br i1 %or.cond.i40.i, label %bb.fy, label %.critedge.i41.i, !prof !104

.critedge.i41.i:                                  ; preds = %bb.fx
  %i.auc = load <2 x i64>, ptr %i.and, align 1, !tbaa !11
  store <2 x i64> %i.auc, ptr %.7214.i598.i, align 1, !tbaa !11
  %i.aud = icmp ugt i64 %i.ane, 16
  br i1 %i.aud, label %bb.fz, label %ZSTD_wildcopy.exit.i, !prof !52

bb.fy:                                            ; preds = %bb.fx
  %i.aue = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.7214.i598.i, ptr noundef %i.j, ptr noundef nonnull %i.atu, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.ana, ptr noundef nonnull %i.a, ptr noundef %.4230.i596.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.fz:                                            ; preds = %.critedge.i41.i
  %i.auf = getelementptr inbounds nuw i8, ptr %.7214.i598.i, i64 16
  %i.aug = getelementptr inbounds nuw i8, ptr %i.and, i64 16 ; 2 uses
  %i.auh = add i64 %i.ane, -16
  %i.aui = load <2 x i64>, ptr %i.aug, align 1, !tbaa !11
  store <2 x i64> %i.aui, ptr %i.auf, align 1, !tbaa !11
  %i.auj = icmp slt i64 %i.auh, 17
  br i1 %i.auj, label %ZSTD_wildcopy.exit.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.auk = getelementptr inbounds nuw i8, ptr %.7214.i598.i, i64 32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gb, %bb.ga
  %.130.i.i = phi ptr [ %i.auk, %bb.ga ], [ %i.aup, %bb.gb ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.aug, %bb.ga ], [ %i.aun, %bb.gb ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.aul = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !11
  store <2 x i64> %i.aul, ptr %.130.i.i, align 1, !tbaa !11
  %i.aum = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.aun = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.auo = load <2 x i64>, ptr %i.aun, align 1, !tbaa !11
  store <2 x i64> %i.auo, ptr %i.aum, align 1, !tbaa !11
  %i.aup = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.auq = icmp ult ptr %i.aup, %i.atv
  br i1 %i.auq, label %bb.gb, label %ZSTD_wildcopy.exit.i, !llvm.loop !100

ZSTD_wildcopy.exit.i:                             ; preds = %bb.gb, %bb.fz, %.critedge.i41.i
  store ptr %i.anf, ptr %i.a, align 8, !tbaa !38
  %i.aur = ptrtoint ptr %i.atv to i64             ; 2 uses
  %i.aus = sub i64 %i.aur, %i.aj                  ; 3 uses
  %i.aut = icmp ugt i64 %.sroa.1056.0.copyload, %i.aus
  br i1 %i.aut, label %bb.gc, label %bb.gg

bb.gc:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.auu = sub i64 %i.aur, %i.amn
  %i.auv = icmp ugt i64 %.sroa.1056.0.copyload, %i.auu
  br i1 %i.auv, label %.thread508.i, label %bb.gd, !prof !52

bb.gd:                                            ; preds = %bb.gc
  %i.auw = ptrtoint ptr %i.aty to i64
  %i.aux = sub i64 %i.auw, %i.aj                  ; 3 uses
  %i.auy = getelementptr inbounds i8, ptr %i.t, i64 %i.aux ; 2 uses
  %i.auz = add i64 %i.aux, %.sroa.552.0.copyload  ; 2 uses
  %.not.i43.i = icmp sgt i64 %i.auz, 0
  br i1 %.not.i43.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.atv, ptr align 1 %i.auy, i64 %.sroa.552.0.copyload, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.gf:                                            ; preds = %bb.gd
  %gepdiff.i44.i = sub nsw i64 0, %i.aux          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.atv, ptr align 1 %i.auy, i64 %gepdiff.i44.i, i1 false)
  %i.ava = getelementptr inbounds nuw i8, ptr %i.atv, i64 %gepdiff.i44.i
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %ZSTD_wildcopy.exit.i
  %.sroa.552.0 = phi i64 [ %i.auz, %bb.gf ], [ %.sroa.552.0.copyload, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %.0434.i = phi ptr [ %i.p, %bb.gf ], [ %i.aty, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ava, %bb.gf ], [ %i.atv, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %i.avb = icmp ugt i64 %.sroa.1056.0.copyload, 15
  br i1 %i.avb, label %bb.gh, label %bb.gk, !prof !89

bb.gh:                                            ; preds = %bb.gg
  %i.avc = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.552.0
  %i.avd = load <2 x i64>, ptr %.0434.i, align 1, !tbaa !11
  store <2 x i64> %i.avd, ptr %.0.i, align 1, !tbaa !11
  %i.ave = icmp slt i64 %.sroa.552.0, 17
  br i1 %i.ave, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.avf = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %bb.gi
  %.130.i77.i = phi ptr [ %i.avf, %bb.gi ], [ %i.avk, %bb.gj ] ; 3 uses
  %.pn.i78.i = phi ptr [ %.0434.i, %bb.gi ], [ %i.avi, %bb.gj ] ; 2 uses
  %.1.i79.i = getelementptr inbounds nuw i8, ptr %.pn.i78.i, i64 16
  %i.avg = load <2 x i64>, ptr %.1.i79.i, align 1, !tbaa !11
  store <2 x i64> %i.avg, ptr %.130.i77.i, align 1, !tbaa !11
  %i.avh = getelementptr inbounds nuw i8, ptr %.130.i77.i, i64 16
  %i.avi = getelementptr inbounds nuw i8, ptr %.pn.i78.i, i64 32 ; 2 uses
  %i.avj = load <2 x i64>, ptr %i.avi, align 1, !tbaa !11
  store <2 x i64> %i.avj, ptr %i.avh, align 1, !tbaa !11
  %i.avk = getelementptr inbounds nuw i8, ptr %.130.i77.i, i64 32 ; 2 uses
  %i.avl = icmp ult ptr %i.avk, %i.avc
  br i1 %i.avl, label %bb.gj, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !100

bb.gk:                                            ; preds = %bb.gg
  %i.avm = icmp samesign ult i64 %.sroa.1056.0.copyload, 8
  br i1 %i.avm, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1056.0.copyload
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !5
  %i.avp = load i8, ptr %.0434.i, align 1, !tbaa !11
  store i8 %i.avp, ptr %.0.i, align 1, !tbaa !11
  %i.avq = getelementptr inbounds nuw i8, ptr %.0434.i, i64 1
  %i.avr = load i8, ptr %i.avq, align 1, !tbaa !11
  %i.avs = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.avr, ptr %i.avs, align 1, !tbaa !11
  %i.avt = getelementptr inbounds nuw i8, ptr %.0434.i, i64 2
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !11
  %i.avv = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.avu, ptr %i.avv, align 1, !tbaa !11
  %i.avw = getelementptr inbounds nuw i8, ptr %.0434.i, i64 3
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !11
  %i.avy = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.avx, ptr %i.avy, align 1, !tbaa !11
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1056.0.copyload
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !5
  %i.awb = zext i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw i8, ptr %.0434.i, i64 %i.awb ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.awe = load i32, ptr %i.awc, align 1
  store i32 %i.awe, ptr %i.awd, align 1
  %i.awf = sext i32 %i.avo to i64
  %i.awg = sub nsw i64 0, %i.awf
  %i.awh = getelementptr inbounds i8, ptr %i.awc, i64 %i.awg
  br label %ZSTD_overlapCopy8.exit.i

bb.gm:                                            ; preds = %bb.gk
  %i.awi = load i64, ptr %.0434.i, align 1
  store i64 %i.awi, ptr %.0.i, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.gm, %bb.gl
  %.1.i = phi ptr [ %i.awh, %bb.gl ], [ %.0434.i, %bb.gm ] ; 2 uses
  %.1.i262 = ptrtoaddr ptr %.1.i to i64
  %i.awj = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.awl = icmp ugt i64 %.sroa.552.0, 8
  br i1 %i.awl, label %bb.gn, label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.gn:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.awm = ptrtoint ptr %i.awk to i64
  %i.awn = ptrtoint ptr %i.awj to i64
  %i.awo = sub i64 %i.awm, %i.awn
  %i.awp = getelementptr i8, ptr %.0.i, i64 %.sroa.552.0 ; 2 uses
  %i.awq = icmp slt i64 %i.awo, 16
  br i1 %i.awq, label %.preheader533.i.preheader, label %bb.go

.preheader533.i.preheader:                        ; preds = %bb.gn
  %i.awr = add i64 %.sroa.552.0.copyload, %i.aj
  %i.aws = add i64 %.sroa.1056.0.copyload, %i.aus
  %umax265 = tail call i64 @llvm.umax.i64(i64 %.sroa.1056.0.copyload, i64 %i.aus) ; 2 uses
  %i.awt = add i64 %i.awr, %i.aws
  %i.awu = sub i64 %i.awt, %.sroa.1056.0.copyload
  %i.awv = add i64 %i.amt, %umax265
  %umax266 = tail call i64 @llvm.umax.i64(i64 %i.awu, i64 %i.awv)
  %i.aww = add i64 %umax266, -9
  %i.awx = add i64 %umax265, %i.aj
  %i.awy = sub i64 %i.aww, %i.awx                 ; 2 uses
  %i.awz = lshr i64 %i.awy, 3
  %i.axa = add nuw nsw i64 %i.awz, 1              ; 2 uses
  %min.iters.check268 = icmp ult i64 %i.awy, 72
  br i1 %min.iters.check268, label %.preheader533.i.preheader319, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.preheader533.i.preheader
  %i.axb = sub i64 %i.ane, %i.aj
  %i.axc = add i64 %i.axb, %.7214.i598.i260
  %umax261 = tail call i64 @llvm.umax.i64(i64 %.sroa.1056.0.copyload, i64 %i.axc)
  %i.axd = add i64 %umax261, %i.aj
  %i.axe = sub i64 %i.axd, %.1.i262
  %diff.check263 = icmp ult i64 %i.axe, 32
  br i1 %diff.check263, label %.preheader533.i.preheader319, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck259
  %n.vec271 = and i64 %i.axa, 4611686018427387900 ; 3 uses
  %i.axf = shl i64 %n.vec271, 3                   ; 2 uses
  %i.axg = getelementptr i8, ptr %i.awk, i64 %i.axf
  %i.axh = getelementptr i8, ptr %i.awj, i64 %i.axf
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph269
  %index273 = phi i64 [ 0, %vector.ph269 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.axi = shl i64 %index273, 3                   ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.awk, i64 %i.axi ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.awj, i64 %i.axi ; 2 uses
  %i.axj = getelementptr i8, ptr %next.gep275, i64 16
  %wide.load276 = load <2 x i64>, ptr %next.gep275, align 1
  %wide.load277 = load <2 x i64>, ptr %i.axj, align 1
  %i.axk = getelementptr i8, ptr %next.gep274, i64 16
  store <2 x i64> %wide.load276, ptr %next.gep274, align 1
  store <2 x i64> %wide.load277, ptr %i.axk, align 1
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.axl = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.axl, label %middle.block279, label %vector.body272, !llvm.loop !120

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.axa, %n.vec271
  br i1 %cmp.n280, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %.preheader533.i.preheader319

.preheader533.i.preheader319:                     ; preds = %vector.memcheck259, %.preheader533.i.preheader, %middle.block279
  %.029.i.i.ph = phi ptr [ %i.awk, %vector.memcheck259 ], [ %i.awk, %.preheader533.i.preheader ], [ %i.axg, %middle.block279 ]
  %.0.i86.i.ph = phi ptr [ %i.awj, %vector.memcheck259 ], [ %i.awj, %.preheader533.i.preheader ], [ %i.axh, %middle.block279 ]
  br label %.preheader533.i

.preheader533.i:                                  ; preds = %.preheader533.i.preheader319, %.preheader533.i
  %.029.i.i = phi ptr [ %i.axn, %.preheader533.i ], [ %.029.i.i.ph, %.preheader533.i.preheader319 ] ; 2 uses
  %.0.i86.i = phi ptr [ %i.axo, %.preheader533.i ], [ %.0.i86.i.ph, %.preheader533.i.preheader319 ] ; 2 uses
  %i.axm = load i64, ptr %.0.i86.i, align 1
  store i64 %i.axm, ptr %.029.i.i, align 1
  %i.axn = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 8
  %i.axp = icmp ult ptr %i.axn, %i.awp
  br i1 %i.axp, label %.preheader533.i, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !121

bb.go:                                            ; preds = %bb.gn
  %i.axq = load <2 x i64>, ptr %i.awj, align 1, !tbaa !11
  store <2 x i64> %i.axq, ptr %i.awk, align 1, !tbaa !11
  %i.axr = icmp slt i64 %.sroa.552.0, 25
  br i1 %i.axr, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.axs = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gq, %bb.gp
  %.130.i83.i = phi ptr [ %i.axs, %bb.gp ], [ %i.axx, %bb.gq ] ; 3 uses
  %.pn.i84.i = phi ptr [ %i.awj, %bb.gp ], [ %i.axv, %bb.gq ] ; 2 uses
  %.1.i85.i = getelementptr inbounds nuw i8, ptr %.pn.i84.i, i64 16
  %i.axt = load <2 x i64>, ptr %.1.i85.i, align 1, !tbaa !11
  store <2 x i64> %i.axt, ptr %.130.i83.i, align 1, !tbaa !11
  %i.axu = getelementptr inbounds nuw i8, ptr %.130.i83.i, i64 16
  %i.axv = getelementptr inbounds nuw i8, ptr %.pn.i84.i, i64 32 ; 2 uses
  %i.axw = load <2 x i64>, ptr %i.axv, align 1, !tbaa !11
  store <2 x i64> %i.axw, ptr %i.axu, align 1, !tbaa !11
  %i.axx = getelementptr inbounds nuw i8, ptr %.130.i83.i, i64 32 ; 2 uses
  %i.axy = icmp ult ptr %i.axx, %i.awp
  br i1 %i.axy, label %bb.gq, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !100

bb.gr:                                            ; preds = %bb.ev
  %.sroa.034.0.copyload = load i64, ptr %i.ana, align 8 ; 6 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %.sroa.1040.0.copyload = load i64, ptr %.sroa.1040.0..sroa_idx, align 8 ; 11 uses
  %i.axz = getelementptr i8, ptr %.7214.i598.i, i64 %.sroa.034.0.copyload ; 7 uses
  %i.aya = add i64 %.sroa.536.0.copyload, %.sroa.034.0.copyload ; 9 uses
  %i.ayb = load ptr, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %.sroa.034.0.copyload ; 2 uses
  %i.ayd = sub i64 0, %.sroa.1040.0.copyload
  %i.aye = getelementptr inbounds i8, ptr %i.axz, i64 %i.ayd ; 2 uses
  %i.ayf = icmp ugt ptr %i.ayc, %.4230.i596.i
  %i.ayg = getelementptr inbounds nuw i8, ptr %.7214.i598.i, i64 %i.aya
  %i.ayh = icmp ugt ptr %i.ayg, %i.amm
  %or.cond.i29.i = select i1 %i.ayf, i1 true, i1 %i.ayh, !prof !104
  br i1 %or.cond.i29.i, label %bb.gs, label %.critedge.i30.i, !prof !104

.critedge.i30.i:                                  ; preds = %bb.gr
  %i.ayi = load <2 x i64>, ptr %i.ayb, align 1, !tbaa !11
  store <2 x i64> %i.ayi, ptr %.7214.i598.i, align 1, !tbaa !11
  %i.ayj = icmp ugt i64 %.sroa.034.0.copyload, 16
  br i1 %i.ayj, label %bb.gt, label %ZSTD_wildcopy.exit115.i, !prof !52

bb.gs:                                            ; preds = %bb.gr
  %i.ayk = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.7214.i598.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.ana, ptr noundef nonnull %i.a, ptr noundef %.4230.i596.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.gt:                                            ; preds = %.critedge.i30.i
  %i.ayl = getelementptr inbounds nuw i8, ptr %.7214.i598.i, i64 16
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16 ; 2 uses
  %i.ayn = add i64 %.sroa.034.0.copyload, -16
  %i.ayo = load <2 x i64>, ptr %i.aym, align 1, !tbaa !11
  store <2 x i64> %i.ayo, ptr %i.ayl, align 1, !tbaa !11
  %i.ayp = icmp slt i64 %i.ayn, 17
  br i1 %i.ayp, label %ZSTD_wildcopy.exit115.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ayq = getelementptr inbounds nuw i8, ptr %.7214.i598.i, i64 32
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gv, %bb.gu
  %.130.i110.i = phi ptr [ %i.ayq, %bb.gu ], [ %i.ayv, %bb.gv ] ; 3 uses
  %.pn.i111.i = phi ptr [ %i.aym, %bb.gu ], [ %i.ayt, %bb.gv ] ; 2 uses
  %.1.i112.i = getelementptr inbounds nuw i8, ptr %.pn.i111.i, i64 16
  %i.ayr = load <2 x i64>, ptr %.1.i112.i, align 1, !tbaa !11
  store <2 x i64> %i.ayr, ptr %.130.i110.i, align 1, !tbaa !11
  %i.ays = getelementptr inbounds nuw i8, ptr %.130.i110.i, i64 16
  %i.ayt = getelementptr inbounds nuw i8, ptr %.pn.i111.i, i64 32 ; 2 uses
  %i.ayu = load <2 x i64>, ptr %i.ayt, align 1, !tbaa !11
  store <2 x i64> %i.ayu, ptr %i.ays, align 1, !tbaa !11
  %i.ayv = getelementptr inbounds nuw i8, ptr %.130.i110.i, i64 32 ; 2 uses
  %i.ayw = icmp ult ptr %i.ayv, %i.axz
  br i1 %i.ayw, label %bb.gv, label %ZSTD_wildcopy.exit115.i, !llvm.loop !100

ZSTD_wildcopy.exit115.i:                          ; preds = %bb.gv, %bb.gt, %.critedge.i30.i
  store ptr %i.ayc, ptr %i.a, align 8, !tbaa !38
  %i.ayx = ptrtoint ptr %i.axz to i64             ; 2 uses
  %i.ayy = sub i64 %i.ayx, %i.aj                  ; 3 uses
  %i.ayz = icmp ugt i64 %.sroa.1040.0.copyload, %i.ayy
  br i1 %i.ayz, label %bb.gw, label %bb.ha

bb.gw:                                            ; preds = %ZSTD_wildcopy.exit115.i
  %i.aza = sub i64 %i.ayx, %i.amn
  %i.azb = icmp ugt i64 %.sroa.1040.0.copyload, %i.aza
  br i1 %i.azb, label %.thread508.i, label %bb.gx, !prof !52

bb.gx:                                            ; preds = %bb.gw
  %i.azc = ptrtoint ptr %i.aye to i64
  %i.azd = sub i64 %i.azc, %i.aj                  ; 3 uses
  %i.aze = getelementptr inbounds i8, ptr %i.t, i64 %i.azd ; 2 uses
  %i.azf = add i64 %i.azd, %.sroa.536.0.copyload  ; 2 uses
  %.not.i32.i = icmp sgt i64 %i.azf, 0
  br i1 %.not.i32.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.axz, ptr align 1 %i.aze, i64 %.sroa.536.0.copyload, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.gz:                                            ; preds = %bb.gx
  %gepdiff.i33.i = sub nsw i64 0, %i.azd          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.axz, ptr align 1 %i.aze, i64 %gepdiff.i33.i, i1 false)
  %i.azg = getelementptr inbounds nuw i8, ptr %i.axz, i64 %gepdiff.i33.i
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %ZSTD_wildcopy.exit115.i
  %.sroa.536.0 = phi i64 [ %i.azf, %bb.gz ], [ %.sroa.536.0.copyload, %ZSTD_wildcopy.exit115.i ] ; 5 uses
  %.0439.i = phi ptr [ %i.p, %bb.gz ], [ %i.aye, %ZSTD_wildcopy.exit115.i ] ; 9 uses
  %.0438.i = phi ptr [ %i.azg, %bb.gz ], [ %i.axz, %ZSTD_wildcopy.exit115.i ] ; 12 uses
  %i.azh = icmp ugt i64 %.sroa.1040.0.copyload, 15
  br i1 %i.azh, label %bb.hb, label %bb.he, !prof !89

bb.hb:                                            ; preds = %bb.ha
  %i.azi = getelementptr inbounds i8, ptr %.0438.i, i64 %.sroa.536.0
  %i.azj = load <2 x i64>, ptr %.0439.i, align 1, !tbaa !11
  store <2 x i64> %i.azj, ptr %.0438.i, align 1, !tbaa !11
  %i.azk = icmp slt i64 %.sroa.536.0, 17
  br i1 %i.azk, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.azl = getelementptr inbounds nuw i8, ptr %.0438.i, i64 16
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %bb.hc
  %.130.i117.i = phi ptr [ %i.azl, %bb.hc ], [ %i.azq, %bb.hd ] ; 3 uses
  %.pn.i118.i = phi ptr [ %.0439.i, %bb.hc ], [ %i.azo, %bb.hd ] ; 2 uses
  %.1.i119.i = getelementptr inbounds nuw i8, ptr %.pn.i118.i, i64 16
  %i.azm = load <2 x i64>, ptr %.1.i119.i, align 1, !tbaa !11
  store <2 x i64> %i.azm, ptr %.130.i117.i, align 1, !tbaa !11
  %i.azn = getelementptr inbounds nuw i8, ptr %.130.i117.i, i64 16
  %i.azo = getelementptr inbounds nuw i8, ptr %.pn.i118.i, i64 32 ; 2 uses
  %i.azp = load <2 x i64>, ptr %i.azo, align 1, !tbaa !11
  store <2 x i64> %i.azp, ptr %i.azn, align 1, !tbaa !11
  %i.azq = getelementptr inbounds nuw i8, ptr %.130.i117.i, i64 32 ; 2 uses
  %i.azr = icmp ult ptr %i.azq, %i.azi
  br i1 %i.azr, label %bb.hd, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !100

bb.he:                                            ; preds = %bb.ha
  %i.azs = icmp samesign ult i64 %.sroa.1040.0.copyload, 8
  br i1 %i.azs, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1040.0.copyload
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !5
  %i.azv = load i8, ptr %.0439.i, align 1, !tbaa !11
  store i8 %i.azv, ptr %.0438.i, align 1, !tbaa !11
  %i.azw = getelementptr inbounds nuw i8, ptr %.0439.i, i64 1
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !11
  %i.azy = getelementptr inbounds nuw i8, ptr %.0438.i, i64 1
  store i8 %i.azx, ptr %i.azy, align 1, !tbaa !11
  %i.azz = getelementptr inbounds nuw i8, ptr %.0439.i, i64 2
  %i.baa = load i8, ptr %i.azz, align 1, !tbaa !11
  %i.bab = getelementptr inbounds nuw i8, ptr %.0438.i, i64 2
  store i8 %i.baa, ptr %i.bab, align 1, !tbaa !11
  %i.bac = getelementptr inbounds nuw i8, ptr %.0439.i, i64 3
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !11
  %i.bae = getelementptr inbounds nuw i8, ptr %.0438.i, i64 3
  store i8 %i.bad, ptr %i.bae, align 1, !tbaa !11
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1040.0.copyload
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !5
  %i.bah = zext i32 %i.bag to i64
  %i.bai = getelementptr inbounds nuw i8, ptr %.0439.i, i64 %i.bah ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %.0438.i, i64 4
  %i.bak = load i32, ptr %i.bai, align 1
  store i32 %i.bak, ptr %i.baj, align 1
  %i.bal = sext i32 %i.azu to i64
  %i.bam = sub nsw i64 0, %i.bal
  %i.ban = getelementptr inbounds i8, ptr %i.bai, i64 %i.bam
  br label %ZSTD_overlapCopy8.exit194.i

bb.hg:                                            ; preds = %bb.he
  %i.bao = load i64, ptr %.0439.i, align 1
  store i64 %i.bao, ptr %.0438.i, align 1
  br label %ZSTD_overlapCopy8.exit194.i

ZSTD_overlapCopy8.exit194.i:                      ; preds = %bb.hg, %bb.hf
  %.1440.i = phi ptr [ %i.ban, %bb.hf ], [ %.0439.i, %bb.hg ] ; 2 uses
  %.1440.i285 = ptrtoaddr ptr %.1440.i to i64
  %i.bap = getelementptr inbounds nuw i8, ptr %.1440.i, i64 8 ; 7 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %.0438.i, i64 8 ; 6 uses
  %i.bar = icmp ugt i64 %.sroa.536.0, 8
  br i1 %i.bar, label %bb.hh, label %ZSTD_execSequenceSplitLitBuffer.exit45.i

bb.hh:                                            ; preds = %ZSTD_overlapCopy8.exit194.i
  %i.bas = ptrtoint ptr %i.baq to i64
  %i.bat = ptrtoint ptr %i.bap to i64
  %i.bau = sub i64 %i.bas, %i.bat
  %i.bav = getelementptr i8, ptr %.0438.i, i64 %.sroa.536.0 ; 2 uses
  %i.baw = icmp slt i64 %i.bau, 16
  br i1 %i.baw, label %.preheader536.i.preheader, label %bb.hi

.preheader536.i.preheader:                        ; preds = %bb.hh
  %i.bax = add i64 %.sroa.536.0.copyload, %i.aj
  %i.bay = add i64 %.sroa.1040.0.copyload, %i.ayy
  %umax288 = tail call i64 @llvm.umax.i64(i64 %.sroa.1040.0.copyload, i64 %i.ayy) ; 2 uses
  %i.baz = add i64 %i.bax, %i.bay
  %i.bba = sub i64 %i.baz, %.sroa.1040.0.copyload
  %i.bbb = add i64 %i.amu, %umax288
  %umax289 = tail call i64 @llvm.umax.i64(i64 %i.bba, i64 %i.bbb)
  %i.bbc = add i64 %umax289, -9
  %i.bbd = add i64 %umax288, %i.aj
  %i.bbe = sub i64 %i.bbc, %i.bbd                 ; 2 uses
  %i.bbf = lshr i64 %i.bbe, 3
  %i.bbg = add nuw nsw i64 %i.bbf, 1              ; 2 uses
  %min.iters.check291 = icmp ult i64 %i.bbe, 72
  br i1 %min.iters.check291, label %.preheader536.i.preheader323, label %vector.memcheck283

vector.memcheck283:                               ; preds = %.preheader536.i.preheader
  %i.bbh = sub i64 %.sroa.034.0.copyload, %i.aj
  %i.bbi = add i64 %i.bbh, %.7214.i598.i260
  %umax284 = tail call i64 @llvm.umax.i64(i64 %.sroa.1040.0.copyload, i64 %i.bbi)
  %i.bbj = add i64 %umax284, %i.aj
  %i.bbk = sub i64 %i.bbj, %.1440.i285
  %diff.check286 = icmp ult i64 %i.bbk, 32
  br i1 %diff.check286, label %.preheader536.i.preheader323, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck283
  %n.vec294 = and i64 %i.bbg, 4611686018427387900 ; 3 uses
  %i.bbl = shl i64 %n.vec294, 3                   ; 2 uses
  %i.bbm = getelementptr i8, ptr %i.baq, i64 %i.bbl
  %i.bbn = getelementptr i8, ptr %i.bap, i64 %i.bbl
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph292
  %index296 = phi i64 [ 0, %vector.ph292 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.bbo = shl i64 %index296, 3                   ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.baq, i64 %i.bbo ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.bap, i64 %i.bbo ; 2 uses
  %i.bbp = getelementptr i8, ptr %next.gep298, i64 16
  %wide.load299 = load <2 x i64>, ptr %next.gep298, align 1
  %wide.load300 = load <2 x i64>, ptr %i.bbp, align 1
  %i.bbq = getelementptr i8, ptr %next.gep297, i64 16
  store <2 x i64> %wide.load299, ptr %next.gep297, align 1
  store <2 x i64> %wide.load300, ptr %i.bbq, align 1
  %index.next301 = add nuw i64 %index296, 4       ; 2 uses
  %i.bbr = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.bbr, label %middle.block302, label %vector.body295, !llvm.loop !122

middle.block302:                                  ; preds = %vector.body295
  %cmp.n303 = icmp eq i64 %i.bbg, %n.vec294
  br i1 %cmp.n303, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %.preheader536.i.preheader323

.preheader536.i.preheader323:                     ; preds = %vector.memcheck283, %.preheader536.i.preheader, %middle.block302
  %.029.i127.i.ph = phi ptr [ %i.baq, %vector.memcheck283 ], [ %i.baq, %.preheader536.i.preheader ], [ %i.bbm, %middle.block302 ]
  %.0.i128.i.ph = phi ptr [ %i.bap, %vector.memcheck283 ], [ %i.bap, %.preheader536.i.preheader ], [ %i.bbn, %middle.block302 ]
  br label %.preheader536.i

.preheader536.i:                                  ; preds = %.preheader536.i.preheader323, %.preheader536.i
  %.029.i127.i = phi ptr [ %i.bbt, %.preheader536.i ], [ %.029.i127.i.ph, %.preheader536.i.preheader323 ] ; 2 uses
  %.0.i128.i = phi ptr [ %i.bbu, %.preheader536.i ], [ %.0.i128.i.ph, %.preheader536.i.preheader323 ] ; 2 uses
  %i.bbs = load i64, ptr %.0.i128.i, align 1
  store i64 %i.bbs, ptr %.029.i127.i, align 1
  %i.bbt = getelementptr inbounds nuw i8, ptr %.029.i127.i, i64 8 ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %.0.i128.i, i64 8
  %i.bbv = icmp ult ptr %i.bbt, %i.bav
  br i1 %i.bbv, label %.preheader536.i, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !123

bb.hi:                                            ; preds = %bb.hh
  %i.bbw = load <2 x i64>, ptr %i.bap, align 1, !tbaa !11
  store <2 x i64> %i.bbw, ptr %i.baq, align 1, !tbaa !11
  %i.bbx = icmp slt i64 %.sroa.536.0, 25
  br i1 %i.bbx, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bby = getelementptr inbounds nuw i8, ptr %.0438.i, i64 24
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hk, %bb.hj
  %.130.i124.i = phi ptr [ %i.bby, %bb.hj ], [ %i.bcd, %bb.hk ] ; 3 uses
  %.pn.i125.i = phi ptr [ %i.bap, %bb.hj ], [ %i.bcb, %bb.hk ] ; 2 uses
  %.1.i126.i = getelementptr inbounds nuw i8, ptr %.pn.i125.i, i64 16
  %i.bbz = load <2 x i64>, ptr %.1.i126.i, align 1, !tbaa !11
  store <2 x i64> %i.bbz, ptr %.130.i124.i, align 1, !tbaa !11
  %i.bca = getelementptr inbounds nuw i8, ptr %.130.i124.i, i64 16
  %i.bcb = getelementptr inbounds nuw i8, ptr %.pn.i125.i, i64 32 ; 2 uses
  %i.bcc = load <2 x i64>, ptr %i.bcb, align 1, !tbaa !11
  store <2 x i64> %i.bcc, ptr %i.bca, align 1, !tbaa !11
  %i.bcd = getelementptr inbounds nuw i8, ptr %.130.i124.i, i64 32 ; 2 uses
  %i.bce = icmp ult ptr %i.bcd, %i.bav
  br i1 %i.bce, label %bb.hk, label %ZSTD_execSequenceSplitLitBuffer.exit45.i, !llvm.loop !100

ZSTD_execSequenceSplitLitBuffer.exit45.i:         ; preds = %bb.hk, %.preheader536.i, %bb.hd, %bb.gq, %.preheader533.i, %bb.gj, %middle.block302, %middle.block279, %bb.gs, %bb.gy, %bb.hb, %ZSTD_overlapCopy8.exit194.i, %bb.hi, %bb.fy, %bb.ge, %bb.gh, %ZSTD_overlapCopy8.exit.i, %bb.go
  %i.bcf = phi i64 [ %i.aya, %middle.block302 ], [ %i.aue, %bb.fy ], [ %i.aya, %bb.hi ], [ %i.atw, %bb.ge ], [ %i.atw, %ZSTD_overlapCopy8.exit.i ], [ %i.atw, %middle.block279 ], [ %i.atw, %bb.gh ], [ %i.atw, %.preheader533.i ], [ %i.atw, %bb.go ], [ %i.ayk, %bb.gs ], [ %i.atw, %bb.gj ], [ %i.aya, %bb.gy ], [ %i.aya, %ZSTD_overlapCopy8.exit194.i ], [ %i.aya, %bb.hd ], [ %i.aya, %bb.hb ], [ %i.aya, %.preheader536.i ], [ %i.atw, %bb.gq ], [ %i.aya, %bb.hk ] ; 3 uses
  %i.bcg = icmp ult i64 %i.bcf, -119
  %i.bch = getelementptr inbounds nuw i8, ptr %.7214.i598.i, i64 %i.bcf
  br i1 %i.bcg, label %bb.hl, label %.thread508.i

bb.hl:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit45.i, %.loopexit.i
  %.6232.i.i = phi ptr [ %i.amq, %.loopexit.i ], [ %.4230.i596.i, %ZSTD_execSequenceSplitLitBuffer.exit45.i ] ; 2 uses
  %.12219.i.i = phi ptr [ %i.att, %.loopexit.i ], [ %i.bch, %ZSTD_execSequenceSplitLitBuffer.exit45.i ] ; 2 uses
  %i.bci = add i32 %.2240.i595.i, 1               ; 2 uses
  %exitcond629.not.i = icmp eq i32 %i.bci, %5
  br i1 %exitcond629.not.i, label %.preheader.i, label %bb.ev, !llvm.loop !124

.thread508.i:                                     ; preds = %bb.ee, %bb.dk, %bb.cp, %ZSTD_execSequenceSplitLitBuffer.exit.i, %ZSTD_execSequence.exit.i, %bb.cf, %bb.gw, %bb.gc, %bb.fi, %ZSTD_execSequenceSplitLitBuffer.exit45.i, %.loopexit.i, %bb.ey, %._crit_edge.i, %BIT_initDStream.exit.i, %bb.q, %bb.i, %bb.g
  %.12.i.ph.i = phi i64 [ -70, %bb.ey ], [ -20, %bb.g ], [ -20, %bb.q ], [ -20, %bb.i ], [ -20, %._crit_edge.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.gw ], [ -20, %bb.gc ], [ -20, %bb.fi ], [ %.0.i25.i, %.loopexit.i ], [ %i.bcf, %ZSTD_execSequenceSplitLitBuffer.exit45.i ], [ %.0.i15.i, %ZSTD_execSequence.exit.i ], [ -20, %bb.dk ], [ -20, %bb.cp ], [ %i.alq, %ZSTD_execSequenceSplitLitBuffer.exit.i ], [ -20, %bb.ee ], [ -70, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %ZSTD_decompressSequencesLong_default.exit

bb.hm:                                            ; preds = %.preheader.i, %bb.f
  %.pre640.i = phi ptr [ %.pre640.pre.i, %.preheader.i ], [ %i.l, %bb.f ] ; 3 uses
  %i.bcj = phi i32 [ %.pre639.i, %.preheader.i ], [ %i.e, %bb.f ]
  %.9235.i.i = phi ptr [ %.4230.i.lcssa.i, %.preheader.i ], [ %i.n, %bb.f ] ; 2 uses
  %.15222.i.i = phi ptr [ %.7214.i.lcssa.i, %.preheader.i ], [ %1, %bb.f ] ; 5 uses
  %i.bck = icmp eq i32 %i.bcj, 2
  br i1 %i.bck, label %bb.hn, label %._crit_edge642.i

._crit_edge642.i:                                 ; preds = %bb.hm
  %.pre643.i = ptrtoint ptr %i.j to i64
  br label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  %i.bcl = ptrtoint ptr %.9235.i.i to i64
  %i.bcm = ptrtoint ptr %.pre640.i to i64
  %i.bcn = sub i64 %i.bcl, %i.bcm                 ; 3 uses
  %i.bco = ptrtoint ptr %i.j to i64               ; 2 uses
  %i.bcp = ptrtoint ptr %.15222.i.i to i64
  %i.bcq = sub i64 %i.bco, %i.bcp
  %.not276.i.i = icmp ugt i64 %i.bcn, %i.bcq
  br i1 %.not276.i.i, label %ZSTD_decompressSequencesLong_default.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.not275.i.i = icmp eq ptr %.15222.i.i, null
  br i1 %.not275.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.15222.i.i, ptr align 1 %.pre640.i, i64 %i.bcn, i1 false)
  %i.bcr = getelementptr inbounds nuw i8, ptr %.15222.i.i, i64 %i.bcn
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.16223.i.i = phi ptr [ %i.bcr, %bb.hp ], [ null, %bb.ho ]
  %i.bcs = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.bct = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %._crit_edge642.i
  %.pre-phi.i = phi i64 [ %.pre643.i, %._crit_edge642.i ], [ %i.bco, %bb.hq ]
  %i.bcu = phi ptr [ %.pre640.i, %._crit_edge642.i ], [ %i.bcs, %bb.hq ] ; 2 uses
  %.11237.i.i = phi ptr [ %.9235.i.i, %._crit_edge642.i ], [ %i.bct, %bb.hq ]
  %.18.i.i = phi ptr [ %.15222.i.i, %._crit_edge642.i ], [ %.16223.i.i, %bb.hq ] ; 4 uses
  %i.bcv = ptrtoint ptr %.11237.i.i to i64
  %i.bcw = ptrtoint ptr %i.bcu to i64
  %i.bcx = sub i64 %i.bcv, %i.bcw                 ; 3 uses
  %i.bcy = ptrtoint ptr %.18.i.i to i64
  %i.bcz = sub i64 %.pre-phi.i, %i.bcy
  %.not278.i.i = icmp ugt i64 %i.bcx, %i.bcz
  br i1 %.not278.i.i, label %ZSTD_decompressSequencesLong_default.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.not277.i.i = icmp eq ptr %.18.i.i, null
  br i1 %.not277.i.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.18.i.i, ptr align 1 %i.bcu, i64 %i.bcx, i1 false)
  %i.bda = getelementptr inbounds nuw i8, ptr %.18.i.i, i64 %i.bcx
  %i.bdb = ptrtoint ptr %i.bda to i64
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.20.i.ph.i = phi i64 [ 0, %bb.hs ], [ %i.bdb, %bb.ht ]
  %i.bdc = ptrtoint ptr %1 to i64
  %i.bdd = sub i64 %.20.i.ph.i, %i.bdc
  br label %ZSTD_decompressSequencesLong_default.exit

ZSTD_decompressSequencesLong_default.exit:        ; preds = %.thread508.i, %bb.hn, %bb.hr, %bb.hu
  %.17.i.i = phi i64 [ %i.bdd, %bb.hu ], [ %.12.i.ph.i, %.thread508.i ], [ -70, %bb.hr ], [ -70, %bb.hn ]
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
end_hunk_1
begin_hunk_2_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
  %i.nm = phi ptr [ %i.nj, %bb.bb ], [ %i.lb, %bb.ba ], [ %i.mw, %bb.az ], [ @BIT_reloadDStream.zeroFilled, %bb.ax ] ; 2 uses
  %i.nn = phi i32 [ %i.nl, %bb.bb ], [ %i.mi, %bb.ba ], [ %i.mx, %bb.az ], [ %i.mi, %bb.ax ] ; 2 uses
  %i.no = phi i64 [ %.val.i35.i, %bb.bb ], [ %i.ld, %bb.ba ], [ %.val.i.i34.i, %bb.az ], [ %i.ld, %bb.ax ] ; 2 uses
  %i.np = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sroa.052.0.i ; 2 uses
  %i.nr = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.ns = icmp ugt ptr %i.nq, %i.nr
  br i1 %i.ns, label %bb.bx, label %bb.bc

ZSTD_decodeSequence.exit189.i.thread.i:           ; preds = %bb.av
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.sroa.052.0.i ; 2 uses
  %i.nv = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.nw = icmp ugt ptr %i.nu, %i.nv
  br i1 %i.nw, label %.thread362.i, label %bb.bc

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
  store i64 %.sroa.052.0.i, ptr %6, align 8
  store i64 %.sroa.653.0.i, ptr %.sroa.958.0..sroa_idx.i, align 8
  store i64 %.sink.i, ptr %.sroa.10.0..sroa_idx.i, align 8
  %i.og = getelementptr i8, ptr %.0132.i260.i, i64 %.sroa.052.0.i ; 7 uses
  %i.oh = add i64 %.sroa.052.0.i, %.sroa.653.0.i  ; 9 uses
  %i.oi = sub i64 0, %.sink.i
  %i.oj = getelementptr inbounds i8, ptr %i.og, i64 %i.oi ; 2 uses
  %i.ok = icmp ugt ptr %i.oa, %i.h
  %i.ol = getelementptr inbounds nuw i8, ptr %.0132.i260.i, i64 %i.oh
  %i.om = icmp ugt ptr %i.ol, %i.of
  %or.cond.i197.i.i = select i1 %i.ok, i1 true, i1 %i.om, !prof !104
  br i1 %or.cond.i197.i.i, label %bb.bd, label %.critedge.i198.i.i, !prof !104

.critedge.i198.i.i:                               ; preds = %bb.bc
  %i.on = load <2 x i64>, ptr %i.ob, align 1, !tbaa !11
  store <2 x i64> %i.on, ptr %.0132.i260.i, align 1, !tbaa !11
  %i.oo = icmp ugt i64 %.sroa.052.0.i, 16
  br i1 %i.oo, label %bb.be, label %ZSTD_wildcopy.exit.i.i, !prof !52

bb.bd:                                            ; preds = %bb.bc
  %i.op = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.0132.i260.i, ptr noundef %i.d, ptr noundef nonnull %i.of, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.be:                                            ; preds = %.critedge.i198.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.0132.i260.i, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.os = add i64 %.sroa.052.0.i, -16
  %i.ot = load <2 x i64>, ptr %i.or, align 1, !tbaa !11
  store <2 x i64> %i.ot, ptr %i.oq, align 1, !tbaa !11
  %i.ou = icmp slt i64 %i.os, 17
  br i1 %i.ou, label %ZSTD_wildcopy.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ov = getelementptr inbounds nuw i8, ptr %.0132.i260.i, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i.i = phi ptr [ %i.ov, %bb.bf ], [ %i.pa, %bb.bg ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.or, %bb.bf ], [ %i.oy, %bb.bg ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.ow = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !11
  store <2 x i64> %i.ow, ptr %.130.i.i.i, align 1, !tbaa !11
  %i.ox = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %i.oz = load <2 x i64>, ptr %i.oy, align 1, !tbaa !11
  store <2 x i64> %i.oz, ptr %i.ox, align 1, !tbaa !11
  %i.pa = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.pb = icmp ult ptr %i.pa, %i.og
  br i1 %i.pb, label %bb.bg, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !100

ZSTD_wildcopy.exit.i.i:                           ; preds = %bb.bg, %bb.be, %.critedge.i198.i.i
  store ptr %i.oa, ptr %i.a, align 8, !tbaa !38
  %i.pc = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.pd = sub i64 %i.pc, %i.gu                    ; 3 uses
  %i.pe = icmp ugt i64 %.sink.i, %i.pd
  br i1 %i.pe, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.pf = sub i64 %i.pc, %i.gv
  %i.pg = icmp ugt i64 %.sink.i, %i.pf
  br i1 %i.pg, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i, label %bb.bi, !prof !52

ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i:  ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread211.i

bb.bi:                                            ; preds = %bb.bh
  %i.ph = ptrtoint ptr %i.oj to i64
  %i.pi = sub i64 %i.ph, %i.gu                    ; 3 uses
  %i.pj = getelementptr inbounds i8, ptr %i.n, i64 %i.pi ; 2 uses
  %i.pk = add nsw i64 %i.pi, %.sroa.653.0.i       ; 3 uses
  %.not.i200.i.i = icmp sgt i64 %i.pk, 0
  br i1 %.not.i200.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pj, i64 %.sroa.653.0.i, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i201.i.i = sub nsw i64 0, %i.pi        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pj, i64 %gepdiff.i201.i.i, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.og, i64 %gepdiff.i201.i.i
  store i64 %i.pk, ptr %.sroa.958.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %ZSTD_wildcopy.exit.i.i
  %.0145.i = phi ptr [ %i.j, %bb.bk ], [ %i.oj, %ZSTD_wildcopy.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.pl, %bb.bk ], [ %i.og, %ZSTD_wildcopy.exit.i.i ] ; 12 uses
  %i.pm = phi i64 [ %i.pk, %bb.bk ], [ %.sroa.653.0.i, %ZSTD_wildcopy.exit.i.i ] ; 5 uses
  %i.pn = icmp ugt i64 %.sink.i, 15
  br i1 %i.pn, label %bb.bm, label %bb.bp, !prof !89

bb.bm:                                            ; preds = %bb.bl
  %i.po = getelementptr inbounds i8, ptr %.0.i, i64 %i.pm
  %i.pp = load <2 x i64>, ptr %.0145.i, align 1, !tbaa !11
  store <2 x i64> %i.pp, ptr %.0.i, align 1, !tbaa !11
  %i.pq = icmp slt i64 %i.pm, 17
  br i1 %i.pq, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pr = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i233.i.i = phi ptr [ %i.pr, %bb.bn ], [ %i.pw, %bb.bo ] ; 3 uses
  %.pn.i234.i.i = phi ptr [ %.0145.i, %bb.bn ], [ %i.pu, %bb.bo ] ; 2 uses
  %.1.i235.i.i = getelementptr inbounds nuw i8, ptr %.pn.i234.i.i, i64 16
  %i.ps = load <2 x i64>, ptr %.1.i235.i.i, align 1, !tbaa !11
  store <2 x i64> %i.ps, ptr %.130.i233.i.i, align 1, !tbaa !11
  %i.pt = getelementptr inbounds nuw i8, ptr %.130.i233.i.i, i64 16
  %i.pu = getelementptr inbounds nuw i8, ptr %.pn.i234.i.i, i64 32 ; 2 uses
  %i.pv = load <2 x i64>, ptr %i.pu, align 1, !tbaa !11
  store <2 x i64> %i.pv, ptr %i.pt, align 1, !tbaa !11
  %i.pw = getelementptr inbounds nuw i8, ptr %.130.i233.i.i, i64 32 ; 2 uses
  %i.px = icmp ult ptr %i.pw, %i.po
  br i1 %i.px, label %bb.bo, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !100

bb.bp:                                            ; preds = %bb.bl
  %i.py = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.py, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !5
  %i.qb = load i8, ptr %.0145.i, align 1, !tbaa !11
  store i8 %i.qb, ptr %.0.i, align 1, !tbaa !11
  %i.qc = getelementptr inbounds nuw i8, ptr %.0145.i, i64 1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !11
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !11
  %i.qf = getelementptr inbounds nuw i8, ptr %.0145.i, i64 2
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !11
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !11
  %i.qi = getelementptr inbounds nuw i8, ptr %.0145.i, i64 3
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !11
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !11
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !5
  %i.qn = zext i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %.0145.i, i64 %i.qn ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.qq = load i32, ptr %i.qo, align 1
  store i32 %i.qq, ptr %i.qp, align 1
  %i.qr = sext i32 %i.qa to i64
  %i.qs = sub nsw i64 0, %i.qr
  %i.qt = getelementptr inbounds i8, ptr %i.qo, i64 %i.qs
  br label %ZSTD_overlapCopy8.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %i.qu = load i64, ptr %.0145.i, align 1
  store i64 %i.qu, ptr %.0.i, align 1
  br label %ZSTD_overlapCopy8.exit.i.i

ZSTD_overlapCopy8.exit.i.i:                       ; preds = %bb.br, %bb.bq
  %.1.i = phi ptr [ %i.qt, %bb.bq ], [ %.0145.i, %bb.br ] ; 2 uses
  %.1.i107 = ptrtoaddr ptr %.1.i to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qx = icmp ugt i64 %i.pm, 8
  br i1 %i.qx, label %bb.bs, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bs:                                            ; preds = %ZSTD_overlapCopy8.exit.i.i
  %i.qy = ptrtoint ptr %i.qw to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = getelementptr i8, ptr %.0.i, i64 %i.pm  ; 2 uses
  %i.rc = icmp slt i64 %i.ra, 16
  br i1 %i.rc, label %.preheader240.i.preheader, label %bb.bt

.preheader240.i.preheader:                        ; preds = %bb.bs
  %i.rd = add i64 %.sroa.653.0.i, %i.gu
  %i.re = add i64 %.sink.i, %i.pd
  %umax108 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.pd) ; 2 uses
  %i.rf = add i64 %i.rd, %i.re
  %i.rg = sub i64 %i.rf, %.sink.i
  %i.rh = add i64 %i.gx, %umax108
  %umax109 = tail call i64 @llvm.umax.i64(i64 %i.rg, i64 %i.rh)
  %i.ri = add i64 %umax109, -9
  %i.rj = add i64 %umax108, %i.gu
  %i.rk = sub i64 %i.ri, %i.rj                    ; 2 uses
  %i.rl = lshr i64 %i.rk, 3
  %i.rm = add nuw nsw i64 %i.rl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rk, 72
  br i1 %min.iters.check, label %.preheader240.i.preheader255, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader240.i.preheader
  %i.rn = sub i64 %.sroa.052.0.i, %i.gu
  %i.ro = add i64 %i.rn, %.0132.i260.i106
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.ro)
  %i.rp = add i64 %umax, %i.gu
  %i.rq = sub i64 %i.rp, %.1.i107
  %diff.check = icmp ult i64 %i.rq, 32
  br i1 %diff.check, label %.preheader240.i.preheader255, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rm, 4611686018427387900     ; 3 uses
  %i.rr = shl i64 %n.vec, 3                       ; 2 uses
  %i.rs = getelementptr i8, ptr %i.qw, i64 %i.rr
  %i.rt = getelementptr i8, ptr %i.qv, i64 %i.rr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ru = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qw, i64 %i.ru ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.qv, i64 %i.ru ; 2 uses
  %i.rv = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 1
  %wide.load111 = load <2 x i64>, ptr %i.rv, align 1
  %i.rw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load111, ptr %i.rw, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rx = icmp eq i64 %index.next, %n.vec
  br i1 %i.rx, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rm, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %.preheader240.i.preheader255

.preheader240.i.preheader255:                     ; preds = %vector.memcheck, %.preheader240.i.preheader, %middle.block
  %.029.i.i.i.ph = phi ptr [ %i.qw, %vector.memcheck ], [ %i.qw, %.preheader240.i.preheader ], [ %i.rs, %middle.block ]
  %.0.i242.i.i.ph = phi ptr [ %i.qv, %vector.memcheck ], [ %i.qv, %.preheader240.i.preheader ], [ %i.rt, %middle.block ]
  br label %.preheader240.i

.preheader240.i:                                  ; preds = %.preheader240.i.preheader255, %.preheader240.i
  %.029.i.i.i = phi ptr [ %i.rz, %.preheader240.i ], [ %.029.i.i.i.ph, %.preheader240.i.preheader255 ] ; 2 uses
  %.0.i242.i.i = phi ptr [ %i.sa, %.preheader240.i ], [ %.0.i242.i.i.ph, %.preheader240.i.preheader255 ] ; 2 uses
  %i.ry = load i64, ptr %.0.i242.i.i, align 1
  store i64 %i.ry, ptr %.029.i.i.i, align 1
  %i.rz = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.0.i242.i.i, i64 8
  %i.sb = icmp ult ptr %i.rz, %i.rb
  br i1 %i.sb, label %.preheader240.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !131

bb.bt:                                            ; preds = %bb.bs
  %i.sc = load <2 x i64>, ptr %i.qv, align 1, !tbaa !11
  store <2 x i64> %i.sc, ptr %i.qw, align 1, !tbaa !11
  %i.sd = icmp slt i64 %i.pm, 25
  br i1 %i.sd, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.se = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i239.i.i = phi ptr [ %i.se, %bb.bu ], [ %i.sj, %bb.bv ] ; 3 uses
  %.pn.i240.i.i = phi ptr [ %i.qv, %bb.bu ], [ %i.sh, %bb.bv ] ; 2 uses
  %.1.i241.i.i = getelementptr inbounds nuw i8, ptr %.pn.i240.i.i, i64 16
  %i.sf = load <2 x i64>, ptr %.1.i241.i.i, align 1, !tbaa !11
  store <2 x i64> %i.sf, ptr %.130.i239.i.i, align 1, !tbaa !11
  %i.sg = getelementptr inbounds nuw i8, ptr %.130.i239.i.i, i64 16
  %i.sh = getelementptr inbounds nuw i8, ptr %.pn.i240.i.i, i64 32 ; 2 uses
  %i.si = load <2 x i64>, ptr %i.sh, align 1, !tbaa !11
  store <2 x i64> %i.si, ptr %i.sg, align 1, !tbaa !11
  %i.sj = getelementptr inbounds nuw i8, ptr %.130.i239.i.i, i64 32 ; 2 uses
  %i.sk = icmp ult ptr %i.sj, %i.rb
  br i1 %i.sk, label %bb.bv, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !100

ZSTD_execSequenceSplitLitBuffer.exit.i.i:         ; preds = %bb.bv, %.preheader240.i, %bb.bo, %middle.block, %bb.bt, %ZSTD_overlapCopy8.exit.i.i, %bb.bm, %bb.bj, %bb.bd
  %.0.i199.i.i = phi i64 [ %i.op, %bb.bd ], [ %i.oh, %middle.block ], [ %i.oh, %bb.bj ], [ %i.oh, %ZSTD_overlapCopy8.exit.i.i ], [ %i.oh, %bb.bm ], [ %i.oh, %bb.bt ], [ %i.oh, %bb.bo ], [ %i.oh, %.preheader240.i ], [ %i.oh, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sl = icmp ult i64 %.0.i199.i.i, -119
  br i1 %i.sl, label %bb.bw, label %.thread211.i

bb.bw:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i.i
  %i.sm = getelementptr inbounds nuw i8, ptr %.0132.i260.i, i64 %.0.i199.i.i ; 2 uses
  %i.sn = add nsw i32 %.0125.i262.i, -1           ; 2 uses
  %.not169.i.i = icmp eq i32 %i.sn, 0
  br i1 %.not169.i.i, label %.thread207.i, label %bb.ae, !llvm.loop !132

bb.bx:                                            ; preds = %ZSTD_decodeSequence.exit189.i.i
  %i.so = icmp sgt i32 %.0125.i262.i, 0
  br i1 %i.so, label %.thread362.i, label %.thread211.i

.thread362.i:                                     ; preds = %ZSTD_decodeSequence.exit189.i.thread.i, %bb.bx
  %i.sp = phi ptr [ %i.nm, %bb.bx ], [ %i.lb, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.sq = phi i32 [ %i.nn, %bb.bx ], [ %i.ln, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.sr = phi i64 [ %i.no, %bb.bx ], [ %i.ld, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.ss = phi i64 [ %i.mh, %bb.bx ], [ %i.he, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.st = phi i64 [ %i.mr, %bb.bx ], [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.su = phi i64 [ %i.lx, %bb.bx ], [ %i.hg, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.sv = phi ptr [ %i.np, %bb.bx ], [ %i.nt, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 11 uses
  %i.sw = phi ptr [ %i.nr, %bb.bx ], [ %i.nv, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.sx = ptrtoint ptr %i.sw to i64               ; 2 uses
  %i.sy = ptrtoint ptr %i.sv to i64               ; 4 uses
  %i.sz = sub i64 %i.sx, %i.sy                    ; 9 uses
  %.not171.i.i = icmp eq ptr %i.sw, %i.sv
  br i1 %.not171.i.i, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %.thread362.i
  %i.ta = ptrtoint ptr %i.d to i64
  %i.tb = ptrtoint ptr %.0132.i260.i to i64       ; 8 uses
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = icmp ugt i64 %i.sz, %i.tc
  br i1 %i.td, label %.thread211.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.te = sub i64 %i.tb, %i.sy                    ; 2 uses
  %i.tf = getelementptr inbounds i8, ptr %.0132.i260.i, i64 %i.sz ; 3 uses
  %i.tg = icmp slt i64 %i.sz, 8
  %i.th = icmp sgt i64 %i.te, -8
  %or.cond.i.i = or i1 %i.th, %i.tg
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.ca

.preheader.i.i:                                   ; preds = %bb.bz
  %i.ti = icmp sgt i64 %i.sz, 0
  br i1 %i.ti, label %iter.check166, label %ZSTD_safecopyDstBeforeSrc.exit.i

iter.check166:                                    ; preds = %.preheader.i.i
  %i.tj = add i64 %i.tb, %i.sx
  %i.tk = sub i64 %i.tj, %i.sy
  %i.tl = add i64 %i.tb, 1
  %umax146 = tail call i64 @llvm.umax.i64(i64 %i.tk, i64 %i.tl)
  %i.tm = sub i64 %umax146, %i.tb                 ; 7 uses
  %min.iters.check148 = icmp ult i64 %i.tm, 4
  %i.tn = sub i64 %i.tb, %i.sy
  %diff.check145 = icmp ult i64 %i.tn, 32
  %or.cond = or i1 %min.iters.check148, %diff.check145
  br i1 %or.cond, label %.lr.ph40.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check166
  %min.iters.check150 = icmp ult i64 %i.tm, 32
  br i1 %min.iters.check150, label %vec.epilog.ph170, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %n.mod.vf152 = and i64 %i.tm, 28
  %n.vec153 = and i64 %i.tm, -32                  ; 5 uses
  %i.to = getelementptr i8, ptr %.0132.i260.i, i64 %n.vec153
  %i.tp = getelementptr i8, ptr %i.sv, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %.0132.i260.i, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.sv, i64 %index155 ; 2 uses
  %i.tq = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep157, align 1, !tbaa !11
  %wide.load159 = load <16 x i8>, ptr %i.tq, align 1, !tbaa !11
  %i.tr = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep156, align 1, !tbaa !11
  store <16 x i8> %wide.load159, ptr %i.tr, align 1, !tbaa !11
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.ts = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.ts, label %middle.block161, label %vector.body154, !llvm.loop !133

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.tm, %n.vec153
  br i1 %cmp.n162, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  %min.epilog.iters.check169 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph40.i.i.preheader, label %vec.epilog.ph170, !prof !97

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec172 = and i64 %i.tm, -4                   ; 4 uses
  %i.tt = getelementptr i8, ptr %.0132.i260.i, i64 %n.vec172
  %i.tu = getelementptr i8, ptr %i.sv, i64 %n.vec172
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph170
  %index174 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph170 ], [ %index.next178, %vec.epilog.vector.body173 ] ; 3 uses
  %next.gep175 = getelementptr i8, ptr %.0132.i260.i, i64 %index174
  %next.gep176 = getelementptr i8, ptr %i.sv, i64 %index174
  %wide.load177 = load <4 x i8>, ptr %next.gep176, align 1, !tbaa !11
  store <4 x i8> %wide.load177, ptr %next.gep175, align 1, !tbaa !11
  %index.next178 = add nuw i64 %index174, 4       ; 2 uses
  %i.tv = icmp eq i64 %index.next178, %n.vec172
  br i1 %i.tv, label %vec.epilog.middle.block179, label %vec.epilog.vector.body173, !llvm.loop !134

vec.epilog.middle.block179:                       ; preds = %vec.epilog.vector.body173
  %cmp.n180 = icmp eq i64 %i.tm, %n.vec172
  br i1 %cmp.n180, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph40.i.i.preheader
end_hunk_2
begin_hunk_3_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.237.i.i = phi ptr [ %i.vc, %.lr.ph.i.i ], [ %.237.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23136.i.i = phi ptr [ %i.va, %.lr.ph.i.i ], [ %.23136.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.23136.i.i, i64 1
  %i.vb = load i8, ptr %.23136.i.i, align 1, !tbaa !11
  %i.vc = getelementptr inbounds nuw i8, ptr %.237.i.i, i64 1 ; 2 uses
  store i8 %i.vb, ptr %.237.i.i, align 1, !tbaa !11
  %exitcond.not.i.i = icmp eq ptr %i.vc, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i, !llvm.loop !138

ZSTD_safecopyDstBeforeSrc.exit.i:                 ; preds = %.lr.ph.i.i, %.lr.ph40.i.i, %middle.block130, %vec.epilog.middle.block, %middle.block161, %vec.epilog.middle.block179, %.preheader.i.i
  %i.vd = sub i64 %.sroa.052.0.i, %i.sz
  br label %bb.ce

bb.ce:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit.i, %.thread362.i
  %.sroa.055.2.i = phi i64 [ %.sroa.052.0.i, %.thread362.i ], [ %i.vd, %ZSTD_safecopyDstBeforeSrc.exit.i ] ; 8 uses
  %.2134.i.i = phi ptr [ %.0132.i260.i, %.thread362.i ], [ %i.tf, %ZSTD_safecopyDstBeforeSrc.exit.i ] ; 8 uses
  %.2134.i.i184 = ptrtoaddr ptr %.2134.i.i to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.ve, ptr %i.a, align 8, !tbaa !38
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.vg, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.055.2.i, ptr %7, align 8
  %.sroa.958.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.653.0.i, ptr %.sroa.958.0..sroa_idx59.i, align 8
  %.sroa.10.0..sroa_idx61.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink.i, ptr %.sroa.10.0..sroa_idx61.i, align 8
  %i.vh = getelementptr i8, ptr %.2134.i.i, i64 %.sroa.055.2.i ; 7 uses
  %i.vi = add i64 %.sroa.055.2.i, %.sroa.653.0.i  ; 9 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.sroa.055.2.i
  %i.vk = sub i64 0, %.sink.i
  %i.vl = getelementptr inbounds i8, ptr %i.vh, i64 %i.vk ; 2 uses
  %i.vm = icmp ugt i64 %.sroa.055.2.i, 65536
  %i.vn = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.2134.i.i, i64 %i.vi
  %i.vp = icmp ugt ptr %i.vo, %i.vn
  %or.cond.i191.i.i = select i1 %i.vm, i1 true, i1 %i.vp, !prof !104
  br i1 %or.cond.i191.i.i, label %bb.cf, label %.critedge.i192.i.i, !prof !104

.critedge.i192.i.i:                               ; preds = %bb.ce
  %i.vq = load <2 x i64>, ptr %i.ve, align 1, !tbaa !11
  store <2 x i64> %i.vq, ptr %.2134.i.i, align 1, !tbaa !11
  %i.vr = icmp samesign ugt i64 %.sroa.055.2.i, 16
  br i1 %i.vr, label %bb.cg, label %ZSTD_wildcopy.exit250.i.i, !prof !52

bb.cf:                                            ; preds = %bb.ce
  %i.vs = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2134.i.i, ptr noundef %i.d, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.vf, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %.loopexit.i

bb.cg:                                            ; preds = %.critedge.i192.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.2134.i.i, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %i.vv = load <2 x i64>, ptr %i.vu, align 1, !tbaa !11
  store <2 x i64> %i.vv, ptr %i.vt, align 1, !tbaa !11
  %i.vw = icmp samesign ult i64 %.sroa.055.2.i, 33
  br i1 %i.vw, label %ZSTD_wildcopy.exit250.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vx = getelementptr inbounds nuw i8, ptr %.2134.i.i, i64 32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.130.i245.i.i = phi ptr [ %i.vx, %bb.ch ], [ %i.wc, %bb.ci ] ; 3 uses
  %.pn.i246.i.i = phi ptr [ %i.vu, %bb.ch ], [ %i.wa, %bb.ci ] ; 2 uses
  %.1.i247.i.i = getelementptr inbounds nuw i8, ptr %.pn.i246.i.i, i64 16
  %i.vy = load <2 x i64>, ptr %.1.i247.i.i, align 1, !tbaa !11
  store <2 x i64> %i.vy, ptr %.130.i245.i.i, align 1, !tbaa !11
  %i.vz = getelementptr inbounds nuw i8, ptr %.130.i245.i.i, i64 16
  %i.wa = getelementptr inbounds nuw i8, ptr %.pn.i246.i.i, i64 32 ; 2 uses
  %i.wb = load <2 x i64>, ptr %i.wa, align 1, !tbaa !11
  store <2 x i64> %i.wb, ptr %i.vz, align 1, !tbaa !11
  %i.wc = getelementptr inbounds nuw i8, ptr %.130.i245.i.i, i64 32 ; 2 uses
  %i.wd = icmp ult ptr %i.wc, %i.vh
  br i1 %i.wd, label %bb.ci, label %ZSTD_wildcopy.exit250.i.i, !llvm.loop !100

ZSTD_wildcopy.exit250.i.i:                        ; preds = %bb.ci, %bb.cg, %.critedge.i192.i.i
  store ptr %i.vj, ptr %i.a, align 8, !tbaa !38
  %i.we = ptrtoint ptr %i.vh to i64               ; 2 uses
  %i.wf = sub i64 %i.we, %i.gu                    ; 3 uses
  %i.wg = icmp ugt i64 %.sink.i, %i.wf
  br i1 %i.wg, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %ZSTD_wildcopy.exit250.i.i
  %i.wh = sub i64 %i.we, %i.gv
  %i.wi = icmp ugt i64 %.sink.i, %i.wh
  br i1 %i.wi, label %.loopexit.thread.i, label %bb.ck, !prof !52

.loopexit.thread.i:                               ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread211.i

bb.ck:                                            ; preds = %bb.cj
  %i.wj = ptrtoint ptr %i.vl to i64
  %i.wk = sub i64 %i.wj, %i.gu                    ; 3 uses
  %i.wl = getelementptr inbounds i8, ptr %i.n, i64 %i.wk ; 2 uses
  %i.wm = add nsw i64 %i.wk, %.sroa.653.0.i       ; 3 uses
  %.not.i194.i.i = icmp sgt i64 %i.wm, 0
  br i1 %.not.i194.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vh, ptr align 1 %i.wl, i64 %.sroa.653.0.i, i1 false)
  br label %.loopexit.i

bb.cm:                                            ; preds = %bb.ck
  %gepdiff.i195.i.i = sub nsw i64 0, %i.wk        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vh, ptr align 1 %i.wl, i64 %gepdiff.i195.i.i, i1 false)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vh, i64 %gepdiff.i195.i.i
  store i64 %i.wm, ptr %.sroa.958.0..sroa_idx59.i, align 8, !tbaa !129
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %ZSTD_wildcopy.exit250.i.i
  %.0151.i = phi ptr [ %i.wn, %bb.cm ], [ %i.vh, %ZSTD_wildcopy.exit250.i.i ] ; 12 uses
  %.0149.i = phi ptr [ %i.j, %bb.cm ], [ %i.vl, %ZSTD_wildcopy.exit250.i.i ] ; 9 uses
  %i.wo = phi i64 [ %i.wm, %bb.cm ], [ %.sroa.653.0.i, %ZSTD_wildcopy.exit250.i.i ] ; 5 uses
  %i.wp = icmp ugt i64 %.sink.i, 15
  br i1 %i.wp, label %bb.co, label %bb.cr, !prof !89

bb.co:                                            ; preds = %bb.cn
  %i.wq = getelementptr inbounds i8, ptr %.0151.i, i64 %i.wo
  %i.wr = load <2 x i64>, ptr %.0149.i, align 1, !tbaa !11
  store <2 x i64> %i.wr, ptr %.0151.i, align 1, !tbaa !11
  %i.ws = icmp slt i64 %i.wo, 17
  br i1 %i.ws, label %.loopexit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wt = getelementptr inbounds nuw i8, ptr %.0151.i, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.130.i252.i.i = phi ptr [ %i.wt, %bb.cp ], [ %i.wy, %bb.cq ] ; 3 uses
  %.pn.i253.i.i = phi ptr [ %.0149.i, %bb.cp ], [ %i.ww, %bb.cq ] ; 2 uses
  %.1.i254.i.i = getelementptr inbounds nuw i8, ptr %.pn.i253.i.i, i64 16
  %i.wu = load <2 x i64>, ptr %.1.i254.i.i, align 1, !tbaa !11
  store <2 x i64> %i.wu, ptr %.130.i252.i.i, align 1, !tbaa !11
  %i.wv = getelementptr inbounds nuw i8, ptr %.130.i252.i.i, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %.pn.i253.i.i, i64 32 ; 2 uses
  %i.wx = load <2 x i64>, ptr %i.ww, align 1, !tbaa !11
  store <2 x i64> %i.wx, ptr %i.wv, align 1, !tbaa !11
  %i.wy = getelementptr inbounds nuw i8, ptr %.130.i252.i.i, i64 32 ; 2 uses
  %i.wz = icmp ult ptr %i.wy, %i.wq
  br i1 %i.wz, label %bb.cq, label %.loopexit.i, !llvm.loop !100

bb.cr:                                            ; preds = %bb.cn
  %i.xa = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.xa, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !5
  %i.xd = load i8, ptr %.0149.i, align 1, !tbaa !11
  store i8 %i.xd, ptr %.0151.i, align 1, !tbaa !11
  %i.xe = getelementptr inbounds nuw i8, ptr %.0149.i, i64 1
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !11
  %i.xg = getelementptr inbounds nuw i8, ptr %.0151.i, i64 1
  store i8 %i.xf, ptr %i.xg, align 1, !tbaa !11
  %i.xh = getelementptr inbounds nuw i8, ptr %.0149.i, i64 2
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !11
  %i.xj = getelementptr inbounds nuw i8, ptr %.0151.i, i64 2
  store i8 %i.xi, ptr %i.xj, align 1, !tbaa !11
  %i.xk = getelementptr inbounds nuw i8, ptr %.0149.i, i64 3
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !11
  %i.xm = getelementptr inbounds nuw i8, ptr %.0151.i, i64 3
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !11
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !5
  %i.xp = zext i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw i8, ptr %.0149.i, i64 %i.xp ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.0151.i, i64 4
  %i.xs = load i32, ptr %i.xq, align 1
  store i32 %i.xs, ptr %i.xr, align 1
  %i.xt = sext i32 %i.xc to i64
  %i.xu = sub nsw i64 0, %i.xt
  %i.xv = getelementptr inbounds i8, ptr %i.xq, i64 %i.xu
  br label %ZSTD_overlapCopy8.exit286.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.xw = load i64, ptr %.0149.i, align 1
  store i64 %i.xw, ptr %.0151.i, align 1
  br label %ZSTD_overlapCopy8.exit286.i.i

ZSTD_overlapCopy8.exit286.i.i:                    ; preds = %bb.ct, %bb.cs
  %.1150.i = phi ptr [ %i.xv, %bb.cs ], [ %.0149.i, %bb.ct ] ; 2 uses
  %.1150.i186 = ptrtoaddr ptr %.1150.i to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %.1150.i, i64 8 ; 7 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.0151.i, i64 8 ; 6 uses
  %i.xz = icmp ugt i64 %i.wo, 8
  br i1 %i.xz, label %bb.cu, label %.loopexit.i

bb.cu:                                            ; preds = %ZSTD_overlapCopy8.exit286.i.i
  %i.ya = ptrtoint ptr %i.xy to i64
  %i.yb = ptrtoint ptr %i.xx to i64
  %i.yc = sub i64 %i.ya, %i.yb
  %i.yd = getelementptr i8, ptr %.0151.i, i64 %i.wo ; 2 uses
  %i.ye = icmp slt i64 %i.yc, 16
  br i1 %i.ye, label %.preheader236.i.preheader, label %bb.cv

.preheader236.i.preheader:                        ; preds = %bb.cu
  %i.yf = add i64 %.sroa.653.0.i, %i.gu
  %i.yg = add i64 %.sink.i, %i.wf
  %umax189 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.wf) ; 2 uses
  %i.yh = add i64 %i.yf, %i.yg
  %i.yi = sub i64 %i.yh, %.sink.i
  %i.yj = add i64 %umax189, %i.gu
  %i.yk = add i64 %i.yj, 16
  %umax190 = tail call i64 @llvm.umax.i64(i64 %i.yi, i64 %i.yk)
  %i.yl = add i64 %umax190, -9
  %i.ym = add i64 %umax189, %i.gu
  %i.yn = sub i64 %i.yl, %i.ym                    ; 2 uses
  %i.yo = lshr i64 %i.yn, 3
  %i.yp = add nuw nsw i64 %i.yo, 1                ; 2 uses
  %min.iters.check192 = icmp ult i64 %i.yn, 152
  br i1 %min.iters.check192, label %.preheader236.i.preheader251, label %vector.memcheck183

vector.memcheck183:                               ; preds = %.preheader236.i.preheader
  %i.yq = add i64 %.sroa.055.2.i, %.2134.i.i184
  %i.yr = sub i64 %i.yq, %i.gu
  %umax185 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.yr)
  %i.ys = add i64 %umax185, %i.gu
  %i.yt = sub i64 %i.ys, %.1150.i186
  %diff.check187 = icmp ult i64 %i.yt, 32
  br i1 %diff.check187, label %.preheader236.i.preheader251, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck183
  %n.vec195 = and i64 %i.yp, 4611686018427387900  ; 3 uses
  %i.yu = shl i64 %n.vec195, 3                    ; 2 uses
  %i.yv = getelementptr i8, ptr %i.xy, i64 %i.yu
  %i.yw = getelementptr i8, ptr %i.xx, i64 %i.yu
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %i.yx = shl i64 %index197, 3                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.xy, i64 %i.yx ; 2 uses
  %next.gep199 = getelementptr i8, ptr %i.xx, i64 %i.yx ; 2 uses
  %i.yy = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load200 = load <2 x i64>, ptr %next.gep199, align 1
  %wide.load201 = load <2 x i64>, ptr %i.yy, align 1
  %i.yz = getelementptr i8, ptr %next.gep198, i64 16
  store <2 x i64> %wide.load200, ptr %next.gep198, align 1
  store <2 x i64> %wide.load201, ptr %i.yz, align 1
  %index.next202 = add nuw i64 %index197, 4       ; 2 uses
  %i.za = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.za, label %middle.block203, label %vector.body196, !llvm.loop !139

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %i.yp, %n.vec195
  br i1 %cmp.n204, label %.loopexit.i, label %.preheader236.i.preheader251

.preheader236.i.preheader251:                     ; preds = %vector.memcheck183, %.preheader236.i.preheader, %middle.block203
  %.029.i262.i.i.ph = phi ptr [ %i.xy, %vector.memcheck183 ], [ %i.xy, %.preheader236.i.preheader ], [ %i.yv, %middle.block203 ]
  %.0.i263.i.i.ph = phi ptr [ %i.xx, %vector.memcheck183 ], [ %i.xx, %.preheader236.i.preheader ], [ %i.yw, %middle.block203 ]
  br label %.preheader236.i

.preheader236.i:                                  ; preds = %.preheader236.i.preheader251, %.preheader236.i
  %.029.i262.i.i = phi ptr [ %i.zc, %.preheader236.i ], [ %.029.i262.i.i.ph, %.preheader236.i.preheader251 ] ; 2 uses
  %.0.i263.i.i = phi ptr [ %i.zd, %.preheader236.i ], [ %.0.i263.i.i.ph, %.preheader236.i.preheader251 ] ; 2 uses
  %i.zb = load i64, ptr %.0.i263.i.i, align 1
  store i64 %i.zb, ptr %.029.i262.i.i, align 1
  %i.zc = getelementptr inbounds nuw i8, ptr %.029.i262.i.i, i64 8 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.i263.i.i, i64 8
  %i.ze = icmp ult ptr %i.zc, %i.yd
  br i1 %i.ze, label %.preheader236.i, label %.loopexit.i, !llvm.loop !140

bb.cv:                                            ; preds = %bb.cu
  %i.zf = load <2 x i64>, ptr %i.xx, align 1, !tbaa !11
  store <2 x i64> %i.zf, ptr %i.xy, align 1, !tbaa !11
  %i.zg = icmp slt i64 %i.wo, 25
  br i1 %i.zg, label %.loopexit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zh = getelementptr inbounds nuw i8, ptr %.0151.i, i64 24
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.130.i259.i.i = phi ptr [ %i.zh, %bb.cw ], [ %i.zm, %bb.cx ] ; 3 uses
  %.pn.i260.i.i = phi ptr [ %i.xx, %bb.cw ], [ %i.zk, %bb.cx ] ; 2 uses
  %.1.i261.i.i = getelementptr inbounds nuw i8, ptr %.pn.i260.i.i, i64 16
  %i.zi = load <2 x i64>, ptr %.1.i261.i.i, align 1, !tbaa !11
  store <2 x i64> %i.zi, ptr %.130.i259.i.i, align 1, !tbaa !11
  %i.zj = getelementptr inbounds nuw i8, ptr %.130.i259.i.i, i64 16
  %i.zk = getelementptr inbounds nuw i8, ptr %.pn.i260.i.i, i64 32 ; 2 uses
  %i.zl = load <2 x i64>, ptr %i.zk, align 1, !tbaa !11
  store <2 x i64> %i.zl, ptr %i.zj, align 1, !tbaa !11
  %i.zm = getelementptr inbounds nuw i8, ptr %.130.i259.i.i, i64 32 ; 2 uses
  %i.zn = icmp ult ptr %i.zm, %i.yd
  br i1 %i.zn, label %bb.cx, label %.loopexit.i, !llvm.loop !100

.loopexit.i:                                      ; preds = %bb.cx, %.preheader236.i, %bb.cq, %middle.block203, %bb.cv, %ZSTD_overlapCopy8.exit286.i.i, %bb.co, %bb.cl, %bb.cf
  %.0.i193.i.i = phi i64 [ %i.vs, %bb.cf ], [ %i.vi, %bb.cq ], [ %i.vi, %bb.cl ], [ %i.vi, %ZSTD_overlapCopy8.exit286.i.i ], [ %i.vi, %bb.co ], [ %i.vi, %middle.block203 ], [ %i.vi, %bb.cv ], [ %i.vi, %.preheader236.i ], [ %i.vi, %bb.cx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.zo = icmp ult i64 %.0.i193.i.i, -119
  %i.zp = getelementptr inbounds nuw i8, ptr %.2134.i.i, i64 %.0.i193.i.i ; 2 uses
  %i.zq = add nsw i32 %.0125.i262.i, -1           ; 2 uses
  br i1 %i.zo, label %bb.cy, label %.thread211.i

bb.cy:                                            ; preds = %.loopexit.i
  %.not227.i = icmp eq i32 %i.zq, 0
  br i1 %.not227.i, label %.thread207.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !141
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !142
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !143
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !144
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !145
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.zr = add i64 %i.gu, 16
  br label %bb.da

bb.da:                                            ; preds = %bb.er, %bb.cz
  %i.zs = phi ptr [ %i.sp, %bb.cz ], [ %i.agg, %bb.er ] ; 8 uses
  %i.zt = phi i32 [ %i.sq, %bb.cz ], [ %i.agh, %bb.er ] ; 5 uses
  %i.zu = phi i64 [ %i.sr, %bb.cz ], [ %i.agi, %bb.er ] ; 6 uses
  %i.zv = phi i64 [ %i.jv, %bb.cz ], [ %i.acp, %bb.er ] ; 2 uses
  %i.zw = phi i64 [ %.sink441.i, %bb.cz ], [ %.sink443.i, %bb.er ] ; 6 uses
  %i.zx = phi i64 [ %.sink.i, %bb.cz ], [ %.sink442.i, %bb.er ] ; 6 uses
  %i.zy = phi i64 [ %i.ss, %bb.cz ], [ %i.agj, %bb.er ] ; 2 uses
  %i.zz = phi i64 [ %i.st, %bb.cz ], [ %i.agk, %bb.er ] ; 2 uses
  %i.aaa = phi i64 [ %i.su, %bb.cz ], [ %i.agl, %bb.er ] ; 2 uses
  %.4129.i265.i = phi i32 [ %i.zq, %bb.cz ], [ %i.akv, %bb.er ] ; 2 uses
  %.7139.i263.i = phi ptr [ %i.zp, %bb.cz ], [ %i.aku, %bb.er ] ; 8 uses
  %.7139.i263.i208 = ptrtoaddr ptr %.7139.i263.i to i64
  %.not231.i = icmp eq i32 %.4129.i265.i, 1
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.aaa ; 4 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.zy ; 4 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.zz ; 4 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !41, !noalias !146
  %i.aag = zext i32 %i.aaf to i64                 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !41, !noalias !146 ; 2 uses
  %i.aaj = zext i32 %i.aai to i64                 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !41, !noalias !146 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aab, i64 2
  %i.aan = load i8, ptr %i.aam, align 2, !tbaa !58, !noalias !146 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aac, i64 2
  %i.aap = load i8, ptr %i.aao, align 2, !tbaa !58, !noalias !146 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aad, i64 2
  %i.aar = load i8, ptr %i.aaq, align 2, !tbaa !58, !noalias !146 ; 4 uses
  %i.aas = zext i8 %i.aan to i32                  ; 2 uses
  %i.aat = zext i8 %i.aap to i32                  ; 2 uses
  %i.aau = add i8 %i.aap, %i.aan
  %i.aav = add i8 %i.aau, %i.aar
  %i.aaw = load i16, ptr %i.aab, align 4, !tbaa !57, !noalias !146
  %i.aax = load i16, ptr %i.aac, align 4, !tbaa !57, !noalias !146
  %i.aay = load i16, ptr %i.aad, align 4, !tbaa !57, !noalias !146
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aab, i64 3
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !56, !noalias !146 ; 2 uses
  %i.abb = zext i8 %i.aba to i32
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aac, i64 3
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !56, !noalias !146 ; 2 uses
  %i.abe = zext i8 %i.abd to i32
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aad, i64 3
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !56, !noalias !146 ; 2 uses
  %i.abh = zext i8 %i.abg to i32
  %i.abi = icmp ugt i8 %i.aar, 1
  br i1 %i.abi, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abj = zext i8 %i.aar to i32                  ; 2 uses
  %i.abk = and i32 %i.zt, 63
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = shl i64 %i.zu, %i.abl
  %i.abn = sub nsw i32 0, %i.abj
  %i.abo = and i32 %i.abn, 63
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = lshr i64 %i.abm, %i.abp
  %i.abr = add i32 %i.zt, %i.abj                  ; 2 uses
  store i32 %i.abr, ptr %i.cp, align 8, !tbaa !83, !noalias !146
  %i.abs = zext i32 %i.aal to i64
  %i.abt = add i64 %i.abq, %i.abs
  store i64 %i.zw, ptr %i.aa, align 8, !tbaa !45, !noalias !146
  br label %bb.dh

bb.dc:                                            ; preds = %bb.da
  %i.abu = icmp eq i32 %i.aai, 0                  ; 3 uses
  %i.abv = icmp eq i8 %i.aar, 0
  br i1 %i.abv, label %bb.dd, label %bb.de, !prof !89

bb.dd:                                            ; preds = %bb.dc
  %i.abw = select i1 %i.abu, i64 %i.zw, i64 %i.zx
  %i.abx = select i1 %i.abu, i64 %i.zx, i64 %i.zw
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.aby = zext i1 %i.abu to i32
  %i.abz = add i32 %i.aal, %i.aby
  %i.aca = zext i32 %i.abz to i64
  %i.acb = and i32 %i.zt, 63
  %i.acc = zext nneg i32 %i.acb to i64
  %i.acd = shl i64 %i.zu, %i.acc
  %i.ace = lshr i64 %i.acd, 63
  %i.acf = add i32 %i.zt, 1                       ; 3 uses
  store i32 %i.acf, ptr %i.cp, align 8, !tbaa !83, !noalias !146
  %i.acg = add nuw nsw i64 %i.ace, %i.aca         ; 3 uses
  %i.ach = icmp eq i64 %i.acg, 3
  br i1 %i.ach, label %.thread190.i, label %bb.df

.thread190.i:                                     ; preds = %bb.de
end_hunk_3
begin_hunk_4_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
  %i.afw = getelementptr inbounds i8, ptr %i.adv, i64 %i.afv
  %i.afx = icmp ult ptr %i.afw, %3
  %i.afy = ptrtoint ptr %i.adv to i64
  %i.afz = sub i64 %i.afy, %i.gw
  %i.aga = trunc i64 %i.afz to i32
  %.021.i220.i.i = select i1 %i.afx, i32 %i.aga, i32 %i.aft ; 2 uses
  %i.agb = zext i32 %.021.i220.i.i to i64
  %i.agc = sub nsw i64 0, %i.agb
  %i.agd = getelementptr inbounds i8, ptr %i.adv, i64 %i.agc ; 3 uses
  store ptr %i.agd, ptr %i.cz, align 8, !tbaa !78, !noalias !146
  %i.age = shl i32 %.021.i220.i.i, 3
  %i.agf = sub i32 %i.afc, %i.age                 ; 2 uses
  store i32 %i.agf, ptr %i.cp, align 8, !tbaa !83, !noalias !146
  %.val.i51.i = load i64, ptr %i.agd, align 1, !tbaa !45, !noalias !146 ; 2 uses
  store i64 %.val.i51.i, ptr %9, align 8, !tbaa !79, !noalias !146
  br label %ZSTD_decodeSequence.exit.i.i

ZSTD_decodeSequence.exit.i.i:                     ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.dr
  %i.agg = phi ptr [ %i.adv, %bb.dw ], [ @BIT_reloadDStream.zeroFilled, %bb.dt ], [ %i.afq, %bb.dv ], [ %i.agd, %bb.dx ], [ %i.adv, %bb.dr ] ; 2 uses
  %i.agh = phi i32 [ %i.afc, %bb.dw ], [ %i.afc, %bb.dt ], [ %i.afr, %bb.dv ], [ %i.agf, %bb.dx ], [ %i.aeh, %bb.dr ] ; 2 uses
  %i.agi = phi i64 [ %i.adx, %bb.dw ], [ %i.adx, %bb.dt ], [ %.val.i.i50.i, %bb.dv ], [ %.val.i51.i, %bb.dx ], [ %i.adx, %bb.dr ]
  %i.agj = phi i64 [ %i.afb, %bb.dw ], [ %i.afb, %bb.dt ], [ %i.afb, %bb.dv ], [ %i.afb, %bb.dx ], [ %i.zy, %bb.dr ]
  %i.agk = phi i64 [ %i.afl, %bb.dw ], [ %i.afl, %bb.dt ], [ %i.afl, %bb.dv ], [ %i.afl, %bb.dx ], [ %i.zz, %bb.dr ]
  %i.agl = phi i64 [ %i.aer, %bb.dw ], [ %i.aer, %bb.dt ], [ %i.aer, %bb.dv ], [ %i.aer, %bb.dx ], [ %i.aaa, %bb.dr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.i, ptr %8, align 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %.sink442.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.agm = getelementptr i8, ptr %.7139.i263.i, i64 %.sroa.0.0.i ; 7 uses
  %i.agn = add i64 %.sroa.0.0.i, %.sroa.6.0.i     ; 9 uses
  %i.ago = load ptr, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 %.sroa.0.0.i ; 2 uses
  %i.agq = sub i64 0, %.sink442.i
  %i.agr = getelementptr inbounds i8, ptr %i.agm, i64 %i.agq ; 2 uses
  %i.ags = icmp ugt ptr %i.agp, %i.vf
  %i.agt = getelementptr inbounds nuw i8, ptr %.7139.i263.i, i64 %i.agn
  %i.agu = icmp ugt ptr %i.agt, %i.vn
  %or.cond.i.i.i = select i1 %i.ags, i1 true, i1 %i.agu, !prof !104
  br i1 %or.cond.i.i.i, label %bb.dy, label %.critedge.i.i.i, !prof !104

.critedge.i.i.i:                                  ; preds = %ZSTD_decodeSequence.exit.i.i
  %i.agv = load <2 x i64>, ptr %i.ago, align 1, !tbaa !11
  store <2 x i64> %i.agv, ptr %.7139.i263.i, align 1, !tbaa !11
  %i.agw = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.agw, label %bb.dz, label %ZSTD_wildcopy.exit271.i.i, !prof !52

bb.dy:                                            ; preds = %ZSTD_decodeSequence.exit.i.i
  %i.agx = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.7139.i263.i, ptr noundef %i.d, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.vf, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %ZSTD_execSequence.exit.i.i

bb.dz:                                            ; preds = %.critedge.i.i.i
  %i.agy = getelementptr inbounds nuw i8, ptr %.7139.i263.i, i64 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.ago, i64 16 ; 2 uses
  %i.aha = add i64 %.sroa.0.0.i, -16
  %i.ahb = load <2 x i64>, ptr %i.agz, align 1, !tbaa !11
  store <2 x i64> %i.ahb, ptr %i.agy, align 1, !tbaa !11
  %i.ahc = icmp slt i64 %i.aha, 17
  br i1 %i.ahc, label %ZSTD_wildcopy.exit271.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahd = getelementptr inbounds nuw i8, ptr %.7139.i263.i, i64 32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %bb.ea
  %.130.i266.i.i = phi ptr [ %i.ahd, %bb.ea ], [ %i.ahi, %bb.eb ] ; 3 uses
  %.pn.i267.i.i = phi ptr [ %i.agz, %bb.ea ], [ %i.ahg, %bb.eb ] ; 2 uses
  %.1.i268.i.i = getelementptr inbounds nuw i8, ptr %.pn.i267.i.i, i64 16
  %i.ahe = load <2 x i64>, ptr %.1.i268.i.i, align 1, !tbaa !11
  store <2 x i64> %i.ahe, ptr %.130.i266.i.i, align 1, !tbaa !11
  %i.ahf = getelementptr inbounds nuw i8, ptr %.130.i266.i.i, i64 16
  %i.ahg = getelementptr inbounds nuw i8, ptr %.pn.i267.i.i, i64 32 ; 2 uses
  %i.ahh = load <2 x i64>, ptr %i.ahg, align 1, !tbaa !11
  store <2 x i64> %i.ahh, ptr %i.ahf, align 1, !tbaa !11
  %i.ahi = getelementptr inbounds nuw i8, ptr %.130.i266.i.i, i64 32 ; 2 uses
  %i.ahj = icmp ult ptr %i.ahi, %i.agm
  br i1 %i.ahj, label %bb.eb, label %ZSTD_wildcopy.exit271.i.i, !llvm.loop !100

ZSTD_wildcopy.exit271.i.i:                        ; preds = %bb.eb, %bb.dz, %.critedge.i.i.i
  store ptr %i.agp, ptr %i.a, align 8, !tbaa !38
  %i.ahk = ptrtoint ptr %i.agm to i64             ; 2 uses
  %i.ahl = sub i64 %i.ahk, %i.gu                  ; 3 uses
  %i.ahm = icmp ugt i64 %.sink442.i, %i.ahl
  br i1 %i.ahm, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %ZSTD_wildcopy.exit271.i.i
  %i.ahn = sub i64 %i.ahk, %i.gv
  %i.aho = icmp ugt i64 %.sink442.i, %i.ahn
  br i1 %i.aho, label %ZSTD_execSequence.exit.i.thread.i, label %bb.ed, !prof !52

ZSTD_execSequence.exit.i.thread.i:                ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread211.i

bb.ed:                                            ; preds = %bb.ec
  %i.ahp = ptrtoint ptr %i.agr to i64
  %i.ahq = sub i64 %i.ahp, %i.gu                  ; 3 uses
  %i.ahr = getelementptr inbounds i8, ptr %i.n, i64 %i.ahq ; 2 uses
  %i.ahs = add nsw i64 %i.ahq, %.sroa.6.0.i       ; 3 uses
  %.not.i190.i.i = icmp sgt i64 %i.ahs, 0
  br i1 %.not.i190.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agm, ptr align 1 %i.ahr, i64 %.sroa.6.0.i, i1 false)
  br label %ZSTD_execSequence.exit.i.i

bb.ef:                                            ; preds = %bb.ed
  %gepdiff.i.i.i = sub nsw i64 0, %i.ahq          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agm, ptr align 1 %i.ahr, i64 %gepdiff.i.i.i, i1 false)
  %i.aht = getelementptr inbounds nuw i8, ptr %i.agm, i64 %gepdiff.i.i.i
  store i64 %i.ahs, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %ZSTD_wildcopy.exit271.i.i
  %.0148.i = phi ptr [ %i.aht, %bb.ef ], [ %i.agm, %ZSTD_wildcopy.exit271.i.i ] ; 12 uses
  %.0146.i = phi ptr [ %i.j, %bb.ef ], [ %i.agr, %ZSTD_wildcopy.exit271.i.i ] ; 9 uses
  %i.ahu = phi i64 [ %i.ahs, %bb.ef ], [ %.sroa.6.0.i, %ZSTD_wildcopy.exit271.i.i ] ; 5 uses
  %i.ahv = icmp ugt i64 %.sink442.i, 15
  br i1 %i.ahv, label %bb.eh, label %bb.ek, !prof !89

bb.eh:                                            ; preds = %bb.eg
  %i.ahw = getelementptr inbounds i8, ptr %.0148.i, i64 %i.ahu
  %i.ahx = load <2 x i64>, ptr %.0146.i, align 1, !tbaa !11
  store <2 x i64> %i.ahx, ptr %.0148.i, align 1, !tbaa !11
  %i.ahy = icmp slt i64 %i.ahu, 17
  br i1 %i.ahy, label %ZSTD_execSequence.exit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0148.i, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %bb.ei
  %.130.i273.i.i = phi ptr [ %i.ahz, %bb.ei ], [ %i.aie, %bb.ej ] ; 3 uses
  %.pn.i274.i.i = phi ptr [ %.0146.i, %bb.ei ], [ %i.aic, %bb.ej ] ; 2 uses
  %.1.i275.i.i = getelementptr inbounds nuw i8, ptr %.pn.i274.i.i, i64 16
  %i.aia = load <2 x i64>, ptr %.1.i275.i.i, align 1, !tbaa !11
  store <2 x i64> %i.aia, ptr %.130.i273.i.i, align 1, !tbaa !11
  %i.aib = getelementptr inbounds nuw i8, ptr %.130.i273.i.i, i64 16
  %i.aic = getelementptr inbounds nuw i8, ptr %.pn.i274.i.i, i64 32 ; 2 uses
  %i.aid = load <2 x i64>, ptr %i.aic, align 1, !tbaa !11
  store <2 x i64> %i.aid, ptr %i.aib, align 1, !tbaa !11
  %i.aie = getelementptr inbounds nuw i8, ptr %.130.i273.i.i, i64 32 ; 2 uses
  %i.aif = icmp ult ptr %i.aie, %i.ahw
  br i1 %i.aif, label %bb.ej, label %ZSTD_execSequence.exit.i.i, !llvm.loop !100

bb.ek:                                            ; preds = %bb.eg
  %i.aig = icmp samesign ult i64 %.sink442.i, 8
  br i1 %i.aig, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink442.i
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !5
  %i.aij = load i8, ptr %.0146.i, align 1, !tbaa !11
  store i8 %i.aij, ptr %.0148.i, align 1, !tbaa !11
  %i.aik = getelementptr inbounds nuw i8, ptr %.0146.i, i64 1
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !11
  %i.aim = getelementptr inbounds nuw i8, ptr %.0148.i, i64 1
  store i8 %i.ail, ptr %i.aim, align 1, !tbaa !11
  %i.ain = getelementptr inbounds nuw i8, ptr %.0146.i, i64 2
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !11
  %i.aip = getelementptr inbounds nuw i8, ptr %.0148.i, i64 2
  store i8 %i.aio, ptr %i.aip, align 1, !tbaa !11
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0146.i, i64 3
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !11
  %i.ais = getelementptr inbounds nuw i8, ptr %.0148.i, i64 3
  store i8 %i.air, ptr %i.ais, align 1, !tbaa !11
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink442.i
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !5
  %i.aiv = zext i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0146.i, i64 %i.aiv ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.0148.i, i64 4
  %i.aiy = load i32, ptr %i.aiw, align 1
  store i32 %i.aiy, ptr %i.aix, align 1
  %i.aiz = sext i32 %i.aii to i64
  %i.aja = sub nsw i64 0, %i.aiz
  %i.ajb = getelementptr inbounds i8, ptr %i.aiw, i64 %i.aja
  br label %ZSTD_overlapCopy8.exit287.i.i

bb.em:                                            ; preds = %bb.ek
  %i.ajc = load i64, ptr %.0146.i, align 1
  store i64 %i.ajc, ptr %.0148.i, align 1
  br label %ZSTD_overlapCopy8.exit287.i.i

ZSTD_overlapCopy8.exit287.i.i:                    ; preds = %bb.em, %bb.el
  %.1147.i = phi ptr [ %i.ajb, %bb.el ], [ %.0146.i, %bb.em ] ; 2 uses
  %.1147.i210 = ptrtoaddr ptr %.1147.i to i64
  %i.ajd = getelementptr inbounds nuw i8, ptr %.1147.i, i64 8 ; 7 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.0148.i, i64 8 ; 6 uses
  %i.ajf = icmp ugt i64 %i.ahu, 8
  br i1 %i.ajf, label %bb.en, label %ZSTD_execSequence.exit.i.i

bb.en:                                            ; preds = %ZSTD_overlapCopy8.exit287.i.i
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = ptrtoint ptr %i.ajd to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = getelementptr i8, ptr %.0148.i, i64 %i.ahu ; 2 uses
  %i.ajk = icmp slt i64 %i.aji, 16
  br i1 %i.ajk, label %.preheader233.i.preheader, label %bb.eo

.preheader233.i.preheader:                        ; preds = %bb.en
  %i.ajl = add i64 %.sroa.6.0.i, %i.gu
  %i.ajm = add i64 %.sink442.i, %i.ahl
  %umax213 = tail call i64 @llvm.umax.i64(i64 %.sink442.i, i64 %i.ahl) ; 2 uses
  %i.ajn = add i64 %i.ajl, %i.ajm
  %i.ajo = sub i64 %i.ajn, %.sink442.i
  %i.ajp = add i64 %i.zr, %umax213
  %umax214 = tail call i64 @llvm.umax.i64(i64 %i.ajo, i64 %i.ajp)
  %i.ajq = add i64 %umax214, -9
  %i.ajr = add i64 %umax213, %i.gu
  %i.ajs = sub i64 %i.ajq, %i.ajr                 ; 2 uses
  %i.ajt = lshr i64 %i.ajs, 3
  %i.aju = add nuw nsw i64 %i.ajt, 1              ; 2 uses
  %min.iters.check216 = icmp ult i64 %i.ajs, 72
  br i1 %min.iters.check216, label %.preheader233.i.preheader234, label %vector.memcheck207

vector.memcheck207:                               ; preds = %.preheader233.i.preheader
  %i.ajv = sub i64 %.sroa.0.0.i, %i.gu
  %i.ajw = add i64 %i.ajv, %.7139.i263.i208
  %umax209 = tail call i64 @llvm.umax.i64(i64 %.sink442.i, i64 %i.ajw)
  %i.ajx = add i64 %umax209, %i.gu
  %i.ajy = sub i64 %i.ajx, %.1147.i210
  %diff.check211 = icmp ult i64 %i.ajy, 32
  br i1 %diff.check211, label %.preheader233.i.preheader234, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck207
  %n.vec219 = and i64 %i.aju, 4611686018427387900 ; 3 uses
  %i.ajz = shl i64 %n.vec219, 3                   ; 2 uses
  %i.aka = getelementptr i8, ptr %i.aje, i64 %i.ajz
  %i.akb = getelementptr i8, ptr %i.ajd, i64 %i.ajz
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next226, %vector.body220 ] ; 2 uses
  %i.akc = shl i64 %index221, 3                   ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.aje, i64 %i.akc ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.ajd, i64 %i.akc ; 2 uses
  %i.akd = getelementptr i8, ptr %next.gep223, i64 16
  %wide.load224 = load <2 x i64>, ptr %next.gep223, align 1
  %wide.load225 = load <2 x i64>, ptr %i.akd, align 1
  %i.ake = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x i64> %wide.load224, ptr %next.gep222, align 1
  store <2 x i64> %wide.load225, ptr %i.ake, align 1
  %index.next226 = add nuw i64 %index221, 4       ; 2 uses
  %i.akf = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.akf, label %middle.block227, label %vector.body220, !llvm.loop !149

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %i.aju, %n.vec219
  br i1 %cmp.n228, label %ZSTD_execSequence.exit.i.i, label %.preheader233.i.preheader234

.preheader233.i.preheader234:                     ; preds = %vector.memcheck207, %.preheader233.i.preheader, %middle.block227
  %.029.i283.i.i.ph = phi ptr [ %i.aje, %vector.memcheck207 ], [ %i.aje, %.preheader233.i.preheader ], [ %i.aka, %middle.block227 ]
  %.0.i284.i.i.ph = phi ptr [ %i.ajd, %vector.memcheck207 ], [ %i.ajd, %.preheader233.i.preheader ], [ %i.akb, %middle.block227 ]
  br label %.preheader233.i

.preheader233.i:                                  ; preds = %.preheader233.i.preheader234, %.preheader233.i
  %.029.i283.i.i = phi ptr [ %i.akh, %.preheader233.i ], [ %.029.i283.i.i.ph, %.preheader233.i.preheader234 ] ; 2 uses
  %.0.i284.i.i = phi ptr [ %i.aki, %.preheader233.i ], [ %.0.i284.i.i.ph, %.preheader233.i.preheader234 ] ; 2 uses
  %i.akg = load i64, ptr %.0.i284.i.i, align 1
  store i64 %i.akg, ptr %.029.i283.i.i, align 1
  %i.akh = getelementptr inbounds nuw i8, ptr %.029.i283.i.i, i64 8 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.0.i284.i.i, i64 8
  %i.akj = icmp ult ptr %i.akh, %i.ajj
  br i1 %i.akj, label %.preheader233.i, label %ZSTD_execSequence.exit.i.i, !llvm.loop !150

bb.eo:                                            ; preds = %bb.en
  %i.akk = load <2 x i64>, ptr %i.ajd, align 1, !tbaa !11
  store <2 x i64> %i.akk, ptr %i.aje, align 1, !tbaa !11
  %i.akl = icmp slt i64 %i.ahu, 25
  br i1 %i.akl, label %ZSTD_execSequence.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.akm = getelementptr inbounds nuw i8, ptr %.0148.i, i64 24
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.130.i280.i.i = phi ptr [ %i.akm, %bb.ep ], [ %i.akr, %bb.eq ] ; 3 uses
  %.pn.i281.i.i = phi ptr [ %i.ajd, %bb.ep ], [ %i.akp, %bb.eq ] ; 2 uses
  %.1.i282.i.i = getelementptr inbounds nuw i8, ptr %.pn.i281.i.i, i64 16
  %i.akn = load <2 x i64>, ptr %.1.i282.i.i, align 1, !tbaa !11
  store <2 x i64> %i.akn, ptr %.130.i280.i.i, align 1, !tbaa !11
  %i.ako = getelementptr inbounds nuw i8, ptr %.130.i280.i.i, i64 16
  %i.akp = getelementptr inbounds nuw i8, ptr %.pn.i281.i.i, i64 32 ; 2 uses
  %i.akq = load <2 x i64>, ptr %i.akp, align 1, !tbaa !11
  store <2 x i64> %i.akq, ptr %i.ako, align 1, !tbaa !11
  %i.akr = getelementptr inbounds nuw i8, ptr %.130.i280.i.i, i64 32 ; 2 uses
  %i.aks = icmp ult ptr %i.akr, %i.ajj
  br i1 %i.aks, label %bb.eq, label %ZSTD_execSequence.exit.i.i, !llvm.loop !100

ZSTD_execSequence.exit.i.i:                       ; preds = %bb.eq, %.preheader233.i, %bb.ej, %middle.block227, %bb.eo, %ZSTD_overlapCopy8.exit287.i.i, %bb.eh, %bb.ee, %bb.dy
  %.0.i.i.i = phi i64 [ %i.agx, %bb.dy ], [ %i.agn, %middle.block227 ], [ %i.agn, %bb.ee ], [ %i.agn, %ZSTD_overlapCopy8.exit287.i.i ], [ %i.agn, %bb.eh ], [ %i.agn, %bb.eo ], [ %i.agn, %bb.ej ], [ %i.agn, %.preheader233.i ], [ %i.agn, %bb.eq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.akt = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.akt, label %bb.er, label %.thread211.i

bb.er:                                            ; preds = %ZSTD_execSequence.exit.i.i
  %i.aku = getelementptr inbounds nuw i8, ptr %.7139.i263.i, i64 %.0.i.i.i ; 2 uses
  %i.akv = add nsw i32 %.4129.i265.i, -1          ; 2 uses
  %.not173.i.i = icmp eq i32 %i.akv, 0
  br i1 %.not173.i.i, label %.thread207.i, label %bb.da, !llvm.loop !151

.thread207.i:                                     ; preds = %bb.bw, %bb.er, %bb.cy
  %i.akw = phi ptr [ %i.agg, %bb.er ], [ %i.sp, %bb.cy ], [ %i.nx, %bb.bw ]
  %i.akx = phi i32 [ %i.agh, %bb.er ], [ %i.sq, %bb.cy ], [ %i.ny, %bb.bw ]
  %i.aky = phi i64 [ %i.acp, %bb.er ], [ %i.jv, %bb.cy ], [ %i.jv, %bb.bw ]
  %i.akz = phi i64 [ %.sink443.i, %bb.er ], [ %.sink441.i, %bb.cy ], [ %.sink441.i, %bb.bw ]
  %i.ala = phi i64 [ %.sink442.i, %bb.er ], [ %.sink.i, %bb.cy ], [ %.sink.i, %bb.bw ]
  %.9141.i205.i = phi ptr [ %i.aku, %bb.er ], [ %i.zp, %bb.cy ], [ %i.sm, %bb.bw ]
  %.2149.i180189204.i = phi ptr [ %i.vf, %bb.er ], [ %i.vf, %bb.cy ], [ %i.h, %bb.bw ]
  %i.alb = icmp eq ptr %i.akw, %3
  %.not232.i = icmp eq i32 %i.akx, 64
  %or.cond.i = select i1 %i.alb, i1 %.not232.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.thread211.i

.preheader.i:                                     ; preds = %.thread207.i
  %i.alc = trunc i64 %i.ala to i32
  store i32 %i.alc, ptr %i.p, align 4, !tbaa !5
  %i.ald = trunc i64 %i.akz to i32
  store i32 %i.ald, ptr %i.t, align 4, !tbaa !5
  %i.ale = trunc i64 %i.aky to i32
  store i32 %i.ale, ptr %i.x, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.es

.thread211.i:                                     ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i.i, %ZSTD_execSequence.exit.i.i, %.thread207.i, %ZSTD_execSequence.exit.i.thread.i, %.loopexit.i, %.loopexit.thread.i, %bb.by, %bb.bx, %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i, %BIT_initDStream.exit.i, %bb.n, %bb.f, %bb.d
  %.9.i.ph.i = phi i64 [ -20, %.loopexit.thread.i ], [ -20, %bb.bx ], [ -20, %bb.d ], [ %.0.i193.i.i, %.loopexit.i ], [ -20, %ZSTD_execSequence.exit.i.thread.i ], [ -20, %.thread207.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i ], [ %.0.i.i.i, %ZSTD_execSequence.exit.i.i ], [ -20, %bb.f ], [ -70, %bb.by ], [ -20, %bb.n ], [ %.0.i199.i.i, %ZSTD_execSequenceSplitLitBuffer.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %ZSTD_decompressSequencesSplitLitBuffer_default.exit

bb.es:                                            ; preds = %.preheader.i, %bb.c
  %.pre.i = phi ptr [ %.pre.pre.i, %.preheader.i ], [ %i.f, %bb.c ] ; 3 uses
  %.4151.i.i = phi ptr [ %.2149.i180189204.i, %.preheader.i ], [ %i.h, %bb.c ] ; 2 uses
  %.11143.i.i = phi ptr [ %.9141.i205.i, %.preheader.i ], [ %1, %bb.c ] ; 5 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !35
  %i.alh = icmp eq i32 %i.alg, 2
  br i1 %i.alh, label %bb.et, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.es
  %.pre302.i = ptrtoint ptr %i.d to i64
  br label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.ali = ptrtoint ptr %.4151.i.i to i64
  %i.alj = ptrtoint ptr %.pre.i to i64
  %i.alk = sub i64 %i.ali, %i.alj                 ; 3 uses
  %i.all = ptrtoint ptr %i.d to i64               ; 2 uses
  %i.alm = ptrtoint ptr %.11143.i.i to i64
  %i.aln = sub i64 %i.all, %i.alm
  %.not178.i.i = icmp ugt i64 %i.alk, %i.aln
  br i1 %.not178.i.i, label %ZSTD_decompressSequencesSplitLitBuffer_default.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not177.i.i = icmp eq ptr %.11143.i.i, null
  br i1 %.not177.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.11143.i.i, ptr align 1 %.pre.i, i64 %i.alk, i1 false)
  %i.alo = getelementptr inbounds nuw i8, ptr %.11143.i.i, i64 %i.alk
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.12144.i.i = phi ptr [ %i.alo, %bb.ev ], [ null, %bb.eu ]
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %i.alf, align 8, !tbaa !35
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre302.i, %._crit_edge.i ], [ %i.all, %bb.ew ]
  %i.alr = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.alp, %bb.ew ] ; 2 uses
  %.6153.i.i = phi ptr [ %.4151.i.i, %._crit_edge.i ], [ %i.alq, %bb.ew ]
  %.14146.i.i = phi ptr [ %.11143.i.i, %._crit_edge.i ], [ %.12144.i.i, %bb.ew ] ; 4 uses
  %i.als = ptrtoint ptr %.6153.i.i to i64
  %i.alt = ptrtoint ptr %i.alr to i64
  %i.alu = sub i64 %i.als, %i.alt                 ; 3 uses
  %i.alv = ptrtoint ptr %.14146.i.i to i64
  %i.alw = sub i64 %.pre-phi.i, %i.alv
  %.not180.i.i = icmp ugt i64 %i.alu, %i.alw
  br i1 %.not180.i.i, label %ZSTD_decompressSequencesSplitLitBuffer_default.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %.not179.i.i = icmp eq ptr %.14146.i.i, null
  br i1 %.not179.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14146.i.i, ptr align 1 %i.alr, i64 %i.alu, i1 false)
  %i.alx = getelementptr inbounds nuw i8, ptr %.14146.i.i, i64 %i.alu
  %i.aly = ptrtoint ptr %i.alx to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.16.i.ph.i = phi i64 [ 0, %bb.ey ], [ %i.aly, %bb.ez ]
  %i.alz = ptrtoint ptr %1 to i64
  %i.ama = sub i64 %.16.i.ph.i, %i.alz
  br label %ZSTD_decompressSequencesSplitLitBuffer_default.exit

ZSTD_decompressSequencesSplitLitBuffer_default.exit: ; preds = %.thread211.i, %bb.et, %bb.ex, %bb.fa
  %.14.i.i = phi i64 [ %i.ama, %bb.fa ], [ %.9.i.ph.i, %.thread211.i ], [ -70, %bb.ex ], [ -70, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.fb

bb.fb:                                            ; preds = %ZSTD_decompressSequencesSplitLitBuffer_default.exit, %bb.b
end_hunk_4
begin_hunk_5_@ZSTD_decompressSequences:bb.a
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
  %.val.i35.i = load i64, ptr %i.nr, align 1, !tbaa !45, !noalias !157 ; 2 uses
  store i64 %.val.i35.i, ptr %7, align 8, !tbaa !79, !noalias !157
  br label %ZSTD_decodeSequence.exit.i.i

ZSTD_decodeSequence.exit.i.i:                     ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %i.nu = phi ptr [ %i.lj, %bb.bd ], [ @BIT_reloadDStream.zeroFilled, %bb.ba ], [ %i.ne, %bb.bc ], [ %i.nr, %bb.be ], [ %i.lj, %bb.ay ] ; 2 uses
  %i.nv = phi i32 [ %i.mq, %bb.bd ], [ %i.mq, %bb.ba ], [ %i.nf, %bb.bc ], [ %i.nt, %bb.be ], [ %i.lv, %bb.ay ] ; 2 uses
  %i.nw = phi i64 [ %i.ll, %bb.bd ], [ %i.ll, %bb.ba ], [ %.val.i.i34.i, %bb.bc ], [ %.val.i35.i, %bb.be ], [ %i.ll, %bb.ay ]
  %i.nx = phi i64 [ %i.mp, %bb.bd ], [ %i.mp, %bb.ba ], [ %i.mp, %bb.bc ], [ %i.mp, %bb.be ], [ %i.hm, %bb.ay ]
  %i.ny = phi i64 [ %i.mz, %bb.bd ], [ %i.mz, %bb.ba ], [ %i.mz, %bb.bc ], [ %i.mz, %bb.be ], [ %i.hn, %bb.ay ]
  %i.nz = phi i64 [ %i.mf, %bb.bd ], [ %i.mf, %bb.ba ], [ %i.mf, %bb.bc ], [ %i.mf, %bb.be ], [ %i.ho, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.i, ptr %6, align 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %.sink.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.oa = getelementptr i8, ptr %.068.i93.i, i64 %.sroa.0.0.i ; 7 uses
  %i.ob = add i64 %.sroa.0.0.i, %.sroa.6.0.i      ; 9 uses
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.sroa.0.0.i ; 2 uses
  %i.oe = sub i64 0, %.sink.i
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 %i.oe ; 2 uses
  %i.og = icmp ugt ptr %i.od, %i.o
  %i.oh = getelementptr inbounds nuw i8, ptr %.068.i93.i, i64 %i.ob
  %i.oi = icmp ugt ptr %i.oh, %i.hb
  %or.cond.i.i.i = select i1 %i.og, i1 true, i1 %i.oi, !prof !104
  br i1 %or.cond.i.i.i, label %bb.bf, label %.critedge.i.i.i, !prof !104

.critedge.i.i.i:                                  ; preds = %ZSTD_decodeSequence.exit.i.i
  %i.oj = load <2 x i64>, ptr %i.oc, align 1, !tbaa !11
  store <2 x i64> %i.oj, ptr %.068.i93.i, align 1, !tbaa !11
  %i.ok = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.ok, label %bb.bg, label %ZSTD_wildcopy.exit.i.i, !prof !52

bb.bf:                                            ; preds = %ZSTD_decodeSequence.exit.i.i
  %i.ol = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.068.i93.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u)
  br label %ZSTD_execSequence.exit.i.i

bb.bg:                                            ; preds = %.critedge.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %.068.i93.i, i64 16
  %i.on = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.oo = add i64 %.sroa.0.0.i, -16
  %i.op = load <2 x i64>, ptr %i.on, align 1, !tbaa !11
  store <2 x i64> %i.op, ptr %i.om, align 1, !tbaa !11
  %i.oq = icmp slt i64 %i.oo, 17
  br i1 %i.oq, label %ZSTD_wildcopy.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.or = getelementptr inbounds nuw i8, ptr %.068.i93.i, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.130.i.i.i = phi ptr [ %i.or, %bb.bh ], [ %i.ow, %bb.bi ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.on, %bb.bh ], [ %i.ou, %bb.bi ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.os = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !11
  store <2 x i64> %i.os, ptr %.130.i.i.i, align 1, !tbaa !11
  %i.ot = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %i.ov = load <2 x i64>, ptr %i.ou, align 1, !tbaa !11
  store <2 x i64> %i.ov, ptr %i.ot, align 1, !tbaa !11
  %i.ow = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.oa
  br i1 %i.ox, label %bb.bi, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !100

ZSTD_wildcopy.exit.i.i:                           ; preds = %bb.bi, %bb.bg, %.critedge.i.i.i
  store ptr %i.od, ptr %i.a, align 8, !tbaa !38
  %i.oy = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.oz = sub i64 %i.oy, %i.hc                    ; 3 uses
  %i.pa = icmp ugt i64 %.sink.i, %i.oz
  br i1 %i.pa, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.pb = sub i64 %i.oy, %i.hd
  %i.pc = icmp ugt i64 %.sink.i, %i.pb
  br i1 %i.pc, label %ZSTD_execSequence.exit.i.thread.i, label %bb.bk, !prof !52

ZSTD_execSequence.exit.i.thread.i:                ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread75.i

bb.bk:                                            ; preds = %bb.bj
  %i.pd = ptrtoint ptr %i.of to i64
  %i.pe = sub i64 %i.pd, %i.hc                    ; 3 uses
  %i.pf = getelementptr inbounds i8, ptr %i.u, i64 %i.pe ; 2 uses
  %i.pg = add nsw i64 %i.pe, %.sroa.6.0.i         ; 3 uses
  %.not.i82.i.i = icmp sgt i64 %i.pg, 0
  br i1 %.not.i82.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pf, i64 %.sroa.6.0.i, i1 false)
  br label %ZSTD_execSequence.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %gepdiff.i.i.i = sub nsw i64 0, %i.pe           ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pf, i64 %gepdiff.i.i.i, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oa, i64 %gepdiff.i.i.i
  store i64 %i.pg, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %ZSTD_wildcopy.exit.i.i
  %.062.i = phi ptr [ %i.q, %bb.bm ], [ %i.of, %ZSTD_wildcopy.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ph, %bb.bm ], [ %i.oa, %ZSTD_wildcopy.exit.i.i ] ; 12 uses
  %i.pi = phi i64 [ %i.pg, %bb.bm ], [ %.sroa.6.0.i, %ZSTD_wildcopy.exit.i.i ] ; 5 uses
  %i.pj = icmp ugt i64 %.sink.i, 15
  br i1 %i.pj, label %bb.bo, label %bb.br, !prof !89

bb.bo:                                            ; preds = %bb.bn
  %i.pk = getelementptr inbounds i8, ptr %.0.i, i64 %i.pi
  %i.pl = load <2 x i64>, ptr %.062.i, align 1, !tbaa !11
  store <2 x i64> %i.pl, ptr %.0.i, align 1, !tbaa !11
  %i.pm = icmp slt i64 %i.pi, 17
  br i1 %i.pm, label %ZSTD_execSequence.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.130.i97.i.i = phi ptr [ %i.pn, %bb.bp ], [ %i.ps, %bb.bq ] ; 3 uses
  %.pn.i98.i.i = phi ptr [ %.062.i, %bb.bp ], [ %i.pq, %bb.bq ] ; 2 uses
  %.1.i99.i.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 16
  %i.po = load <2 x i64>, ptr %.1.i99.i.i, align 1, !tbaa !11
  store <2 x i64> %i.po, ptr %.130.i97.i.i, align 1, !tbaa !11
  %i.pp = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 32 ; 2 uses
  %i.pr = load <2 x i64>, ptr %i.pq, align 1, !tbaa !11
  store <2 x i64> %i.pr, ptr %i.pp, align 1, !tbaa !11
  %i.ps = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 32 ; 2 uses
  %i.pt = icmp ult ptr %i.ps, %i.pk
  br i1 %i.pt, label %bb.bq, label %ZSTD_execSequence.exit.i.i, !llvm.loop !100

bb.br:                                            ; preds = %bb.bn
  %i.pu = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pu, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !5
  %i.px = load i8, ptr %.062.i, align 1, !tbaa !11
  store i8 %i.px, ptr %.0.i, align 1, !tbaa !11
  %i.py = getelementptr inbounds nuw i8, ptr %.062.i, i64 1
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !11
  %i.qa = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !11
  %i.qb = getelementptr inbounds nuw i8, ptr %.062.i, i64 2
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !11
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !11
  %i.qe = getelementptr inbounds nuw i8, ptr %.062.i, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !11
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !11
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !5
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %.062.i, i64 %i.qj ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.qm = load i32, ptr %i.qk, align 1
  store i32 %i.qm, ptr %i.ql, align 1
  %i.qn = sext i32 %i.pw to i64
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = getelementptr inbounds i8, ptr %i.qk, i64 %i.qo
  br label %ZSTD_overlapCopy8.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %i.qq = load i64, ptr %.062.i, align 1
  store i64 %i.qq, ptr %.0.i, align 1
  br label %ZSTD_overlapCopy8.exit.i.i

ZSTD_overlapCopy8.exit.i.i:                       ; preds = %bb.bt, %bb.bs
  %.1.i = phi ptr [ %i.qp, %bb.bs ], [ %.062.i, %bb.bt ] ; 2 uses
  %.1.i18 = ptrtoaddr ptr %.1.i to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qt = icmp ugt i64 %i.pi, 8
  br i1 %i.qt, label %bb.bu, label %ZSTD_execSequence.exit.i.i

bb.bu:                                            ; preds = %ZSTD_overlapCopy8.exit.i.i
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qr to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = getelementptr i8, ptr %.0.i, i64 %i.pi  ; 2 uses
  %i.qy = icmp slt i64 %i.qw, 16
  br i1 %i.qy, label %.preheader87.i.preheader, label %bb.bv

.preheader87.i.preheader:                         ; preds = %bb.bu
  %i.qz = add i64 %.sroa.6.0.i, %i.hc
  %i.ra = add i64 %.sink.i, %i.oz
  %umax19 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.oz) ; 2 uses
  %i.rb = add i64 %i.qz, %i.ra
  %i.rc = sub i64 %i.rb, %.sink.i
  %i.rd = add i64 %i.hf, %umax19
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.rc, i64 %i.rd)
  %i.re = add i64 %umax20, -9
  %i.rf = add i64 %umax19, %i.hc
  %i.rg = sub i64 %i.re, %i.rf                    ; 2 uses
  %i.rh = lshr i64 %i.rg, 3
  %i.ri = add nuw nsw i64 %i.rh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rg, 72
  br i1 %min.iters.check, label %.preheader87.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader87.i.preheader
  %i.rj = sub i64 %.sroa.0.0.i, %i.hc
  %i.rk = add i64 %i.rj, %.068.i93.i17
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.rk)
  %i.rl = add i64 %umax, %i.hc
  %i.rm = sub i64 %i.rl, %.1.i18
  %diff.check = icmp ult i64 %i.rm, 32
  br i1 %diff.check, label %.preheader87.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ri, 4611686018427387900     ; 3 uses
  %i.rn = shl i64 %n.vec, 3                       ; 2 uses
  %i.ro = getelementptr i8, ptr %i.qs, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.qr, i64 %i.rn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qs, i64 %i.rq ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.qr, i64 %i.rq ; 2 uses
  %i.rr = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 1
  %wide.load22 = load <2 x i64>, ptr %i.rr, align 1
  %i.rs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load22, ptr %i.rs, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rt = icmp eq i64 %index.next, %n.vec
  br i1 %i.rt, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ri, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i.i, label %.preheader87.i.preheader25

.preheader87.i.preheader25:                       ; preds = %vector.memcheck, %.preheader87.i.preheader, %middle.block
  %.029.i.i.i.ph = phi ptr [ %i.qs, %vector.memcheck ], [ %i.qs, %.preheader87.i.preheader ], [ %i.ro, %middle.block ]
  %.0.i106.i.i.ph = phi ptr [ %i.qr, %vector.memcheck ], [ %i.qr, %.preheader87.i.preheader ], [ %i.rp, %middle.block ]
  br label %.preheader87.i

.preheader87.i:                                   ; preds = %.preheader87.i.preheader25, %.preheader87.i
  %.029.i.i.i = phi ptr [ %i.rv, %.preheader87.i ], [ %.029.i.i.i.ph, %.preheader87.i.preheader25 ] ; 2 uses
  %.0.i106.i.i = phi ptr [ %i.rw, %.preheader87.i ], [ %.0.i106.i.i.ph, %.preheader87.i.preheader25 ] ; 2 uses
  %i.ru = load i64, ptr %.0.i106.i.i, align 1
  store i64 %i.ru, ptr %.029.i.i.i, align 1
  %i.rv = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i106.i.i, i64 8
  %i.rx = icmp ult ptr %i.rv, %i.qx
  br i1 %i.rx, label %.preheader87.i, label %ZSTD_execSequence.exit.i.i, !llvm.loop !161

bb.bv:                                            ; preds = %bb.bu
  %i.ry = load <2 x i64>, ptr %i.qr, align 1, !tbaa !11
  store <2 x i64> %i.ry, ptr %i.qs, align 1, !tbaa !11
  %i.rz = icmp slt i64 %i.pi, 25
  br i1 %i.rz, label %ZSTD_execSequence.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sa = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.130.i103.i.i = phi ptr [ %i.sa, %bb.bw ], [ %i.sf, %bb.bx ] ; 3 uses
  %.pn.i104.i.i = phi ptr [ %i.qr, %bb.bw ], [ %i.sd, %bb.bx ] ; 2 uses
  %.1.i105.i.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i.i, i64 16
  %i.sb = load <2 x i64>, ptr %.1.i105.i.i, align 1, !tbaa !11
  store <2 x i64> %i.sb, ptr %.130.i103.i.i, align 1, !tbaa !11
  %i.sc = getelementptr inbounds nuw i8, ptr %.130.i103.i.i, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %.pn.i104.i.i, i64 32 ; 2 uses
  %i.se = load <2 x i64>, ptr %i.sd, align 1, !tbaa !11
  store <2 x i64> %i.se, ptr %i.sc, align 1, !tbaa !11
  %i.sf = getelementptr inbounds nuw i8, ptr %.130.i103.i.i, i64 32 ; 2 uses
  %i.sg = icmp ult ptr %i.sf, %i.qx
  br i1 %i.sg, label %bb.bx, label %ZSTD_execSequence.exit.i.i, !llvm.loop !100

ZSTD_execSequence.exit.i.i:                       ; preds = %bb.bx, %.preheader87.i, %bb.bq, %middle.block, %bb.bv, %ZSTD_overlapCopy8.exit.i.i, %bb.bo, %bb.bl, %bb.bf
  %.0.i.i.i = phi i64 [ %i.ol, %bb.bf ], [ %i.ob, %middle.block ], [ %i.ob, %bb.bl ], [ %i.ob, %ZSTD_overlapCopy8.exit.i.i ], [ %i.ob, %bb.bo ], [ %i.ob, %bb.bv ], [ %i.ob, %bb.bq ], [ %i.ob, %.preheader87.i ], [ %i.ob, %bb.bx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sh = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.sh, label %bb.by, label %.thread75.i

bb.by:                                            ; preds = %ZSTD_execSequence.exit.i.i
  %i.si = getelementptr inbounds nuw i8, ptr %.068.i93.i, i64 %.0.i.i.i ; 2 uses
  %i.sj = add nsw i32 %.063.i95.i, -1             ; 2 uses
  %.not77.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not77.i.i, label %bb.bz, label %bb.ah, !llvm.loop !162

bb.bz:                                            ; preds = %bb.by
  %i.sk = icmp eq ptr %i.nu, %3
  %.not86.i = icmp eq i32 %i.nv, 64
  %or.cond.i = select i1 %i.sk, i1 %.not86.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.thread75.i

.preheader.i:                                     ; preds = %bb.bz
  %i.sl = trunc i64 %.sink.i to i32
  store i32 %i.sl, ptr %i.w, align 4, !tbaa !5
  %i.sm = trunc i64 %.sink150.i to i32
  store i32 %i.sm, ptr %i.aa, align 4, !tbaa !5
  %i.sn = trunc i64 %i.kd to i32
  store i32 %i.sn, ptr %i.ae, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.ca

.thread75.i:                                      ; preds = %ZSTD_execSequence.exit.i.i, %bb.bz, %ZSTD_execSequence.exit.i.thread.i, %BIT_initDStream.exit.i, %bb.q, %bb.i, %bb.g
  %.2.i.ph.i = phi i64 [ -20, %bb.g ], [ -20, %ZSTD_execSequence.exit.i.thread.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.bz ], [ -20, %bb.i ], [ -20, %bb.q ], [ %.0.i.i.i, %ZSTD_execSequence.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %ZSTD_decompressSequences_default.exit

bb.ca:                                            ; preds = %.preheader.i, %bb.f
  %i.so = phi ptr [ %.pre.i, %.preheader.i ], [ %i.l, %bb.f ] ; 2 uses
  %.371.i.i = phi ptr [ %i.si, %.preheader.i ], [ %1, %bb.f ] ; 4 uses
  %i.sp = ptrtoint ptr %i.o to i64
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = sub i64 %i.sp, %i.sq                    ; 3 uses
  %i.ss = ptrtoint ptr %i.j to i64
  %i.st = ptrtoint ptr %.371.i.i to i64
  %i.su = sub i64 %i.ss, %i.st
  %.not81.i.i = icmp ugt i64 %i.sr, %i.su
  br i1 %.not81.i.i, label %ZSTD_decompressSequences_default.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not80.i.i = icmp eq ptr %.371.i.i, null
  br i1 %.not80.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i.i, ptr align 1 %i.so, i64 %i.sr, i1 false)
  %i.sv = getelementptr inbounds nuw i8, ptr %.371.i.i, i64 %i.sr
  %i.sw = ptrtoint ptr %i.sv to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.573.i.ph.i = phi i64 [ 0, %bb.cb ], [ %i.sw, %bb.cc ]
  %i.sx = ptrtoint ptr %1 to i64
  %i.sy = sub i64 %.573.i.ph.i, %i.sx
  br label %ZSTD_decompressSequences_default.exit

ZSTD_decompressSequences_default.exit:            ; preds = %.thread75.i, %bb.ca, %bb.cd
  %.5.i.i = phi i64 [ %i.sy, %bb.cd ], [ %.2.i.ph.i, %.thread75.i ], [ -70, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ce

bb.ce:                                            ; preds = %ZSTD_decompressSequences_default.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.5.i.i, %ZSTD_decompressSequences_default.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ZSTD_checkContinuity(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
end_hunk_5
begin_hunk_6_@ZSTD_decompressSequencesSplitLitBuffer_bmi2:bb.a
  %i.nn = phi ptr [ %i.lc, %bb.ay ], [ @BIT_reloadDStream.zeroFilled, %bb.av ], [ %i.mx, %bb.ax ], [ %i.nk, %bb.az ] ; 2 uses
  %i.no = phi i32 [ %i.mj, %bb.ay ], [ %i.mj, %bb.av ], [ %i.my, %bb.ax ], [ %i.nm, %bb.az ] ; 2 uses
  %i.np = phi i64 [ %i.le, %bb.ay ], [ %i.le, %bb.av ], [ %.val.i.i34, %bb.ax ], [ %.val.i35, %bb.az ] ; 2 uses
  %i.nq = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sroa.052.0 ; 2 uses
  %i.ns = load ptr, ptr %i.e, align 8, !tbaa !34  ; 2 uses
  %i.nt = icmp ugt ptr %i.nr, %i.ns
  br i1 %i.nt, label %bb.bv, label %bb.ba

ZSTD_decodeSequence.exit189.i.thread:             ; preds = %bb.at
  %i.nu = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.sroa.052.0 ; 2 uses
  %i.nw = load ptr, ptr %i.e, align 8, !tbaa !34  ; 2 uses
  %i.nx = icmp ugt ptr %i.nv, %i.nw
  br i1 %i.nx, label %.thread362, label %bb.ba

bb.ba:                                            ; preds = %ZSTD_decodeSequence.exit189.i.thread, %ZSTD_decodeSequence.exit189.i
  %i.ny = phi ptr [ %i.lc, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.nn, %ZSTD_decodeSequence.exit189.i ] ; 2 uses
  %i.nz = phi i32 [ %i.lo, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.no, %ZSTD_decodeSequence.exit189.i ] ; 2 uses
  %i.oa = phi i64 [ %i.le, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.np, %ZSTD_decodeSequence.exit189.i ]
  %i.ob = phi ptr [ %i.nv, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.nr, %ZSTD_decodeSequence.exit189.i ] ; 3 uses
  %i.oc = phi ptr [ %i.nu, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.nq, %ZSTD_decodeSequence.exit189.i ] ; 2 uses
  %i.od = phi i64 [ %i.hh, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.ly, %ZSTD_decodeSequence.exit189.i ]
  %i.oe = phi i64 [ %i.hg, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.ms, %ZSTD_decodeSequence.exit189.i ]
  %i.of = phi i64 [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread ], [ %i.mi, %ZSTD_decodeSequence.exit189.i ]
  %i.og = getelementptr inbounds i8, ptr %i.ob, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.052.0, ptr %6, align 8
  store i64 %.sroa.653.0, ptr %.sroa.958.0..sroa_idx, align 8
  store i64 %.sink, ptr %.sroa.10.0..sroa_idx, align 8
  %i.oh = getelementptr i8, ptr %.0132.i260, i64 %.sroa.052.0 ; 7 uses
  %i.oi = add i64 %.sroa.052.0, %.sroa.653.0      ; 9 uses
  %i.oj = sub i64 0, %.sink
  %i.ok = getelementptr inbounds i8, ptr %i.oh, i64 %i.oj ; 2 uses
  %i.ol = icmp ugt ptr %i.ob, %i.f
  %i.om = getelementptr inbounds nuw i8, ptr %.0132.i260, i64 %i.oi
  %i.on = icmp ugt ptr %i.om, %i.og
  %or.cond.i197.i = select i1 %i.ol, i1 true, i1 %i.on, !prof !104
  br i1 %or.cond.i197.i, label %bb.bb, label %.critedge.i198.i, !prof !104

.critedge.i198.i:                                 ; preds = %bb.ba
  %i.oo = load <2 x i64>, ptr %i.oc, align 1, !tbaa !11
  store <2 x i64> %i.oo, ptr %.0132.i260, align 1, !tbaa !11
  %i.op = icmp ugt i64 %.sroa.052.0, 16
  br i1 %i.op, label %bb.bc, label %ZSTD_wildcopy.exit.i, !prof !52

bb.bb:                                            ; preds = %bb.ba
  %i.oq = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.0132.i260, ptr noundef %i.b, ptr noundef nonnull %i.og, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bc:                                            ; preds = %.critedge.i198.i
  %i.or = getelementptr inbounds nuw i8, ptr %.0132.i260, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.ot = add i64 %.sroa.052.0, -16
  %i.ou = load <2 x i64>, ptr %i.os, align 1, !tbaa !11
  store <2 x i64> %i.ou, ptr %i.or, align 1, !tbaa !11
  %i.ov = icmp slt i64 %i.ot, 17
  br i1 %i.ov, label %ZSTD_wildcopy.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ow = getelementptr inbounds nuw i8, ptr %.0132.i260, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.130.i.i = phi ptr [ %i.ow, %bb.bd ], [ %i.pb, %bb.be ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.os, %bb.bd ], [ %i.oz, %bb.be ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ox = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !11
  store <2 x i64> %i.ox, ptr %.130.i.i, align 1, !tbaa !11
  %i.oy = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.oz = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.pa = load <2 x i64>, ptr %i.oz, align 1, !tbaa !11
  store <2 x i64> %i.pa, ptr %i.oy, align 1, !tbaa !11
  %i.pb = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.pc = icmp ult ptr %i.pb, %i.oh
  br i1 %i.pc, label %bb.be, label %ZSTD_wildcopy.exit.i, !llvm.loop !100

ZSTD_wildcopy.exit.i:                             ; preds = %bb.be, %bb.bc, %.critedge.i198.i
  store ptr %i.ob, ptr %i.a, align 8, !tbaa !38
  %i.pd = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.pe = sub i64 %i.pd, %i.gu                    ; 3 uses
  %i.pf = icmp ugt i64 %.sink, %i.pe
  br i1 %i.pf, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.pg = sub i64 %i.pd, %i.gv
  %i.ph = icmp ugt i64 %.sink, %i.pg
  br i1 %i.ph, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread, label %bb.bg, !prof !52

ZSTD_execSequenceSplitLitBuffer.exit.i.thread:    ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread211

bb.bg:                                            ; preds = %bb.bf
  %i.pi = ptrtoint ptr %i.ok to i64
  %i.pj = sub i64 %i.pi, %i.gu                    ; 3 uses
  %i.pk = getelementptr inbounds i8, ptr %i.l, i64 %i.pj ; 2 uses
  %i.pl = add nsw i64 %i.pj, %.sroa.653.0         ; 3 uses
  %.not.i200.i = icmp sgt i64 %i.pl, 0
  br i1 %.not.i200.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oh, ptr align 1 %i.pk, i64 %.sroa.653.0, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i201.i = sub nsw i64 0, %i.pj          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oh, ptr align 1 %i.pk, i64 %gepdiff.i201.i, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oh, i64 %gepdiff.i201.i
  store i64 %i.pl, ptr %.sroa.958.0..sroa_idx, align 8, !tbaa !129
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %ZSTD_wildcopy.exit.i
  %.0145 = phi ptr [ %i.h, %bb.bi ], [ %i.ok, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pm, %bb.bi ], [ %i.oh, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %i.pn = phi i64 [ %i.pl, %bb.bi ], [ %.sroa.653.0, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %i.po = icmp ugt i64 %.sink, 15
  br i1 %i.po, label %bb.bk, label %bb.bn, !prof !89

bb.bk:                                            ; preds = %bb.bj
  %i.pp = getelementptr inbounds i8, ptr %.0, i64 %i.pn
  %i.pq = load <2 x i64>, ptr %.0145, align 1, !tbaa !11
  store <2 x i64> %i.pq, ptr %.0, align 1, !tbaa !11
  %i.pr = icmp slt i64 %i.pn, 17
  br i1 %i.pr, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ps = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.130.i233.i = phi ptr [ %i.ps, %bb.bl ], [ %i.px, %bb.bm ] ; 3 uses
  %.pn.i234.i = phi ptr [ %.0145, %bb.bl ], [ %i.pv, %bb.bm ] ; 2 uses
  %.1.i235.i = getelementptr inbounds nuw i8, ptr %.pn.i234.i, i64 16
  %i.pt = load <2 x i64>, ptr %.1.i235.i, align 1, !tbaa !11
  store <2 x i64> %i.pt, ptr %.130.i233.i, align 1, !tbaa !11
  %i.pu = getelementptr inbounds nuw i8, ptr %.130.i233.i, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %.pn.i234.i, i64 32 ; 2 uses
  %i.pw = load <2 x i64>, ptr %i.pv, align 1, !tbaa !11
  store <2 x i64> %i.pw, ptr %i.pu, align 1, !tbaa !11
  %i.px = getelementptr inbounds nuw i8, ptr %.130.i233.i, i64 32 ; 2 uses
  %i.py = icmp ult ptr %i.px, %i.pp
  br i1 %i.py, label %bb.bm, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

bb.bn:                                            ; preds = %bb.bj
  %i.pz = icmp samesign ult i64 %.sink, 8
  br i1 %i.pz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !5
  %i.qc = load i8, ptr %.0145, align 1, !tbaa !11
  store i8 %i.qc, ptr %.0, align 1, !tbaa !11
  %i.qd = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !11
  %i.qf = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !11
  %i.qg = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !11
  %i.qi = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !11
  %i.qj = getelementptr inbounds nuw i8, ptr %.0145, i64 3
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !11
  %i.ql = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !11
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !5
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %.0145, i64 %i.qo ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.qr = load i32, ptr %i.qp, align 1
  store i32 %i.qr, ptr %i.qq, align 1
  %i.qs = sext i32 %i.qb to i64
  %i.qt = sub nsw i64 0, %i.qs
  %i.qu = getelementptr inbounds i8, ptr %i.qp, i64 %i.qt
  br label %ZSTD_overlapCopy8.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.qv = load i64, ptr %.0145, align 1
  store i64 %i.qv, ptr %.0, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.bp, %bb.bo
  %.1 = phi ptr [ %i.qu, %bb.bo ], [ %.0145, %bb.bp ] ; 2 uses
  %.177 = ptrtoaddr ptr %.1 to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qy = icmp ugt i64 %i.pn, 8
  br i1 %i.qy, label %bb.bq, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bq:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = ptrtoint ptr %i.qw to i64
  %i.rb = sub i64 %i.qz, %i.ra
  %i.rc = getelementptr i8, ptr %.0, i64 %i.pn    ; 2 uses
  %i.rd = icmp slt i64 %i.rb, 16
  br i1 %i.rd, label %.preheader240.preheader, label %bb.br

.preheader240.preheader:                          ; preds = %bb.bq
  %i.re = add i64 %.sroa.653.0, %i.gu
  %i.rf = add i64 %.sink, %i.pe
  %umax78 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.pe) ; 2 uses
  %i.rg = add i64 %i.re, %i.rf
  %i.rh = sub i64 %i.rg, %.sink
  %i.ri = add i64 %i.gw, %umax78
  %umax79 = tail call i64 @llvm.umax.i64(i64 %i.rh, i64 %i.ri)
  %i.rj = add i64 %umax79, -9
  %i.rk = add i64 %umax78, %i.gu
  %i.rl = sub i64 %i.rj, %i.rk                    ; 2 uses
  %i.rm = lshr i64 %i.rl, 3
  %i.rn = add nuw nsw i64 %i.rm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rl, 72
  br i1 %min.iters.check, label %.preheader240.preheader220, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader240.preheader
  %i.ro = sub i64 %.sroa.052.0, %i.gu
  %i.rp = add i64 %i.ro, %.0132.i26076
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.rp)
  %i.rq = add i64 %umax, %i.gu
  %i.rr = sub i64 %i.rq, %.177
  %diff.check = icmp ult i64 %i.rr, 32
  br i1 %diff.check, label %.preheader240.preheader220, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rn, 4611686018427387900     ; 3 uses
  %i.rs = shl i64 %n.vec, 3                       ; 2 uses
  %i.rt = getelementptr i8, ptr %i.qx, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.qw, i64 %i.rs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qx, i64 %i.rv ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.qw, i64 %i.rv ; 2 uses
  %i.rw = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 1
  %wide.load81 = load <2 x i64>, ptr %i.rw, align 1
  %i.rx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load81, ptr %i.rx, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ry = icmp eq i64 %index.next, %n.vec
  br i1 %i.ry, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rn, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %.preheader240.preheader220

.preheader240.preheader220:                       ; preds = %vector.memcheck, %.preheader240.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.qx, %vector.memcheck ], [ %i.qx, %.preheader240.preheader ], [ %i.rt, %middle.block ]
  %.0.i242.i.ph = phi ptr [ %i.qw, %vector.memcheck ], [ %i.qw, %.preheader240.preheader ], [ %i.ru, %middle.block ]
  br label %.preheader240

.preheader240:                                    ; preds = %.preheader240.preheader220, %.preheader240
  %.029.i.i = phi ptr [ %i.sa, %.preheader240 ], [ %.029.i.i.ph, %.preheader240.preheader220 ] ; 2 uses
  %.0.i242.i = phi ptr [ %i.sb, %.preheader240 ], [ %.0.i242.i.ph, %.preheader240.preheader220 ] ; 2 uses
  %i.rz = load i64, ptr %.0.i242.i, align 1
  store i64 %i.rz, ptr %.029.i.i, align 1
  %i.sa = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.i242.i, i64 8
  %i.sc = icmp ult ptr %i.sa, %i.rc
  br i1 %i.sc, label %.preheader240, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !221

bb.br:                                            ; preds = %bb.bq
  %i.sd = load <2 x i64>, ptr %i.qw, align 1, !tbaa !11
  store <2 x i64> %i.sd, ptr %i.qx, align 1, !tbaa !11
  %i.se = icmp slt i64 %i.pn, 25
  br i1 %i.se, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sf = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.130.i239.i = phi ptr [ %i.sf, %bb.bs ], [ %i.sk, %bb.bt ] ; 3 uses
  %.pn.i240.i = phi ptr [ %i.qw, %bb.bs ], [ %i.si, %bb.bt ] ; 2 uses
  %.1.i241.i = getelementptr inbounds nuw i8, ptr %.pn.i240.i, i64 16
  %i.sg = load <2 x i64>, ptr %.1.i241.i, align 1, !tbaa !11
  store <2 x i64> %i.sg, ptr %.130.i239.i, align 1, !tbaa !11
  %i.sh = getelementptr inbounds nuw i8, ptr %.130.i239.i, i64 16
  %i.si = getelementptr inbounds nuw i8, ptr %.pn.i240.i, i64 32 ; 2 uses
  %i.sj = load <2 x i64>, ptr %i.si, align 1, !tbaa !11
  store <2 x i64> %i.sj, ptr %i.sh, align 1, !tbaa !11
  %i.sk = getelementptr inbounds nuw i8, ptr %.130.i239.i, i64 32 ; 2 uses
  %i.sl = icmp ult ptr %i.sk, %i.rc
  br i1 %i.sl, label %bb.bt, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !100

ZSTD_execSequenceSplitLitBuffer.exit.i:           ; preds = %bb.bt, %.preheader240, %bb.bm, %middle.block, %bb.br, %bb.bk, %ZSTD_overlapCopy8.exit.i, %bb.bh, %bb.bb
  %.0.i199.i = phi i64 [ %i.oq, %bb.bb ], [ %i.oi, %middle.block ], [ %i.oi, %bb.bh ], [ %i.oi, %ZSTD_overlapCopy8.exit.i ], [ %i.oi, %bb.bk ], [ %i.oi, %bb.br ], [ %i.oi, %bb.bm ], [ %i.oi, %.preheader240 ], [ %i.oi, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sm = icmp ult i64 %.0.i199.i, -119
  br i1 %i.sm, label %bb.bu, label %.thread211

bb.bu:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.0132.i260, i64 %.0.i199.i ; 2 uses
  %i.so = add nsw i32 %.0125.i262, -1             ; 2 uses
  %.not169.i = icmp eq i32 %i.so, 0
  br i1 %.not169.i, label %.thread207, label %bb.ac, !llvm.loop !132

bb.bv:                                            ; preds = %ZSTD_decodeSequence.exit189.i
  %i.sp = icmp sgt i32 %.0125.i262, 0
  br i1 %i.sp, label %.thread362, label %.thread211

.thread362:                                       ; preds = %ZSTD_decodeSequence.exit189.i.thread, %bb.bv
  %i.sq = phi ptr [ %i.nn, %bb.bv ], [ %i.lc, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.sr = phi i32 [ %i.no, %bb.bv ], [ %i.lo, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.ss = phi i64 [ %i.np, %bb.bv ], [ %i.le, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.st = phi i64 [ %i.mi, %bb.bv ], [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.su = phi i64 [ %i.ms, %bb.bv ], [ %i.hg, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.sv = phi i64 [ %i.ly, %bb.bv ], [ %i.hh, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.sw = phi ptr [ %i.nq, %bb.bv ], [ %i.nu, %ZSTD_decodeSequence.exit189.i.thread ] ; 11 uses
  %i.sx = phi ptr [ %i.ns, %bb.bv ], [ %i.nw, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.sy = ptrtoint ptr %i.sx to i64               ; 2 uses
  %i.sz = ptrtoint ptr %i.sw to i64               ; 4 uses
  %i.ta = sub i64 %i.sy, %i.sz                    ; 9 uses
  %.not171.i = icmp eq ptr %i.sx, %i.sw
  br i1 %.not171.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.thread362
  %i.tb = ptrtoint ptr %i.b to i64
  %i.tc = ptrtoint ptr %.0132.i260 to i64         ; 8 uses
  %i.td = sub i64 %i.tb, %i.tc
  %i.te = icmp ugt i64 %i.ta, %i.td
  br i1 %i.te, label %.thread211, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.tf = sub i64 %i.tc, %i.sz                    ; 2 uses
  %i.tg = getelementptr inbounds i8, ptr %.0132.i260, i64 %i.ta ; 3 uses
  %i.th = icmp slt i64 %i.ta, 8
  %i.ti = icmp sgt i64 %i.tf, -8
  %or.cond.i = or i1 %i.th, %i.ti
  br i1 %or.cond.i, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.bx
  %i.tj = icmp sgt i64 %i.ta, 0
  br i1 %i.tj, label %iter.check136, label %ZSTD_safecopyDstBeforeSrc.exit

iter.check136:                                    ; preds = %.preheader.i
  %i.tk = add i64 %i.tc, %i.sy
  %i.tl = sub i64 %i.tk, %i.sz
  %i.tm = add i64 %i.tc, 1
  %umax116 = tail call i64 @llvm.umax.i64(i64 %i.tl, i64 %i.tm)
  %i.tn = sub i64 %umax116, %i.tc                 ; 7 uses
  %min.iters.check118 = icmp ult i64 %i.tn, 4
  %i.to = sub i64 %i.tc, %i.sz
  %diff.check115 = icmp ult i64 %i.to, 32
  %or.cond203 = or i1 %min.iters.check118, %diff.check115
  br i1 %or.cond203, label %.lr.ph40.i.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %iter.check136
  %min.iters.check120 = icmp ult i64 %i.tn, 32
  br i1 %min.iters.check120, label %vec.epilog.ph140, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %n.mod.vf122 = and i64 %i.tn, 28
  %n.vec123 = and i64 %i.tn, -32                  ; 5 uses
  %i.tp = getelementptr i8, ptr %.0132.i260, i64 %n.vec123
  %i.tq = getelementptr i8, ptr %i.sw, i64 %n.vec123
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph121
  %index125 = phi i64 [ 0, %vector.ph121 ], [ %index.next130, %vector.body124 ] ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.0132.i260, i64 %index125 ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.sw, i64 %index125 ; 2 uses
  %i.tr = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load128 = load <16 x i8>, ptr %next.gep127, align 1, !tbaa !11
  %wide.load129 = load <16 x i8>, ptr %i.tr, align 1, !tbaa !11
  %i.ts = getelementptr i8, ptr %next.gep126, i64 16
  store <16 x i8> %wide.load128, ptr %next.gep126, align 1, !tbaa !11
  store <16 x i8> %wide.load129, ptr %i.ts, align 1, !tbaa !11
  %index.next130 = add nuw i64 %index125, 32      ; 2 uses
  %i.tt = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.tt, label %middle.block131, label %vector.body124, !llvm.loop !222

middle.block131:                                  ; preds = %vector.body124
  %cmp.n132 = icmp eq i64 %i.tn, %n.vec123
  br i1 %cmp.n132, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check138

vec.epilog.iter.check138:                         ; preds = %middle.block131
  %min.epilog.iters.check139 = icmp eq i64 %n.mod.vf122, 0
  br i1 %min.epilog.iters.check139, label %.lr.ph40.i.preheader, label %vec.epilog.ph140, !prof !97

vec.epilog.ph140:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check138
  %vec.epilog.resume.val133 = phi i64 [ %n.vec123, %vec.epilog.iter.check138 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec142 = and i64 %i.tn, -4                   ; 4 uses
  %i.tu = getelementptr i8, ptr %.0132.i260, i64 %n.vec142
  %i.tv = getelementptr i8, ptr %i.sw, i64 %n.vec142
  br label %vec.epilog.vector.body143

vec.epilog.vector.body143:                        ; preds = %vec.epilog.vector.body143, %vec.epilog.ph140
  %index144 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph140 ], [ %index.next148, %vec.epilog.vector.body143 ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %.0132.i260, i64 %index144
  %next.gep146 = getelementptr i8, ptr %i.sw, i64 %index144
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !11
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !11
  %index.next148 = add nuw i64 %index144, 4       ; 2 uses
  %i.tw = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.tw, label %vec.epilog.middle.block149, label %vec.epilog.vector.body143, !llvm.loop !223

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body143
  %cmp.n150 = icmp eq i64 %i.tn, %n.vec142
  br i1 %cmp.n150, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph40.i.preheader
end_hunk_6
begin_hunk_7_@ZSTD_decompressSequencesSplitLitBuffer_bmi2:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.237.i = phi ptr [ %i.vd, %.lr.ph.i ], [ %.237.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23136.i = phi ptr [ %i.vb, %.lr.ph.i ], [ %.23136.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.23136.i, i64 1
  %i.vc = load i8, ptr %.23136.i, align 1, !tbaa !11
  %i.vd = getelementptr inbounds nuw i8, ptr %.237.i, i64 1 ; 2 uses
  store i8 %i.vc, ptr %.237.i, align 1, !tbaa !11
  %exitcond.not.i = icmp eq ptr %i.vd, %scevgep.i
  br i1 %exitcond.not.i, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph.i, !llvm.loop !227

ZSTD_safecopyDstBeforeSrc.exit:                   ; preds = %.lr.ph.i, %.lr.ph40.i, %middle.block100, %vec.epilog.middle.block, %middle.block131, %vec.epilog.middle.block149, %.preheader.i
  %i.ve = sub i64 %.sroa.052.0, %i.ta
  br label %bb.cc

bb.cc:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit, %.thread362
  %.sroa.055.2 = phi i64 [ %.sroa.052.0, %.thread362 ], [ %i.ve, %ZSTD_safecopyDstBeforeSrc.exit ] ; 8 uses
  %.2134.i = phi ptr [ %.0132.i260, %.thread362 ], [ %i.tg, %ZSTD_safecopyDstBeforeSrc.exit ] ; 8 uses
  %.2134.i154 = ptrtoaddr ptr %.2134.i to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.vf, ptr %i.a, align 8, !tbaa !38
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.vh, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.055.2, ptr %7, align 8
  %.sroa.958.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.653.0, ptr %.sroa.958.0..sroa_idx59, align 8
  %.sroa.10.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink, ptr %.sroa.10.0..sroa_idx61, align 8
  %i.vi = getelementptr i8, ptr %.2134.i, i64 %.sroa.055.2 ; 7 uses
  %i.vj = add i64 %.sroa.055.2, %.sroa.653.0      ; 9 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.sroa.055.2
  %i.vl = sub i64 0, %.sink
  %i.vm = getelementptr inbounds i8, ptr %i.vi, i64 %i.vl ; 2 uses
  %i.vn = icmp ugt i64 %.sroa.055.2, 65536
  %i.vo = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.2134.i, i64 %i.vj
  %i.vq = icmp ugt ptr %i.vp, %i.vo
  %or.cond.i191.i = select i1 %i.vn, i1 true, i1 %i.vq, !prof !104
  br i1 %or.cond.i191.i, label %bb.cd, label %.critedge.i192.i, !prof !104

.critedge.i192.i:                                 ; preds = %bb.cc
  %i.vr = load <2 x i64>, ptr %i.vf, align 1, !tbaa !11
  store <2 x i64> %i.vr, ptr %.2134.i, align 1, !tbaa !11
  %i.vs = icmp samesign ugt i64 %.sroa.055.2, 16
  br i1 %i.vs, label %bb.ce, label %ZSTD_wildcopy.exit250.i, !prof !52

bb.cd:                                            ; preds = %bb.cc
  %i.vt = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2134.i, ptr noundef %i.b, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.vg, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %.loopexit

bb.ce:                                            ; preds = %.critedge.i192.i
  %i.vu = getelementptr inbounds nuw i8, ptr %.2134.i, i64 16
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %i.vw = load <2 x i64>, ptr %i.vv, align 1, !tbaa !11
  store <2 x i64> %i.vw, ptr %i.vu, align 1, !tbaa !11
  %i.vx = icmp samesign ult i64 %.sroa.055.2, 33
  br i1 %i.vx, label %ZSTD_wildcopy.exit250.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vy = getelementptr inbounds nuw i8, ptr %.2134.i, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.130.i245.i = phi ptr [ %i.vy, %bb.cf ], [ %i.wd, %bb.cg ] ; 3 uses
  %.pn.i246.i = phi ptr [ %i.vv, %bb.cf ], [ %i.wb, %bb.cg ] ; 2 uses
  %.1.i247.i = getelementptr inbounds nuw i8, ptr %.pn.i246.i, i64 16
  %i.vz = load <2 x i64>, ptr %.1.i247.i, align 1, !tbaa !11
  store <2 x i64> %i.vz, ptr %.130.i245.i, align 1, !tbaa !11
  %i.wa = getelementptr inbounds nuw i8, ptr %.130.i245.i, i64 16
  %i.wb = getelementptr inbounds nuw i8, ptr %.pn.i246.i, i64 32 ; 2 uses
  %i.wc = load <2 x i64>, ptr %i.wb, align 1, !tbaa !11
  store <2 x i64> %i.wc, ptr %i.wa, align 1, !tbaa !11
  %i.wd = getelementptr inbounds nuw i8, ptr %.130.i245.i, i64 32 ; 2 uses
  %i.we = icmp ult ptr %i.wd, %i.vi
  br i1 %i.we, label %bb.cg, label %ZSTD_wildcopy.exit250.i, !llvm.loop !100

ZSTD_wildcopy.exit250.i:                          ; preds = %bb.cg, %bb.ce, %.critedge.i192.i
  store ptr %i.vk, ptr %i.a, align 8, !tbaa !38
  %i.wf = ptrtoint ptr %i.vi to i64               ; 2 uses
  %i.wg = sub i64 %i.wf, %i.gu                    ; 3 uses
  %i.wh = icmp ugt i64 %.sink, %i.wg
  br i1 %i.wh, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %ZSTD_wildcopy.exit250.i
  %i.wi = sub i64 %i.wf, %i.gv
  %i.wj = icmp ugt i64 %.sink, %i.wi
  br i1 %i.wj, label %.loopexit.thread, label %bb.ci, !prof !52

.loopexit.thread:                                 ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread211

bb.ci:                                            ; preds = %bb.ch
  %i.wk = ptrtoint ptr %i.vm to i64
  %i.wl = sub i64 %i.wk, %i.gu                    ; 3 uses
  %i.wm = getelementptr inbounds i8, ptr %i.l, i64 %i.wl ; 2 uses
  %i.wn = add nsw i64 %i.wl, %.sroa.653.0         ; 3 uses
  %.not.i194.i = icmp sgt i64 %i.wn, 0
  br i1 %.not.i194.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vi, ptr align 1 %i.wm, i64 %.sroa.653.0, i1 false)
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %gepdiff.i195.i = sub nsw i64 0, %i.wl          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vi, ptr align 1 %i.wm, i64 %gepdiff.i195.i, i1 false)
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vi, i64 %gepdiff.i195.i
  store i64 %i.wn, ptr %.sroa.958.0..sroa_idx59, align 8, !tbaa !129
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %ZSTD_wildcopy.exit250.i
  %.0151 = phi ptr [ %i.wo, %bb.ck ], [ %i.vi, %ZSTD_wildcopy.exit250.i ] ; 12 uses
  %.0149 = phi ptr [ %i.h, %bb.ck ], [ %i.vm, %ZSTD_wildcopy.exit250.i ] ; 9 uses
  %i.wp = phi i64 [ %i.wn, %bb.ck ], [ %.sroa.653.0, %ZSTD_wildcopy.exit250.i ] ; 5 uses
  %i.wq = icmp ugt i64 %.sink, 15
  br i1 %i.wq, label %bb.cm, label %bb.cp, !prof !89

bb.cm:                                            ; preds = %bb.cl
  %i.wr = getelementptr inbounds i8, ptr %.0151, i64 %i.wp
  %i.ws = load <2 x i64>, ptr %.0149, align 1, !tbaa !11
  store <2 x i64> %i.ws, ptr %.0151, align 1, !tbaa !11
  %i.wt = icmp slt i64 %i.wp, 17
  br i1 %i.wt, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.wu = getelementptr inbounds nuw i8, ptr %.0151, i64 16
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.130.i252.i = phi ptr [ %i.wu, %bb.cn ], [ %i.wz, %bb.co ] ; 3 uses
  %.pn.i253.i = phi ptr [ %.0149, %bb.cn ], [ %i.wx, %bb.co ] ; 2 uses
  %.1.i254.i = getelementptr inbounds nuw i8, ptr %.pn.i253.i, i64 16
  %i.wv = load <2 x i64>, ptr %.1.i254.i, align 1, !tbaa !11
  store <2 x i64> %i.wv, ptr %.130.i252.i, align 1, !tbaa !11
  %i.ww = getelementptr inbounds nuw i8, ptr %.130.i252.i, i64 16
  %i.wx = getelementptr inbounds nuw i8, ptr %.pn.i253.i, i64 32 ; 2 uses
  %i.wy = load <2 x i64>, ptr %i.wx, align 1, !tbaa !11
  store <2 x i64> %i.wy, ptr %i.ww, align 1, !tbaa !11
  %i.wz = getelementptr inbounds nuw i8, ptr %.130.i252.i, i64 32 ; 2 uses
  %i.xa = icmp ult ptr %i.wz, %i.wr
  br i1 %i.xa, label %bb.co, label %.loopexit, !llvm.loop !100

bb.cp:                                            ; preds = %bb.cl
  %i.xb = icmp samesign ult i64 %.sink, 8
  br i1 %i.xb, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !5
  %i.xe = load i8, ptr %.0149, align 1, !tbaa !11
  store i8 %i.xe, ptr %.0151, align 1, !tbaa !11
  %i.xf = getelementptr inbounds nuw i8, ptr %.0149, i64 1
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !11
  %i.xh = getelementptr inbounds nuw i8, ptr %.0151, i64 1
  store i8 %i.xg, ptr %i.xh, align 1, !tbaa !11
  %i.xi = getelementptr inbounds nuw i8, ptr %.0149, i64 2
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !11
  %i.xk = getelementptr inbounds nuw i8, ptr %.0151, i64 2
  store i8 %i.xj, ptr %i.xk, align 1, !tbaa !11
  %i.xl = getelementptr inbounds nuw i8, ptr %.0149, i64 3
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !11
  %i.xn = getelementptr inbounds nuw i8, ptr %.0151, i64 3
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !11
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !5
  %i.xq = zext i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw i8, ptr %.0149, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.0151, i64 4
  %i.xt = load i32, ptr %i.xr, align 1
  store i32 %i.xt, ptr %i.xs, align 1
  %i.xu = sext i32 %i.xd to i64
  %i.xv = sub nsw i64 0, %i.xu
  %i.xw = getelementptr inbounds i8, ptr %i.xr, i64 %i.xv
  br label %ZSTD_overlapCopy8.exit286.i

bb.cr:                                            ; preds = %bb.cp
  %i.xx = load i64, ptr %.0149, align 1
  store i64 %i.xx, ptr %.0151, align 1
  br label %ZSTD_overlapCopy8.exit286.i

ZSTD_overlapCopy8.exit286.i:                      ; preds = %bb.cr, %bb.cq
  %.1150 = phi ptr [ %i.xw, %bb.cq ], [ %.0149, %bb.cr ] ; 2 uses
  %.1150156 = ptrtoaddr ptr %.1150 to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %.1150, i64 8 ; 7 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.0151, i64 8 ; 6 uses
  %i.ya = icmp ugt i64 %i.wp, 8
  br i1 %i.ya, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %ZSTD_overlapCopy8.exit286.i
  %i.yb = ptrtoint ptr %i.xz to i64
  %i.yc = ptrtoint ptr %i.xy to i64
  %i.yd = sub i64 %i.yb, %i.yc
  %i.ye = getelementptr i8, ptr %.0151, i64 %i.wp ; 2 uses
  %i.yf = icmp slt i64 %i.yd, 16
  br i1 %i.yf, label %.preheader236.preheader, label %bb.ct

.preheader236.preheader:                          ; preds = %bb.cs
  %i.yg = add i64 %.sroa.653.0, %i.gu
  %i.yh = add i64 %.sink, %i.wg
  %umax159 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.wg) ; 2 uses
  %i.yi = add i64 %i.yg, %i.yh
  %i.yj = sub i64 %i.yi, %.sink
  %i.yk = add i64 %umax159, %i.gu
  %i.yl = add i64 %i.yk, 16
  %umax160 = tail call i64 @llvm.umax.i64(i64 %i.yj, i64 %i.yl)
  %i.ym = add i64 %umax160, -9
  %i.yn = add i64 %umax159, %i.gu
  %i.yo = sub i64 %i.ym, %i.yn                    ; 2 uses
  %i.yp = lshr i64 %i.yo, 3
  %i.yq = add nuw nsw i64 %i.yp, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.yo, 152
  br i1 %min.iters.check162, label %.preheader236.preheader216, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.preheader236.preheader
  %i.yr = add i64 %.sroa.055.2, %.2134.i154
  %i.ys = sub i64 %i.yr, %i.gu
  %umax155 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.ys)
  %i.yt = add i64 %umax155, %i.gu
  %i.yu = sub i64 %i.yt, %.1150156
  %diff.check157 = icmp ult i64 %i.yu, 32
  br i1 %diff.check157, label %.preheader236.preheader216, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck153
  %n.vec165 = and i64 %i.yq, 4611686018427387900  ; 3 uses
  %i.yv = shl i64 %n.vec165, 3                    ; 2 uses
  %i.yw = getelementptr i8, ptr %i.xz, i64 %i.yv
  %i.yx = getelementptr i8, ptr %i.xy, i64 %i.yv
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next172, %vector.body166 ] ; 2 uses
  %i.yy = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.xz, i64 %i.yy ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.xy, i64 %i.yy ; 2 uses
  %i.yz = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load170 = load <2 x i64>, ptr %next.gep169, align 1
  %wide.load171 = load <2 x i64>, ptr %i.yz, align 1
  %i.za = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x i64> %wide.load170, ptr %next.gep168, align 1
  store <2 x i64> %wide.load171, ptr %i.za, align 1
  %index.next172 = add nuw i64 %index167, 4       ; 2 uses
  %i.zb = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.zb, label %middle.block173, label %vector.body166, !llvm.loop !228

middle.block173:                                  ; preds = %vector.body166
  %cmp.n174 = icmp eq i64 %i.yq, %n.vec165
  br i1 %cmp.n174, label %.loopexit, label %.preheader236.preheader216

.preheader236.preheader216:                       ; preds = %vector.memcheck153, %.preheader236.preheader, %middle.block173
  %.029.i262.i.ph = phi ptr [ %i.xz, %vector.memcheck153 ], [ %i.xz, %.preheader236.preheader ], [ %i.yw, %middle.block173 ]
  %.0.i263.i.ph = phi ptr [ %i.xy, %vector.memcheck153 ], [ %i.xy, %.preheader236.preheader ], [ %i.yx, %middle.block173 ]
  br label %.preheader236

.preheader236:                                    ; preds = %.preheader236.preheader216, %.preheader236
  %.029.i262.i = phi ptr [ %i.zd, %.preheader236 ], [ %.029.i262.i.ph, %.preheader236.preheader216 ] ; 2 uses
  %.0.i263.i = phi ptr [ %i.ze, %.preheader236 ], [ %.0.i263.i.ph, %.preheader236.preheader216 ] ; 2 uses
  %i.zc = load i64, ptr %.0.i263.i, align 1
  store i64 %i.zc, ptr %.029.i262.i, align 1
  %i.zd = getelementptr inbounds nuw i8, ptr %.029.i262.i, i64 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i263.i, i64 8
  %i.zf = icmp ult ptr %i.zd, %i.ye
  br i1 %i.zf, label %.preheader236, label %.loopexit, !llvm.loop !229

bb.ct:                                            ; preds = %bb.cs
  %i.zg = load <2 x i64>, ptr %i.xy, align 1, !tbaa !11
  store <2 x i64> %i.zg, ptr %i.xz, align 1, !tbaa !11
  %i.zh = icmp slt i64 %i.wp, 25
  br i1 %i.zh, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zi = getelementptr inbounds nuw i8, ptr %.0151, i64 24
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.130.i259.i = phi ptr [ %i.zi, %bb.cu ], [ %i.zn, %bb.cv ] ; 3 uses
  %.pn.i260.i = phi ptr [ %i.xy, %bb.cu ], [ %i.zl, %bb.cv ] ; 2 uses
  %.1.i261.i = getelementptr inbounds nuw i8, ptr %.pn.i260.i, i64 16
  %i.zj = load <2 x i64>, ptr %.1.i261.i, align 1, !tbaa !11
  store <2 x i64> %i.zj, ptr %.130.i259.i, align 1, !tbaa !11
  %i.zk = getelementptr inbounds nuw i8, ptr %.130.i259.i, i64 16
  %i.zl = getelementptr inbounds nuw i8, ptr %.pn.i260.i, i64 32 ; 2 uses
  %i.zm = load <2 x i64>, ptr %i.zl, align 1, !tbaa !11
  store <2 x i64> %i.zm, ptr %i.zk, align 1, !tbaa !11
  %i.zn = getelementptr inbounds nuw i8, ptr %.130.i259.i, i64 32 ; 2 uses
  %i.zo = icmp ult ptr %i.zn, %i.ye
  br i1 %i.zo, label %bb.cv, label %.loopexit, !llvm.loop !100

.loopexit:                                        ; preds = %bb.cv, %.preheader236, %bb.co, %middle.block173, %bb.cd, %bb.cj, %ZSTD_overlapCopy8.exit286.i, %bb.cm, %bb.ct
  %.0.i193.i = phi i64 [ %i.vt, %bb.cd ], [ %i.vj, %bb.co ], [ %i.vj, %bb.cj ], [ %i.vj, %ZSTD_overlapCopy8.exit286.i ], [ %i.vj, %bb.cm ], [ %i.vj, %middle.block173 ], [ %i.vj, %bb.ct ], [ %i.vj, %.preheader236 ], [ %i.vj, %bb.cv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.zp = icmp ult i64 %.0.i193.i, -119
  %i.zq = getelementptr inbounds nuw i8, ptr %.2134.i, i64 %.0.i193.i ; 2 uses
  %i.zr = add nsw i32 %.0125.i262, -1             ; 2 uses
  br i1 %i.zp, label %bb.cw, label %.thread211

bb.cw:                                            ; preds = %.loopexit
  %.not227 = icmp eq i32 %i.zr, 0
  br i1 %.not227, label %.thread207, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !141
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !142
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !143
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !144
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !145
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.zs = add i64 %i.gu, 16
  %i.zt = ptrtoint ptr %3 to i64
  %i.zu = ptrtoint ptr %3 to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ep
  %i.zv = phi ptr [ %i.sq, %bb.cx ], [ %i.agj, %bb.ep ] ; 8 uses
  %i.zw = phi i32 [ %i.sr, %bb.cx ], [ %i.agk, %bb.ep ] ; 5 uses
  %i.zx = phi i64 [ %i.ss, %bb.cx ], [ %i.agl, %bb.ep ] ; 6 uses
  %i.zy = phi i64 [ %i.jw, %bb.cx ], [ %i.acs, %bb.ep ] ; 2 uses
  %i.zz = phi i64 [ %.sink441, %bb.cx ], [ %.sink443, %bb.ep ] ; 6 uses
  %i.aaa = phi i64 [ %.sink, %bb.cx ], [ %.sink442, %bb.ep ] ; 6 uses
  %i.aab = phi i64 [ %i.st, %bb.cx ], [ %i.agm, %bb.ep ] ; 2 uses
  %i.aac = phi i64 [ %i.su, %bb.cx ], [ %i.agn, %bb.ep ] ; 2 uses
  %i.aad = phi i64 [ %i.sv, %bb.cx ], [ %i.ago, %bb.ep ] ; 2 uses
  %.4129.i265 = phi i32 [ %i.zr, %bb.cx ], [ %i.aky, %bb.ep ] ; 2 uses
  %.7139.i263 = phi ptr [ %i.zq, %bb.cx ], [ %i.akx, %bb.ep ] ; 8 uses
  %.7139.i263178 = ptrtoaddr ptr %.7139.i263 to i64
  %.not231 = icmp eq i32 %.4129.i265, 1
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.aad ; 4 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.aab ; 4 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.aac ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !41, !noalias !230
  %i.aaj = zext i32 %i.aai to i64                 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !41, !noalias !230 ; 2 uses
  %i.aam = zext i32 %i.aal to i64                 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aag, i64 4
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !41, !noalias !230 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aae, i64 2
  %i.aaq = load i8, ptr %i.aap, align 2, !tbaa !58, !noalias !230 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaf, i64 2
  %i.aas = load i8, ptr %i.aar, align 2, !tbaa !58, !noalias !230 ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aag, i64 2
  %i.aau = load i8, ptr %i.aat, align 2, !tbaa !58, !noalias !230 ; 4 uses
  %i.aav = zext i8 %i.aaq to i32                  ; 2 uses
  %i.aaw = zext i8 %i.aas to i32                  ; 2 uses
  %i.aax = add i8 %i.aas, %i.aaq
  %i.aay = add i8 %i.aax, %i.aau
  %i.aaz = load i16, ptr %i.aae, align 4, !tbaa !57, !noalias !230
  %i.aba = load i16, ptr %i.aaf, align 4, !tbaa !57, !noalias !230
  %i.abb = load i16, ptr %i.aag, align 4, !tbaa !57, !noalias !230
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aae, i64 3
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !56, !noalias !230 ; 2 uses
  %i.abe = zext i8 %i.abd to i32
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aaf, i64 3
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !56, !noalias !230 ; 2 uses
  %i.abh = zext i8 %i.abg to i32
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aag, i64 3
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !56, !noalias !230 ; 2 uses
  %i.abk = zext i8 %i.abj to i32
  %i.abl = icmp ugt i8 %i.aau, 1
  br i1 %i.abl, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.abm = zext i8 %i.aau to i32                  ; 2 uses
  %i.abn = and i32 %i.zw, 63
  %i.abo = zext nneg i32 %i.abn to i64
  %i.abp = shl i64 %i.zx, %i.abo
  %i.abq = sub nsw i32 0, %i.abm
  %i.abr = and i32 %i.abq, 63
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = lshr i64 %i.abp, %i.abs
  %i.abu = add i32 %i.zw, %i.abm                  ; 2 uses
  store i32 %i.abu, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %i.abv = zext i32 %i.aao to i64
  %i.abw = add i64 %i.abt, %i.abv
  store i64 %i.zz, ptr %i.gt, align 8, !tbaa !45, !noalias !230
  br label %bb.df

bb.da:                                            ; preds = %bb.cy
  %i.abx = icmp eq i32 %i.aal, 0                  ; 3 uses
  %i.aby = icmp eq i8 %i.aau, 0
  br i1 %i.aby, label %bb.db, label %bb.dc, !prof !89

bb.db:                                            ; preds = %bb.da
  %i.abz = select i1 %i.abx, i64 %i.zz, i64 %i.aaa
  %i.aca = select i1 %i.abx, i64 %i.aaa, i64 %i.zz
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.acb = zext i1 %i.abx to i32
  %i.acc = add i32 %i.aao, %i.acb
  %i.acd = zext i32 %i.acc to i64
  %i.ace = and i32 %i.zw, 63
  %i.acf = zext nneg i32 %i.ace to i64
  %i.acg = shl i64 %i.zx, %i.acf
  %i.ach = lshr i64 %i.acg, 63
  %i.aci = add i32 %i.zw, 1                       ; 3 uses
  store i32 %i.aci, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %i.acj = add nuw nsw i64 %i.ach, %i.acd         ; 3 uses
  %i.ack = icmp eq i64 %i.acj, 3
  br i1 %i.ack, label %.thread190, label %bb.dd
end_hunk_7
begin_hunk_8_@ZSTD_decompressSequencesSplitLitBuffer_bmi2:bb.a
  %i.afz = getelementptr inbounds i8, ptr %i.ady, i64 %i.afy
  %i.aga = icmp ult ptr %i.afz, %3
  %i.agb = ptrtoint ptr %i.ady to i64
  %i.agc = sub i64 %i.agb, %i.zu
  %i.agd = trunc i64 %i.agc to i32
  %.021.i220.i = select i1 %i.aga, i32 %i.agd, i32 %i.afw ; 2 uses
  %i.age = zext i32 %.021.i220.i to i64
  %i.agf = sub nsw i64 0, %i.age
  %i.agg = getelementptr inbounds i8, ptr %i.ady, i64 %i.agf ; 3 uses
  store ptr %i.agg, ptr %i.cx, align 8, !tbaa !78, !noalias !230
  %i.agh = shl i32 %.021.i220.i, 3
  %i.agi = sub i32 %i.aff, %i.agh                 ; 2 uses
  store i32 %i.agi, ptr %i.cn, align 8, !tbaa !83, !noalias !230
  %.val.i51 = load i64, ptr %i.agg, align 1, !tbaa !45, !noalias !230 ; 2 uses
  store i64 %.val.i51, ptr %9, align 8, !tbaa !79, !noalias !230
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.du, %bb.dr, %bb.dt, %bb.dv, %bb.dp
  %i.agj = phi ptr [ %i.ady, %bb.du ], [ @BIT_reloadDStream.zeroFilled, %bb.dr ], [ %i.aft, %bb.dt ], [ %i.agg, %bb.dv ], [ %i.ady, %bb.dp ] ; 2 uses
  %i.agk = phi i32 [ %i.aff, %bb.du ], [ %i.aff, %bb.dr ], [ %i.afu, %bb.dt ], [ %i.agi, %bb.dv ], [ %i.aek, %bb.dp ] ; 2 uses
  %i.agl = phi i64 [ %i.aea, %bb.du ], [ %i.aea, %bb.dr ], [ %.val.i.i50, %bb.dt ], [ %.val.i51, %bb.dv ], [ %i.aea, %bb.dp ]
  %i.agm = phi i64 [ %i.afe, %bb.du ], [ %i.afe, %bb.dr ], [ %i.afe, %bb.dt ], [ %i.afe, %bb.dv ], [ %i.aab, %bb.dp ]
  %i.agn = phi i64 [ %i.afo, %bb.du ], [ %i.afo, %bb.dr ], [ %i.afo, %bb.dt ], [ %i.afo, %bb.dv ], [ %i.aac, %bb.dp ]
  %i.ago = phi i64 [ %i.aeu, %bb.du ], [ %i.aeu, %bb.dr ], [ %i.aeu, %bb.dt ], [ %i.aeu, %bb.dv ], [ %i.aad, %bb.dp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0, ptr %8, align 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sink442, ptr %.sroa.9.0..sroa_idx, align 8
  %i.agp = getelementptr i8, ptr %.7139.i263, i64 %.sroa.0.0 ; 7 uses
  %i.agq = add i64 %.sroa.0.0, %.sroa.6.0         ; 9 uses
  %i.agr = load ptr, ptr %i.a, align 8, !tbaa !38 ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 %.sroa.0.0 ; 2 uses
  %i.agt = sub i64 0, %.sink442
  %i.agu = getelementptr inbounds i8, ptr %i.agp, i64 %i.agt ; 2 uses
  %i.agv = icmp ugt ptr %i.ags, %i.vg
  %i.agw = getelementptr inbounds nuw i8, ptr %.7139.i263, i64 %i.agq
  %i.agx = icmp ugt ptr %i.agw, %i.vo
  %or.cond.i.i = select i1 %i.agv, i1 true, i1 %i.agx, !prof !104
  br i1 %or.cond.i.i, label %bb.dw, label %.critedge.i.i, !prof !104

.critedge.i.i:                                    ; preds = %ZSTD_decodeSequence.exit.i
  %i.agy = load <2 x i64>, ptr %i.agr, align 1, !tbaa !11
  store <2 x i64> %i.agy, ptr %.7139.i263, align 1, !tbaa !11
  %i.agz = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.agz, label %bb.dx, label %ZSTD_wildcopy.exit271.i, !prof !52

bb.dw:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.aha = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.7139.i263, ptr noundef %i.b, ptr noundef nonnull byval(%struct.seq_t) align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.vg, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %ZSTD_execSequence.exit.i

bb.dx:                                            ; preds = %.critedge.i.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %.7139.i263, i64 16
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agr, i64 16 ; 2 uses
  %i.ahd = add i64 %.sroa.0.0, -16
  %i.ahe = load <2 x i64>, ptr %i.ahc, align 1, !tbaa !11
  store <2 x i64> %i.ahe, ptr %i.ahb, align 1, !tbaa !11
  %i.ahf = icmp slt i64 %i.ahd, 17
  br i1 %i.ahf, label %ZSTD_wildcopy.exit271.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ahg = getelementptr inbounds nuw i8, ptr %.7139.i263, i64 32
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %bb.dy
  %.130.i266.i = phi ptr [ %i.ahg, %bb.dy ], [ %i.ahl, %bb.dz ] ; 3 uses
  %.pn.i267.i = phi ptr [ %i.ahc, %bb.dy ], [ %i.ahj, %bb.dz ] ; 2 uses
  %.1.i268.i = getelementptr inbounds nuw i8, ptr %.pn.i267.i, i64 16
  %i.ahh = load <2 x i64>, ptr %.1.i268.i, align 1, !tbaa !11
  store <2 x i64> %i.ahh, ptr %.130.i266.i, align 1, !tbaa !11
  %i.ahi = getelementptr inbounds nuw i8, ptr %.130.i266.i, i64 16
  %i.ahj = getelementptr inbounds nuw i8, ptr %.pn.i267.i, i64 32 ; 2 uses
  %i.ahk = load <2 x i64>, ptr %i.ahj, align 1, !tbaa !11
  store <2 x i64> %i.ahk, ptr %i.ahi, align 1, !tbaa !11
  %i.ahl = getelementptr inbounds nuw i8, ptr %.130.i266.i, i64 32 ; 2 uses
  %i.ahm = icmp ult ptr %i.ahl, %i.agp
  br i1 %i.ahm, label %bb.dz, label %ZSTD_wildcopy.exit271.i, !llvm.loop !100

ZSTD_wildcopy.exit271.i:                          ; preds = %bb.dz, %bb.dx, %.critedge.i.i
  store ptr %i.ags, ptr %i.a, align 8, !tbaa !38
  %i.ahn = ptrtoint ptr %i.agp to i64             ; 2 uses
  %i.aho = sub i64 %i.ahn, %i.gu                  ; 3 uses
  %i.ahp = icmp ugt i64 %.sink442, %i.aho
  br i1 %i.ahp, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %ZSTD_wildcopy.exit271.i
  %i.ahq = sub i64 %i.ahn, %i.gv
  %i.ahr = icmp ugt i64 %.sink442, %i.ahq
  br i1 %i.ahr, label %ZSTD_execSequence.exit.i.thread, label %bb.eb, !prof !52

ZSTD_execSequence.exit.i.thread:                  ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread211

bb.eb:                                            ; preds = %bb.ea
  %i.ahs = ptrtoint ptr %i.agu to i64
  %i.aht = sub i64 %i.ahs, %i.gu                  ; 3 uses
  %i.ahu = getelementptr inbounds i8, ptr %i.l, i64 %i.aht ; 2 uses
  %i.ahv = add nsw i64 %i.aht, %.sroa.6.0         ; 3 uses
  %.not.i190.i = icmp sgt i64 %i.ahv, 0
  br i1 %.not.i190.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agp, ptr align 1 %i.ahu, i64 %.sroa.6.0, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.ed:                                            ; preds = %bb.eb
  %gepdiff.i.i = sub nsw i64 0, %i.aht            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agp, ptr align 1 %i.ahu, i64 %gepdiff.i.i, i1 false)
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agp, i64 %gepdiff.i.i
  store i64 %i.ahv, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !129
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %ZSTD_wildcopy.exit271.i
  %.0148 = phi ptr [ %i.ahw, %bb.ed ], [ %i.agp, %ZSTD_wildcopy.exit271.i ] ; 12 uses
  %.0146 = phi ptr [ %i.h, %bb.ed ], [ %i.agu, %ZSTD_wildcopy.exit271.i ] ; 9 uses
  %i.ahx = phi i64 [ %i.ahv, %bb.ed ], [ %.sroa.6.0, %ZSTD_wildcopy.exit271.i ] ; 5 uses
  %i.ahy = icmp ugt i64 %.sink442, 15
  br i1 %i.ahy, label %bb.ef, label %bb.ei, !prof !89

bb.ef:                                            ; preds = %bb.ee
  %i.ahz = getelementptr inbounds i8, ptr %.0148, i64 %i.ahx
  %i.aia = load <2 x i64>, ptr %.0146, align 1, !tbaa !11
  store <2 x i64> %i.aia, ptr %.0148, align 1, !tbaa !11
  %i.aib = icmp slt i64 %i.ahx, 17
  br i1 %i.aib, label %ZSTD_execSequence.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aic = getelementptr inbounds nuw i8, ptr %.0148, i64 16
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %bb.eg
  %.130.i273.i = phi ptr [ %i.aic, %bb.eg ], [ %i.aih, %bb.eh ] ; 3 uses
  %.pn.i274.i = phi ptr [ %.0146, %bb.eg ], [ %i.aif, %bb.eh ] ; 2 uses
  %.1.i275.i = getelementptr inbounds nuw i8, ptr %.pn.i274.i, i64 16
  %i.aid = load <2 x i64>, ptr %.1.i275.i, align 1, !tbaa !11
  store <2 x i64> %i.aid, ptr %.130.i273.i, align 1, !tbaa !11
  %i.aie = getelementptr inbounds nuw i8, ptr %.130.i273.i, i64 16
  %i.aif = getelementptr inbounds nuw i8, ptr %.pn.i274.i, i64 32 ; 2 uses
  %i.aig = load <2 x i64>, ptr %i.aif, align 1, !tbaa !11
  store <2 x i64> %i.aig, ptr %i.aie, align 1, !tbaa !11
  %i.aih = getelementptr inbounds nuw i8, ptr %.130.i273.i, i64 32 ; 2 uses
  %i.aii = icmp ult ptr %i.aih, %i.ahz
  br i1 %i.aii, label %bb.eh, label %ZSTD_execSequence.exit.i, !llvm.loop !100

bb.ei:                                            ; preds = %bb.ee
  %i.aij = icmp samesign ult i64 %.sink442, 8
  br i1 %i.aij, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink442
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !5
  %i.aim = load i8, ptr %.0146, align 1, !tbaa !11
  store i8 %i.aim, ptr %.0148, align 1, !tbaa !11
  %i.ain = getelementptr inbounds nuw i8, ptr %.0146, i64 1
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !11
  %i.aip = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  store i8 %i.aio, ptr %i.aip, align 1, !tbaa !11
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0146, i64 2
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !11
  %i.ais = getelementptr inbounds nuw i8, ptr %.0148, i64 2
  store i8 %i.air, ptr %i.ais, align 1, !tbaa !11
  %i.ait = getelementptr inbounds nuw i8, ptr %.0146, i64 3
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !11
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0148, i64 3
  store i8 %i.aiu, ptr %i.aiv, align 1, !tbaa !11
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink442
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !5
  %i.aiy = zext i32 %i.aix to i64
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0146, i64 %i.aiy ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.0148, i64 4
  %i.ajb = load i32, ptr %i.aiz, align 1
  store i32 %i.ajb, ptr %i.aja, align 1
  %i.ajc = sext i32 %i.ail to i64
  %i.ajd = sub nsw i64 0, %i.ajc
  %i.aje = getelementptr inbounds i8, ptr %i.aiz, i64 %i.ajd
  br label %ZSTD_overlapCopy8.exit287.i

bb.ek:                                            ; preds = %bb.ei
  %i.ajf = load i64, ptr %.0146, align 1
  store i64 %i.ajf, ptr %.0148, align 1
  br label %ZSTD_overlapCopy8.exit287.i

ZSTD_overlapCopy8.exit287.i:                      ; preds = %bb.ek, %bb.ej
  %.1147 = phi ptr [ %i.aje, %bb.ej ], [ %.0146, %bb.ek ] ; 2 uses
  %.1147180 = ptrtoaddr ptr %.1147 to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr %.1147, i64 8 ; 7 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0148, i64 8 ; 6 uses
  %i.aji = icmp ugt i64 %i.ahx, 8
  br i1 %i.aji, label %bb.el, label %ZSTD_execSequence.exit.i

bb.el:                                            ; preds = %ZSTD_overlapCopy8.exit287.i
  %i.ajj = ptrtoint ptr %i.ajh to i64
  %i.ajk = ptrtoint ptr %i.ajg to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk
  %i.ajm = getelementptr i8, ptr %.0148, i64 %i.ahx ; 2 uses
  %i.ajn = icmp slt i64 %i.ajl, 16
  br i1 %i.ajn, label %.preheader233.preheader, label %bb.em

.preheader233.preheader:                          ; preds = %bb.el
  %i.ajo = add i64 %.sroa.6.0, %i.gu
  %i.ajp = add i64 %.sink442, %i.aho
  %umax183 = tail call i64 @llvm.umax.i64(i64 %.sink442, i64 %i.aho) ; 2 uses
  %i.ajq = add i64 %i.ajo, %i.ajp
  %i.ajr = sub i64 %i.ajq, %.sink442
  %i.ajs = add i64 %i.zs, %umax183
  %umax184 = tail call i64 @llvm.umax.i64(i64 %i.ajr, i64 %i.ajs)
  %i.ajt = add i64 %umax184, -9
  %i.aju = add i64 %umax183, %i.gu
  %i.ajv = sub i64 %i.ajt, %i.aju                 ; 2 uses
  %i.ajw = lshr i64 %i.ajv, 3
  %i.ajx = add nuw nsw i64 %i.ajw, 1              ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.ajv, 72
  br i1 %min.iters.check186, label %.preheader233.preheader205, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.preheader233.preheader
  %i.ajy = sub i64 %.sroa.0.0, %i.gu
  %i.ajz = add i64 %i.ajy, %.7139.i263178
  %umax179 = tail call i64 @llvm.umax.i64(i64 %.sink442, i64 %i.ajz)
  %i.aka = add i64 %umax179, %i.gu
  %i.akb = sub i64 %i.aka, %.1147180
  %diff.check181 = icmp ult i64 %i.akb, 32
  br i1 %diff.check181, label %.preheader233.preheader205, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck177
  %n.vec189 = and i64 %i.ajx, 4611686018427387900 ; 3 uses
  %i.akc = shl i64 %n.vec189, 3                   ; 2 uses
  %i.akd = getelementptr i8, ptr %i.ajh, i64 %i.akc
  %i.ake = getelementptr i8, ptr %i.ajg, i64 %i.akc
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %i.akf = shl i64 %index191, 3                   ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.ajh, i64 %i.akf ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.ajg, i64 %i.akf ; 2 uses
  %i.akg = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <2 x i64>, ptr %next.gep193, align 1
  %wide.load195 = load <2 x i64>, ptr %i.akg, align 1
  %i.akh = getelementptr i8, ptr %next.gep192, i64 16
  store <2 x i64> %wide.load194, ptr %next.gep192, align 1
  store <2 x i64> %wide.load195, ptr %i.akh, align 1
  %index.next196 = add nuw i64 %index191, 4       ; 2 uses
  %i.aki = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.aki, label %middle.block197, label %vector.body190, !llvm.loop !233

middle.block197:                                  ; preds = %vector.body190
  %cmp.n198 = icmp eq i64 %i.ajx, %n.vec189
  br i1 %cmp.n198, label %ZSTD_execSequence.exit.i, label %.preheader233.preheader205

.preheader233.preheader205:                       ; preds = %vector.memcheck177, %.preheader233.preheader, %middle.block197
  %.029.i283.i.ph = phi ptr [ %i.ajh, %vector.memcheck177 ], [ %i.ajh, %.preheader233.preheader ], [ %i.akd, %middle.block197 ]
  %.0.i284.i.ph = phi ptr [ %i.ajg, %vector.memcheck177 ], [ %i.ajg, %.preheader233.preheader ], [ %i.ake, %middle.block197 ]
  br label %.preheader233

.preheader233:                                    ; preds = %.preheader233.preheader205, %.preheader233
  %.029.i283.i = phi ptr [ %i.akk, %.preheader233 ], [ %.029.i283.i.ph, %.preheader233.preheader205 ] ; 2 uses
  %.0.i284.i = phi ptr [ %i.akl, %.preheader233 ], [ %.0.i284.i.ph, %.preheader233.preheader205 ] ; 2 uses
  %i.akj = load i64, ptr %.0.i284.i, align 1
  store i64 %i.akj, ptr %.029.i283.i, align 1
  %i.akk = getelementptr inbounds nuw i8, ptr %.029.i283.i, i64 8 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.0.i284.i, i64 8
  %i.akm = icmp ult ptr %i.akk, %i.ajm
  br i1 %i.akm, label %.preheader233, label %ZSTD_execSequence.exit.i, !llvm.loop !234

bb.em:                                            ; preds = %bb.el
  %i.akn = load <2 x i64>, ptr %i.ajg, align 1, !tbaa !11
  store <2 x i64> %i.akn, ptr %i.ajh, align 1, !tbaa !11
  %i.ako = icmp slt i64 %i.ahx, 25
  br i1 %i.ako, label %ZSTD_execSequence.exit.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.akp = getelementptr inbounds nuw i8, ptr %.0148, i64 24
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %bb.en
  %.130.i280.i = phi ptr [ %i.akp, %bb.en ], [ %i.aku, %bb.eo ] ; 3 uses
  %.pn.i281.i = phi ptr [ %i.ajg, %bb.en ], [ %i.aks, %bb.eo ] ; 2 uses
  %.1.i282.i = getelementptr inbounds nuw i8, ptr %.pn.i281.i, i64 16
  %i.akq = load <2 x i64>, ptr %.1.i282.i, align 1, !tbaa !11
  store <2 x i64> %i.akq, ptr %.130.i280.i, align 1, !tbaa !11
  %i.akr = getelementptr inbounds nuw i8, ptr %.130.i280.i, i64 16
  %i.aks = getelementptr inbounds nuw i8, ptr %.pn.i281.i, i64 32 ; 2 uses
  %i.akt = load <2 x i64>, ptr %i.aks, align 1, !tbaa !11
  store <2 x i64> %i.akt, ptr %i.akr, align 1, !tbaa !11
  %i.aku = getelementptr inbounds nuw i8, ptr %.130.i280.i, i64 32 ; 2 uses
  %i.akv = icmp ult ptr %i.aku, %i.ajm
  br i1 %i.akv, label %bb.eo, label %ZSTD_execSequence.exit.i, !llvm.loop !100

ZSTD_execSequence.exit.i:                         ; preds = %bb.eo, %.preheader233, %bb.eh, %middle.block197, %bb.em, %bb.ef, %ZSTD_overlapCopy8.exit287.i, %bb.ec, %bb.dw
  %.0.i.i = phi i64 [ %i.aha, %bb.dw ], [ %i.agq, %middle.block197 ], [ %i.agq, %bb.ec ], [ %i.agq, %ZSTD_overlapCopy8.exit287.i ], [ %i.agq, %bb.ef ], [ %i.agq, %bb.em ], [ %i.agq, %bb.eh ], [ %i.agq, %.preheader233 ], [ %i.agq, %bb.eo ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.akw = icmp ult i64 %.0.i.i, -119
  br i1 %i.akw, label %bb.ep, label %.thread211

bb.ep:                                            ; preds = %ZSTD_execSequence.exit.i
  %i.akx = getelementptr inbounds nuw i8, ptr %.7139.i263, i64 %.0.i.i ; 2 uses
  %i.aky = add nsw i32 %.4129.i265, -1            ; 2 uses
  %.not173.i = icmp eq i32 %i.aky, 0
  br i1 %.not173.i, label %.thread207, label %bb.cy, !llvm.loop !151

.thread207:                                       ; preds = %bb.bu, %bb.ep, %bb.cw
  %i.akz = phi ptr [ %i.agj, %bb.ep ], [ %i.sq, %bb.cw ], [ %i.ny, %bb.bu ]
  %i.ala = phi i32 [ %i.agk, %bb.ep ], [ %i.sr, %bb.cw ], [ %i.nz, %bb.bu ]
  %i.alb = phi i64 [ %i.acs, %bb.ep ], [ %i.jw, %bb.cw ], [ %i.jw, %bb.bu ]
  %i.alc = phi i64 [ %.sink443, %bb.ep ], [ %.sink441, %bb.cw ], [ %.sink441, %bb.bu ]
  %i.ald = phi i64 [ %.sink442, %bb.ep ], [ %.sink, %bb.cw ], [ %.sink, %bb.bu ]
  %.9141.i205 = phi ptr [ %i.akx, %bb.ep ], [ %i.zq, %bb.cw ], [ %i.sn, %bb.bu ]
  %.2149.i180189204 = phi ptr [ %i.vg, %bb.ep ], [ %i.vg, %bb.cw ], [ %i.f, %bb.bu ]
  %i.ale = icmp eq ptr %i.akz, %3
  %.not232 = icmp eq i32 %i.ala, 64
  %or.cond = select i1 %i.ale, i1 %.not232, i1 false
  br i1 %or.cond, label %.preheader, label %.thread211

.preheader:                                       ; preds = %.thread207
  %i.alf = trunc i64 %i.ald to i32
  store i32 %i.alf, ptr %i.n, align 4, !tbaa !5
  %i.alg = trunc i64 %i.alc to i32
  store i32 %i.alg, ptr %i.r, align 4, !tbaa !5
  %i.alh = trunc i64 %i.alb to i32
  store i32 %i.alh, ptr %i.v, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.eq

.thread211:                                       ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i, %ZSTD_execSequence.exit.i, %bb.l, %bb.d, %bb.b, %.loopexit.thread, %.loopexit, %BIT_initDStream.exit, %ZSTD_execSequence.exit.i.thread, %bb.bv, %ZSTD_execSequenceSplitLitBuffer.exit.i.thread, %bb.bw, %.thread207
  %.9.i.ph = phi i64 [ -20, %.loopexit.thread ], [ -20, %bb.bv ], [ -20, %bb.b ], [ %.0.i193.i, %.loopexit ], [ -20, %ZSTD_execSequence.exit.i.thread ], [ -20, %.thread207 ], [ -20, %BIT_initDStream.exit ], [ -20, %ZSTD_execSequenceSplitLitBuffer.exit.i.thread ], [ %.0.i.i, %ZSTD_execSequence.exit.i ], [ -20, %bb.d ], [ -70, %bb.bw ], [ -20, %bb.l ], [ %.0.i199.i, %ZSTD_execSequenceSplitLitBuffer.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %ZSTD_decompressSequences_bodySplitLitBuffer.exit

bb.eq:                                            ; preds = %.preheader, %bb.a
  %.pre = phi ptr [ %.pre.pre, %.preheader ], [ %i.d, %bb.a ] ; 3 uses
  %.4151.i = phi ptr [ %.2149.i180189204, %.preheader ], [ %i.f, %bb.a ] ; 2 uses
  %.11143.i = phi ptr [ %.9141.i205, %.preheader ], [ %1, %bb.a ] ; 5 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  %i.alj = load i32, ptr %i.ali, align 8, !tbaa !35
  %i.alk = icmp eq i32 %i.alj, 2
  br i1 %i.alk, label %bb.er, label %._crit_edge

._crit_edge:                                      ; preds = %bb.eq
  %.pre302 = ptrtoint ptr %i.b to i64
  br label %bb.ev

bb.er:                                            ; preds = %bb.eq
  %i.all = ptrtoint ptr %.4151.i to i64
  %i.alm = ptrtoint ptr %.pre to i64
  %i.aln = sub i64 %i.all, %i.alm                 ; 3 uses
  %i.alo = ptrtoint ptr %i.b to i64               ; 2 uses
  %i.alp = ptrtoint ptr %.11143.i to i64
  %i.alq = sub i64 %i.alo, %i.alp
  %.not178.i = icmp ugt i64 %i.aln, %i.alq
  br i1 %.not178.i, label %ZSTD_decompressSequences_bodySplitLitBuffer.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.not177.i = icmp eq ptr %.11143.i, null
  br i1 %.not177.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.11143.i, ptr align 1 %.pre, i64 %i.aln, i1 false)
  %i.alr = getelementptr inbounds nuw i8, ptr %.11143.i, i64 %i.aln
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et
  %.12144.i = phi ptr [ %i.alr, %bb.et ], [ null, %bb.es ]
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %i.ali, align 8, !tbaa !35
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge, %bb.eu
  %.pre-phi = phi i64 [ %.pre302, %._crit_edge ], [ %i.alo, %bb.eu ]
  %i.alu = phi ptr [ %.pre, %._crit_edge ], [ %i.als, %bb.eu ] ; 2 uses
  %.6153.i = phi ptr [ %.4151.i, %._crit_edge ], [ %i.alt, %bb.eu ]
  %.14146.i = phi ptr [ %.11143.i, %._crit_edge ], [ %.12144.i, %bb.eu ] ; 4 uses
  %i.alv = ptrtoint ptr %.6153.i to i64
  %i.alw = ptrtoint ptr %i.alu to i64
  %i.alx = sub i64 %i.alv, %i.alw                 ; 3 uses
  %i.aly = ptrtoint ptr %.14146.i to i64
  %i.alz = sub i64 %.pre-phi, %i.aly
  %.not180.i = icmp ugt i64 %i.alx, %i.alz
  br i1 %.not180.i, label %ZSTD_decompressSequences_bodySplitLitBuffer.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.not179.i = icmp eq ptr %.14146.i, null
  br i1 %.not179.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14146.i, ptr align 1 %i.alu, i64 %i.alx, i1 false)
  %i.ama = getelementptr inbounds nuw i8, ptr %.14146.i, i64 %i.alx
  %i.amb = ptrtoint ptr %i.ama to i64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.16.i.ph = phi i64 [ 0, %bb.ew ], [ %i.amb, %bb.ex ]
  %i.amc = ptrtoint ptr %1 to i64
  %i.amd = sub i64 %.16.i.ph, %i.amc
  br label %ZSTD_decompressSequences_bodySplitLitBuffer.exit

ZSTD_decompressSequences_bodySplitLitBuffer.exit: ; preds = %bb.er, %bb.ev, %.thread211, %bb.ey
  %.14.i = phi i64 [ %i.amd, %bb.ey ], [ %.9.i.ph, %.thread211 ], [ -70, %bb.ev ], [ -70, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.14.i
}

end_hunk_8
begin_hunk_9_@ZSTD_decompressSequences_bmi2:bb.a
  %i.nl = getelementptr inbounds i8, ptr %i.lk, i64 %i.nk
  %i.nm = icmp ult ptr %i.nl, %3
  %i.nn = ptrtoint ptr %i.lk to i64
  %i.no = sub i64 %i.nn, %i.hg
  %i.np = trunc i64 %i.no to i32
  %.021.i87.i = select i1 %i.nm, i32 %i.np, i32 %i.ni ; 2 uses
  %i.nq = zext i32 %.021.i87.i to i64
  %i.nr = sub nsw i64 0, %i.nq
  %i.ns = getelementptr inbounds i8, ptr %i.lk, i64 %i.nr ; 3 uses
  store ptr %i.ns, ptr %i.de, align 8, !tbaa !78, !noalias !235
  %i.nt = shl i32 %.021.i87.i, 3
  %i.nu = sub i32 %i.mr, %i.nt                    ; 2 uses
  store i32 %i.nu, ptr %i.cu, align 8, !tbaa !83, !noalias !235
  %.val.i35 = load i64, ptr %i.ns, align 1, !tbaa !45, !noalias !235 ; 2 uses
  store i64 %.val.i35, ptr %7, align 8, !tbaa !79, !noalias !235
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.bb, %bb.ay, %bb.ba, %bb.bc, %bb.aw
  %i.nv = phi ptr [ %i.lk, %bb.bb ], [ @BIT_reloadDStream.zeroFilled, %bb.ay ], [ %i.nf, %bb.ba ], [ %i.ns, %bb.bc ], [ %i.lk, %bb.aw ] ; 2 uses
  %i.nw = phi i32 [ %i.mr, %bb.bb ], [ %i.mr, %bb.ay ], [ %i.ng, %bb.ba ], [ %i.nu, %bb.bc ], [ %i.lw, %bb.aw ] ; 2 uses
  %i.nx = phi i64 [ %i.lm, %bb.bb ], [ %i.lm, %bb.ay ], [ %.val.i.i34, %bb.ba ], [ %.val.i35, %bb.bc ], [ %i.lm, %bb.aw ]
  %i.ny = phi i64 [ %i.mq, %bb.bb ], [ %i.mq, %bb.ay ], [ %i.mq, %bb.ba ], [ %i.mq, %bb.bc ], [ %i.hn, %bb.aw ]
  %i.nz = phi i64 [ %i.na, %bb.bb ], [ %i.na, %bb.ay ], [ %i.na, %bb.ba ], [ %i.na, %bb.bc ], [ %i.ho, %bb.aw ]
  %i.oa = phi i64 [ %i.mg, %bb.bb ], [ %i.mg, %bb.ay ], [ %i.mg, %bb.ba ], [ %i.mg, %bb.bc ], [ %i.hp, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0, ptr %6, align 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sink, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ob = getelementptr i8, ptr %.068.i93, i64 %.sroa.0.0 ; 7 uses
  %i.oc = add i64 %.sroa.0.0, %.sroa.6.0          ; 9 uses
  %i.od = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %.sroa.0.0 ; 2 uses
  %i.of = sub i64 0, %.sink
  %i.og = getelementptr inbounds i8, ptr %i.ob, i64 %i.of ; 2 uses
  %i.oh = icmp ugt ptr %i.oe, %i.m
  %i.oi = getelementptr inbounds nuw i8, ptr %.068.i93, i64 %i.oc
  %i.oj = icmp ugt ptr %i.oi, %i.gz
  %or.cond.i.i = select i1 %i.oh, i1 true, i1 %i.oj, !prof !104
  br i1 %or.cond.i.i, label %bb.bd, label %.critedge.i.i, !prof !104

.critedge.i.i:                                    ; preds = %ZSTD_decodeSequence.exit.i
  %i.ok = load <2 x i64>, ptr %i.od, align 1, !tbaa !11
  store <2 x i64> %i.ok, ptr %.068.i93, align 1, !tbaa !11
  %i.ol = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.ol, label %bb.be, label %ZSTD_wildcopy.exit.i, !prof !52

bb.bd:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.om = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.068.i93, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s)
  br label %ZSTD_execSequence.exit.i

bb.be:                                            ; preds = %.critedge.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %.068.i93, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %i.op = add i64 %.sroa.0.0, -16
  %i.oq = load <2 x i64>, ptr %i.oo, align 1, !tbaa !11
  store <2 x i64> %i.oq, ptr %i.on, align 1, !tbaa !11
  %i.or = icmp slt i64 %i.op, 17
  br i1 %i.or, label %ZSTD_wildcopy.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.os = getelementptr inbounds nuw i8, ptr %.068.i93, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i = phi ptr [ %i.os, %bb.bf ], [ %i.ox, %bb.bg ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.oo, %bb.bf ], [ %i.ov, %bb.bg ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ot = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !11
  store <2 x i64> %i.ot, ptr %.130.i.i, align 1, !tbaa !11
  %i.ou = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.ow = load <2 x i64>, ptr %i.ov, align 1, !tbaa !11
  store <2 x i64> %i.ow, ptr %i.ou, align 1, !tbaa !11
  %i.ox = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.oy = icmp ult ptr %i.ox, %i.ob
  br i1 %i.oy, label %bb.bg, label %ZSTD_wildcopy.exit.i, !llvm.loop !100

ZSTD_wildcopy.exit.i:                             ; preds = %bb.bg, %bb.be, %.critedge.i.i
  store ptr %i.oe, ptr %i.a, align 8, !tbaa !38
  %i.oz = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.pa = sub i64 %i.oz, %i.hc                    ; 3 uses
  %i.pb = icmp ugt i64 %.sink, %i.pa
  br i1 %i.pb, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.pc = sub i64 %i.oz, %i.hd
  %i.pd = icmp ugt i64 %.sink, %i.pc
  br i1 %i.pd, label %ZSTD_execSequence.exit.i.thread, label %bb.bi, !prof !52

ZSTD_execSequence.exit.i.thread:                  ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread75

bb.bi:                                            ; preds = %bb.bh
  %i.pe = ptrtoint ptr %i.og to i64
  %i.pf = sub i64 %i.pe, %i.hc                    ; 3 uses
  %i.pg = getelementptr inbounds i8, ptr %i.s, i64 %i.pf ; 2 uses
  %i.ph = add nsw i64 %i.pf, %.sroa.6.0           ; 3 uses
  %.not.i82.i = icmp sgt i64 %i.ph, 0
  br i1 %.not.i82.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ob, ptr align 1 %i.pg, i64 %.sroa.6.0, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i.i = sub nsw i64 0, %i.pf             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ob, ptr align 1 %i.pg, i64 %gepdiff.i.i, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ob, i64 %gepdiff.i.i
  store i64 %i.ph, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !129
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %ZSTD_wildcopy.exit.i
  %.062 = phi ptr [ %i.o, %bb.bk ], [ %i.og, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pi, %bb.bk ], [ %i.ob, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %i.pj = phi i64 [ %i.ph, %bb.bk ], [ %.sroa.6.0, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %i.pk = icmp ugt i64 %.sink, 15
  br i1 %i.pk, label %bb.bm, label %bb.bp, !prof !89

bb.bm:                                            ; preds = %bb.bl
  %i.pl = getelementptr inbounds i8, ptr %.0, i64 %i.pj
  %i.pm = load <2 x i64>, ptr %.062, align 1, !tbaa !11
  store <2 x i64> %i.pm, ptr %.0, align 1, !tbaa !11
  %i.pn = icmp slt i64 %i.pj, 17
  br i1 %i.pn, label %ZSTD_execSequence.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.po = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i97.i = phi ptr [ %i.po, %bb.bn ], [ %i.pt, %bb.bo ] ; 3 uses
  %.pn.i98.i = phi ptr [ %.062, %bb.bn ], [ %i.pr, %bb.bo ] ; 2 uses
  %.1.i99.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 16
  %i.pp = load <2 x i64>, ptr %.1.i99.i, align 1, !tbaa !11
  store <2 x i64> %i.pp, ptr %.130.i97.i, align 1, !tbaa !11
  %i.pq = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 32 ; 2 uses
  %i.ps = load <2 x i64>, ptr %i.pr, align 1, !tbaa !11
  store <2 x i64> %i.ps, ptr %i.pq, align 1, !tbaa !11
  %i.pt = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 32 ; 2 uses
  %i.pu = icmp ult ptr %i.pt, %i.pl
  br i1 %i.pu, label %bb.bo, label %ZSTD_execSequence.exit.i, !llvm.loop !100

bb.bp:                                            ; preds = %bb.bl
  %i.pv = icmp samesign ult i64 %.sink, 8
  br i1 %i.pv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !5
  %i.py = load i8, ptr %.062, align 1, !tbaa !11
  store i8 %i.py, ptr %.0, align 1, !tbaa !11
  %i.pz = getelementptr inbounds nuw i8, ptr %.062, i64 1
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !11
  %i.qb = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !11
  %i.qc = getelementptr inbounds nuw i8, ptr %.062, i64 2
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !11
  %i.qe = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !11
  %i.qf = getelementptr inbounds nuw i8, ptr %.062, i64 3
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !11
  %i.qh = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !11
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !5
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %.062, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.qn = load i32, ptr %i.ql, align 1
  store i32 %i.qn, ptr %i.qm, align 1
  %i.qo = sext i32 %i.px to i64
  %i.qp = sub nsw i64 0, %i.qo
  %i.qq = getelementptr inbounds i8, ptr %i.ql, i64 %i.qp
  br label %ZSTD_overlapCopy8.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.qr = load i64, ptr %.062, align 1
  store i64 %i.qr, ptr %.0, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.br, %bb.bq
  %.1 = phi ptr [ %i.qq, %bb.bq ], [ %.062, %bb.br ] ; 2 uses
  %.112 = ptrtoaddr ptr %.1 to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qu = icmp ugt i64 %i.pj, 8
  br i1 %i.qu, label %bb.bs, label %ZSTD_execSequence.exit.i

bb.bs:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = getelementptr i8, ptr %.0, i64 %i.pj    ; 2 uses
  %i.qz = icmp slt i64 %i.qx, 16
  br i1 %i.qz, label %.preheader87.preheader, label %bb.bt

.preheader87.preheader:                           ; preds = %bb.bs
  %i.ra = add i64 %.sroa.6.0, %i.hc
  %i.rb = add i64 %.sink, %i.pa
  %umax13 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.pa) ; 2 uses
  %i.rc = add i64 %i.ra, %i.rb
  %i.rd = sub i64 %i.rc, %.sink
  %i.re = add i64 %i.he, %umax13
  %umax14 = tail call i64 @llvm.umax.i64(i64 %i.rd, i64 %i.re)
  %i.rf = add i64 %umax14, -9
  %i.rg = add i64 %umax13, %i.hc
  %i.rh = sub i64 %i.rf, %i.rg                    ; 2 uses
  %i.ri = lshr i64 %i.rh, 3
  %i.rj = add nuw nsw i64 %i.ri, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rh, 72
  br i1 %min.iters.check, label %.preheader87.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader87.preheader
  %i.rk = sub i64 %.sroa.0.0, %i.hc
  %i.rl = add i64 %i.rk, %.068.i9311
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.rl)
  %i.rm = add i64 %umax, %i.hc
  %i.rn = sub i64 %i.rm, %.112
  %diff.check = icmp ult i64 %i.rn, 32
  br i1 %diff.check, label %.preheader87.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rj, 4611686018427387900     ; 3 uses
  %i.ro = shl i64 %n.vec, 3                       ; 2 uses
  %i.rp = getelementptr i8, ptr %i.qt, i64 %i.ro
  %i.rq = getelementptr i8, ptr %i.qs, i64 %i.ro
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qt, i64 %i.rr ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.qs, i64 %i.rr ; 2 uses
  %i.rs = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 1
  %wide.load16 = load <2 x i64>, ptr %i.rs, align 1
  %i.rt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load16, ptr %i.rt, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ru = icmp eq i64 %index.next, %n.vec
  br i1 %i.ru, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rj, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %.preheader87.preheader19

.preheader87.preheader19:                         ; preds = %vector.memcheck, %.preheader87.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.qt, %vector.memcheck ], [ %i.qt, %.preheader87.preheader ], [ %i.rp, %middle.block ]
  %.0.i106.i.ph = phi ptr [ %i.qs, %vector.memcheck ], [ %i.qs, %.preheader87.preheader ], [ %i.rq, %middle.block ]
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader19, %.preheader87
  %.029.i.i = phi ptr [ %i.rw, %.preheader87 ], [ %.029.i.i.ph, %.preheader87.preheader19 ] ; 2 uses
  %.0.i106.i = phi ptr [ %i.rx, %.preheader87 ], [ %.0.i106.i.ph, %.preheader87.preheader19 ] ; 2 uses
  %i.rv = load i64, ptr %.0.i106.i, align 1
  store i64 %i.rv, ptr %.029.i.i, align 1
  %i.rw = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i106.i, i64 8
  %i.ry = icmp ult ptr %i.rw, %i.qy
  br i1 %i.ry, label %.preheader87, label %ZSTD_execSequence.exit.i, !llvm.loop !239

bb.bt:                                            ; preds = %bb.bs
  %i.rz = load <2 x i64>, ptr %i.qs, align 1, !tbaa !11
  store <2 x i64> %i.rz, ptr %i.qt, align 1, !tbaa !11
  %i.sa = icmp slt i64 %i.pj, 25
  br i1 %i.sa, label %ZSTD_execSequence.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sb = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i103.i = phi ptr [ %i.sb, %bb.bu ], [ %i.sg, %bb.bv ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.qs, %bb.bu ], [ %i.se, %bb.bv ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %i.sc = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !11
  store <2 x i64> %i.sc, ptr %.130.i103.i, align 1, !tbaa !11
  %i.sd = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %i.sf = load <2 x i64>, ptr %i.se, align 1, !tbaa !11
  store <2 x i64> %i.sf, ptr %i.sd, align 1, !tbaa !11
  %i.sg = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.sh = icmp ult ptr %i.sg, %i.qy
  br i1 %i.sh, label %bb.bv, label %ZSTD_execSequence.exit.i, !llvm.loop !100

ZSTD_execSequence.exit.i:                         ; preds = %bb.bv, %.preheader87, %bb.bo, %middle.block, %bb.bt, %bb.bm, %ZSTD_overlapCopy8.exit.i, %bb.bj, %bb.bd
  %.0.i.i = phi i64 [ %i.om, %bb.bd ], [ %i.oc, %middle.block ], [ %i.oc, %bb.bj ], [ %i.oc, %ZSTD_overlapCopy8.exit.i ], [ %i.oc, %bb.bm ], [ %i.oc, %bb.bt ], [ %i.oc, %bb.bo ], [ %i.oc, %.preheader87 ], [ %i.oc, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.si = icmp ult i64 %.0.i.i, -119
  br i1 %i.si, label %bb.bw, label %.thread75

bb.bw:                                            ; preds = %ZSTD_execSequence.exit.i
  %i.sj = getelementptr inbounds nuw i8, ptr %.068.i93, i64 %.0.i.i ; 2 uses
  %i.sk = add nsw i32 %.063.i95, -1               ; 2 uses
  %.not77.i = icmp eq i32 %i.sk, 0
  br i1 %.not77.i, label %bb.bx, label %bb.af, !llvm.loop !162

bb.bx:                                            ; preds = %bb.bw
  %i.sl = icmp eq ptr %i.nv, %3
  %.not86 = icmp eq i32 %i.nw, 64
  %or.cond = select i1 %i.sl, i1 %.not86, i1 false
  br i1 %or.cond, label %.preheader, label %.thread75

.preheader:                                       ; preds = %bb.bx
  %i.sm = trunc i64 %.sink to i32
  store i32 %i.sm, ptr %i.u, align 4, !tbaa !5
  %i.sn = trunc i64 %.sink150 to i32
  store i32 %i.sn, ptr %i.y, align 4, !tbaa !5
  %i.so = trunc i64 %i.ke to i32
  store i32 %i.so, ptr %i.ac, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.by

.thread75:                                        ; preds = %ZSTD_execSequence.exit.i, %bb.o, %bb.g, %bb.e, %BIT_initDStream.exit, %ZSTD_execSequence.exit.i.thread, %bb.bx
  %.2.i.ph = phi i64 [ -20, %bb.e ], [ -20, %ZSTD_execSequence.exit.i.thread ], [ -20, %BIT_initDStream.exit ], [ -20, %bb.bx ], [ -20, %bb.g ], [ -20, %bb.o ], [ %.0.i.i, %ZSTD_execSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %ZSTD_decompressSequences_body.exit

bb.by:                                            ; preds = %.preheader, %bb.d
  %i.sp = phi ptr [ %.pre, %.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %.371.i = phi ptr [ %i.sj, %.preheader ], [ %1, %bb.d ] ; 4 uses
  %i.sq = ptrtoint ptr %i.m to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr                    ; 3 uses
  %i.st = ptrtoint ptr %i.h to i64
  %i.su = ptrtoint ptr %.371.i to i64
  %i.sv = sub i64 %i.st, %i.su
  %.not81.i = icmp ugt i64 %i.ss, %i.sv
  br i1 %.not81.i, label %ZSTD_decompressSequences_body.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not80.i = icmp eq ptr %.371.i, null
  br i1 %.not80.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i, ptr align 1 %i.sp, i64 %i.ss, i1 false)
  %i.sw = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.ss
  %i.sx = ptrtoint ptr %i.sw to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.573.i.ph = phi i64 [ 0, %bb.bz ], [ %i.sx, %bb.ca ]
  %i.sy = ptrtoint ptr %1 to i64
  %i.sz = sub i64 %.573.i.ph, %i.sy
  br label %ZSTD_decompressSequences_body.exit

ZSTD_decompressSequences_body.exit:               ; preds = %bb.by, %.thread75, %bb.cb
  %.5.i = phi i64 [ %i.sz, %bb.cb ], [ %.2.i.ph, %.thread75 ], [ -70, %bb.by ]
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
end_hunk_9
