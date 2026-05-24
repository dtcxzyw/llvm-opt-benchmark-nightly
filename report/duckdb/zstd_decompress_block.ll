inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@_ZN11duckdb_zstdL28ZSTD_decompressSequencesLongEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.237.i.i = phi ptr [ %i.yn, %.lr.ph.i.i ], [ %.237.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23136.i.i = phi ptr [ %i.yl, %.lr.ph.i.i ], [ %.23136.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.23136.i.i, i64 1
  %i.ym = load i8, ptr %.23136.i.i, align 1, !tbaa !9
  %i.yn = getelementptr inbounds nuw i8, ptr %.237.i.i, i64 1 ; 2 uses
  store i8 %i.ym, ptr %.237.i.i, align 1, !tbaa !9
  %exitcond.not.i.i = icmp eq ptr %i.yn, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph.i.i, !llvm.loop !111

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph40.i.i, %middle.block90, %vec.epilog.middle.block108, %middle.block58, %vec.epilog.middle.block, %.preheader.i.i
  %i.yo = load i64, ptr %i.we, align 8, !tbaa !102
  %i.yp = sub i64 %i.yo, %i.wl                    ; 2 uses
  store i64 %i.yp, ptr %i.we, align 8, !tbaa !102
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, %bb.ce
  %.sroa.0320.0.copyload.i = phi i64 [ %i.yp, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %i.wf, %bb.ce ] ; 8 uses
  %.1208.i.i = phi ptr [ %i.wq, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.0207.i699.i, %bb.ce ] ; 8 uses
  %.1208.i.i35 = ptrtoaddr ptr %.1208.i.i to i64
  store ptr %i.hv, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.d, align 8, !tbaa !43
  %.sroa.4321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 2 uses
  %.sroa.4321.0.copyload.i = load i64, ptr %.sroa.4321.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.we, i64 16 ; 2 uses
  %.sroa.5322.0.copyload.i = load i64, ptr %.sroa.5322.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.yq = getelementptr i8, ptr %.1208.i.i, i64 %.sroa.0320.0.copyload.i ; 7 uses
  %i.yr = add i64 %.sroa.4321.0.copyload.i, %.sroa.0320.0.copyload.i ; 9 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.0320.0.copyload.i
  %i.yt = sub i64 0, %.sroa.5322.0.copyload.i
  %i.yu = getelementptr inbounds i8, ptr %i.yq, i64 %i.yt ; 2 uses
  %i.yv = icmp ugt i64 %.sroa.0320.0.copyload.i, 65536
  %i.yw = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 %i.yr
  %i.yx = icmp ugt ptr %i.yw, %i.hs
  %or.cond.i.i = select i1 %i.yv, i1 true, i1 %i.yx, !prof !112
  br i1 %or.cond.i.i, label %bb.cl, label %.critedge.i.i, !prof !112

.critedge.i.i:                                    ; preds = %thread-pre-split.i
  %i.yy = load <2 x i64>, ptr %i.hv, align 1, !tbaa !9
  store <2 x i64> %i.yy, ptr %.1208.i.i, align 1, !tbaa !9
  %i.yz = icmp samesign ugt i64 %.sroa.0320.0.copyload.i, 16
  br i1 %i.yz, label %bb.cm, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, !prof !60

bb.cl:                                            ; preds = %thread-pre-split.i
  store i64 %.sroa.0320.0.copyload.i, ptr %11, align 8, !tbaa !53
  store i64 %.sroa.4321.0.copyload.i, ptr %.sroa.6308.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5322.0.copyload.i, ptr %.sroa.12315.0..sroa_idx.i, align 8, !tbaa !53
  %i.za = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.1208.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hw, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.cm:                                            ; preds = %.critedge.i.i
  %i.zb = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 16
  %i.zc = load <2 x i64>, ptr %i.hx, align 1, !tbaa !9
  store <2 x i64> %i.zc, ptr %i.zb, align 1, !tbaa !9
  %i.zd = icmp samesign ult i64 %.sroa.0320.0.copyload.i, 33
  br i1 %i.zd, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ze = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 32
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.130.i173.i = phi ptr [ %i.ze, %bb.cn ], [ %i.zj, %bb.co ] ; 3 uses
  %.pn.i174.i = phi ptr [ %i.hx, %bb.cn ], [ %i.zh, %bb.co ] ; 2 uses
  %.1.i175.i = getelementptr inbounds nuw i8, ptr %.pn.i174.i, i64 16
  %i.zf = load <2 x i64>, ptr %.1.i175.i, align 1, !tbaa !9
  store <2 x i64> %i.zf, ptr %.130.i173.i, align 1, !tbaa !9
  %i.zg = getelementptr inbounds nuw i8, ptr %.130.i173.i, i64 16
  %i.zh = getelementptr inbounds nuw i8, ptr %.pn.i174.i, i64 32 ; 2 uses
  %i.zi = load <2 x i64>, ptr %i.zh, align 1, !tbaa !9
  store <2 x i64> %i.zi, ptr %i.zg, align 1, !tbaa !9
  %i.zj = getelementptr inbounds nuw i8, ptr %.130.i173.i, i64 32 ; 2 uses
  %i.zk = icmp ult ptr %i.zj, %i.yq
  br i1 %i.zk, label %bb.co, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i: ; preds = %bb.co, %bb.cm, %.critedge.i.i
  store ptr %i.ys, ptr %i.a, align 8, !tbaa !46
  %i.zl = ptrtoint ptr %i.yq to i64               ; 2 uses
  %i.zm = sub i64 %i.zl, %i.aj                    ; 3 uses
  %i.zn = icmp ugt i64 %.sroa.5322.0.copyload.i, %i.zm
  br i1 %i.zn, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i
  %i.zo = sub i64 %i.zl, %i.ht
  %i.zp = icmp ugt i64 %.sroa.5322.0.copyload.i, %i.zo
  br i1 %i.zp, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i, label %bb.cq, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread620.i

bb.cq:                                            ; preds = %bb.cp
  %i.zq = ptrtoint ptr %i.yu to i64
  %i.zr = sub i64 %i.zq, %i.aj                    ; 3 uses
  %i.zs = getelementptr inbounds i8, ptr %i.t, i64 %i.zr ; 2 uses
  %i.zt = add nsw i64 %i.zr, %.sroa.4321.0.copyload.i ; 2 uses
  %.not.i16.i = icmp sgt i64 %i.zt, 0
  br i1 %.not.i16.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yq, ptr align 1 %i.zs, i64 %.sroa.4321.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.cs:                                            ; preds = %bb.cq
  %gepdiff.i.i = sub nsw i64 0, %i.zr             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yq, ptr align 1 %i.zs, i64 %gepdiff.i.i, i1 false)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yq, i64 %gepdiff.i.i
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i
  %.sroa.6308.0.i = phi i64 [ %i.zt, %bb.cs ], [ %.sroa.4321.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 5 uses
  %.0564.i = phi ptr [ %i.p, %bb.cs ], [ %i.yu, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 9 uses
  %.0563.i = phi ptr [ %i.zu, %bb.cs ], [ %i.yq, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 12 uses
  %i.zv = icmp ugt i64 %.sroa.5322.0.copyload.i, 15
  br i1 %i.zv, label %bb.cu, label %bb.cx, !prof !97

bb.cu:                                            ; preds = %bb.ct
  %i.zw = getelementptr inbounds i8, ptr %.0563.i, i64 %.sroa.6308.0.i
  %i.zx = load <2 x i64>, ptr %.0564.i, align 1, !tbaa !9
  store <2 x i64> %i.zx, ptr %.0563.i, align 1, !tbaa !9
  %i.zy = icmp slt i64 %.sroa.6308.0.i, 17
  br i1 %i.zy, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zz = getelementptr inbounds nuw i8, ptr %.0563.i, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.130.i180.i = phi ptr [ %i.zz, %bb.cv ], [ %i.aae, %bb.cw ] ; 3 uses
  %.pn.i181.i = phi ptr [ %.0564.i, %bb.cv ], [ %i.aac, %bb.cw ] ; 2 uses
  %.1.i182.i = getelementptr inbounds nuw i8, ptr %.pn.i181.i, i64 16
  %i.aaa = load <2 x i64>, ptr %.1.i182.i, align 1, !tbaa !9
  store <2 x i64> %i.aaa, ptr %.130.i180.i, align 1, !tbaa !9
  %i.aab = getelementptr inbounds nuw i8, ptr %.130.i180.i, i64 16
  %i.aac = getelementptr inbounds nuw i8, ptr %.pn.i181.i, i64 32 ; 2 uses
  %i.aad = load <2 x i64>, ptr %i.aac, align 1, !tbaa !9
  store <2 x i64> %i.aad, ptr %i.aab, align 1, !tbaa !9
  %i.aae = getelementptr inbounds nuw i8, ptr %.130.i180.i, i64 32 ; 2 uses
  %i.aaf = icmp ult ptr %i.aae, %i.zw
  br i1 %i.aaf, label %bb.cw, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

bb.cx:                                            ; preds = %bb.ct
  %i.aag = icmp samesign ult i64 %.sroa.5322.0.copyload.i, 8
  br i1 %i.aag, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5322.0.copyload.i
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !3
  %i.aaj = load i8, ptr %.0564.i, align 1, !tbaa !9
  store i8 %i.aaj, ptr %.0563.i, align 1, !tbaa !9
  %i.aak = getelementptr inbounds nuw i8, ptr %.0564.i, i64 1
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !9
  %i.aam = getelementptr inbounds nuw i8, ptr %.0563.i, i64 1
  store i8 %i.aal, ptr %i.aam, align 1, !tbaa !9
  %i.aan = getelementptr inbounds nuw i8, ptr %.0564.i, i64 2
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !9
  %i.aap = getelementptr inbounds nuw i8, ptr %.0563.i, i64 2
  store i8 %i.aao, ptr %i.aap, align 1, !tbaa !9
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0564.i, i64 3
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !9
  %i.aas = getelementptr inbounds nuw i8, ptr %.0563.i, i64 3
  store i8 %i.aar, ptr %i.aas, align 1, !tbaa !9
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5322.0.copyload.i
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !3
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0564.i, i64 %i.aav ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.0563.i, i64 4
  %i.aay = load i32, ptr %i.aaw, align 1
  store i32 %i.aay, ptr %i.aax, align 1
  %i.aaz = sext i32 %i.aai to i64
  %i.aba = sub nsw i64 0, %i.aaz
  %i.abb = getelementptr inbounds i8, ptr %i.aaw, i64 %i.aba
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i

bb.cz:                                            ; preds = %bb.cx
  %i.abc = load i64, ptr %.0564.i, align 1
  store i64 %i.abc, ptr %.0563.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i: ; preds = %bb.cz, %bb.cy
  %.1565.i = phi ptr [ %i.abb, %bb.cy ], [ %.0564.i, %bb.cz ] ; 2 uses
  %.1565.i36 = ptrtoaddr ptr %.1565.i to i64
  %i.abd = getelementptr inbounds nuw i8, ptr %.1565.i, i64 8 ; 7 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.0563.i, i64 8 ; 6 uses
  %i.abf = icmp ugt i64 %.sroa.6308.0.i, 8
  br i1 %i.abf, label %bb.da, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.da:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = ptrtoint ptr %i.abd to i64
  %i.abi = sub i64 %i.abg, %i.abh
  %i.abj = getelementptr i8, ptr %.0563.i, i64 %.sroa.6308.0.i ; 2 uses
  %i.abk = icmp slt i64 %i.abi, 16
  br i1 %i.abk, label %.preheader651.i.preheader, label %bb.db

.preheader651.i.preheader:                        ; preds = %bb.da
  %i.abl = add i64 %.sroa.4321.0.copyload.i, %i.aj
  %i.abm = add i64 %.sroa.5322.0.copyload.i, %i.zm
  %umax37 = tail call i64 @llvm.umax.i64(i64 %.sroa.5322.0.copyload.i, i64 %i.zm) ; 2 uses
  %i.abn = add i64 %i.abl, %i.abm
  %i.abo = sub i64 %i.abn, %.sroa.5322.0.copyload.i
  %i.abp = add i64 %i.hz, %umax37
  %umax38 = tail call i64 @llvm.umax.i64(i64 %i.abo, i64 %i.abp)
  %i.abq = add i64 %umax38, -9
  %i.abr = add i64 %umax37, %i.aj
  %i.abs = sub i64 %i.abq, %i.abr                 ; 2 uses
  %i.abt = lshr i64 %i.abs, 3
  %i.abu = add nuw nsw i64 %i.abt, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.abs, 72
  br i1 %min.iters.check, label %.preheader651.i.preheader328, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader651.i.preheader
  %i.abv = sub i64 %.sroa.0320.0.copyload.i, %i.aj
  %i.abw = add i64 %i.abv, %.1208.i.i35
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.5322.0.copyload.i, i64 %i.abw)
  %i.abx = add i64 %umax, %i.aj
  %i.aby = sub i64 %i.abx, %.1565.i36
  %diff.check = icmp ult i64 %i.aby, 32
  br i1 %diff.check, label %.preheader651.i.preheader328, label %vector.ph

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
  %next.gep39 = getelementptr i8, ptr %i.abd, i64 %i.acc ; 2 uses
  %i.acd = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep39, align 1
  %wide.load40 = load <2 x i64>, ptr %i.acd, align 1
  %i.ace = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load40, ptr %i.ace, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.acf = icmp eq i64 %index.next, %n.vec
  br i1 %i.acf, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abu, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %.preheader651.i.preheader328

.preheader651.i.preheader328:                     ; preds = %vector.memcheck, %.preheader651.i.preheader, %middle.block
  %.029.i190.i.ph = phi ptr [ %i.abe, %vector.memcheck ], [ %i.abe, %.preheader651.i.preheader ], [ %i.aca, %middle.block ]
  %.0.i191.i.ph = phi ptr [ %i.abd, %vector.memcheck ], [ %i.abd, %.preheader651.i.preheader ], [ %i.acb, %middle.block ]
  br label %.preheader651.i

.preheader651.i:                                  ; preds = %.preheader651.i.preheader328, %.preheader651.i
  %.029.i190.i = phi ptr [ %i.ach, %.preheader651.i ], [ %.029.i190.i.ph, %.preheader651.i.preheader328 ] ; 2 uses
  %.0.i191.i = phi ptr [ %i.aci, %.preheader651.i ], [ %.0.i191.i.ph, %.preheader651.i.preheader328 ] ; 2 uses
  %i.acg = load i64, ptr %.0.i191.i, align 1
  store i64 %i.acg, ptr %.029.i190.i, align 1
  %i.ach = getelementptr inbounds nuw i8, ptr %.029.i190.i, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.0.i191.i, i64 8
  %i.acj = icmp ult ptr %i.ach, %i.abj
  br i1 %i.acj, label %.preheader651.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !114

bb.db:                                            ; preds = %bb.da
  %i.ack = load <2 x i64>, ptr %i.abd, align 1, !tbaa !9
  store <2 x i64> %i.ack, ptr %i.abe, align 1, !tbaa !9
  %i.acl = icmp slt i64 %.sroa.6308.0.i, 25
  br i1 %i.acl, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.acm = getelementptr inbounds nuw i8, ptr %.0563.i, i64 24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %bb.dc
  %.130.i187.i = phi ptr [ %i.acm, %bb.dc ], [ %i.acr, %bb.dd ] ; 3 uses
  %.pn.i188.i = phi ptr [ %i.abd, %bb.dc ], [ %i.acp, %bb.dd ] ; 2 uses
  %.1.i189.i = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 16
  %i.acn = load <2 x i64>, ptr %.1.i189.i, align 1, !tbaa !9
  store <2 x i64> %i.acn, ptr %.130.i187.i, align 1, !tbaa !9
  %i.aco = getelementptr inbounds nuw i8, ptr %.130.i187.i, i64 16
  %i.acp = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 32 ; 2 uses
  %i.acq = load <2 x i64>, ptr %i.acp, align 1, !tbaa !9
  store <2 x i64> %i.acq, ptr %i.aco, align 1, !tbaa !9
  %i.acr = getelementptr inbounds nuw i8, ptr %.130.i187.i, i64 32 ; 2 uses
  %i.acs = icmp ult ptr %i.acr, %i.abj
  br i1 %i.acs, label %bb.dd, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i: ; preds = %bb.dd, %.preheader651.i, %bb.cw, %middle.block, %bb.db, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i, %bb.cu, %bb.cr, %bb.cl
  %.0.i15.i = phi i64 [ %i.za, %bb.cl ], [ %i.yr, %bb.cw ], [ %i.yr, %bb.cr ], [ %i.yr, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i ], [ %i.yr, %bb.db ], [ %i.yr, %bb.cu ], [ %i.yr, %middle.block ], [ %i.yr, %.preheader651.i ], [ %i.yr, %bb.dd ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.act = icmp ult i64 %.0.i15.i, -119
  br i1 %i.act, label %bb.de, label %.thread620.i

bb.de:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i
  %i.acu = add i64 %.sroa.0.0.i, %.1242.i696.i    ; 3 uses
  %i.acv = icmp ugt i64 %.sink855.i, %i.acu
  %i.acw = select i1 %i.acv, ptr %i.t, ptr %i.p
  %i.acx = getelementptr inbounds i8, ptr %i.acw, i64 %i.acu
  %i.acy = sub i64 0, %.sink855.i
  %i.acz = getelementptr inbounds i8, ptr %i.acx, i64 %i.acy ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.acz, i32 0, i32 3, i32 1)
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ada, i32 0, i32 3, i32 1)
  store i64 %.sroa.0.0.i, ptr %i.we, align 8, !tbaa !53
  store i64 %.sroa.9.0.i, ptr %.sroa.4321.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink855.i, ptr %.sroa.5322.0..sroa_idx.i, align 8, !tbaa !53
  %i.adb = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 %.0.i15.i
  br label %bb.eu

bb.df:                                            ; preds = %bb.cd
  %i.adc = getelementptr inbounds i8, ptr %i.wg, i64 -32 ; 2 uses
  %.sroa.4484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %.sroa.4484.0.copyload.i = load i64, ptr %.sroa.4484.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %.sroa.5485.0.copyload.i = load i64, ptr %.sroa.5485.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.add = getelementptr i8, ptr %.0207.i699.i, i64 %i.wf ; 7 uses
  %i.ade = add i64 %.sroa.4484.0.copyload.i, %i.wf ; 9 uses
  %i.adf = sub i64 0, %.sroa.5485.0.copyload.i
  %i.adg = getelementptr inbounds i8, ptr %i.add, i64 %i.adf ; 2 uses
  %i.adh = icmp ugt ptr %i.wg, %.0226.i698.i
  %i.adi = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 %i.ade
  %i.adj = icmp ugt ptr %i.adi, %i.adc
  %or.cond.i35.i = select i1 %i.adh, i1 true, i1 %i.adj, !prof !112
  br i1 %or.cond.i35.i, label %bb.dg, label %.critedge.i36.i, !prof !112

.critedge.i36.i:                                  ; preds = %bb.df
  %i.adk = load <2 x i64>, ptr %i.wb, align 1, !tbaa !9
  store <2 x i64> %i.adk, ptr %.0207.i699.i, align 1, !tbaa !9
  %i.adl = icmp ugt i64 %i.wf, 16
  br i1 %i.adl, label %bb.dh, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i, !prof !60

bb.dg:                                            ; preds = %bb.df
  store i64 %i.wf, ptr %7, align 8, !tbaa !53
  store i64 %.sroa.4484.0.copyload.i, ptr %.sroa.6471.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5485.0.copyload.i, ptr %.sroa.12478.0..sroa_idx.i, align 8, !tbaa !53
  %i.adm = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0207.i699.i, ptr noundef %i.j, ptr noundef nonnull %i.adc, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef %.0226.i698.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.dh:                                            ; preds = %.critedge.i36.i
  %i.adn = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 16
  %i.ado = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %i.adp = add i64 %i.wf, -16
  %i.adq = load <2 x i64>, ptr %i.ado, align 1, !tbaa !9
  store <2 x i64> %i.adq, ptr %i.adn, align 1, !tbaa !9
  %i.adr = icmp slt i64 %i.adp, 17
  br i1 %i.adr, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ads = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 32
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %bb.di
  %.130.i89.i = phi ptr [ %i.ads, %bb.di ], [ %i.adx, %bb.dj ] ; 3 uses
  %.pn.i90.i = phi ptr [ %i.ado, %bb.di ], [ %i.adv, %bb.dj ] ; 2 uses
  %.1.i91.i = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 16
  %i.adt = load <2 x i64>, ptr %.1.i91.i, align 1, !tbaa !9
  store <2 x i64> %i.adt, ptr %.130.i89.i, align 1, !tbaa !9
  %i.adu = getelementptr inbounds nuw i8, ptr %.130.i89.i, i64 16
  %i.adv = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 32 ; 2 uses
  %i.adw = load <2 x i64>, ptr %i.adv, align 1, !tbaa !9
  store <2 x i64> %i.adw, ptr %i.adu, align 1, !tbaa !9
  %i.adx = getelementptr inbounds nuw i8, ptr %.130.i89.i, i64 32 ; 2 uses
  %i.ady = icmp ult ptr %i.adx, %i.add
  br i1 %i.ady, label %bb.dj, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i: ; preds = %bb.dj, %bb.dh, %.critedge.i36.i
  store ptr %i.wg, ptr %i.a, align 8, !tbaa !46
  %i.adz = ptrtoint ptr %i.add to i64             ; 2 uses
  %i.aea = sub i64 %i.adz, %i.aj                  ; 3 uses
  %i.aeb = icmp ugt i64 %.sroa.5485.0.copyload.i, %i.aea
  br i1 %i.aeb, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i
  %i.aec = sub i64 %i.adz, %i.ht
  %i.aed = icmp ugt i64 %.sroa.5485.0.copyload.i, %i.aec
  br i1 %i.aed, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.dl, !prof !60

bb.dl:                                            ; preds = %bb.dk
  %i.aee = ptrtoint ptr %i.adg to i64
  %i.aef = sub i64 %i.aee, %i.aj                  ; 3 uses
  %i.aeg = getelementptr inbounds i8, ptr %i.t, i64 %i.aef ; 2 uses
  %i.aeh = add nsw i64 %i.aef, %.sroa.4484.0.copyload.i ; 2 uses
  %.not.i38.i = icmp sgt i64 %i.aeh, 0
  br i1 %.not.i38.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.add, ptr align 1 %i.aeg, i64 %.sroa.4484.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.dn:                                            ; preds = %bb.dl
  %gepdiff.i39.i = sub nsw i64 0, %i.aef          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.add, ptr align 1 %i.aeg, i64 %gepdiff.i39.i, i1 false)
  %i.aei = getelementptr inbounds nuw i8, ptr %i.add, i64 %gepdiff.i39.i
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i
  %.sroa.6471.0.i = phi i64 [ %i.aeh, %bb.dn ], [ %.sroa.4484.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i ] ; 5 uses
  %.0552.i = phi ptr [ %i.p, %bb.dn ], [ %i.adg, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i ] ; 9 uses
  %.0551.i = phi ptr [ %i.aei, %bb.dn ], [ %i.add, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i ] ; 12 uses
  %i.aej = icmp ugt i64 %.sroa.5485.0.copyload.i, 15
  br i1 %i.aej, label %bb.dp, label %bb.ds, !prof !97

bb.dp:                                            ; preds = %bb.do
  %i.aek = getelementptr inbounds i8, ptr %.0551.i, i64 %.sroa.6471.0.i
  %i.ael = load <2 x i64>, ptr %.0552.i, align 1, !tbaa !9
  store <2 x i64> %i.ael, ptr %.0551.i, align 1, !tbaa !9
  %i.aem = icmp slt i64 %.sroa.6471.0.i, 17
  br i1 %i.aem, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aen = getelementptr inbounds nuw i8, ptr %.0551.i, i64 16
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %bb.dq
  %.130.i96.i = phi ptr [ %i.aen, %bb.dq ], [ %i.aes, %bb.dr ] ; 3 uses
  %.pn.i97.i = phi ptr [ %.0552.i, %bb.dq ], [ %i.aeq, %bb.dr ] ; 2 uses
  %.1.i98.i = getelementptr inbounds nuw i8, ptr %.pn.i97.i, i64 16
  %i.aeo = load <2 x i64>, ptr %.1.i98.i, align 1, !tbaa !9
  store <2 x i64> %i.aeo, ptr %.130.i96.i, align 1, !tbaa !9
  %i.aep = getelementptr inbounds nuw i8, ptr %.130.i96.i, i64 16
  %i.aeq = getelementptr inbounds nuw i8, ptr %.pn.i97.i, i64 32 ; 2 uses
  %i.aer = load <2 x i64>, ptr %i.aeq, align 1, !tbaa !9
  store <2 x i64> %i.aer, ptr %i.aep, align 1, !tbaa !9
  %i.aes = getelementptr inbounds nuw i8, ptr %.130.i96.i, i64 32 ; 2 uses
  %i.aet = icmp ult ptr %i.aes, %i.aek
  br i1 %i.aet, label %bb.dr, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

bb.ds:                                            ; preds = %bb.do
  %i.aeu = icmp samesign ult i64 %.sroa.5485.0.copyload.i, 8
  br i1 %i.aeu, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5485.0.copyload.i
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !3
  %i.aex = load i8, ptr %.0552.i, align 1, !tbaa !9
  store i8 %i.aex, ptr %.0551.i, align 1, !tbaa !9
  %i.aey = getelementptr inbounds nuw i8, ptr %.0552.i, i64 1
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !9
  %i.afa = getelementptr inbounds nuw i8, ptr %.0551.i, i64 1
  store i8 %i.aez, ptr %i.afa, align 1, !tbaa !9
  %i.afb = getelementptr inbounds nuw i8, ptr %.0552.i, i64 2
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !9
  %i.afd = getelementptr inbounds nuw i8, ptr %.0551.i, i64 2
  store i8 %i.afc, ptr %i.afd, align 1, !tbaa !9
  %i.afe = getelementptr inbounds nuw i8, ptr %.0552.i, i64 3
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !9
  %i.afg = getelementptr inbounds nuw i8, ptr %.0551.i, i64 3
  store i8 %i.aff, ptr %i.afg, align 1, !tbaa !9
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5485.0.copyload.i
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !3
  %i.afj = zext i32 %i.afi to i64
  %i.afk = getelementptr inbounds nuw i8, ptr %.0552.i, i64 %i.afj ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.0551.i, i64 4
  %i.afm = load i32, ptr %i.afk, align 1
  store i32 %i.afm, ptr %i.afl, align 1
  %i.afn = sext i32 %i.aew to i64
  %i.afo = sub nsw i64 0, %i.afn
  %i.afp = getelementptr inbounds i8, ptr %i.afk, i64 %i.afo
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i

bb.du:                                            ; preds = %bb.ds
  %i.afq = load i64, ptr %.0552.i, align 1
  store i64 %i.afq, ptr %.0551.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i: ; preds = %bb.du, %bb.dt
  %.1553.i = phi ptr [ %i.afp, %bb.dt ], [ %.0552.i, %bb.du ] ; 2 uses
  %.1553.i115 = ptrtoaddr ptr %.1553.i to i64
  %i.afr = getelementptr inbounds nuw i8, ptr %.1553.i, i64 8 ; 7 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.0551.i, i64 8 ; 6 uses
  %i.aft = icmp ugt i64 %.sroa.6471.0.i, 8
  br i1 %i.aft, label %bb.dv, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.dv:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i
  %i.afu = ptrtoint ptr %i.afs to i64
  %i.afv = ptrtoint ptr %i.afr to i64
  %i.afw = sub i64 %i.afu, %i.afv
  %i.afx = getelementptr i8, ptr %.0551.i, i64 %.sroa.6471.0.i ; 2 uses
  %i.afy = icmp slt i64 %i.afw, 16
  br i1 %i.afy, label %.preheader655.i.preheader, label %bb.dw

.preheader655.i.preheader:                        ; preds = %bb.dv
  %i.afz = add i64 %.sroa.4484.0.copyload.i, %i.aj
  %i.aga = add i64 %.sroa.5485.0.copyload.i, %i.aea
  %umax118 = tail call i64 @llvm.umax.i64(i64 %.sroa.5485.0.copyload.i, i64 %i.aea) ; 2 uses
  %i.agb = add i64 %i.afz, %i.aga
  %i.agc = sub i64 %i.agb, %.sroa.5485.0.copyload.i
  %i.agd = add i64 %i.ia, %umax118
  %umax119 = tail call i64 @llvm.umax.i64(i64 %i.agc, i64 %i.agd)
  %i.age = add i64 %umax119, -9
  %i.agf = add i64 %umax118, %i.aj
  %i.agg = sub i64 %i.age, %i.agf                 ; 2 uses
  %i.agh = lshr i64 %i.agg, 3
  %i.agi = add nuw nsw i64 %i.agh, 1              ; 2 uses
  %min.iters.check121 = icmp ult i64 %i.agg, 72
  br i1 %min.iters.check121, label %.preheader655.i.preheader332, label %vector.memcheck112

vector.memcheck112:                               ; preds = %.preheader655.i.preheader
  %i.agj = sub i64 %i.wf, %i.aj
  %i.agk = add i64 %i.agj, %.0207.i699.i113
  %umax114 = tail call i64 @llvm.umax.i64(i64 %.sroa.5485.0.copyload.i, i64 %i.agk)
  %i.agl = add i64 %umax114, %i.aj
  %i.agm = sub i64 %i.agl, %.1553.i115
  %diff.check116 = icmp ult i64 %i.agm, 32
  br i1 %diff.check116, label %.preheader655.i.preheader332, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck112
  %n.vec124 = and i64 %i.agi, 4611686018427387900 ; 3 uses
  %i.agn = shl i64 %n.vec124, 3                   ; 2 uses
  %i.ago = getelementptr i8, ptr %i.afs, i64 %i.agn
  %i.agp = getelementptr i8, ptr %i.afr, i64 %i.agn
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.agq = shl i64 %index126, 3                   ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.afs, i64 %i.agq ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.afr, i64 %i.agq ; 2 uses
  %i.agr = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load129 = load <2 x i64>, ptr %next.gep128, align 1
  %wide.load130 = load <2 x i64>, ptr %i.agr, align 1
  %i.ags = getelementptr i8, ptr %next.gep127, i64 16
  store <2 x i64> %wide.load129, ptr %next.gep127, align 1
  store <2 x i64> %wide.load130, ptr %i.ags, align 1
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.agt = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.agt, label %middle.block132, label %vector.body125, !llvm.loop !115

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %i.agi, %n.vec124
  br i1 %cmp.n133, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %.preheader655.i.preheader332

.preheader655.i.preheader332:                     ; preds = %vector.memcheck112, %.preheader655.i.preheader, %middle.block132
  %.029.i106.i.ph = phi ptr [ %i.afs, %vector.memcheck112 ], [ %i.afs, %.preheader655.i.preheader ], [ %i.ago, %middle.block132 ]
  %.0.i107.i.ph = phi ptr [ %i.afr, %vector.memcheck112 ], [ %i.afr, %.preheader655.i.preheader ], [ %i.agp, %middle.block132 ]
  br label %.preheader655.i

.preheader655.i:                                  ; preds = %.preheader655.i.preheader332, %.preheader655.i
  %.029.i106.i = phi ptr [ %i.agv, %.preheader655.i ], [ %.029.i106.i.ph, %.preheader655.i.preheader332 ] ; 2 uses
  %.0.i107.i = phi ptr [ %i.agw, %.preheader655.i ], [ %.0.i107.i.ph, %.preheader655.i.preheader332 ] ; 2 uses
  %i.agu = load i64, ptr %.0.i107.i, align 1
  store i64 %i.agu, ptr %.029.i106.i, align 1
  %i.agv = getelementptr inbounds nuw i8, ptr %.029.i106.i, i64 8 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.0.i107.i, i64 8
  %i.agx = icmp ult ptr %i.agv, %i.afx
  br i1 %i.agx, label %.preheader655.i, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !116

bb.dw:                                            ; preds = %bb.dv
  %i.agy = load <2 x i64>, ptr %i.afr, align 1, !tbaa !9
  store <2 x i64> %i.agy, ptr %i.afs, align 1, !tbaa !9
  %i.agz = icmp slt i64 %.sroa.6471.0.i, 25
  br i1 %i.agz, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aha = getelementptr inbounds nuw i8, ptr %.0551.i, i64 24
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %bb.dx
  %.130.i103.i = phi ptr [ %i.aha, %bb.dx ], [ %i.ahf, %bb.dy ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.afr, %bb.dx ], [ %i.ahd, %bb.dy ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %i.ahb = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !9
  store <2 x i64> %i.ahb, ptr %.130.i103.i, align 1, !tbaa !9
  %i.ahc = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %i.ahe = load <2 x i64>, ptr %i.ahd, align 1, !tbaa !9
  store <2 x i64> %i.ahe, ptr %i.ahc, align 1, !tbaa !9
  %i.ahf = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.ahg = icmp ult ptr %i.ahf, %i.afx
  br i1 %i.ahg, label %bb.dy, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i: ; preds = %bb.dy, %.preheader655.i, %bb.dr, %middle.block132, %bb.dw, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i, %bb.dp, %bb.dm, %bb.dk, %bb.dg
  %.0.i37.i = phi i64 [ %i.adm, %bb.dg ], [ -20, %bb.dk ], [ %i.ade, %bb.dm ], [ %i.ade, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i ], [ %i.ade, %bb.dr ], [ %i.ade, %bb.dp ], [ %i.ade, %middle.block132 ], [ %i.ade, %bb.dw ], [ %i.ade, %.preheader655.i ], [ %i.ade, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.et

bb.dz:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i
  %i.ahh = and i32 %.1239.i697.i, 7
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.ahi ; 3 uses
  %.sroa.0360.0.copyload.i = load i64, ptr %i.ahj, align 8, !tbaa !53 ; 7 uses
  %.sroa.4361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %.sroa.4361.0.copyload.i = load i64, ptr %.sroa.4361.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %.sroa.5362.0.copyload.i = load i64, ptr %.sroa.5362.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ahk = getelementptr i8, ptr %.0207.i699.i, i64 %.sroa.0360.0.copyload.i ; 7 uses
  %i.ahl = add i64 %.sroa.4361.0.copyload.i, %.sroa.0360.0.copyload.i ; 9 uses
  %i.ahm = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %.sroa.0360.0.copyload.i ; 2 uses
  %i.aho = sub i64 0, %.sroa.5362.0.copyload.i
  %i.ahp = getelementptr inbounds i8, ptr %i.ahk, i64 %i.aho ; 2 uses
  %i.ahq = icmp ugt ptr %i.ahn, %.0226.i698.i
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 %i.ahl
  %i.ahs = icmp ugt ptr %i.ahr, %i.hs
  %or.cond.i17.i = select i1 %i.ahq, i1 true, i1 %i.ahs, !prof !112
  br i1 %or.cond.i17.i, label %bb.ea, label %.critedge.i18.i, !prof !112

.critedge.i18.i:                                  ; preds = %bb.dz
  %i.aht = load <2 x i64>, ptr %i.ahm, align 1, !tbaa !9
  store <2 x i64> %i.aht, ptr %.0207.i699.i, align 1, !tbaa !9
  %i.ahu = icmp ugt i64 %.sroa.0360.0.copyload.i, 16
  br i1 %i.ahu, label %bb.eb, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i, !prof !60

bb.ea:                                            ; preds = %bb.dz
  store i64 %.sroa.0360.0.copyload.i, ptr %10, align 8, !tbaa !53
  store i64 %.sroa.4361.0.copyload.i, ptr %.sroa.6348.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5362.0.copyload.i, ptr %.sroa.12355.0..sroa_idx.i, align 8, !tbaa !53
  %i.ahv = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.0207.i699.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %10, ptr noundef nonnull %i.a, ptr noundef %.0226.i698.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i

bb.eb:                                            ; preds = %.critedge.i18.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 16
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16 ; 2 uses
  %i.ahy = add i64 %.sroa.0360.0.copyload.i, -16
  %i.ahz = load <2 x i64>, ptr %i.ahx, align 1, !tbaa !9
  store <2 x i64> %i.ahz, ptr %i.ahw, align 1, !tbaa !9
  %i.aia = icmp slt i64 %i.ahy, 17
  br i1 %i.aia, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aib = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 32
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %bb.ec
  %.130.i152.i = phi ptr [ %i.aib, %bb.ec ], [ %i.aig, %bb.ed ] ; 3 uses
  %.pn.i153.i = phi ptr [ %i.ahx, %bb.ec ], [ %i.aie, %bb.ed ] ; 2 uses
  %.1.i154.i = getelementptr inbounds nuw i8, ptr %.pn.i153.i, i64 16
  %i.aic = load <2 x i64>, ptr %.1.i154.i, align 1, !tbaa !9
  store <2 x i64> %i.aic, ptr %.130.i152.i, align 1, !tbaa !9
  %i.aid = getelementptr inbounds nuw i8, ptr %.130.i152.i, i64 16
  %i.aie = getelementptr inbounds nuw i8, ptr %.pn.i153.i, i64 32 ; 2 uses
  %i.aif = load <2 x i64>, ptr %i.aie, align 1, !tbaa !9
  store <2 x i64> %i.aif, ptr %i.aid, align 1, !tbaa !9
  %i.aig = getelementptr inbounds nuw i8, ptr %.130.i152.i, i64 32 ; 2 uses
  %i.aih = icmp ult ptr %i.aig, %i.ahk
  br i1 %i.aih, label %bb.ed, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i: ; preds = %bb.ed, %bb.eb, %.critedge.i18.i
  store ptr %i.ahn, ptr %i.a, align 8, !tbaa !46
  %i.aii = ptrtoint ptr %i.ahk to i64             ; 2 uses
  %i.aij = sub i64 %i.aii, %i.aj                  ; 3 uses
  %i.aik = icmp ugt i64 %.sroa.5362.0.copyload.i, %i.aij
  br i1 %i.aik, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i
  %i.ail = sub i64 %i.aii, %i.ht
  %i.aim = icmp ugt i64 %.sroa.5362.0.copyload.i, %i.ail
  br i1 %i.aim, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, label %bb.ef, !prof !60

bb.ef:                                            ; preds = %bb.ee
  %i.ain = ptrtoint ptr %i.ahp to i64
  %i.aio = sub i64 %i.ain, %i.aj                  ; 3 uses
  %i.aip = getelementptr inbounds i8, ptr %i.t, i64 %i.aio ; 2 uses
  %i.aiq = add nsw i64 %i.aio, %.sroa.4361.0.copyload.i ; 2 uses
  %.not.i20.i = icmp sgt i64 %i.aiq, 0
  br i1 %.not.i20.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ahk, ptr align 1 %i.aip, i64 %.sroa.4361.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i

bb.eh:                                            ; preds = %bb.ef
  %gepdiff.i21.i = sub nsw i64 0, %i.aio          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ahk, ptr align 1 %i.aip, i64 %gepdiff.i21.i, i1 false)
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %gepdiff.i21.i
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i
  %.sroa.6348.0.i = phi i64 [ %i.aiq, %bb.eh ], [ %.sroa.4361.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i ] ; 5 uses
  %.0561.i = phi ptr [ %i.p, %bb.eh ], [ %i.ahp, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i ] ; 9 uses
  %.0560.i = phi ptr [ %i.air, %bb.eh ], [ %i.ahk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i ] ; 12 uses
  %i.ais = icmp ugt i64 %.sroa.5362.0.copyload.i, 15
  br i1 %i.ais, label %bb.ej, label %bb.em, !prof !97

bb.ej:                                            ; preds = %bb.ei
  %i.ait = getelementptr inbounds i8, ptr %.0560.i, i64 %.sroa.6348.0.i
  %i.aiu = load <2 x i64>, ptr %.0561.i, align 1, !tbaa !9
  store <2 x i64> %i.aiu, ptr %.0560.i, align 1, !tbaa !9
  %i.aiv = icmp slt i64 %.sroa.6348.0.i, 17
  br i1 %i.aiv, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0560.i, i64 16
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.130.i159.i = phi ptr [ %i.aiw, %bb.ek ], [ %i.ajb, %bb.el ] ; 3 uses
  %.pn.i160.i = phi ptr [ %.0561.i, %bb.ek ], [ %i.aiz, %bb.el ] ; 2 uses
  %.1.i161.i = getelementptr inbounds nuw i8, ptr %.pn.i160.i, i64 16
  %i.aix = load <2 x i64>, ptr %.1.i161.i, align 1, !tbaa !9
  store <2 x i64> %i.aix, ptr %.130.i159.i, align 1, !tbaa !9
  %i.aiy = getelementptr inbounds nuw i8, ptr %.130.i159.i, i64 16
  %i.aiz = getelementptr inbounds nuw i8, ptr %.pn.i160.i, i64 32 ; 2 uses
  %i.aja = load <2 x i64>, ptr %i.aiz, align 1, !tbaa !9
  store <2 x i64> %i.aja, ptr %i.aiy, align 1, !tbaa !9
  %i.ajb = getelementptr inbounds nuw i8, ptr %.130.i159.i, i64 32 ; 2 uses
  %i.ajc = icmp ult ptr %i.ajb, %i.ait
  br i1 %i.ajc, label %bb.el, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, !llvm.loop !108

bb.em:                                            ; preds = %bb.ei
  %i.ajd = icmp samesign ult i64 %.sroa.5362.0.copyload.i, 8
  br i1 %i.ajd, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5362.0.copyload.i
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !3
  %i.ajg = load i8, ptr %.0561.i, align 1, !tbaa !9
  store i8 %i.ajg, ptr %.0560.i, align 1, !tbaa !9
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0561.i, i64 1
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !9
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0560.i, i64 1
  store i8 %i.aji, ptr %i.ajj, align 1, !tbaa !9
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0561.i, i64 2
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !9
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0560.i, i64 2
  store i8 %i.ajl, ptr %i.ajm, align 1, !tbaa !9
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0561.i, i64 3
  %i.ajo = load i8, ptr %i.ajn, align 1, !tbaa !9
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0560.i, i64 3
  store i8 %i.ajo, ptr %i.ajp, align 1, !tbaa !9
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5362.0.copyload.i
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !3
  %i.ajs = zext i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0561.i, i64 %i.ajs ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.0560.i, i64 4
  %i.ajv = load i32, ptr %i.ajt, align 1
  store i32 %i.ajv, ptr %i.aju, align 1
  %i.ajw = sext i32 %i.ajf to i64
  %i.ajx = sub nsw i64 0, %i.ajw
  %i.ajy = getelementptr inbounds i8, ptr %i.ajt, i64 %i.ajx
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i

bb.eo:                                            ; preds = %bb.em
  %i.ajz = load i64, ptr %.0561.i, align 1
  store i64 %i.ajz, ptr %.0560.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i: ; preds = %bb.eo, %bb.en
  %.1562.i = phi ptr [ %i.ajy, %bb.en ], [ %.0561.i, %bb.eo ] ; 2 uses
  %.1562.i138 = ptrtoaddr ptr %.1562.i to i64
  %i.aka = getelementptr inbounds nuw i8, ptr %.1562.i, i64 8 ; 7 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.0560.i, i64 8 ; 6 uses
  %i.akc = icmp ugt i64 %.sroa.6348.0.i, 8
  br i1 %i.akc, label %bb.ep, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i

bb.ep:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i
  %i.akd = ptrtoint ptr %i.akb to i64
  %i.ake = ptrtoint ptr %i.aka to i64
  %i.akf = sub i64 %i.akd, %i.ake
  %i.akg = getelementptr i8, ptr %.0560.i, i64 %.sroa.6348.0.i ; 2 uses
  %i.akh = icmp slt i64 %i.akf, 16
  br i1 %i.akh, label %.preheader658.i.preheader, label %bb.eq

.preheader658.i.preheader:                        ; preds = %bb.ep
  %i.aki = add i64 %.sroa.4361.0.copyload.i, %i.aj
  %i.akj = add i64 %.sroa.5362.0.copyload.i, %i.aij
  %umax141 = tail call i64 @llvm.umax.i64(i64 %.sroa.5362.0.copyload.i, i64 %i.aij) ; 2 uses
  %i.akk = add i64 %i.aki, %i.akj
  %i.akl = sub i64 %i.akk, %.sroa.5362.0.copyload.i
  %i.akm = add i64 %i.ib, %umax141
  %umax142 = tail call i64 @llvm.umax.i64(i64 %i.akl, i64 %i.akm)
  %i.akn = add i64 %umax142, -9
  %i.ako = add i64 %umax141, %i.aj
  %i.akp = sub i64 %i.akn, %i.ako                 ; 2 uses
  %i.akq = lshr i64 %i.akp, 3
  %i.akr = add nuw nsw i64 %i.akq, 1              ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.akp, 72
  br i1 %min.iters.check144, label %.preheader658.i.preheader335, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.preheader658.i.preheader
  %i.aks = sub i64 %.sroa.0360.0.copyload.i, %i.aj
  %i.akt = add i64 %i.aks, %.0207.i699.i113
  %umax137 = tail call i64 @llvm.umax.i64(i64 %.sroa.5362.0.copyload.i, i64 %i.akt)
  %i.aku = add i64 %umax137, %i.aj
  %i.akv = sub i64 %i.aku, %.1562.i138
  %diff.check139 = icmp ult i64 %i.akv, 32
  br i1 %diff.check139, label %.preheader658.i.preheader335, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck136
  %n.vec147 = and i64 %i.akr, 4611686018427387900 ; 3 uses
  %i.akw = shl i64 %n.vec147, 3                   ; 2 uses
  %i.akx = getelementptr i8, ptr %i.akb, i64 %i.akw
  %i.aky = getelementptr i8, ptr %i.aka, i64 %i.akw
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.akz = shl i64 %index149, 3                   ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.akb, i64 %i.akz ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.aka, i64 %i.akz ; 2 uses
  %i.ala = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <2 x i64>, ptr %next.gep151, align 1
  %wide.load153 = load <2 x i64>, ptr %i.ala, align 1
  %i.alb = getelementptr i8, ptr %next.gep150, i64 16
  store <2 x i64> %wide.load152, ptr %next.gep150, align 1
  store <2 x i64> %wide.load153, ptr %i.alb, align 1
  %index.next154 = add nuw i64 %index149, 4       ; 2 uses
  %i.alc = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.alc, label %middle.block155, label %vector.body148, !llvm.loop !117

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.akr, %n.vec147
  br i1 %cmp.n156, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, label %.preheader658.i.preheader335

.preheader658.i.preheader335:                     ; preds = %vector.memcheck136, %.preheader658.i.preheader, %middle.block155
  %.029.i169.i.ph = phi ptr [ %i.akb, %vector.memcheck136 ], [ %i.akb, %.preheader658.i.preheader ], [ %i.akx, %middle.block155 ]
  %.0.i170.i.ph = phi ptr [ %i.aka, %vector.memcheck136 ], [ %i.aka, %.preheader658.i.preheader ], [ %i.aky, %middle.block155 ]
  br label %.preheader658.i

.preheader658.i:                                  ; preds = %.preheader658.i.preheader335, %.preheader658.i
  %.029.i169.i = phi ptr [ %i.ale, %.preheader658.i ], [ %.029.i169.i.ph, %.preheader658.i.preheader335 ] ; 2 uses
  %.0.i170.i = phi ptr [ %i.alf, %.preheader658.i ], [ %.0.i170.i.ph, %.preheader658.i.preheader335 ] ; 2 uses
  %i.ald = load i64, ptr %.0.i170.i, align 1
  store i64 %i.ald, ptr %.029.i169.i, align 1
  %i.ale = getelementptr inbounds nuw i8, ptr %.029.i169.i, i64 8 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.0.i170.i, i64 8
  %i.alg = icmp ult ptr %i.ale, %i.akg
  br i1 %i.alg, label %.preheader658.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, !llvm.loop !118

bb.eq:                                            ; preds = %bb.ep
  %i.alh = load <2 x i64>, ptr %i.aka, align 1, !tbaa !9
  store <2 x i64> %i.alh, ptr %i.akb, align 1, !tbaa !9
  %i.ali = icmp slt i64 %.sroa.6348.0.i, 25
  br i1 %i.ali, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.alj = getelementptr inbounds nuw i8, ptr %.0560.i, i64 24
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %bb.er
  %.130.i166.i = phi ptr [ %i.alj, %bb.er ], [ %i.alo, %bb.es ] ; 3 uses
  %.pn.i167.i = phi ptr [ %i.aka, %bb.er ], [ %i.alm, %bb.es ] ; 2 uses
  %.1.i168.i = getelementptr inbounds nuw i8, ptr %.pn.i167.i, i64 16
  %i.alk = load <2 x i64>, ptr %.1.i168.i, align 1, !tbaa !9
  store <2 x i64> %i.alk, ptr %.130.i166.i, align 1, !tbaa !9
  %i.all = getelementptr inbounds nuw i8, ptr %.130.i166.i, i64 16
  %i.alm = getelementptr inbounds nuw i8, ptr %.pn.i167.i, i64 32 ; 2 uses
  %i.aln = load <2 x i64>, ptr %i.alm, align 1, !tbaa !9
  store <2 x i64> %i.aln, ptr %i.all, align 1, !tbaa !9
  %i.alo = getelementptr inbounds nuw i8, ptr %.130.i166.i, i64 32 ; 2 uses
  %i.alp = icmp ult ptr %i.alo, %i.akg
  br i1 %i.alp, label %bb.es, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i: ; preds = %bb.es, %.preheader658.i, %bb.el, %middle.block155, %bb.eq, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i, %bb.ej, %bb.eg, %bb.ee, %bb.ea
  %.0.i19.i = phi i64 [ %i.ahv, %bb.ea ], [ -20, %bb.ee ], [ %i.ahl, %bb.eg ], [ %i.ahl, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i ], [ %i.ahl, %bb.el ], [ %i.ahl, %bb.ej ], [ %i.ahl, %middle.block155 ], [ %i.ahl, %bb.eq ], [ %i.ahl, %.preheader658.i ], [ %i.ahl, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.et

bb.et:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i
  %i.alq = phi i64 [ %.0.i37.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i ], [ %.0.i19.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i ] ; 3 uses
  %i.alr = icmp ult i64 %i.alq, -119
  br i1 %i.alr, label %.thread585.i, label %.thread620.i

.thread585.i:                                     ; preds = %bb.et
  %i.als = add i64 %.sroa.0.0.i, %.1242.i696.i    ; 3 uses
  %i.alt = icmp ugt i64 %.sink855.i, %i.als
  %i.alu = select i1 %i.alt, ptr %i.t, ptr %i.p
  %i.alv = getelementptr inbounds i8, ptr %i.alu, i64 %i.als
  %i.alw = sub i64 0, %.sink855.i
  %i.alx = getelementptr inbounds i8, ptr %i.alv, i64 %i.alw ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.alx, i32 0, i32 3, i32 1)
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aly, i32 0, i32 3, i32 1)
  %i.alz = and i32 %.1239.i697.i, 7
  %i.ama = zext nneg i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.ama ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.amb, align 8, !tbaa !53
  %.sroa.9.0..sroa_idx262.i = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx262.i, align 8, !tbaa !53
  %.sroa.12.0..sroa_idx268.i = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  store i64 %.sink855.i, ptr %.sroa.12.0..sroa_idx268.i, align 8, !tbaa !53
  %i.amc = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 %i.alq
  br label %bb.eu

bb.eu:                                            ; preds = %.thread585.i, %bb.de
  %.pn.i = phi i64 [ %i.als, %.thread585.i ], [ %i.acu, %bb.de ]
  %.3229.i.ph.i = phi ptr [ %.0226.i698.i, %.thread585.i ], [ %i.hw, %bb.de ] ; 2 uses
  %.6213.i.ph.i = phi ptr [ %i.amc, %.thread585.i ], [ %i.adb, %bb.de ] ; 2 uses
  %.6247.i.ph.i = add i64 %.pn.i, %.sroa.9.0.i
  %i.amd = add nuw i32 %.1239.i697.i, 1           ; 2 uses
  %exitcond740.not.i = icmp eq i32 %i.amd, %5
  br i1 %exitcond740.not.i, label %._crit_edge.i, label %bb.bf, !llvm.loop !119

._crit_edge.i:                                    ; preds = %bb.eu, %.preheader661.i
  %i.ame = phi i32 [ %i.hi, %.preheader661.i ], [ %i.vu, %bb.eu ]
  %i.amf = phi ptr [ %i.hj, %.preheader661.i ], [ %i.vt, %bb.eu ]
  %i.amg = phi i64 [ %i.hk, %.preheader661.i ], [ %i.sc, %bb.eu ]
  %i.amh = phi i64 [ %i.hl, %.preheader661.i ], [ %.sink856.i, %bb.eu ]
  %i.ami = phi i64 [ %i.hm, %.preheader661.i ], [ %.sink855.i, %bb.eu ]
  %.1239.i.lcssa.i = phi i32 [ %.0238.i.lcssa.i, %.preheader661.i ], [ %5, %bb.eu ]
  %.0226.i.lcssa.i = phi ptr [ %i.n, %.preheader661.i ], [ %.3229.i.ph.i, %bb.eu ] ; 2 uses
  %.0207.i.lcssa.i = phi ptr [ %1, %.preheader661.i ], [ %.6213.i.ph.i, %bb.eu ] ; 2 uses
  %i.amj = icmp eq ptr %i.amf, %3
  %.not.i = icmp eq i32 %i.ame, 64
  %or.cond.i = select i1 %i.amj, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.ev, label %.thread620.i

bb.ev:                                            ; preds = %._crit_edge.i
  %i.amk = sub nsw i32 %.1239.i.lcssa.i, %i.ah    ; 2 uses
  %i.aml = icmp slt i32 %i.amk, %5
  br i1 %i.aml, label %.lr.ph715.i, label %.preheader.i

.lr.ph715.i:                                      ; preds = %bb.ev
  %i.amm = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 2 uses
  %i.amn = ptrtoint ptr %i.r to i64               ; 3 uses
  %.sroa.6430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.12437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.12519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.amo = ptrtoint ptr %i.j to i64
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6389.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.12396.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ams = add i64 %i.aj, 16
  %i.amt = add i64 %i.aj, 16
  %i.amu = add i64 %i.aj, 16
  br label %bb.ew

.preheader.i:                                     ; preds = %bb.hn, %bb.ev
  %.4230.i.lcssa.i = phi ptr [ %.0226.i.lcssa.i, %bb.ev ], [ %.6232.i.i, %bb.hn ]
  %.7214.i.lcssa.i = phi ptr [ %.0207.i.lcssa.i, %bb.ev ], [ %.12219.i.i, %bb.hn ]
  %i.amv = trunc i64 %i.ami to i32
  store i32 %i.amv, ptr %i.v, align 4, !tbaa !3
  %i.amw = trunc i64 %i.amh to i32
  store i32 %i.amw, ptr %i.z, align 4, !tbaa !3
  %i.amx = trunc i64 %i.amg to i32
  store i32 %i.amx, ptr %i.ad, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.pre751.i = load i32, ptr %i.d, align 8, !tbaa !43
  %.pre752.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.ho

bb.ew:                                            ; preds = %bb.hn, %.lr.ph715.i
  %.7214.i710.i = phi ptr [ %.0207.i.lcssa.i, %.lr.ph715.i ], [ %.12219.i.i, %bb.hn ] ; 26 uses
  %.4230.i708.i = phi ptr [ %.0226.i.lcssa.i, %.lr.ph715.i ], [ %.6232.i.i, %bb.hn ] ; 5 uses
  %.2240.i707.i = phi i32 [ %i.amk, %.lr.ph715.i ], [ %i.bci, %bb.hn ] ; 2 uses
  %.7214.i710.i263 = ptrtoaddr ptr %.7214.i710.i to i64 ; 2 uses
  %i.amy = and i32 %.2240.i707.i, 7
  %i.amz = zext nneg i32 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.amz ; 10 uses
  %i.anb = load i32, ptr %i.d, align 8, !tbaa !43
  %i.anc = icmp eq i32 %i.anb, 2
  br i1 %i.anc, label %bb.ex, label %bb.gs

bb.ex:                                            ; preds = %bb.ew
  %i.and = load ptr, ptr %i.a, align 8, !tbaa !46 ; 14 uses
  %i.ane = load i64, ptr %i.ana, align 8, !tbaa !102 ; 8 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.ane ; 4 uses
  %i.ang = load ptr, ptr %i.m, align 8, !tbaa !42 ; 3 uses
  %i.anh = icmp ugt ptr %i.anf, %i.ang
  br i1 %i.anh, label %bb.ey, label %bb.fy

bb.ey:                                            ; preds = %bb.ex
  %i.ani = ptrtoint ptr %i.ang to i64             ; 2 uses
  %i.anj = ptrtoint ptr %i.and to i64             ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL28ZSTD_decompressSequencesLongEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  br label %.lr.ph.i245.i

.lr.ph.i245.i:                                    ; preds = %.lr.ph.i245.i.preheader, %.lr.ph.i245.i
  %.237.i246.i = phi ptr [ %i.apm, %.lr.ph.i245.i ], [ %.237.i246.i.ph, %.lr.ph.i245.i.preheader ] ; 2 uses
  %.23136.i247.i = phi ptr [ %i.apk, %.lr.ph.i245.i ], [ %.23136.i247.i.ph, %.lr.ph.i245.i.preheader ] ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.23136.i247.i, i64 1
  %i.apl = load i8, ptr %.23136.i247.i, align 1, !tbaa !9
  %i.apm = getelementptr inbounds nuw i8, ptr %.237.i246.i, i64 1 ; 2 uses
  store i8 %i.apl, ptr %.237.i246.i, align 1, !tbaa !9
  %exitcond.not.i248.i = icmp eq ptr %i.apm, %scevgep.i244.i
  br i1 %exitcond.not.i248.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258.i, label %.lr.ph.i245.i, !llvm.loop !125

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258.i: ; preds = %.lr.ph.i245.i, %.lr.ph40.i255.i, %middle.block240, %vec.epilog.middle.block258, %middle.block200, %vec.epilog.middle.block218, %.preheader.i254.i
  %i.apn = load i64, ptr %i.ana, align 8, !tbaa !102
  %i.apo = sub i64 %i.apn, %i.ank                 ; 2 uses
  store i64 %i.apo, ptr %i.ana, align 8, !tbaa !102
  br label %thread-pre-split601.i

thread-pre-split601.i:                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258.i, %bb.ey
  %.sroa.0401.0.copyload.i = phi i64 [ %i.apo, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258.i ], [ %i.ane, %bb.ey ] ; 8 uses
  %.8215.i.i = phi ptr [ %i.anp, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258.i ], [ %.7214.i710.i, %bb.ey ] ; 8 uses
  %.8215.i.i160 = ptrtoaddr ptr %.8215.i.i to i64
  store ptr %i.amp, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.d, align 8, !tbaa !43
  %.sroa.4402.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %.sroa.4402.0.copyload.i = load i64, ptr %.sroa.4402.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5403.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %.sroa.5403.0.copyload.i = load i64, ptr %.sroa.5403.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.app = getelementptr i8, ptr %.8215.i.i, i64 %.sroa.0401.0.copyload.i ; 7 uses
  %i.apq = add i64 %.sroa.4402.0.copyload.i, %.sroa.0401.0.copyload.i ; 9 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.amp, i64 %.sroa.0401.0.copyload.i
  %i.aps = sub i64 0, %.sroa.5403.0.copyload.i
  %i.apt = getelementptr inbounds i8, ptr %i.app, i64 %i.aps ; 2 uses
  %i.apu = icmp ugt i64 %.sroa.0401.0.copyload.i, 65536
  %i.apv = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 %i.apq
  %i.apw = icmp ugt ptr %i.apv, %i.amm
  %or.cond.i23.i = select i1 %i.apu, i1 true, i1 %i.apw, !prof !112
  br i1 %or.cond.i23.i, label %bb.ff, label %.critedge.i24.i, !prof !112

.critedge.i24.i:                                  ; preds = %thread-pre-split601.i
  %i.apx = load <2 x i64>, ptr %i.amp, align 1, !tbaa !9
  store <2 x i64> %i.apx, ptr %.8215.i.i, align 1, !tbaa !9
  %i.apy = icmp samesign ugt i64 %.sroa.0401.0.copyload.i, 16
  br i1 %i.apy, label %bb.fg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, !prof !60

bb.ff:                                            ; preds = %thread-pre-split601.i
  store i64 %.sroa.0401.0.copyload.i, ptr %9, align 8, !tbaa !53
  store i64 %.sroa.4402.0.copyload.i, ptr %.sroa.6389.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5403.0.copyload.i, ptr %.sroa.12396.0..sroa_idx.i, align 8, !tbaa !53
  %i.apz = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.8215.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.amq, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %.loopexit.i

bb.fg:                                            ; preds = %.critedge.i24.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 16
  %i.aqb = load <2 x i64>, ptr %i.amr, align 1, !tbaa !9
  store <2 x i64> %i.aqb, ptr %i.aqa, align 1, !tbaa !9
  %i.aqc = icmp samesign ult i64 %.sroa.0401.0.copyload.i, 33
  br i1 %i.aqc, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aqd = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 32
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %bb.fh
  %.130.i131.i = phi ptr [ %i.aqd, %bb.fh ], [ %i.aqi, %bb.fi ] ; 3 uses
  %.pn.i132.i = phi ptr [ %i.amr, %bb.fh ], [ %i.aqg, %bb.fi ] ; 2 uses
  %.1.i133.i = getelementptr inbounds nuw i8, ptr %.pn.i132.i, i64 16
  %i.aqe = load <2 x i64>, ptr %.1.i133.i, align 1, !tbaa !9
  store <2 x i64> %i.aqe, ptr %.130.i131.i, align 1, !tbaa !9
  %i.aqf = getelementptr inbounds nuw i8, ptr %.130.i131.i, i64 16
  %i.aqg = getelementptr inbounds nuw i8, ptr %.pn.i132.i, i64 32 ; 2 uses
  %i.aqh = load <2 x i64>, ptr %i.aqg, align 1, !tbaa !9
  store <2 x i64> %i.aqh, ptr %i.aqf, align 1, !tbaa !9
  %i.aqi = getelementptr inbounds nuw i8, ptr %.130.i131.i, i64 32 ; 2 uses
  %i.aqj = icmp ult ptr %i.aqi, %i.app
  br i1 %i.aqj, label %bb.fi, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i: ; preds = %bb.fi, %bb.fg, %.critedge.i24.i
  store ptr %i.apr, ptr %i.a, align 8, !tbaa !46
  %i.aqk = ptrtoint ptr %i.app to i64             ; 2 uses
  %i.aql = sub i64 %i.aqk, %i.aj                  ; 3 uses
  %i.aqm = icmp ugt i64 %.sroa.5403.0.copyload.i, %i.aql
  br i1 %i.aqm, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i
  %i.aqn = sub i64 %i.aqk, %i.amn
  %i.aqo = icmp ugt i64 %.sroa.5403.0.copyload.i, %i.aqn
  br i1 %i.aqo, label %.thread607.i, label %bb.fk, !prof !60

.thread607.i:                                     ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread620.i

bb.fk:                                            ; preds = %bb.fj
  %i.aqp = ptrtoint ptr %i.apt to i64
  %i.aqq = sub i64 %i.aqp, %i.aj                  ; 3 uses
  %i.aqr = getelementptr inbounds i8, ptr %i.t, i64 %i.aqq ; 2 uses
  %i.aqs = add nsw i64 %i.aqq, %.sroa.4402.0.copyload.i ; 2 uses
  %.not.i26.i = icmp sgt i64 %i.aqs, 0
  br i1 %.not.i26.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.app, ptr align 1 %i.aqr, i64 %.sroa.4402.0.copyload.i, i1 false)
  br label %.loopexit.i

bb.fm:                                            ; preds = %bb.fk
  %gepdiff.i27.i = sub nsw i64 0, %i.aqq          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.app, ptr align 1 %i.aqr, i64 %gepdiff.i27.i, i1 false)
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.app, i64 %gepdiff.i27.i
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i
  %.sroa.6389.0.i = phi i64 [ %i.aqs, %bb.fm ], [ %.sroa.4402.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 5 uses
  %.0558.i = phi ptr [ %i.p, %bb.fm ], [ %i.apt, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 9 uses
  %.0557.i = phi ptr [ %i.aqt, %bb.fm ], [ %i.app, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 12 uses
  %i.aqu = icmp ugt i64 %.sroa.5403.0.copyload.i, 15
  br i1 %i.aqu, label %bb.fo, label %bb.fr, !prof !97

bb.fo:                                            ; preds = %bb.fn
  %i.aqv = getelementptr inbounds i8, ptr %.0557.i, i64 %.sroa.6389.0.i
  %i.aqw = load <2 x i64>, ptr %.0558.i, align 1, !tbaa !9
  store <2 x i64> %i.aqw, ptr %.0557.i, align 1, !tbaa !9
  %i.aqx = icmp slt i64 %.sroa.6389.0.i, 17
  br i1 %i.aqx, label %.loopexit.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aqy = getelementptr inbounds nuw i8, ptr %.0557.i, i64 16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %bb.fp
  %.130.i138.i = phi ptr [ %i.aqy, %bb.fp ], [ %i.ard, %bb.fq ] ; 3 uses
  %.pn.i139.i = phi ptr [ %.0558.i, %bb.fp ], [ %i.arb, %bb.fq ] ; 2 uses
  %.1.i140.i = getelementptr inbounds nuw i8, ptr %.pn.i139.i, i64 16
  %i.aqz = load <2 x i64>, ptr %.1.i140.i, align 1, !tbaa !9
  store <2 x i64> %i.aqz, ptr %.130.i138.i, align 1, !tbaa !9
  %i.ara = getelementptr inbounds nuw i8, ptr %.130.i138.i, i64 16
  %i.arb = getelementptr inbounds nuw i8, ptr %.pn.i139.i, i64 32 ; 2 uses
  %i.arc = load <2 x i64>, ptr %i.arb, align 1, !tbaa !9
  store <2 x i64> %i.arc, ptr %i.ara, align 1, !tbaa !9
  %i.ard = getelementptr inbounds nuw i8, ptr %.130.i138.i, i64 32 ; 2 uses
  %i.are = icmp ult ptr %i.ard, %i.aqv
  br i1 %i.are, label %bb.fq, label %.loopexit.i, !llvm.loop !108

bb.fr:                                            ; preds = %bb.fn
  %i.arf = icmp samesign ult i64 %.sroa.5403.0.copyload.i, 8
  br i1 %i.arf, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5403.0.copyload.i
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !3
  %i.ari = load i8, ptr %.0558.i, align 1, !tbaa !9
  store i8 %i.ari, ptr %.0557.i, align 1, !tbaa !9
  %i.arj = getelementptr inbounds nuw i8, ptr %.0558.i, i64 1
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !9
  %i.arl = getelementptr inbounds nuw i8, ptr %.0557.i, i64 1
  store i8 %i.ark, ptr %i.arl, align 1, !tbaa !9
  %i.arm = getelementptr inbounds nuw i8, ptr %.0558.i, i64 2
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !9
  %i.aro = getelementptr inbounds nuw i8, ptr %.0557.i, i64 2
  store i8 %i.arn, ptr %i.aro, align 1, !tbaa !9
  %i.arp = getelementptr inbounds nuw i8, ptr %.0558.i, i64 3
  %i.arq = load i8, ptr %i.arp, align 1, !tbaa !9
  %i.arr = getelementptr inbounds nuw i8, ptr %.0557.i, i64 3
  store i8 %i.arq, ptr %i.arr, align 1, !tbaa !9
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5403.0.copyload.i
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !3
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr %.0558.i, i64 %i.aru ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.0557.i, i64 4
  %i.arx = load i32, ptr %i.arv, align 1
  store i32 %i.arx, ptr %i.arw, align 1
  %i.ary = sext i32 %i.arh to i64
  %i.arz = sub nsw i64 0, %i.ary
  %i.asa = getelementptr inbounds i8, ptr %i.arv, i64 %i.arz
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i

bb.ft:                                            ; preds = %bb.fr
  %i.asb = load i64, ptr %.0558.i, align 1
  store i64 %i.asb, ptr %.0557.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i: ; preds = %bb.ft, %bb.fs
  %.1559.i = phi ptr [ %i.asa, %bb.fs ], [ %.0558.i, %bb.ft ] ; 2 uses
  %.1559.i162 = ptrtoaddr ptr %.1559.i to i64
  %i.asc = getelementptr inbounds nuw i8, ptr %.1559.i, i64 8 ; 7 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %.0557.i, i64 8 ; 6 uses
  %i.ase = icmp ugt i64 %.sroa.6389.0.i, 8
  br i1 %i.ase, label %bb.fu, label %.loopexit.i

bb.fu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i
  %i.asf = ptrtoint ptr %i.asd to i64
  %i.asg = ptrtoint ptr %i.asc to i64
  %i.ash = sub i64 %i.asf, %i.asg
  %i.asi = getelementptr i8, ptr %.0557.i, i64 %.sroa.6389.0.i ; 2 uses
  %i.asj = icmp slt i64 %i.ash, 16
  br i1 %i.asj, label %.preheader641.i.preheader, label %bb.fv

.preheader641.i.preheader:                        ; preds = %bb.fu
  %i.ask = add i64 %.sroa.4402.0.copyload.i, %i.aj
  %i.asl = add i64 %.sroa.5403.0.copyload.i, %i.aql
  %umax165 = tail call i64 @llvm.umax.i64(i64 %.sroa.5403.0.copyload.i, i64 %i.aql) ; 2 uses
  %i.asm = add i64 %i.ask, %i.asl
  %i.asn = sub i64 %i.asm, %.sroa.5403.0.copyload.i
  %i.aso = add i64 %i.ams, %umax165
  %umax166 = tail call i64 @llvm.umax.i64(i64 %i.asn, i64 %i.aso)
  %i.asp = add i64 %umax166, -9
  %i.asq = add i64 %umax165, %i.aj
  %i.asr = sub i64 %i.asp, %i.asq                 ; 2 uses
  %i.ass = lshr i64 %i.asr, 3
  %i.ast = add nuw nsw i64 %i.ass, 1              ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.asr, 72
  br i1 %min.iters.check168, label %.preheader641.i.preheader318, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.preheader641.i.preheader
  %i.asu = sub i64 %.sroa.0401.0.copyload.i, %i.aj
  %i.asv = add i64 %i.asu, %.8215.i.i160
  %umax161 = tail call i64 @llvm.umax.i64(i64 %.sroa.5403.0.copyload.i, i64 %i.asv)
  %i.asw = add i64 %umax161, %i.aj
  %i.asx = sub i64 %i.asw, %.1559.i162
  %diff.check163 = icmp ult i64 %i.asx, 32
  br i1 %diff.check163, label %.preheader641.i.preheader318, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck159
  %n.vec171 = and i64 %i.ast, 4611686018427387900 ; 3 uses
  %i.asy = shl i64 %n.vec171, 3                   ; 2 uses
  %i.asz = getelementptr i8, ptr %i.asd, i64 %i.asy
  %i.ata = getelementptr i8, ptr %i.asc, i64 %i.asy
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph169
  %index173 = phi i64 [ 0, %vector.ph169 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %i.atb = shl i64 %index173, 3                   ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.asd, i64 %i.atb ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.asc, i64 %i.atb ; 2 uses
  %i.atc = getelementptr i8, ptr %next.gep175, i64 16
  %wide.load176 = load <2 x i64>, ptr %next.gep175, align 1
  %wide.load177 = load <2 x i64>, ptr %i.atc, align 1
  %i.atd = getelementptr i8, ptr %next.gep174, i64 16
  store <2 x i64> %wide.load176, ptr %next.gep174, align 1
  store <2 x i64> %wide.load177, ptr %i.atd, align 1
  %index.next178 = add nuw i64 %index173, 4       ; 2 uses
  %i.ate = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.ate, label %middle.block179, label %vector.body172, !llvm.loop !126

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.ast, %n.vec171
  br i1 %cmp.n180, label %.loopexit.i, label %.preheader641.i.preheader318

.preheader641.i.preheader318:                     ; preds = %vector.memcheck159, %.preheader641.i.preheader, %middle.block179
  %.029.i148.i.ph = phi ptr [ %i.asd, %vector.memcheck159 ], [ %i.asd, %.preheader641.i.preheader ], [ %i.asz, %middle.block179 ]
  %.0.i149.i.ph = phi ptr [ %i.asc, %vector.memcheck159 ], [ %i.asc, %.preheader641.i.preheader ], [ %i.ata, %middle.block179 ]
  br label %.preheader641.i

.preheader641.i:                                  ; preds = %.preheader641.i.preheader318, %.preheader641.i
  %.029.i148.i = phi ptr [ %i.atg, %.preheader641.i ], [ %.029.i148.i.ph, %.preheader641.i.preheader318 ] ; 2 uses
  %.0.i149.i = phi ptr [ %i.ath, %.preheader641.i ], [ %.0.i149.i.ph, %.preheader641.i.preheader318 ] ; 2 uses
  %i.atf = load i64, ptr %.0.i149.i, align 1
  store i64 %i.atf, ptr %.029.i148.i, align 1
  %i.atg = getelementptr inbounds nuw i8, ptr %.029.i148.i, i64 8 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %.0.i149.i, i64 8
  %i.ati = icmp ult ptr %i.atg, %i.asi
  br i1 %i.ati, label %.preheader641.i, label %.loopexit.i, !llvm.loop !127

bb.fv:                                            ; preds = %bb.fu
  %i.atj = load <2 x i64>, ptr %i.asc, align 1, !tbaa !9
  store <2 x i64> %i.atj, ptr %i.asd, align 1, !tbaa !9
  %i.atk = icmp slt i64 %.sroa.6389.0.i, 25
  br i1 %i.atk, label %.loopexit.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.atl = getelementptr inbounds nuw i8, ptr %.0557.i, i64 24
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fx, %bb.fw
  %.130.i145.i = phi ptr [ %i.atl, %bb.fw ], [ %i.atq, %bb.fx ] ; 3 uses
  %.pn.i146.i = phi ptr [ %i.asc, %bb.fw ], [ %i.ato, %bb.fx ] ; 2 uses
  %.1.i147.i = getelementptr inbounds nuw i8, ptr %.pn.i146.i, i64 16
  %i.atm = load <2 x i64>, ptr %.1.i147.i, align 1, !tbaa !9
  store <2 x i64> %i.atm, ptr %.130.i145.i, align 1, !tbaa !9
  %i.atn = getelementptr inbounds nuw i8, ptr %.130.i145.i, i64 16
  %i.ato = getelementptr inbounds nuw i8, ptr %.pn.i146.i, i64 32 ; 2 uses
  %i.atp = load <2 x i64>, ptr %i.ato, align 1, !tbaa !9
  store <2 x i64> %i.atp, ptr %i.atn, align 1, !tbaa !9
  %i.atq = getelementptr inbounds nuw i8, ptr %.130.i145.i, i64 32 ; 2 uses
  %i.atr = icmp ult ptr %i.atq, %i.asi
  br i1 %i.atr, label %bb.fx, label %.loopexit.i, !llvm.loop !108

.loopexit.i:                                      ; preds = %bb.fx, %.preheader641.i, %bb.fq, %middle.block179, %bb.fv, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i, %bb.fo, %bb.fl, %bb.ff
  %.0.i25.i = phi i64 [ %i.apz, %bb.ff ], [ %i.apq, %bb.fq ], [ %i.apq, %bb.fl ], [ %i.apq, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i ], [ %i.apq, %bb.fv ], [ %i.apq, %bb.fo ], [ %i.apq, %middle.block179 ], [ %i.apq, %.preheader641.i ], [ %i.apq, %bb.fx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ats = icmp ult i64 %.0.i25.i, -119
  %i.att = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 %.0.i25.i
  br i1 %i.ats, label %bb.hn, label %.thread620.i

bb.fy:                                            ; preds = %bb.ex
  %i.atu = getelementptr inbounds i8, ptr %i.anf, i64 -32 ; 2 uses
  %.sroa.4525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %.sroa.4525.0.copyload.i = load i64, ptr %.sroa.4525.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %.sroa.5526.0.copyload.i = load i64, ptr %.sroa.5526.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.atv = getelementptr i8, ptr %.7214.i710.i, i64 %i.ane ; 7 uses
  %i.atw = add i64 %.sroa.4525.0.copyload.i, %i.ane ; 9 uses
  %i.atx = sub i64 0, %.sroa.5526.0.copyload.i
  %i.aty = getelementptr inbounds i8, ptr %i.atv, i64 %i.atx ; 2 uses
  %i.atz = icmp ugt ptr %i.anf, %.4230.i708.i
  %i.aua = getelementptr inbounds nuw i8, ptr %.7214.i710.i, i64 %i.atw
  %i.aub = icmp ugt ptr %i.aua, %i.atu
  %or.cond.i40.i = select i1 %i.atz, i1 true, i1 %i.aub, !prof !112
  br i1 %or.cond.i40.i, label %bb.fz, label %.critedge.i41.i, !prof !112

.critedge.i41.i:                                  ; preds = %bb.fy
  %i.auc = load <2 x i64>, ptr %i.and, align 1, !tbaa !9
  store <2 x i64> %i.auc, ptr %.7214.i710.i, align 1, !tbaa !9
  %i.aud = icmp ugt i64 %i.ane, 16
  br i1 %i.aud, label %bb.ga, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !prof !60

bb.fz:                                            ; preds = %bb.fy
  store i64 %i.ane, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.4525.0.copyload.i, ptr %.sroa.6512.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5526.0.copyload.i, ptr %.sroa.12519.0..sroa_idx.i, align 8, !tbaa !53
  %i.aue = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.7214.i710.i, ptr noundef %i.j, ptr noundef nonnull %i.atu, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %.4230.i708.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i

bb.ga:                                            ; preds = %.critedge.i41.i
  %i.auf = getelementptr inbounds nuw i8, ptr %.7214.i710.i, i64 16
  %i.aug = getelementptr inbounds nuw i8, ptr %i.and, i64 16 ; 2 uses
  %i.auh = add i64 %i.ane, -16
  %i.aui = load <2 x i64>, ptr %i.aug, align 1, !tbaa !9
  store <2 x i64> %i.aui, ptr %i.auf, align 1, !tbaa !9
  %i.auj = icmp slt i64 %i.auh, 17
  br i1 %i.auj, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.auk = getelementptr inbounds nuw i8, ptr %.7214.i710.i, i64 32
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gc, %bb.gb
  %.130.i.i = phi ptr [ %i.auk, %bb.gb ], [ %i.aup, %bb.gc ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.aug, %bb.gb ], [ %i.aun, %bb.gc ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.aul = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %i.aul, ptr %.130.i.i, align 1, !tbaa !9
  %i.aum = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.aun = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.auo = load <2 x i64>, ptr %i.aun, align 1, !tbaa !9
  store <2 x i64> %i.auo, ptr %i.aum, align 1, !tbaa !9
  %i.aup = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.auq = icmp ult ptr %i.aup, %i.atv
  br i1 %i.auq, label %bb.gc, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.gc, %bb.ga, %.critedge.i41.i
  store ptr %i.anf, ptr %i.a, align 8, !tbaa !46
  %i.aur = ptrtoint ptr %i.atv to i64             ; 2 uses
  %i.aus = sub i64 %i.aur, %i.aj                  ; 3 uses
  %i.aut = icmp ugt i64 %.sroa.5526.0.copyload.i, %i.aus
  br i1 %i.aut, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.auu = sub i64 %i.aur, %i.amn
  %i.auv = icmp ugt i64 %.sroa.5526.0.copyload.i, %i.auu
  br i1 %i.auv, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, label %bb.ge, !prof !60

bb.ge:                                            ; preds = %bb.gd
  %i.auw = ptrtoint ptr %i.aty to i64
  %i.aux = sub i64 %i.auw, %i.aj                  ; 3 uses
  %i.auy = getelementptr inbounds i8, ptr %i.t, i64 %i.aux ; 2 uses
  %i.auz = add nsw i64 %i.aux, %.sroa.4525.0.copyload.i ; 2 uses
  %.not.i43.i = icmp sgt i64 %i.auz, 0
  br i1 %.not.i43.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.atv, ptr align 1 %i.auy, i64 %.sroa.4525.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i

bb.gg:                                            ; preds = %bb.ge
  %gepdiff.i44.i = sub nsw i64 0, %i.aux          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.atv, ptr align 1 %i.auy, i64 %gepdiff.i44.i, i1 false)
  %i.ava = getelementptr inbounds nuw i8, ptr %i.atv, i64 %gepdiff.i44.i
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.sroa.6512.0.i = phi i64 [ %i.auz, %bb.gg ], [ %.sroa.4525.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %.0550.i = phi ptr [ %i.p, %bb.gg ], [ %i.aty, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ava, %bb.gg ], [ %i.atv, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %i.avb = icmp ugt i64 %.sroa.5526.0.copyload.i, 15
  br i1 %i.avb, label %bb.gi, label %bb.gl, !prof !97

bb.gi:                                            ; preds = %bb.gh
  %i.avc = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.6512.0.i
  %i.avd = load <2 x i64>, ptr %.0550.i, align 1, !tbaa !9
  store <2 x i64> %i.avd, ptr %.0.i, align 1, !tbaa !9
  %i.ave = icmp slt i64 %.sroa.6512.0.i, 17
  br i1 %i.ave, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.avf = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.130.i77.i = phi ptr [ %i.avf, %bb.gj ], [ %i.avk, %bb.gk ] ; 3 uses
  %.pn.i78.i = phi ptr [ %.0550.i, %bb.gj ], [ %i.avi, %bb.gk ] ; 2 uses
  %.1.i79.i = getelementptr inbounds nuw i8, ptr %.pn.i78.i, i64 16
  %i.avg = load <2 x i64>, ptr %.1.i79.i, align 1, !tbaa !9
  store <2 x i64> %i.avg, ptr %.130.i77.i, align 1, !tbaa !9
  %i.avh = getelementptr inbounds nuw i8, ptr %.130.i77.i, i64 16
  %i.avi = getelementptr inbounds nuw i8, ptr %.pn.i78.i, i64 32 ; 2 uses
  %i.avj = load <2 x i64>, ptr %i.avi, align 1, !tbaa !9
  store <2 x i64> %i.avj, ptr %i.avh, align 1, !tbaa !9
  %i.avk = getelementptr inbounds nuw i8, ptr %.130.i77.i, i64 32 ; 2 uses
  %i.avl = icmp ult ptr %i.avk, %i.avc
  br i1 %i.avl, label %bb.gk, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, !llvm.loop !108

bb.gl:                                            ; preds = %bb.gh
  %i.avm = icmp samesign ult i64 %.sroa.5526.0.copyload.i, 8
  br i1 %i.avm, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5526.0.copyload.i
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !3
  %i.avp = load i8, ptr %.0550.i, align 1, !tbaa !9
  store i8 %i.avp, ptr %.0.i, align 1, !tbaa !9
  %i.avq = getelementptr inbounds nuw i8, ptr %.0550.i, i64 1
  %i.avr = load i8, ptr %i.avq, align 1, !tbaa !9
  %i.avs = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.avr, ptr %i.avs, align 1, !tbaa !9
  %i.avt = getelementptr inbounds nuw i8, ptr %.0550.i, i64 2
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !9
  %i.avv = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.avu, ptr %i.avv, align 1, !tbaa !9
  %i.avw = getelementptr inbounds nuw i8, ptr %.0550.i, i64 3
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !9
  %i.avy = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.avx, ptr %i.avy, align 1, !tbaa !9
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5526.0.copyload.i
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !3
  %i.awb = zext i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw i8, ptr %.0550.i, i64 %i.awb ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.awe = load i32, ptr %i.awc, align 1
  store i32 %i.awe, ptr %i.awd, align 1
  %i.awf = sext i32 %i.avo to i64
  %i.awg = sub nsw i64 0, %i.awf
  %i.awh = getelementptr inbounds i8, ptr %i.awc, i64 %i.awg
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.gn:                                            ; preds = %bb.gl
  %i.awi = load i64, ptr %.0550.i, align 1
  store i64 %i.awi, ptr %.0.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.gn, %bb.gm
  %.1.i = phi ptr [ %i.awh, %bb.gm ], [ %.0550.i, %bb.gn ] ; 2 uses
  %.1.i265 = ptrtoaddr ptr %.1.i to i64
  %i.awj = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.awl = icmp ugt i64 %.sroa.6512.0.i, 8
  br i1 %i.awl, label %bb.go, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i

bb.go:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.awm = ptrtoint ptr %i.awk to i64
  %i.awn = ptrtoint ptr %i.awj to i64
  %i.awo = sub i64 %i.awm, %i.awn
  %i.awp = getelementptr i8, ptr %.0.i, i64 %.sroa.6512.0.i ; 2 uses
  %i.awq = icmp slt i64 %i.awo, 16
  br i1 %i.awq, label %.preheader645.i.preheader, label %bb.gp

.preheader645.i.preheader:                        ; preds = %bb.go
  %i.awr = add i64 %.sroa.4525.0.copyload.i, %i.aj
  %i.aws = add i64 %.sroa.5526.0.copyload.i, %i.aus
  %umax268 = tail call i64 @llvm.umax.i64(i64 %.sroa.5526.0.copyload.i, i64 %i.aus) ; 2 uses
  %i.awt = add i64 %i.awr, %i.aws
  %i.awu = sub i64 %i.awt, %.sroa.5526.0.copyload.i
  %i.awv = add i64 %i.amt, %umax268
  %umax269 = tail call i64 @llvm.umax.i64(i64 %i.awu, i64 %i.awv)
  %i.aww = add i64 %umax269, -9
  %i.awx = add i64 %umax268, %i.aj
  %i.awy = sub i64 %i.aww, %i.awx                 ; 2 uses
  %i.awz = lshr i64 %i.awy, 3
  %i.axa = add nuw nsw i64 %i.awz, 1              ; 2 uses
  %min.iters.check271 = icmp ult i64 %i.awy, 72
  br i1 %min.iters.check271, label %.preheader645.i.preheader322, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.preheader645.i.preheader
  %i.axb = sub i64 %i.ane, %i.aj
  %i.axc = add i64 %i.axb, %.7214.i710.i263
  %umax264 = tail call i64 @llvm.umax.i64(i64 %.sroa.5526.0.copyload.i, i64 %i.axc)
  %i.axd = add i64 %umax264, %i.aj
  %i.axe = sub i64 %i.axd, %.1.i265
  %diff.check266 = icmp ult i64 %i.axe, 32
  br i1 %diff.check266, label %.preheader645.i.preheader322, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck262
  %n.vec274 = and i64 %i.axa, 4611686018427387900 ; 3 uses
  %i.axf = shl i64 %n.vec274, 3                   ; 2 uses
  %i.axg = getelementptr i8, ptr %i.awk, i64 %i.axf
  %i.axh = getelementptr i8, ptr %i.awj, i64 %i.axf
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph272
  %index276 = phi i64 [ 0, %vector.ph272 ], [ %index.next281, %vector.body275 ] ; 2 uses
  %i.axi = shl i64 %index276, 3                   ; 2 uses
  %next.gep277 = getelementptr i8, ptr %i.awk, i64 %i.axi ; 2 uses
  %next.gep278 = getelementptr i8, ptr %i.awj, i64 %i.axi ; 2 uses
  %i.axj = getelementptr i8, ptr %next.gep278, i64 16
  %wide.load279 = load <2 x i64>, ptr %next.gep278, align 1
  %wide.load280 = load <2 x i64>, ptr %i.axj, align 1
  %i.axk = getelementptr i8, ptr %next.gep277, i64 16
  store <2 x i64> %wide.load279, ptr %next.gep277, align 1
  store <2 x i64> %wide.load280, ptr %i.axk, align 1
  %index.next281 = add nuw i64 %index276, 4       ; 2 uses
  %i.axl = icmp eq i64 %index.next281, %n.vec274
  br i1 %i.axl, label %middle.block282, label %vector.body275, !llvm.loop !128

middle.block282:                                  ; preds = %vector.body275
  %cmp.n283 = icmp eq i64 %i.axa, %n.vec274
  br i1 %cmp.n283, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, label %.preheader645.i.preheader322

.preheader645.i.preheader322:                     ; preds = %vector.memcheck262, %.preheader645.i.preheader, %middle.block282
  %.029.i.i.ph = phi ptr [ %i.awk, %vector.memcheck262 ], [ %i.awk, %.preheader645.i.preheader ], [ %i.axg, %middle.block282 ]
  %.0.i86.i.ph = phi ptr [ %i.awj, %vector.memcheck262 ], [ %i.awj, %.preheader645.i.preheader ], [ %i.axh, %middle.block282 ]
  br label %.preheader645.i

.preheader645.i:                                  ; preds = %.preheader645.i.preheader322, %.preheader645.i
  %.029.i.i = phi ptr [ %i.axn, %.preheader645.i ], [ %.029.i.i.ph, %.preheader645.i.preheader322 ] ; 2 uses
  %.0.i86.i = phi ptr [ %i.axo, %.preheader645.i ], [ %.0.i86.i.ph, %.preheader645.i.preheader322 ] ; 2 uses
  %i.axm = load i64, ptr %.0.i86.i, align 1
  store i64 %i.axm, ptr %.029.i.i, align 1
  %i.axn = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 8
  %i.axp = icmp ult ptr %i.axn, %i.awp
  br i1 %i.axp, label %.preheader645.i, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, !llvm.loop !129

bb.gp:                                            ; preds = %bb.go
  %i.axq = load <2 x i64>, ptr %i.awj, align 1, !tbaa !9
  store <2 x i64> %i.axq, ptr %i.awk, align 1, !tbaa !9
  %i.axr = icmp slt i64 %.sroa.6512.0.i, 25
  br i1 %i.axr, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.axs = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %bb.gq
  %.130.i83.i = phi ptr [ %i.axs, %bb.gq ], [ %i.axx, %bb.gr ] ; 3 uses
  %.pn.i84.i = phi ptr [ %i.awj, %bb.gq ], [ %i.axv, %bb.gr ] ; 2 uses
  %.1.i85.i = getelementptr inbounds nuw i8, ptr %.pn.i84.i, i64 16
  %i.axt = load <2 x i64>, ptr %.1.i85.i, align 1, !tbaa !9
  store <2 x i64> %i.axt, ptr %.130.i83.i, align 1, !tbaa !9
  %i.axu = getelementptr inbounds nuw i8, ptr %.130.i83.i, i64 16
  %i.axv = getelementptr inbounds nuw i8, ptr %.pn.i84.i, i64 32 ; 2 uses
  %i.axw = load <2 x i64>, ptr %i.axv, align 1, !tbaa !9
  store <2 x i64> %i.axw, ptr %i.axu, align 1, !tbaa !9
  %i.axx = getelementptr inbounds nuw i8, ptr %.130.i83.i, i64 32 ; 2 uses
  %i.axy = icmp ult ptr %i.axx, %i.awp
  br i1 %i.axy, label %bb.gr, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i: ; preds = %bb.gr, %.preheader645.i, %bb.gk, %middle.block282, %bb.gp, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i, %bb.gi, %bb.gf, %bb.gd, %bb.fz
  %.0.i42.i = phi i64 [ %i.aue, %bb.fz ], [ -20, %bb.gd ], [ %i.atw, %bb.gf ], [ %i.atw, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i ], [ %i.atw, %bb.gk ], [ %i.atw, %bb.gi ], [ %i.atw, %middle.block282 ], [ %i.atw, %bb.gp ], [ %i.atw, %.preheader645.i ], [ %i.atw, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.hm

bb.gs:                                            ; preds = %bb.ew
  %.sroa.0442.0.copyload.i = load i64, ptr %i.ana, align 8, !tbaa !53 ; 7 uses
  %.sroa.4443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %.sroa.4443.0.copyload.i = load i64, ptr %.sroa.4443.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %.sroa.5444.0.copyload.i = load i64, ptr %.sroa.5444.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.axz = getelementptr i8, ptr %.7214.i710.i, i64 %.sroa.0442.0.copyload.i ; 7 uses
  %i.aya = add i64 %.sroa.4443.0.copyload.i, %.sroa.0442.0.copyload.i ; 9 uses
  %i.ayb = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %.sroa.0442.0.copyload.i ; 2 uses
  %i.ayd = sub i64 0, %.sroa.5444.0.copyload.i
  %i.aye = getelementptr inbounds i8, ptr %i.axz, i64 %i.ayd ; 2 uses
  %i.ayf = icmp ugt ptr %i.ayc, %.4230.i708.i
  %i.ayg = getelementptr inbounds nuw i8, ptr %.7214.i710.i, i64 %i.aya
  %i.ayh = icmp ugt ptr %i.ayg, %i.amm
  %or.cond.i29.i = select i1 %i.ayf, i1 true, i1 %i.ayh, !prof !112
  br i1 %or.cond.i29.i, label %bb.gt, label %.critedge.i30.i, !prof !112

.critedge.i30.i:                                  ; preds = %bb.gs
  %i.ayi = load <2 x i64>, ptr %i.ayb, align 1, !tbaa !9
  store <2 x i64> %i.ayi, ptr %.7214.i710.i, align 1, !tbaa !9
  %i.ayj = icmp ugt i64 %.sroa.0442.0.copyload.i, 16
  br i1 %i.ayj, label %bb.gu, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i, !prof !60

bb.gt:                                            ; preds = %bb.gs
  store i64 %.sroa.0442.0.copyload.i, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.4443.0.copyload.i, ptr %.sroa.6430.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5444.0.copyload.i, ptr %.sroa.12437.0..sroa_idx.i, align 8, !tbaa !53
  %i.ayk = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7214.i710.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef %.4230.i708.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i

bb.gu:                                            ; preds = %.critedge.i30.i
  %i.ayl = getelementptr inbounds nuw i8, ptr %.7214.i710.i, i64 16
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16 ; 2 uses
  %i.ayn = add i64 %.sroa.0442.0.copyload.i, -16
  %i.ayo = load <2 x i64>, ptr %i.aym, align 1, !tbaa !9
  store <2 x i64> %i.ayo, ptr %i.ayl, align 1, !tbaa !9
  %i.ayp = icmp slt i64 %i.ayn, 17
  br i1 %i.ayp, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ayq = getelementptr inbounds nuw i8, ptr %.7214.i710.i, i64 32
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gw, %bb.gv
  %.130.i110.i = phi ptr [ %i.ayq, %bb.gv ], [ %i.ayv, %bb.gw ] ; 3 uses
  %.pn.i111.i = phi ptr [ %i.aym, %bb.gv ], [ %i.ayt, %bb.gw ] ; 2 uses
  %.1.i112.i = getelementptr inbounds nuw i8, ptr %.pn.i111.i, i64 16
  %i.ayr = load <2 x i64>, ptr %.1.i112.i, align 1, !tbaa !9
  store <2 x i64> %i.ayr, ptr %.130.i110.i, align 1, !tbaa !9
  %i.ays = getelementptr inbounds nuw i8, ptr %.130.i110.i, i64 16
  %i.ayt = getelementptr inbounds nuw i8, ptr %.pn.i111.i, i64 32 ; 2 uses
  %i.ayu = load <2 x i64>, ptr %i.ayt, align 1, !tbaa !9
  store <2 x i64> %i.ayu, ptr %i.ays, align 1, !tbaa !9
  %i.ayv = getelementptr inbounds nuw i8, ptr %.130.i110.i, i64 32 ; 2 uses
  %i.ayw = icmp ult ptr %i.ayv, %i.axz
  br i1 %i.ayw, label %bb.gw, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i: ; preds = %bb.gw, %bb.gu, %.critedge.i30.i
  store ptr %i.ayc, ptr %i.a, align 8, !tbaa !46
  %i.ayx = ptrtoint ptr %i.axz to i64             ; 2 uses
  %i.ayy = sub i64 %i.ayx, %i.aj                  ; 3 uses
  %i.ayz = icmp ugt i64 %.sroa.5444.0.copyload.i, %i.ayy
  br i1 %i.ayz, label %bb.gx, label %bb.hb

bb.gx:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i
  %i.aza = sub i64 %i.ayx, %i.amn
  %i.azb = icmp ugt i64 %.sroa.5444.0.copyload.i, %i.aza
  br i1 %i.azb, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, label %bb.gy, !prof !60

bb.gy:                                            ; preds = %bb.gx
  %i.azc = ptrtoint ptr %i.aye to i64
  %i.azd = sub i64 %i.azc, %i.aj                  ; 3 uses
  %i.aze = getelementptr inbounds i8, ptr %i.t, i64 %i.azd ; 2 uses
  %i.azf = add nsw i64 %i.azd, %.sroa.4443.0.copyload.i ; 2 uses
  %.not.i32.i = icmp sgt i64 %i.azf, 0
  br i1 %.not.i32.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.axz, ptr align 1 %i.aze, i64 %.sroa.4443.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i

bb.ha:                                            ; preds = %bb.gy
  %gepdiff.i33.i = sub nsw i64 0, %i.azd          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.axz, ptr align 1 %i.aze, i64 %gepdiff.i33.i, i1 false)
  %i.azg = getelementptr inbounds nuw i8, ptr %i.axz, i64 %gepdiff.i33.i
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i
  %.sroa.6430.0.i = phi i64 [ %i.azf, %bb.ha ], [ %.sroa.4443.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i ] ; 5 uses
  %.0555.i = phi ptr [ %i.p, %bb.ha ], [ %i.aye, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i ] ; 9 uses
  %.0554.i = phi ptr [ %i.azg, %bb.ha ], [ %i.axz, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i ] ; 12 uses
  %i.azh = icmp ugt i64 %.sroa.5444.0.copyload.i, 15
  br i1 %i.azh, label %bb.hc, label %bb.hf, !prof !97

bb.hc:                                            ; preds = %bb.hb
  %i.azi = getelementptr inbounds i8, ptr %.0554.i, i64 %.sroa.6430.0.i
  %i.azj = load <2 x i64>, ptr %.0555.i, align 1, !tbaa !9
  store <2 x i64> %i.azj, ptr %.0554.i, align 1, !tbaa !9
  %i.azk = icmp slt i64 %.sroa.6430.0.i, 17
  br i1 %i.azk, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.azl = getelementptr inbounds nuw i8, ptr %.0554.i, i64 16
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %bb.hd
  %.130.i117.i = phi ptr [ %i.azl, %bb.hd ], [ %i.azq, %bb.he ] ; 3 uses
  %.pn.i118.i = phi ptr [ %.0555.i, %bb.hd ], [ %i.azo, %bb.he ] ; 2 uses
  %.1.i119.i = getelementptr inbounds nuw i8, ptr %.pn.i118.i, i64 16
  %i.azm = load <2 x i64>, ptr %.1.i119.i, align 1, !tbaa !9
  store <2 x i64> %i.azm, ptr %.130.i117.i, align 1, !tbaa !9
  %i.azn = getelementptr inbounds nuw i8, ptr %.130.i117.i, i64 16
  %i.azo = getelementptr inbounds nuw i8, ptr %.pn.i118.i, i64 32 ; 2 uses
  %i.azp = load <2 x i64>, ptr %i.azo, align 1, !tbaa !9
  store <2 x i64> %i.azp, ptr %i.azn, align 1, !tbaa !9
  %i.azq = getelementptr inbounds nuw i8, ptr %.130.i117.i, i64 32 ; 2 uses
  %i.azr = icmp ult ptr %i.azq, %i.azi
  br i1 %i.azr, label %bb.he, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, !llvm.loop !108

bb.hf:                                            ; preds = %bb.hb
  %i.azs = icmp samesign ult i64 %.sroa.5444.0.copyload.i, 8
  br i1 %i.azs, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5444.0.copyload.i
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !3
  %i.azv = load i8, ptr %.0555.i, align 1, !tbaa !9
  store i8 %i.azv, ptr %.0554.i, align 1, !tbaa !9
  %i.azw = getelementptr inbounds nuw i8, ptr %.0555.i, i64 1
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !9
  %i.azy = getelementptr inbounds nuw i8, ptr %.0554.i, i64 1
  store i8 %i.azx, ptr %i.azy, align 1, !tbaa !9
  %i.azz = getelementptr inbounds nuw i8, ptr %.0555.i, i64 2
  %i.baa = load i8, ptr %i.azz, align 1, !tbaa !9
  %i.bab = getelementptr inbounds nuw i8, ptr %.0554.i, i64 2
  store i8 %i.baa, ptr %i.bab, align 1, !tbaa !9
  %i.bac = getelementptr inbounds nuw i8, ptr %.0555.i, i64 3
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !9
  %i.bae = getelementptr inbounds nuw i8, ptr %.0554.i, i64 3
  store i8 %i.bad, ptr %i.bae, align 1, !tbaa !9
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5444.0.copyload.i
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !3
  %i.bah = zext i32 %i.bag to i64
  %i.bai = getelementptr inbounds nuw i8, ptr %.0555.i, i64 %i.bah ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %.0554.i, i64 4
  %i.bak = load i32, ptr %i.bai, align 1
  store i32 %i.bak, ptr %i.baj, align 1
  %i.bal = sext i32 %i.azu to i64
  %i.bam = sub nsw i64 0, %i.bal
  %i.ban = getelementptr inbounds i8, ptr %i.bai, i64 %i.bam
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i

bb.hh:                                            ; preds = %bb.hf
  %i.bao = load i64, ptr %.0555.i, align 1
  store i64 %i.bao, ptr %.0554.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i: ; preds = %bb.hh, %bb.hg
  %.1556.i = phi ptr [ %i.ban, %bb.hg ], [ %.0555.i, %bb.hh ] ; 2 uses
  %.1556.i288 = ptrtoaddr ptr %.1556.i to i64
  %i.bap = getelementptr inbounds nuw i8, ptr %.1556.i, i64 8 ; 7 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %.0554.i, i64 8 ; 6 uses
  %i.bar = icmp ugt i64 %.sroa.6430.0.i, 8
  br i1 %i.bar, label %bb.hi, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i

bb.hi:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i
  %i.bas = ptrtoint ptr %i.baq to i64
  %i.bat = ptrtoint ptr %i.bap to i64
  %i.bau = sub i64 %i.bas, %i.bat
  %i.bav = getelementptr i8, ptr %.0554.i, i64 %.sroa.6430.0.i ; 2 uses
  %i.baw = icmp slt i64 %i.bau, 16
  br i1 %i.baw, label %.preheader648.i.preheader, label %bb.hj

.preheader648.i.preheader:                        ; preds = %bb.hi
  %i.bax = add i64 %.sroa.4443.0.copyload.i, %i.aj
  %i.bay = add i64 %.sroa.5444.0.copyload.i, %i.ayy
  %umax291 = tail call i64 @llvm.umax.i64(i64 %.sroa.5444.0.copyload.i, i64 %i.ayy) ; 2 uses
  %i.baz = add i64 %i.bax, %i.bay
  %i.bba = sub i64 %i.baz, %.sroa.5444.0.copyload.i
  %i.bbb = add i64 %i.amu, %umax291
  %umax292 = tail call i64 @llvm.umax.i64(i64 %i.bba, i64 %i.bbb)
  %i.bbc = add i64 %umax292, -9
  %i.bbd = add i64 %umax291, %i.aj
  %i.bbe = sub i64 %i.bbc, %i.bbd                 ; 2 uses
  %i.bbf = lshr i64 %i.bbe, 3
  %i.bbg = add nuw nsw i64 %i.bbf, 1              ; 2 uses
  %min.iters.check294 = icmp ult i64 %i.bbe, 72
  br i1 %min.iters.check294, label %.preheader648.i.preheader325, label %vector.memcheck286

vector.memcheck286:                               ; preds = %.preheader648.i.preheader
  %i.bbh = sub i64 %.sroa.0442.0.copyload.i, %i.aj
  %i.bbi = add i64 %i.bbh, %.7214.i710.i263
  %umax287 = tail call i64 @llvm.umax.i64(i64 %.sroa.5444.0.copyload.i, i64 %i.bbi)
  %i.bbj = add i64 %umax287, %i.aj
  %i.bbk = sub i64 %i.bbj, %.1556.i288
  %diff.check289 = icmp ult i64 %i.bbk, 32
  br i1 %diff.check289, label %.preheader648.i.preheader325, label %vector.ph295

vector.ph295:                                     ; preds = %vector.memcheck286
  %n.vec297 = and i64 %i.bbg, 4611686018427387900 ; 3 uses
  %i.bbl = shl i64 %n.vec297, 3                   ; 2 uses
  %i.bbm = getelementptr i8, ptr %i.baq, i64 %i.bbl
  %i.bbn = getelementptr i8, ptr %i.bap, i64 %i.bbl
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph295
  %index299 = phi i64 [ 0, %vector.ph295 ], [ %index.next304, %vector.body298 ] ; 2 uses
  %i.bbo = shl i64 %index299, 3                   ; 2 uses
  %next.gep300 = getelementptr i8, ptr %i.baq, i64 %i.bbo ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.bap, i64 %i.bbo ; 2 uses
  %i.bbp = getelementptr i8, ptr %next.gep301, i64 16
  %wide.load302 = load <2 x i64>, ptr %next.gep301, align 1
  %wide.load303 = load <2 x i64>, ptr %i.bbp, align 1
  %i.bbq = getelementptr i8, ptr %next.gep300, i64 16
  store <2 x i64> %wide.load302, ptr %next.gep300, align 1
  store <2 x i64> %wide.load303, ptr %i.bbq, align 1
  %index.next304 = add nuw i64 %index299, 4       ; 2 uses
  %i.bbr = icmp eq i64 %index.next304, %n.vec297
  br i1 %i.bbr, label %middle.block305, label %vector.body298, !llvm.loop !130

middle.block305:                                  ; preds = %vector.body298
  %cmp.n306 = icmp eq i64 %i.bbg, %n.vec297
  br i1 %cmp.n306, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, label %.preheader648.i.preheader325

.preheader648.i.preheader325:                     ; preds = %vector.memcheck286, %.preheader648.i.preheader, %middle.block305
  %.029.i127.i.ph = phi ptr [ %i.baq, %vector.memcheck286 ], [ %i.baq, %.preheader648.i.preheader ], [ %i.bbm, %middle.block305 ]
  %.0.i128.i.ph = phi ptr [ %i.bap, %vector.memcheck286 ], [ %i.bap, %.preheader648.i.preheader ], [ %i.bbn, %middle.block305 ]
  br label %.preheader648.i

.preheader648.i:                                  ; preds = %.preheader648.i.preheader325, %.preheader648.i
  %.029.i127.i = phi ptr [ %i.bbt, %.preheader648.i ], [ %.029.i127.i.ph, %.preheader648.i.preheader325 ] ; 2 uses
  %.0.i128.i = phi ptr [ %i.bbu, %.preheader648.i ], [ %.0.i128.i.ph, %.preheader648.i.preheader325 ] ; 2 uses
  %i.bbs = load i64, ptr %.0.i128.i, align 1
  store i64 %i.bbs, ptr %.029.i127.i, align 1
  %i.bbt = getelementptr inbounds nuw i8, ptr %.029.i127.i, i64 8 ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %.0.i128.i, i64 8
  %i.bbv = icmp ult ptr %i.bbt, %i.bav
  br i1 %i.bbv, label %.preheader648.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, !llvm.loop !131

bb.hj:                                            ; preds = %bb.hi
  %i.bbw = load <2 x i64>, ptr %i.bap, align 1, !tbaa !9
  store <2 x i64> %i.bbw, ptr %i.baq, align 1, !tbaa !9
  %i.bbx = icmp slt i64 %.sroa.6430.0.i, 25
  br i1 %i.bbx, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.bby = getelementptr inbounds nuw i8, ptr %.0554.i, i64 24
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hl, %bb.hk
  %.130.i124.i = phi ptr [ %i.bby, %bb.hk ], [ %i.bcd, %bb.hl ] ; 3 uses
  %.pn.i125.i = phi ptr [ %i.bap, %bb.hk ], [ %i.bcb, %bb.hl ] ; 2 uses
  %.1.i126.i = getelementptr inbounds nuw i8, ptr %.pn.i125.i, i64 16
  %i.bbz = load <2 x i64>, ptr %.1.i126.i, align 1, !tbaa !9
  store <2 x i64> %i.bbz, ptr %.130.i124.i, align 1, !tbaa !9
  %i.bca = getelementptr inbounds nuw i8, ptr %.130.i124.i, i64 16
  %i.bcb = getelementptr inbounds nuw i8, ptr %.pn.i125.i, i64 32 ; 2 uses
  %i.bcc = load <2 x i64>, ptr %i.bcb, align 1, !tbaa !9
  store <2 x i64> %i.bcc, ptr %i.bca, align 1, !tbaa !9
  %i.bcd = getelementptr inbounds nuw i8, ptr %.130.i124.i, i64 32 ; 2 uses
  %i.bce = icmp ult ptr %i.bcd, %i.bav
  br i1 %i.bce, label %bb.hl, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i: ; preds = %bb.hl, %.preheader648.i, %bb.he, %middle.block305, %bb.hj, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i, %bb.hc, %bb.gz, %bb.gx, %bb.gt
  %.0.i31.i = phi i64 [ %i.ayk, %bb.gt ], [ -20, %bb.gx ], [ %i.aya, %bb.gz ], [ %i.aya, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i ], [ %i.aya, %bb.he ], [ %i.aya, %bb.hc ], [ %i.aya, %middle.block305 ], [ %i.aya, %bb.hj ], [ %i.aya, %.preheader648.i ], [ %i.aya, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.hm

bb.hm:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i
  %i.bcf = phi i64 [ %.0.i42.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i ], [ %.0.i31.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i ] ; 3 uses
  %i.bcg = icmp ult i64 %i.bcf, -119
  %i.bch = getelementptr inbounds nuw i8, ptr %.7214.i710.i, i64 %i.bcf
  br i1 %i.bcg, label %bb.hn, label %.thread620.i

bb.hn:                                            ; preds = %bb.hm, %.loopexit.i
  %.6232.i.i = phi ptr [ %i.amq, %.loopexit.i ], [ %.4230.i708.i, %bb.hm ] ; 2 uses
  %.12219.i.i = phi ptr [ %i.att, %.loopexit.i ], [ %i.bch, %bb.hm ] ; 2 uses
  %i.bci = add i32 %.2240.i707.i, 1               ; 2 uses
  %exitcond741.not.i = icmp eq i32 %i.bci, %5
  br i1 %exitcond741.not.i, label %.preheader.i, label %bb.ew, !llvm.loop !132

.thread620.i:                                     ; preds = %bb.et, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, %bb.cf, %bb.hm, %.loopexit.i, %bb.ez, %.thread607.i, %._crit_edge.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.q, %bb.i, %bb.g
  %.12.i.ph.i = phi i64 [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i ], [ -20, %bb.g ], [ -20, %bb.q ], [ -20, %.thread607.i ], [ -20, %._crit_edge.i ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ -70, %bb.ez ], [ -20, %bb.i ], [ %.0.i25.i, %.loopexit.i ], [ %i.bcf, %bb.hm ], [ -70, %bb.cf ], [ %i.alq, %bb.et ], [ %.0.i15.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.ho:                                            ; preds = %.preheader.i, %bb.f
  %.pre752.i = phi ptr [ %.pre752.pre.i, %.preheader.i ], [ %i.l, %bb.f ] ; 3 uses
  %i.bcj = phi i32 [ %.pre751.i, %.preheader.i ], [ %i.e, %bb.f ]
  %.9235.i.i = phi ptr [ %.4230.i.lcssa.i, %.preheader.i ], [ %i.n, %bb.f ] ; 2 uses
  %.15222.i.i = phi ptr [ %.7214.i.lcssa.i, %.preheader.i ], [ %1, %bb.f ] ; 5 uses
  %i.bck = icmp eq i32 %i.bcj, 2
  br i1 %i.bck, label %bb.hp, label %._crit_edge754.i

._crit_edge754.i:                                 ; preds = %bb.ho
  %.pre755.i = ptrtoint ptr %i.j to i64
  br label %bb.ht

bb.hp:                                            ; preds = %bb.ho
  %i.bcl = ptrtoint ptr %.9235.i.i to i64
  %i.bcm = ptrtoint ptr %.pre752.i to i64
  %i.bcn = sub i64 %i.bcl, %i.bcm                 ; 3 uses
  %i.bco = ptrtoint ptr %i.j to i64               ; 2 uses
  %i.bcp = ptrtoint ptr %.15222.i.i to i64
  %i.bcq = sub i64 %i.bco, %i.bcp
  %.not276.i.i = icmp ugt i64 %i.bcn, %i.bcq
  br i1 %.not276.i.i, label %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %.not275.i.i = icmp eq ptr %.15222.i.i, null
  br i1 %.not275.i.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.15222.i.i, ptr align 1 %.pre752.i, i64 %i.bcn, i1 false)
  %i.bcr = getelementptr inbounds nuw i8, ptr %.15222.i.i, i64 %i.bcn
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.16223.i.i = phi ptr [ %i.bcr, %bb.hr ], [ null, %bb.hq ]
  %i.bcs = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.bct = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %._crit_edge754.i
  %.pre-phi.i = phi i64 [ %.pre755.i, %._crit_edge754.i ], [ %i.bco, %bb.hs ]
  %i.bcu = phi ptr [ %.pre752.i, %._crit_edge754.i ], [ %i.bcs, %bb.hs ] ; 2 uses
  %.11237.i.i = phi ptr [ %.9235.i.i, %._crit_edge754.i ], [ %i.bct, %bb.hs ]
  %.18.i.i = phi ptr [ %.15222.i.i, %._crit_edge754.i ], [ %.16223.i.i, %bb.hs ] ; 4 uses
  %i.bcv = ptrtoint ptr %.11237.i.i to i64
  %i.bcw = ptrtoint ptr %i.bcu to i64
  %i.bcx = sub i64 %i.bcv, %i.bcw                 ; 3 uses
  %i.bcy = ptrtoint ptr %.18.i.i to i64
  %i.bcz = sub i64 %.pre-phi.i, %i.bcy
  %.not278.i.i = icmp ugt i64 %i.bcx, %i.bcz
  br i1 %.not278.i.i, label %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.not277.i.i = icmp eq ptr %.18.i.i, null
  br i1 %.not277.i.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.18.i.i, ptr align 1 %i.bcu, i64 %i.bcx, i1 false)
  %i.bda = getelementptr inbounds nuw i8, ptr %.18.i.i, i64 %i.bcx
  %i.bdb = ptrtoint ptr %i.bda to i64
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.20.i.ph.i = phi i64 [ 0, %bb.hu ], [ %i.bdb, %bb.hv ]
  %i.bdc = ptrtoint ptr %1 to i64
  %i.bdd = sub i64 %.20.i.ph.i, %i.bdc
  br label %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %.thread620.i, %bb.hp, %bb.ht, %bb.hw
  %.17.i.i = phi i64 [ %i.bdd, %bb.hw ], [ %.12.i.ph.i, %.thread620.i ], [ -70, %bb.ht ], [ -70, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.hx

bb.hx:                                            ; preds = %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.17.i.i, %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::seq_t", align 8 ; 7 uses
  %7 = alloca %"struct.duckdb_zstd::seq_t", align 8 ; 7 uses
  %8 = alloca %"struct.duckdb_zstd::seq_t", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 14 uses
  %9 = alloca %"struct.duckdb_zstd::seqState_t", align 8 ; 35 uses
  %i.b = getelementptr i8, ptr %0, i64 30180
  %.val = load i32, ptr %i.b, align 4, !tbaa !39
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i64 @_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  %i.nm = phi ptr [ %i.nj, %bb.bb ], [ %i.lb, %bb.ba ], [ %i.mw, %bb.az ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ax ] ; 2 uses
  %i.nn = phi i32 [ %i.nl, %bb.bb ], [ %i.mi, %bb.ba ], [ %i.mx, %bb.az ], [ %i.mi, %bb.ax ] ; 2 uses
  %i.no = phi i64 [ %.val.i35.i, %bb.bb ], [ %i.ld, %bb.ba ], [ %.val.i.i34.i, %bb.az ], [ %i.ld, %bb.ax ] ; 2 uses
  %i.np = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sroa.057.0.i ; 2 uses
  %i.nr = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.ns = icmp ugt ptr %i.nq, %i.nr
  br i1 %i.ns, label %bb.bx, label %bb.bc

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i: ; preds = %bb.av
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.sroa.057.0.i ; 2 uses
  %i.nv = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.nw = icmp ugt ptr %i.nu, %i.nv
  br i1 %i.nw, label %.thread384.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i
  %i.nx = phi ptr [ %i.lb, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.nm, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ] ; 2 uses
  %i.ny = phi i32 [ %i.ln, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.nn, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ] ; 2 uses
  %i.nz = phi i64 [ %i.ld, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.no, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ]
  %i.oa = phi ptr [ %i.nu, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.nq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ] ; 3 uses
  %i.ob = phi ptr [ %i.nt, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.np, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ] ; 2 uses
  %i.oc = phi i64 [ %i.hg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.lx, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ]
  %i.od = phi i64 [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.mr, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ]
  %i.oe = phi i64 [ %i.he, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.mh, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ]
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.og = getelementptr i8, ptr %.0142.i285.i, i64 %.sroa.057.0.i ; 7 uses
  %i.oh = add i64 %.sroa.057.0.i, %.sroa.659.0.i  ; 9 uses
  %i.oi = sub i64 0, %.sink.i
  %i.oj = getelementptr inbounds i8, ptr %i.og, i64 %i.oi ; 2 uses
  %i.ok = icmp ugt ptr %i.oa, %i.h
  %i.ol = getelementptr inbounds nuw i8, ptr %.0142.i285.i, i64 %i.oh
  %i.om = icmp ugt ptr %i.ol, %i.of
  %or.cond.i207.i.i = select i1 %i.ok, i1 true, i1 %i.om, !prof !112
  br i1 %or.cond.i207.i.i, label %bb.bd, label %.critedge.i208.i.i, !prof !112

.critedge.i208.i.i:                               ; preds = %bb.bc
  %i.on = load <2 x i64>, ptr %i.ob, align 1, !tbaa !9
  store <2 x i64> %i.on, ptr %.0142.i285.i, align 1, !tbaa !9
  %i.oo = icmp ugt i64 %.sroa.057.0.i, 16
  br i1 %i.oo, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !prof !60

bb.bd:                                            ; preds = %bb.bc
  store i64 %.sroa.057.0.i, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.659.0.i, ptr %.sroa.6139.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink.i, ptr %.sroa.13144.0..sroa_idx.i, align 8, !tbaa !53
  %i.op = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0142.i285.i, ptr noundef %i.d, ptr noundef nonnull %i.of, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.be:                                            ; preds = %.critedge.i208.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.0142.i285.i, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.os = add i64 %.sroa.057.0.i, -16
  %i.ot = load <2 x i64>, ptr %i.or, align 1, !tbaa !9
  store <2 x i64> %i.ot, ptr %i.oq, align 1, !tbaa !9
  %i.ou = icmp slt i64 %i.os, 17
  br i1 %i.ou, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ov = getelementptr inbounds nuw i8, ptr %.0142.i285.i, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i.i = phi ptr [ %i.ov, %bb.bf ], [ %i.pa, %bb.bg ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.or, %bb.bf ], [ %i.oy, %bb.bg ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.ow = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ow, ptr %.130.i.i.i, align 1, !tbaa !9
  %i.ox = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %i.oz = load <2 x i64>, ptr %i.oy, align 1, !tbaa !9
  store <2 x i64> %i.oz, ptr %i.ox, align 1, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.pb = icmp ult ptr %i.pa, %i.og
  br i1 %i.pb, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i: ; preds = %bb.bg, %bb.be, %.critedge.i208.i.i
  store ptr %i.oa, ptr %i.a, align 8, !tbaa !46
  %i.pc = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.pd = sub i64 %i.pc, %i.gu                    ; 3 uses
  %i.pe = icmp ugt i64 %.sink.i, %i.pd
  br i1 %i.pe, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %i.pf = sub i64 %i.pc, %i.gv
  %i.pg = icmp ugt i64 %.sink.i, %i.pf
  br i1 %i.pg, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i, label %bb.bi, !prof !60

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread236.i

bb.bi:                                            ; preds = %bb.bh
  %i.ph = ptrtoint ptr %i.oj to i64
  %i.pi = sub i64 %i.ph, %i.gu                    ; 3 uses
  %i.pj = getelementptr inbounds i8, ptr %i.n, i64 %i.pi ; 2 uses
  %i.pk = add nsw i64 %i.pi, %.sroa.659.0.i       ; 2 uses
  %.not.i210.i.i = icmp sgt i64 %i.pk, 0
  br i1 %.not.i210.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pj, i64 %.sroa.659.0.i, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i211.i.i = sub nsw i64 0, %i.pi        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pj, i64 %gepdiff.i211.i.i, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.og, i64 %gepdiff.i211.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %.sroa.6139.0.i = phi i64 [ %i.pk, %bb.bk ], [ %.sroa.659.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 5 uses
  %.0170.i = phi ptr [ %i.j, %bb.bk ], [ %i.oj, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.pl, %bb.bk ], [ %i.og, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 12 uses
  %i.pm = icmp ugt i64 %.sink.i, 15
  br i1 %i.pm, label %bb.bm, label %bb.bp, !prof !97

bb.bm:                                            ; preds = %bb.bl
  %i.pn = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.6139.0.i
  %i.po = load <2 x i64>, ptr %.0170.i, align 1, !tbaa !9
  store <2 x i64> %i.po, ptr %.0.i, align 1, !tbaa !9
  %i.pp = icmp slt i64 %.sroa.6139.0.i, 17
  br i1 %i.pp, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i243.i.i = phi ptr [ %i.pq, %bb.bn ], [ %i.pv, %bb.bo ] ; 3 uses
  %.pn.i244.i.i = phi ptr [ %.0170.i, %bb.bn ], [ %i.pt, %bb.bo ] ; 2 uses
  %.1.i245.i.i = getelementptr inbounds nuw i8, ptr %.pn.i244.i.i, i64 16
  %i.pr = load <2 x i64>, ptr %.1.i245.i.i, align 1, !tbaa !9
  store <2 x i64> %i.pr, ptr %.130.i243.i.i, align 1, !tbaa !9
  %i.ps = getelementptr inbounds nuw i8, ptr %.130.i243.i.i, i64 16
  %i.pt = getelementptr inbounds nuw i8, ptr %.pn.i244.i.i, i64 32 ; 2 uses
  %i.pu = load <2 x i64>, ptr %i.pt, align 1, !tbaa !9
  store <2 x i64> %i.pu, ptr %i.ps, align 1, !tbaa !9
  %i.pv = getelementptr inbounds nuw i8, ptr %.130.i243.i.i, i64 32 ; 2 uses
  %i.pw = icmp ult ptr %i.pv, %i.pn
  br i1 %i.pw, label %bb.bo, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !108

bb.bp:                                            ; preds = %bb.bl
  %i.px = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.px, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.py = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = load i8, ptr %.0170.i, align 1, !tbaa !9
  store i8 %i.qa, ptr %.0.i, align 1, !tbaa !9
  %i.qb = getelementptr inbounds nuw i8, ptr %.0170.i, i64 1
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !9
  %i.qe = getelementptr inbounds nuw i8, ptr %.0170.i, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !9
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !9
  %i.qh = getelementptr inbounds nuw i8, ptr %.0170.i, i64 3
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !9
  %i.qj = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !9
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !3
  %i.qm = zext i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %.0170.i, i64 %i.qm ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.qp = load i32, ptr %i.qn, align 1
  store i32 %i.qp, ptr %i.qo, align 1
  %i.qq = sext i32 %i.pz to i64
  %i.qr = sub nsw i64 0, %i.qq
  %i.qs = getelementptr inbounds i8, ptr %i.qn, i64 %i.qr
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %i.qt = load i64, ptr %.0170.i, align 1
  store i64 %i.qt, ptr %.0.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i: ; preds = %bb.br, %bb.bq
  %.1.i = phi ptr [ %i.qs, %bb.bq ], [ %.0170.i, %bb.br ] ; 2 uses
  %.1.i107 = ptrtoaddr ptr %.1.i to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qw = icmp ugt i64 %.sroa.6139.0.i, 8
  br i1 %i.qw, label %bb.bs, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.bs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = ptrtoint ptr %i.qu to i64
  %i.qz = sub i64 %i.qx, %i.qy
  %i.ra = getelementptr i8, ptr %.0.i, i64 %.sroa.6139.0.i ; 2 uses
  %i.rb = icmp slt i64 %i.qz, 16
  br i1 %i.rb, label %.preheader265.i.preheader, label %bb.bt

.preheader265.i.preheader:                        ; preds = %bb.bs
  %i.rc = add i64 %.sroa.659.0.i, %i.gu
  %i.rd = add i64 %.sink.i, %i.pd
  %umax108 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.pd) ; 2 uses
  %i.re = add i64 %i.rc, %i.rd
  %i.rf = sub i64 %i.re, %.sink.i
  %i.rg = add i64 %i.gx, %umax108
  %umax109 = tail call i64 @llvm.umax.i64(i64 %i.rf, i64 %i.rg)
  %i.rh = add i64 %umax109, -9
  %i.ri = add i64 %umax108, %i.gu
  %i.rj = sub i64 %i.rh, %i.ri                    ; 2 uses
  %i.rk = lshr i64 %i.rj, 3
  %i.rl = add nuw nsw i64 %i.rk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rj, 72
  br i1 %min.iters.check, label %.preheader265.i.preheader255, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader265.i.preheader
  %i.rm = sub i64 %.sroa.057.0.i, %i.gu
  %i.rn = add i64 %i.rm, %.0142.i285.i106
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.rn)
  %i.ro = add i64 %umax, %i.gu
  %i.rp = sub i64 %i.ro, %.1.i107
  %diff.check = icmp ult i64 %i.rp, 32
  br i1 %diff.check, label %.preheader265.i.preheader255, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rl, 4611686018427387900     ; 3 uses
  %i.rq = shl i64 %n.vec, 3                       ; 2 uses
  %i.rr = getelementptr i8, ptr %i.qv, i64 %i.rq
  %i.rs = getelementptr i8, ptr %i.qu, i64 %i.rq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qv, i64 %i.rt ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.qu, i64 %i.rt ; 2 uses
  %i.ru = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 1
  %wide.load111 = load <2 x i64>, ptr %i.ru, align 1
  %i.rv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load111, ptr %i.rv, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rw = icmp eq i64 %index.next, %n.vec
  br i1 %i.rw, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rl, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %.preheader265.i.preheader255

.preheader265.i.preheader255:                     ; preds = %vector.memcheck, %.preheader265.i.preheader, %middle.block
  %.029.i.i.i.ph = phi ptr [ %i.qv, %vector.memcheck ], [ %i.qv, %.preheader265.i.preheader ], [ %i.rr, %middle.block ]
  %.0.i252.i.i.ph = phi ptr [ %i.qu, %vector.memcheck ], [ %i.qu, %.preheader265.i.preheader ], [ %i.rs, %middle.block ]
  br label %.preheader265.i

.preheader265.i:                                  ; preds = %.preheader265.i.preheader255, %.preheader265.i
  %.029.i.i.i = phi ptr [ %i.ry, %.preheader265.i ], [ %.029.i.i.i.ph, %.preheader265.i.preheader255 ] ; 2 uses
  %.0.i252.i.i = phi ptr [ %i.rz, %.preheader265.i ], [ %.0.i252.i.i.ph, %.preheader265.i.preheader255 ] ; 2 uses
  %i.rx = load i64, ptr %.0.i252.i.i, align 1
  store i64 %i.rx, ptr %.029.i.i.i, align 1
  %i.ry = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.0.i252.i.i, i64 8
  %i.sa = icmp ult ptr %i.ry, %i.ra
  br i1 %i.sa, label %.preheader265.i, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !138

bb.bt:                                            ; preds = %bb.bs
  %i.sb = load <2 x i64>, ptr %i.qu, align 1, !tbaa !9
  store <2 x i64> %i.sb, ptr %i.qv, align 1, !tbaa !9
  %i.sc = icmp slt i64 %.sroa.6139.0.i, 25
  br i1 %i.sc, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sd = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i249.i.i = phi ptr [ %i.sd, %bb.bu ], [ %i.si, %bb.bv ] ; 3 uses
  %.pn.i250.i.i = phi ptr [ %i.qu, %bb.bu ], [ %i.sg, %bb.bv ] ; 2 uses
  %.1.i251.i.i = getelementptr inbounds nuw i8, ptr %.pn.i250.i.i, i64 16
  %i.se = load <2 x i64>, ptr %.1.i251.i.i, align 1, !tbaa !9
  store <2 x i64> %i.se, ptr %.130.i249.i.i, align 1, !tbaa !9
  %i.sf = getelementptr inbounds nuw i8, ptr %.130.i249.i.i, i64 16
  %i.sg = getelementptr inbounds nuw i8, ptr %.pn.i250.i.i, i64 32 ; 2 uses
  %i.sh = load <2 x i64>, ptr %i.sg, align 1, !tbaa !9
  store <2 x i64> %i.sh, ptr %i.sf, align 1, !tbaa !9
  %i.si = getelementptr inbounds nuw i8, ptr %.130.i249.i.i, i64 32 ; 2 uses
  %i.sj = icmp ult ptr %i.si, %i.ra
  br i1 %i.sj, label %bb.bv, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i: ; preds = %bb.bv, %.preheader265.i, %bb.bo, %middle.block, %bb.bt, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i, %bb.bm, %bb.bj, %bb.bd
  %.0.i209.i.i = phi i64 [ %i.op, %bb.bd ], [ %i.oh, %middle.block ], [ %i.oh, %bb.bj ], [ %i.oh, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i ], [ %i.oh, %bb.bm ], [ %i.oh, %bb.bt ], [ %i.oh, %bb.bo ], [ %i.oh, %.preheader265.i ], [ %i.oh, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sk = icmp ult i64 %.0.i209.i.i, -119
  br i1 %i.sk, label %bb.bw, label %.thread236.i

bb.bw:                                            ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %.0142.i285.i, i64 %.0.i209.i.i ; 2 uses
  %i.sm = add nsw i32 %.0135.i287.i, -1           ; 2 uses
  %.not179.i.i = icmp eq i32 %i.sm, 0
  br i1 %.not179.i.i, label %.thread232.i, label %bb.ae, !llvm.loop !139

bb.bx:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i
  %i.sn = icmp sgt i32 %.0135.i287.i, 0
  br i1 %i.sn, label %.thread384.i, label %.thread236.i

.thread384.i:                                     ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i, %bb.bx
  %i.so = phi ptr [ %i.nm, %bb.bx ], [ %i.lb, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.sp = phi i32 [ %i.nn, %bb.bx ], [ %i.ln, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.sq = phi i64 [ %i.no, %bb.bx ], [ %i.ld, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.sr = phi i64 [ %i.mh, %bb.bx ], [ %i.he, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.ss = phi i64 [ %i.mr, %bb.bx ], [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.st = phi i64 [ %i.lx, %bb.bx ], [ %i.hg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.su = phi ptr [ %i.np, %bb.bx ], [ %i.nt, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 11 uses
  %i.sv = phi ptr [ %i.nr, %bb.bx ], [ %i.nv, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.sw = ptrtoint ptr %i.sv to i64               ; 2 uses
  %i.sx = ptrtoint ptr %i.su to i64               ; 4 uses
  %i.sy = sub i64 %i.sw, %i.sx                    ; 9 uses
  %.not181.i.i = icmp eq ptr %i.sv, %i.su
  br i1 %.not181.i.i, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %.thread384.i
  %i.sz = ptrtoint ptr %i.d to i64
  %i.ta = ptrtoint ptr %.0142.i285.i to i64       ; 8 uses
  %i.tb = sub i64 %i.sz, %i.ta
  %i.tc = icmp ugt i64 %i.sy, %i.tb
  br i1 %i.tc, label %.thread236.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.td = sub i64 %i.ta, %i.sx                    ; 2 uses
  %i.te = getelementptr inbounds i8, ptr %.0142.i285.i, i64 %i.sy ; 3 uses
  %i.tf = icmp slt i64 %i.sy, 8
  %i.tg = icmp sgt i64 %i.td, -8
  %or.cond.i.i = or i1 %i.tg, %i.tf
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.ca

.preheader.i.i:                                   ; preds = %bb.bz
  %i.th = icmp sgt i64 %i.sy, 0
  br i1 %i.th, label %iter.check166, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i

iter.check166:                                    ; preds = %.preheader.i.i
  %i.ti = add i64 %i.ta, %i.sw
  %i.tj = sub i64 %i.ti, %i.sx
  %i.tk = add i64 %i.ta, 1
  %umax146 = tail call i64 @llvm.umax.i64(i64 %i.tj, i64 %i.tk)
  %i.tl = sub i64 %umax146, %i.ta                 ; 7 uses
  %min.iters.check148 = icmp ult i64 %i.tl, 4
  %i.tm = sub i64 %i.ta, %i.sx
  %diff.check145 = icmp ult i64 %i.tm, 32
  %or.cond = or i1 %min.iters.check148, %diff.check145
  br i1 %or.cond, label %.lr.ph40.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check166
  %min.iters.check150 = icmp ult i64 %i.tl, 32
  br i1 %min.iters.check150, label %vec.epilog.ph170, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %n.mod.vf152 = and i64 %i.tl, 28
  %n.vec153 = and i64 %i.tl, -32                  ; 5 uses
  %i.tn = getelementptr i8, ptr %.0142.i285.i, i64 %n.vec153
  %i.to = getelementptr i8, ptr %i.su, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %.0142.i285.i, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.su, i64 %index155 ; 2 uses
  %i.tp = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep157, align 1, !tbaa !9
  %wide.load159 = load <16 x i8>, ptr %i.tp, align 1, !tbaa !9
  %i.tq = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep156, align 1, !tbaa !9
  store <16 x i8> %wide.load159, ptr %i.tq, align 1, !tbaa !9
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.tr = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.tr, label %middle.block161, label %vector.body154, !llvm.loop !140

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.tl, %n.vec153
  br i1 %cmp.n162, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  %min.epilog.iters.check169 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph40.i.i.preheader, label %vec.epilog.ph170, !prof !105

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec172 = and i64 %i.tl, -4                   ; 4 uses
  %i.ts = getelementptr i8, ptr %.0142.i285.i, i64 %n.vec172
  %i.tt = getelementptr i8, ptr %i.su, i64 %n.vec172
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph170
  %index174 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph170 ], [ %index.next178, %vec.epilog.vector.body173 ] ; 3 uses
  %next.gep175 = getelementptr i8, ptr %.0142.i285.i, i64 %index174
  %next.gep176 = getelementptr i8, ptr %i.su, i64 %index174
  %wide.load177 = load <4 x i8>, ptr %next.gep176, align 1, !tbaa !9
  store <4 x i8> %wide.load177, ptr %next.gep175, align 1, !tbaa !9
  %index.next178 = add nuw i64 %index174, 4       ; 2 uses
  %i.tu = icmp eq i64 %index.next178, %n.vec172
  br i1 %i.tu, label %vec.epilog.middle.block179, label %vec.epilog.vector.body173, !llvm.loop !141

vec.epilog.middle.block179:                       ; preds = %vec.epilog.vector.body173
  %cmp.n180 = icmp eq i64 %i.tl, %n.vec172
  br i1 %cmp.n180, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph40.i.i.preheader
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.237.i.i = phi ptr [ %i.vb, %.lr.ph.i.i ], [ %.237.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23136.i.i = phi ptr [ %i.uz, %.lr.ph.i.i ], [ %.23136.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.23136.i.i, i64 1
  %i.va = load i8, ptr %.23136.i.i, align 1, !tbaa !9
  %i.vb = getelementptr inbounds nuw i8, ptr %.237.i.i, i64 1 ; 2 uses
  store i8 %i.va, ptr %.237.i.i, align 1, !tbaa !9
  %exitcond.not.i.i = icmp eq ptr %i.vb, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph.i.i, !llvm.loop !145

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph40.i.i, %middle.block130, %vec.epilog.middle.block, %middle.block161, %vec.epilog.middle.block179, %.preheader.i.i
  %i.vc = sub i64 %.sroa.057.0.i, %i.sy
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, %.thread384.i
  %.sroa.0.2.i.i = phi i64 [ %i.vc, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.sroa.057.0.i, %.thread384.i ] ; 8 uses
  %.2144.i.i = phi ptr [ %i.te, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.0142.i285.i, %.thread384.i ] ; 8 uses
  %.2144.i.i184 = ptrtoaddr ptr %.2144.i.i to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.vd, ptr %i.a, align 8, !tbaa !46
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.vf, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.vg = getelementptr i8, ptr %.2144.i.i, i64 %.sroa.0.2.i.i ; 7 uses
  %i.vh = add i64 %.sroa.0.2.i.i, %.sroa.659.0.i  ; 9 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vd, i64 %.sroa.0.2.i.i
  %i.vj = sub i64 0, %.sink.i
  %i.vk = getelementptr inbounds i8, ptr %i.vg, i64 %i.vj ; 2 uses
  %i.vl = icmp ugt i64 %.sroa.0.2.i.i, 65536
  %i.vm = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.2144.i.i, i64 %i.vh
  %i.vo = icmp ugt ptr %i.vn, %i.vm
  %or.cond.i201.i.i = select i1 %i.vl, i1 true, i1 %i.vo, !prof !112
  br i1 %or.cond.i201.i.i, label %bb.cf, label %.critedge.i202.i.i, !prof !112

.critedge.i202.i.i:                               ; preds = %bb.ce
  %i.vp = load <2 x i64>, ptr %i.vd, align 1, !tbaa !9
  store <2 x i64> %i.vp, ptr %.2144.i.i, align 1, !tbaa !9
  %i.vq = icmp samesign ugt i64 %.sroa.0.2.i.i, 16
  br i1 %i.vq, label %bb.cg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, !prof !60

bb.cf:                                            ; preds = %bb.ce
  store i64 %.sroa.0.2.i.i, ptr %7, align 8, !tbaa !53
  %.sroa.6106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.659.0.i, ptr %.sroa.6106.0..sroa_idx.i, align 8, !tbaa !53
  %.sroa.13111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink.i, ptr %.sroa.13111.0..sroa_idx.i, align 8, !tbaa !53
  %i.vr = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.2144.i.i, ptr noundef %i.d, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ve, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %.loopexit.i

bb.cg:                                            ; preds = %.critedge.i202.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %.2144.i.i, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %i.vu = load <2 x i64>, ptr %i.vt, align 1, !tbaa !9
  store <2 x i64> %i.vu, ptr %i.vs, align 1, !tbaa !9
  %i.vv = icmp samesign ult i64 %.sroa.0.2.i.i, 33
  br i1 %i.vv, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vw = getelementptr inbounds nuw i8, ptr %.2144.i.i, i64 32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.130.i255.i.i = phi ptr [ %i.vw, %bb.ch ], [ %i.wb, %bb.ci ] ; 3 uses
  %.pn.i256.i.i = phi ptr [ %i.vt, %bb.ch ], [ %i.vz, %bb.ci ] ; 2 uses
  %.1.i257.i.i = getelementptr inbounds nuw i8, ptr %.pn.i256.i.i, i64 16
  %i.vx = load <2 x i64>, ptr %.1.i257.i.i, align 1, !tbaa !9
  store <2 x i64> %i.vx, ptr %.130.i255.i.i, align 1, !tbaa !9
  %i.vy = getelementptr inbounds nuw i8, ptr %.130.i255.i.i, i64 16
  %i.vz = getelementptr inbounds nuw i8, ptr %.pn.i256.i.i, i64 32 ; 2 uses
  %i.wa = load <2 x i64>, ptr %i.vz, align 1, !tbaa !9
  store <2 x i64> %i.wa, ptr %i.vy, align 1, !tbaa !9
  %i.wb = getelementptr inbounds nuw i8, ptr %.130.i255.i.i, i64 32 ; 2 uses
  %i.wc = icmp ult ptr %i.wb, %i.vg
  br i1 %i.wc, label %bb.ci, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i: ; preds = %bb.ci, %bb.cg, %.critedge.i202.i.i
  store ptr %i.vi, ptr %i.a, align 8, !tbaa !46
  %i.wd = ptrtoint ptr %i.vg to i64               ; 2 uses
  %i.we = sub i64 %i.wd, %i.gu                    ; 3 uses
  %i.wf = icmp ugt i64 %.sink.i, %i.we
  br i1 %i.wf, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i
  %i.wg = sub i64 %i.wd, %i.gv
  %i.wh = icmp ugt i64 %.sink.i, %i.wg
  br i1 %i.wh, label %.loopexit.thread.i, label %bb.ck, !prof !60

.loopexit.thread.i:                               ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread236.i

bb.ck:                                            ; preds = %bb.cj
  %i.wi = ptrtoint ptr %i.vk to i64
  %i.wj = sub i64 %i.wi, %i.gu                    ; 3 uses
  %i.wk = getelementptr inbounds i8, ptr %i.n, i64 %i.wj ; 2 uses
  %i.wl = add nsw i64 %i.wj, %.sroa.659.0.i       ; 2 uses
  %.not.i204.i.i = icmp sgt i64 %i.wl, 0
  br i1 %.not.i204.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vg, ptr align 1 %i.wk, i64 %.sroa.659.0.i, i1 false)
  br label %.loopexit.i

bb.cm:                                            ; preds = %bb.ck
  %gepdiff.i205.i.i = sub nsw i64 0, %i.wj        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vg, ptr align 1 %i.wk, i64 %gepdiff.i205.i.i, i1 false)
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vg, i64 %gepdiff.i205.i.i
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i
  %.sroa.6106.0.i = phi i64 [ %i.wl, %bb.cm ], [ %.sroa.659.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 5 uses
  %.0172.i = phi ptr [ %i.j, %bb.cm ], [ %i.vk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 9 uses
  %.0171.i = phi ptr [ %i.wm, %bb.cm ], [ %i.vg, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 12 uses
  %i.wn = icmp ugt i64 %.sink.i, 15
  br i1 %i.wn, label %bb.co, label %bb.cr, !prof !97

bb.co:                                            ; preds = %bb.cn
  %i.wo = getelementptr inbounds i8, ptr %.0171.i, i64 %.sroa.6106.0.i
  %i.wp = load <2 x i64>, ptr %.0172.i, align 1, !tbaa !9
  store <2 x i64> %i.wp, ptr %.0171.i, align 1, !tbaa !9
  %i.wq = icmp slt i64 %.sroa.6106.0.i, 17
  br i1 %i.wq, label %.loopexit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wr = getelementptr inbounds nuw i8, ptr %.0171.i, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.130.i262.i.i = phi ptr [ %i.wr, %bb.cp ], [ %i.ww, %bb.cq ] ; 3 uses
  %.pn.i263.i.i = phi ptr [ %.0172.i, %bb.cp ], [ %i.wu, %bb.cq ] ; 2 uses
  %.1.i264.i.i = getelementptr inbounds nuw i8, ptr %.pn.i263.i.i, i64 16
  %i.ws = load <2 x i64>, ptr %.1.i264.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ws, ptr %.130.i262.i.i, align 1, !tbaa !9
  %i.wt = getelementptr inbounds nuw i8, ptr %.130.i262.i.i, i64 16
  %i.wu = getelementptr inbounds nuw i8, ptr %.pn.i263.i.i, i64 32 ; 2 uses
  %i.wv = load <2 x i64>, ptr %i.wu, align 1, !tbaa !9
  store <2 x i64> %i.wv, ptr %i.wt, align 1, !tbaa !9
  %i.ww = getelementptr inbounds nuw i8, ptr %.130.i262.i.i, i64 32 ; 2 uses
  %i.wx = icmp ult ptr %i.ww, %i.wo
  br i1 %i.wx, label %bb.cq, label %.loopexit.i, !llvm.loop !108

bb.cr:                                            ; preds = %bb.cn
  %i.wy = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.wy, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !3
  %i.xb = load i8, ptr %.0172.i, align 1, !tbaa !9
  store i8 %i.xb, ptr %.0171.i, align 1, !tbaa !9
  %i.xc = getelementptr inbounds nuw i8, ptr %.0172.i, i64 1
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !9
  %i.xe = getelementptr inbounds nuw i8, ptr %.0171.i, i64 1
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !9
  %i.xf = getelementptr inbounds nuw i8, ptr %.0172.i, i64 2
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !9
  %i.xh = getelementptr inbounds nuw i8, ptr %.0171.i, i64 2
  store i8 %i.xg, ptr %i.xh, align 1, !tbaa !9
  %i.xi = getelementptr inbounds nuw i8, ptr %.0172.i, i64 3
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !9
  %i.xk = getelementptr inbounds nuw i8, ptr %.0171.i, i64 3
  store i8 %i.xj, ptr %i.xk, align 1, !tbaa !9
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !3
  %i.xn = zext i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw i8, ptr %.0172.i, i64 %i.xn ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.0171.i, i64 4
  %i.xq = load i32, ptr %i.xo, align 1
  store i32 %i.xq, ptr %i.xp, align 1
  %i.xr = sext i32 %i.xa to i64
  %i.xs = sub nsw i64 0, %i.xr
  %i.xt = getelementptr inbounds i8, ptr %i.xo, i64 %i.xs
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.xu = load i64, ptr %.0172.i, align 1
  store i64 %i.xu, ptr %.0171.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i: ; preds = %bb.ct, %bb.cs
  %.1173.i = phi ptr [ %i.xt, %bb.cs ], [ %.0172.i, %bb.ct ] ; 2 uses
  %.1173.i186 = ptrtoaddr ptr %.1173.i to i64
  %i.xv = getelementptr inbounds nuw i8, ptr %.1173.i, i64 8 ; 7 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.0171.i, i64 8 ; 6 uses
  %i.xx = icmp ugt i64 %.sroa.6106.0.i, 8
  br i1 %i.xx, label %bb.cu, label %.loopexit.i

bb.cu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i
  %i.xy = ptrtoint ptr %i.xw to i64
  %i.xz = ptrtoint ptr %i.xv to i64
  %i.ya = sub i64 %i.xy, %i.xz
  %i.yb = getelementptr i8, ptr %.0171.i, i64 %.sroa.6106.0.i ; 2 uses
  %i.yc = icmp slt i64 %i.ya, 16
  br i1 %i.yc, label %.preheader261.i.preheader, label %bb.cv

.preheader261.i.preheader:                        ; preds = %bb.cu
  %i.yd = add i64 %.sroa.659.0.i, %i.gu
  %i.ye = add i64 %.sink.i, %i.we
  %umax189 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.we) ; 2 uses
  %i.yf = add i64 %i.yd, %i.ye
  %i.yg = sub i64 %i.yf, %.sink.i
  %i.yh = add i64 %umax189, %i.gu
  %i.yi = add i64 %i.yh, 16
  %umax190 = tail call i64 @llvm.umax.i64(i64 %i.yg, i64 %i.yi)
  %i.yj = add i64 %umax190, -9
  %i.yk = add i64 %umax189, %i.gu
  %i.yl = sub i64 %i.yj, %i.yk                    ; 2 uses
  %i.ym = lshr i64 %i.yl, 3
  %i.yn = add nuw nsw i64 %i.ym, 1                ; 2 uses
  %min.iters.check192 = icmp ult i64 %i.yl, 152
  br i1 %min.iters.check192, label %.preheader261.i.preheader251, label %vector.memcheck183

vector.memcheck183:                               ; preds = %.preheader261.i.preheader
  %i.yo = add i64 %.sroa.0.2.i.i, %.2144.i.i184
  %i.yp = sub i64 %i.yo, %i.gu
  %umax185 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.yp)
  %i.yq = add i64 %umax185, %i.gu
  %i.yr = sub i64 %i.yq, %.1173.i186
  %diff.check187 = icmp ult i64 %i.yr, 32
  br i1 %diff.check187, label %.preheader261.i.preheader251, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck183
  %n.vec195 = and i64 %i.yn, 4611686018427387900  ; 3 uses
  %i.ys = shl i64 %n.vec195, 3                    ; 2 uses
  %i.yt = getelementptr i8, ptr %i.xw, i64 %i.ys
  %i.yu = getelementptr i8, ptr %i.xv, i64 %i.ys
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %i.yv = shl i64 %index197, 3                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.xw, i64 %i.yv ; 2 uses
  %next.gep199 = getelementptr i8, ptr %i.xv, i64 %i.yv ; 2 uses
  %i.yw = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load200 = load <2 x i64>, ptr %next.gep199, align 1
  %wide.load201 = load <2 x i64>, ptr %i.yw, align 1
  %i.yx = getelementptr i8, ptr %next.gep198, i64 16
  store <2 x i64> %wide.load200, ptr %next.gep198, align 1
  store <2 x i64> %wide.load201, ptr %i.yx, align 1
  %index.next202 = add nuw i64 %index197, 4       ; 2 uses
  %i.yy = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.yy, label %middle.block203, label %vector.body196, !llvm.loop !146

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %i.yn, %n.vec195
  br i1 %cmp.n204, label %.loopexit.i, label %.preheader261.i.preheader251

.preheader261.i.preheader251:                     ; preds = %vector.memcheck183, %.preheader261.i.preheader, %middle.block203
  %.029.i272.i.i.ph = phi ptr [ %i.xw, %vector.memcheck183 ], [ %i.xw, %.preheader261.i.preheader ], [ %i.yt, %middle.block203 ]
  %.0.i273.i.i.ph = phi ptr [ %i.xv, %vector.memcheck183 ], [ %i.xv, %.preheader261.i.preheader ], [ %i.yu, %middle.block203 ]
  br label %.preheader261.i

.preheader261.i:                                  ; preds = %.preheader261.i.preheader251, %.preheader261.i
  %.029.i272.i.i = phi ptr [ %i.za, %.preheader261.i ], [ %.029.i272.i.i.ph, %.preheader261.i.preheader251 ] ; 2 uses
  %.0.i273.i.i = phi ptr [ %i.zb, %.preheader261.i ], [ %.0.i273.i.i.ph, %.preheader261.i.preheader251 ] ; 2 uses
  %i.yz = load i64, ptr %.0.i273.i.i, align 1
  store i64 %i.yz, ptr %.029.i272.i.i, align 1
  %i.za = getelementptr inbounds nuw i8, ptr %.029.i272.i.i, i64 8 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.0.i273.i.i, i64 8
  %i.zc = icmp ult ptr %i.za, %i.yb
  br i1 %i.zc, label %.preheader261.i, label %.loopexit.i, !llvm.loop !147

bb.cv:                                            ; preds = %bb.cu
  %i.zd = load <2 x i64>, ptr %i.xv, align 1, !tbaa !9
  store <2 x i64> %i.zd, ptr %i.xw, align 1, !tbaa !9
  %i.ze = icmp slt i64 %.sroa.6106.0.i, 25
  br i1 %i.ze, label %.loopexit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zf = getelementptr inbounds nuw i8, ptr %.0171.i, i64 24
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.130.i269.i.i = phi ptr [ %i.zf, %bb.cw ], [ %i.zk, %bb.cx ] ; 3 uses
  %.pn.i270.i.i = phi ptr [ %i.xv, %bb.cw ], [ %i.zi, %bb.cx ] ; 2 uses
  %.1.i271.i.i = getelementptr inbounds nuw i8, ptr %.pn.i270.i.i, i64 16
  %i.zg = load <2 x i64>, ptr %.1.i271.i.i, align 1, !tbaa !9
  store <2 x i64> %i.zg, ptr %.130.i269.i.i, align 1, !tbaa !9
  %i.zh = getelementptr inbounds nuw i8, ptr %.130.i269.i.i, i64 16
  %i.zi = getelementptr inbounds nuw i8, ptr %.pn.i270.i.i, i64 32 ; 2 uses
  %i.zj = load <2 x i64>, ptr %i.zi, align 1, !tbaa !9
  store <2 x i64> %i.zj, ptr %i.zh, align 1, !tbaa !9
  %i.zk = getelementptr inbounds nuw i8, ptr %.130.i269.i.i, i64 32 ; 2 uses
  %i.zl = icmp ult ptr %i.zk, %i.yb
  br i1 %i.zl, label %bb.cx, label %.loopexit.i, !llvm.loop !108

.loopexit.i:                                      ; preds = %bb.cx, %.preheader261.i, %bb.cq, %middle.block203, %bb.cv, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i, %bb.co, %bb.cl, %bb.cf
  %.0.i203.i.i = phi i64 [ %i.vr, %bb.cf ], [ %i.vh, %bb.cq ], [ %i.vh, %bb.cl ], [ %i.vh, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i ], [ %i.vh, %bb.co ], [ %i.vh, %middle.block203 ], [ %i.vh, %bb.cv ], [ %i.vh, %.preheader261.i ], [ %i.vh, %bb.cx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.zm = icmp ult i64 %.0.i203.i.i, -119
  %i.zn = getelementptr inbounds nuw i8, ptr %.2144.i.i, i64 %.0.i203.i.i ; 2 uses
  %i.zo = add nsw i32 %.0135.i287.i, -1           ; 2 uses
  br i1 %i.zm, label %bb.cy, label %.thread236.i

bb.cy:                                            ; preds = %.loopexit.i
  %.not252.i = icmp eq i32 %i.zo, 0
  br i1 %.not252.i, label %.thread232.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !148
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !149
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !151
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !152
  %.sroa.675.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.zp = add i64 %i.gu, 16
  br label %bb.da

bb.da:                                            ; preds = %bb.er, %bb.cz
  %i.zq = phi ptr [ %i.so, %bb.cz ], [ %i.age, %bb.er ] ; 8 uses
  %i.zr = phi i32 [ %i.sp, %bb.cz ], [ %i.agf, %bb.er ] ; 5 uses
  %i.zs = phi i64 [ %i.sq, %bb.cz ], [ %i.agg, %bb.er ] ; 6 uses
  %i.zt = phi i64 [ %i.jv, %bb.cz ], [ %i.acn, %bb.er ] ; 2 uses
  %i.zu = phi i64 [ %.sink463.i, %bb.cz ], [ %.sink465.i, %bb.er ] ; 6 uses
  %i.zv = phi i64 [ %.sink.i, %bb.cz ], [ %.sink464.i, %bb.er ] ; 6 uses
  %i.zw = phi i64 [ %i.sr, %bb.cz ], [ %i.agh, %bb.er ] ; 2 uses
  %i.zx = phi i64 [ %i.ss, %bb.cz ], [ %i.agi, %bb.er ] ; 2 uses
  %i.zy = phi i64 [ %i.st, %bb.cz ], [ %i.agj, %bb.er ] ; 2 uses
  %.4139.i290.i = phi i32 [ %i.zo, %bb.cz ], [ %i.aks, %bb.er ] ; 2 uses
  %.7149.i288.i = phi ptr [ %i.zn, %bb.cz ], [ %i.akr, %bb.er ] ; 8 uses
  %.7149.i288.i208 = ptrtoaddr ptr %.7149.i288.i to i64
  %.not256.i = icmp eq i32 %.4139.i290.i, 1
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.zy ; 4 uses
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.zw ; 4 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.zx ; 4 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !49, !noalias !153
  %i.aae = zext i32 %i.aad to i64                 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !49, !noalias !153 ; 2 uses
  %i.aah = zext i32 %i.aag to i64                 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !49, !noalias !153 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zz, i64 2
  %i.aal = load i8, ptr %i.aak, align 2, !tbaa !66, !noalias !153 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
  %i.aan = load i8, ptr %i.aam, align 2, !tbaa !66, !noalias !153 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aab, i64 2
  %i.aap = load i8, ptr %i.aao, align 2, !tbaa !66, !noalias !153 ; 4 uses
  %i.aaq = zext i8 %i.aal to i32                  ; 2 uses
  %i.aar = zext i8 %i.aan to i32                  ; 2 uses
  %i.aas = add i8 %i.aan, %i.aal
  %i.aat = add i8 %i.aas, %i.aap
  %i.aau = load i16, ptr %i.zz, align 4, !tbaa !65, !noalias !153
  %i.aav = load i16, ptr %i.aaa, align 4, !tbaa !65, !noalias !153
  %i.aaw = load i16, ptr %i.aab, align 4, !tbaa !65, !noalias !153
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zz, i64 3
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.aaz = zext i8 %i.aay to i32
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaa, i64 3
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.abc = zext i8 %i.abb to i32
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aab, i64 3
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.abf = zext i8 %i.abe to i32
  %i.abg = icmp ugt i8 %i.aap, 1
  br i1 %i.abg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abh = zext i8 %i.aap to i32                  ; 2 uses
  %i.abi = and i32 %i.zr, 63
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = shl i64 %i.zs, %i.abj
  %i.abl = sub nsw i32 0, %i.abh
  %i.abm = and i32 %i.abl, 63
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = lshr i64 %i.abk, %i.abn
  %i.abp = add i32 %i.zr, %i.abh                  ; 2 uses
  store i32 %i.abp, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.abq = zext i32 %i.aaj to i64
  %i.abr = add i64 %i.abo, %i.abq
  store i64 %i.zu, ptr %i.aa, align 8, !tbaa !53, !noalias !153
  br label %bb.dh

bb.dc:                                            ; preds = %bb.da
  %i.abs = icmp eq i32 %i.aag, 0                  ; 3 uses
  %i.abt = icmp eq i8 %i.aap, 0
  br i1 %i.abt, label %bb.dd, label %bb.de, !prof !97

bb.dd:                                            ; preds = %bb.dc
  %i.abu = select i1 %i.abs, i64 %i.zu, i64 %i.zv
  %i.abv = select i1 %i.abs, i64 %i.zv, i64 %i.zu
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.abw = zext i1 %i.abs to i32
  %i.abx = add i32 %i.aaj, %i.abw
  %i.aby = zext i32 %i.abx to i64
  %i.abz = and i32 %i.zr, 63
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = shl i64 %i.zs, %i.aca
  %i.acc = lshr i64 %i.acb, 63
  %i.acd = add i32 %i.zr, 1                       ; 3 uses
  store i32 %i.acd, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.ace = add nuw nsw i64 %i.acc, %i.aby         ; 3 uses
  %i.acf = icmp eq i64 %i.ace, 3
  br i1 %i.acf, label %.thread215.i, label %bb.df

.thread215.i:                                     ; preds = %bb.de
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.aft = sub nsw i64 0, %i.afs
  %i.afu = getelementptr inbounds i8, ptr %i.adt, i64 %i.aft
  %i.afv = icmp ult ptr %i.afu, %3
  %i.afw = ptrtoint ptr %i.adt to i64
  %i.afx = sub i64 %i.afw, %i.gw
  %i.afy = trunc i64 %i.afx to i32
  %.021.i230.i.i = select i1 %i.afv, i32 %i.afy, i32 %i.afr ; 2 uses
  %i.afz = zext i32 %.021.i230.i.i to i64
  %i.aga = sub nsw i64 0, %i.afz
  %i.agb = getelementptr inbounds i8, ptr %i.adt, i64 %i.aga ; 3 uses
  store ptr %i.agb, ptr %i.cz, align 8, !tbaa !86, !noalias !153
  %i.agc = shl i32 %.021.i230.i.i, 3
  %i.agd = sub i32 %i.afa, %i.agc                 ; 2 uses
  store i32 %i.agd, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %.val.i51.i = load i64, ptr %i.agb, align 1, !tbaa !53, !noalias !153 ; 2 uses
  store i64 %.val.i51.i, ptr %9, align 8, !tbaa !87, !noalias !153
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i: ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.dr
  %i.age = phi ptr [ %i.adt, %bb.dw ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dt ], [ %i.afo, %bb.dv ], [ %i.agb, %bb.dx ], [ %i.adt, %bb.dr ] ; 2 uses
  %i.agf = phi i32 [ %i.afa, %bb.dw ], [ %i.afa, %bb.dt ], [ %i.afp, %bb.dv ], [ %i.agd, %bb.dx ], [ %i.aef, %bb.dr ] ; 2 uses
  %i.agg = phi i64 [ %i.adv, %bb.dw ], [ %i.adv, %bb.dt ], [ %.val.i.i50.i, %bb.dv ], [ %.val.i51.i, %bb.dx ], [ %i.adv, %bb.dr ]
  %i.agh = phi i64 [ %i.aez, %bb.dw ], [ %i.aez, %bb.dt ], [ %i.aez, %bb.dv ], [ %i.aez, %bb.dx ], [ %i.zw, %bb.dr ]
  %i.agi = phi i64 [ %i.afj, %bb.dw ], [ %i.afj, %bb.dt ], [ %i.afj, %bb.dv ], [ %i.afj, %bb.dx ], [ %i.zx, %bb.dr ]
  %i.agj = phi i64 [ %i.aep, %bb.dw ], [ %i.aep, %bb.dt ], [ %i.aep, %bb.dv ], [ %i.aep, %bb.dx ], [ %i.zy, %bb.dr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.agk = getelementptr i8, ptr %.7149.i288.i, i64 %.sroa.0.0.i ; 7 uses
  %i.agl = add i64 %.sroa.0.0.i, %.sroa.6.0.i     ; 9 uses
  %i.agm = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 %.sroa.0.0.i ; 2 uses
  %i.ago = sub i64 0, %.sink464.i
  %i.agp = getelementptr inbounds i8, ptr %i.agk, i64 %i.ago ; 2 uses
  %i.agq = icmp ugt ptr %i.agn, %i.ve
  %i.agr = getelementptr inbounds nuw i8, ptr %.7149.i288.i, i64 %i.agl
  %i.ags = icmp ugt ptr %i.agr, %i.vm
  %or.cond.i.i.i = select i1 %i.agq, i1 true, i1 %i.ags, !prof !112
  br i1 %or.cond.i.i.i, label %bb.dy, label %.critedge.i.i.i, !prof !112

.critedge.i.i.i:                                  ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  %i.agt = load <2 x i64>, ptr %i.agm, align 1, !tbaa !9
  store <2 x i64> %i.agt, ptr %.7149.i288.i, align 1, !tbaa !9
  %i.agu = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.agu, label %bb.dz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, !prof !60

bb.dy:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  store i64 %.sroa.0.0.i, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.6.0.i, ptr %.sroa.675.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink464.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !53
  %i.agv = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7149.i288.i, ptr noundef %i.d, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ve, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.dz:                                            ; preds = %.critedge.i.i.i
  %i.agw = getelementptr inbounds nuw i8, ptr %.7149.i288.i, i64 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agm, i64 16 ; 2 uses
  %i.agy = add i64 %.sroa.0.0.i, -16
  %i.agz = load <2 x i64>, ptr %i.agx, align 1, !tbaa !9
  store <2 x i64> %i.agz, ptr %i.agw, align 1, !tbaa !9
  %i.aha = icmp slt i64 %i.agy, 17
  br i1 %i.aha, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahb = getelementptr inbounds nuw i8, ptr %.7149.i288.i, i64 32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %bb.ea
  %.130.i276.i.i = phi ptr [ %i.ahb, %bb.ea ], [ %i.ahg, %bb.eb ] ; 3 uses
  %.pn.i277.i.i = phi ptr [ %i.agx, %bb.ea ], [ %i.ahe, %bb.eb ] ; 2 uses
  %.1.i278.i.i = getelementptr inbounds nuw i8, ptr %.pn.i277.i.i, i64 16
  %i.ahc = load <2 x i64>, ptr %.1.i278.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ahc, ptr %.130.i276.i.i, align 1, !tbaa !9
  %i.ahd = getelementptr inbounds nuw i8, ptr %.130.i276.i.i, i64 16
  %i.ahe = getelementptr inbounds nuw i8, ptr %.pn.i277.i.i, i64 32 ; 2 uses
  %i.ahf = load <2 x i64>, ptr %i.ahe, align 1, !tbaa !9
  store <2 x i64> %i.ahf, ptr %i.ahd, align 1, !tbaa !9
  %i.ahg = getelementptr inbounds nuw i8, ptr %.130.i276.i.i, i64 32 ; 2 uses
  %i.ahh = icmp ult ptr %i.ahg, %i.agk
  br i1 %i.ahh, label %bb.eb, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i: ; preds = %bb.eb, %bb.dz, %.critedge.i.i.i
  store ptr %i.agn, ptr %i.a, align 8, !tbaa !46
  %i.ahi = ptrtoint ptr %i.agk to i64             ; 2 uses
  %i.ahj = sub i64 %i.ahi, %i.gu                  ; 3 uses
  %i.ahk = icmp ugt i64 %.sink464.i, %i.ahj
  br i1 %i.ahk, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i
  %i.ahl = sub i64 %i.ahi, %i.gv
  %i.ahm = icmp ugt i64 %.sink464.i, %i.ahl
  br i1 %i.ahm, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, label %bb.ed, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread236.i

bb.ed:                                            ; preds = %bb.ec
  %i.ahn = ptrtoint ptr %i.agp to i64
  %i.aho = sub i64 %i.ahn, %i.gu                  ; 3 uses
  %i.ahp = getelementptr inbounds i8, ptr %i.n, i64 %i.aho ; 2 uses
  %i.ahq = add nsw i64 %i.aho, %.sroa.6.0.i       ; 2 uses
  %.not.i200.i.i = icmp sgt i64 %i.ahq, 0
  br i1 %.not.i200.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agk, ptr align 1 %i.ahp, i64 %.sroa.6.0.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.ef:                                            ; preds = %bb.ed
  %gepdiff.i.i.i = sub nsw i64 0, %i.aho          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agk, ptr align 1 %i.ahp, i64 %gepdiff.i.i.i, i1 false)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agk, i64 %gepdiff.i.i.i
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i
  %.sroa.675.0.i = phi i64 [ %i.ahq, %bb.ef ], [ %.sroa.6.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 5 uses
  %.0175.i = phi ptr [ %i.j, %bb.ef ], [ %i.agp, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 9 uses
  %.0174.i = phi ptr [ %i.ahr, %bb.ef ], [ %i.agk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 12 uses
  %i.ahs = icmp ugt i64 %.sink464.i, 15
  br i1 %i.ahs, label %bb.eh, label %bb.ek, !prof !97

bb.eh:                                            ; preds = %bb.eg
  %i.aht = getelementptr inbounds i8, ptr %.0174.i, i64 %.sroa.675.0.i
  %i.ahu = load <2 x i64>, ptr %.0175.i, align 1, !tbaa !9
  store <2 x i64> %i.ahu, ptr %.0174.i, align 1, !tbaa !9
  %i.ahv = icmp slt i64 %.sroa.675.0.i, 17
  br i1 %i.ahv, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0174.i, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %bb.ei
  %.130.i283.i.i = phi ptr [ %i.ahw, %bb.ei ], [ %i.aib, %bb.ej ] ; 3 uses
  %.pn.i284.i.i = phi ptr [ %.0175.i, %bb.ei ], [ %i.ahz, %bb.ej ] ; 2 uses
  %.1.i285.i.i = getelementptr inbounds nuw i8, ptr %.pn.i284.i.i, i64 16
  %i.ahx = load <2 x i64>, ptr %.1.i285.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ahx, ptr %.130.i283.i.i, align 1, !tbaa !9
  %i.ahy = getelementptr inbounds nuw i8, ptr %.130.i283.i.i, i64 16
  %i.ahz = getelementptr inbounds nuw i8, ptr %.pn.i284.i.i, i64 32 ; 2 uses
  %i.aia = load <2 x i64>, ptr %i.ahz, align 1, !tbaa !9
  store <2 x i64> %i.aia, ptr %i.ahy, align 1, !tbaa !9
  %i.aib = getelementptr inbounds nuw i8, ptr %.130.i283.i.i, i64 32 ; 2 uses
  %i.aic = icmp ult ptr %i.aib, %i.aht
  br i1 %i.aic, label %bb.ej, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

bb.ek:                                            ; preds = %bb.eg
  %i.aid = icmp samesign ult i64 %.sink464.i, 8
  br i1 %i.aid, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink464.i
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !3
  %i.aig = load i8, ptr %.0175.i, align 1, !tbaa !9
  store i8 %i.aig, ptr %.0174.i, align 1, !tbaa !9
  %i.aih = getelementptr inbounds nuw i8, ptr %.0175.i, i64 1
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !9
  %i.aij = getelementptr inbounds nuw i8, ptr %.0174.i, i64 1
  store i8 %i.aii, ptr %i.aij, align 1, !tbaa !9
  %i.aik = getelementptr inbounds nuw i8, ptr %.0175.i, i64 2
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !9
  %i.aim = getelementptr inbounds nuw i8, ptr %.0174.i, i64 2
  store i8 %i.ail, ptr %i.aim, align 1, !tbaa !9
  %i.ain = getelementptr inbounds nuw i8, ptr %.0175.i, i64 3
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !9
  %i.aip = getelementptr inbounds nuw i8, ptr %.0174.i, i64 3
  store i8 %i.aio, ptr %i.aip, align 1, !tbaa !9
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink464.i
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !3
  %i.ais = zext i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %.0175.i, i64 %i.ais ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0174.i, i64 4
  %i.aiv = load i32, ptr %i.ait, align 1
  store i32 %i.aiv, ptr %i.aiu, align 1
  %i.aiw = sext i32 %i.aif to i64
  %i.aix = sub nsw i64 0, %i.aiw
  %i.aiy = getelementptr inbounds i8, ptr %i.ait, i64 %i.aix
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i

bb.em:                                            ; preds = %bb.ek
  %i.aiz = load i64, ptr %.0175.i, align 1
  store i64 %i.aiz, ptr %.0174.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i: ; preds = %bb.em, %bb.el
  %.1176.i = phi ptr [ %i.aiy, %bb.el ], [ %.0175.i, %bb.em ] ; 2 uses
  %.1176.i210 = ptrtoaddr ptr %.1176.i to i64
  %i.aja = getelementptr inbounds nuw i8, ptr %.1176.i, i64 8 ; 7 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0174.i, i64 8 ; 6 uses
  %i.ajc = icmp ugt i64 %.sroa.675.0.i, 8
  br i1 %i.ajc, label %bb.en, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.en:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i
  %i.ajd = ptrtoint ptr %i.ajb to i64
  %i.aje = ptrtoint ptr %i.aja to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  %i.ajg = getelementptr i8, ptr %.0174.i, i64 %.sroa.675.0.i ; 2 uses
  %i.ajh = icmp slt i64 %i.ajf, 16
  br i1 %i.ajh, label %.preheader258.i.preheader, label %bb.eo

.preheader258.i.preheader:                        ; preds = %bb.en
  %i.aji = add i64 %.sroa.6.0.i, %i.gu
  %i.ajj = add i64 %.sink464.i, %i.ahj
  %umax213 = tail call i64 @llvm.umax.i64(i64 %.sink464.i, i64 %i.ahj) ; 2 uses
  %i.ajk = add i64 %i.aji, %i.ajj
  %i.ajl = sub i64 %i.ajk, %.sink464.i
  %i.ajm = add i64 %i.zp, %umax213
  %umax214 = tail call i64 @llvm.umax.i64(i64 %i.ajl, i64 %i.ajm)
  %i.ajn = add i64 %umax214, -9
  %i.ajo = add i64 %umax213, %i.gu
  %i.ajp = sub i64 %i.ajn, %i.ajo                 ; 2 uses
  %i.ajq = lshr i64 %i.ajp, 3
  %i.ajr = add nuw nsw i64 %i.ajq, 1              ; 2 uses
  %min.iters.check216 = icmp ult i64 %i.ajp, 72
  br i1 %min.iters.check216, label %.preheader258.i.preheader234, label %vector.memcheck207

vector.memcheck207:                               ; preds = %.preheader258.i.preheader
  %i.ajs = sub i64 %.sroa.0.0.i, %i.gu
  %i.ajt = add i64 %i.ajs, %.7149.i288.i208
  %umax209 = tail call i64 @llvm.umax.i64(i64 %.sink464.i, i64 %i.ajt)
  %i.aju = add i64 %umax209, %i.gu
  %i.ajv = sub i64 %i.aju, %.1176.i210
  %diff.check211 = icmp ult i64 %i.ajv, 32
  br i1 %diff.check211, label %.preheader258.i.preheader234, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck207
  %n.vec219 = and i64 %i.ajr, 4611686018427387900 ; 3 uses
  %i.ajw = shl i64 %n.vec219, 3                   ; 2 uses
  %i.ajx = getelementptr i8, ptr %i.ajb, i64 %i.ajw
  %i.ajy = getelementptr i8, ptr %i.aja, i64 %i.ajw
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next226, %vector.body220 ] ; 2 uses
  %i.ajz = shl i64 %index221, 3                   ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.ajb, i64 %i.ajz ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.aja, i64 %i.ajz ; 2 uses
  %i.aka = getelementptr i8, ptr %next.gep223, i64 16
  %wide.load224 = load <2 x i64>, ptr %next.gep223, align 1
  %wide.load225 = load <2 x i64>, ptr %i.aka, align 1
  %i.akb = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x i64> %wide.load224, ptr %next.gep222, align 1
  store <2 x i64> %wide.load225, ptr %i.akb, align 1
  %index.next226 = add nuw i64 %index221, 4       ; 2 uses
  %i.akc = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.akc, label %middle.block227, label %vector.body220, !llvm.loop !156

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %i.ajr, %n.vec219
  br i1 %cmp.n228, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %.preheader258.i.preheader234

.preheader258.i.preheader234:                     ; preds = %vector.memcheck207, %.preheader258.i.preheader, %middle.block227
  %.029.i293.i.i.ph = phi ptr [ %i.ajb, %vector.memcheck207 ], [ %i.ajb, %.preheader258.i.preheader ], [ %i.ajx, %middle.block227 ]
  %.0.i294.i.i.ph = phi ptr [ %i.aja, %vector.memcheck207 ], [ %i.aja, %.preheader258.i.preheader ], [ %i.ajy, %middle.block227 ]
  br label %.preheader258.i

.preheader258.i:                                  ; preds = %.preheader258.i.preheader234, %.preheader258.i
  %.029.i293.i.i = phi ptr [ %i.ake, %.preheader258.i ], [ %.029.i293.i.i.ph, %.preheader258.i.preheader234 ] ; 2 uses
  %.0.i294.i.i = phi ptr [ %i.akf, %.preheader258.i ], [ %.0.i294.i.i.ph, %.preheader258.i.preheader234 ] ; 2 uses
  %i.akd = load i64, ptr %.0.i294.i.i, align 1
  store i64 %i.akd, ptr %.029.i293.i.i, align 1
  %i.ake = getelementptr inbounds nuw i8, ptr %.029.i293.i.i, i64 8 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.0.i294.i.i, i64 8
  %i.akg = icmp ult ptr %i.ake, %i.ajg
  br i1 %i.akg, label %.preheader258.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !157

bb.eo:                                            ; preds = %bb.en
  %i.akh = load <2 x i64>, ptr %i.aja, align 1, !tbaa !9
  store <2 x i64> %i.akh, ptr %i.ajb, align 1, !tbaa !9
  %i.aki = icmp slt i64 %.sroa.675.0.i, 25
  br i1 %i.aki, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.akj = getelementptr inbounds nuw i8, ptr %.0174.i, i64 24
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.130.i290.i.i = phi ptr [ %i.akj, %bb.ep ], [ %i.ako, %bb.eq ] ; 3 uses
  %.pn.i291.i.i = phi ptr [ %i.aja, %bb.ep ], [ %i.akm, %bb.eq ] ; 2 uses
  %.1.i292.i.i = getelementptr inbounds nuw i8, ptr %.pn.i291.i.i, i64 16
  %i.akk = load <2 x i64>, ptr %.1.i292.i.i, align 1, !tbaa !9
  store <2 x i64> %i.akk, ptr %.130.i290.i.i, align 1, !tbaa !9
  %i.akl = getelementptr inbounds nuw i8, ptr %.130.i290.i.i, i64 16
  %i.akm = getelementptr inbounds nuw i8, ptr %.pn.i291.i.i, i64 32 ; 2 uses
  %i.akn = load <2 x i64>, ptr %i.akm, align 1, !tbaa !9
  store <2 x i64> %i.akn, ptr %i.akl, align 1, !tbaa !9
  %i.ako = getelementptr inbounds nuw i8, ptr %.130.i290.i.i, i64 32 ; 2 uses
  %i.akp = icmp ult ptr %i.ako, %i.ajg
  br i1 %i.akp, label %bb.eq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i: ; preds = %bb.eq, %.preheader258.i, %bb.ej, %middle.block227, %bb.eo, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i, %bb.eh, %bb.ee, %bb.dy
  %.0.i.i.i = phi i64 [ %i.agv, %bb.dy ], [ %i.agl, %middle.block227 ], [ %i.agl, %bb.ee ], [ %i.agl, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i ], [ %i.agl, %bb.eh ], [ %i.agl, %bb.eo ], [ %i.agl, %bb.ej ], [ %i.agl, %.preheader258.i ], [ %i.agl, %bb.eq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.akq = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.akq, label %bb.er, label %.thread236.i

bb.er:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i
  %i.akr = getelementptr inbounds nuw i8, ptr %.7149.i288.i, i64 %.0.i.i.i ; 2 uses
  %i.aks = add nsw i32 %.4139.i290.i, -1          ; 2 uses
  %.not183.i.i = icmp eq i32 %i.aks, 0
  br i1 %.not183.i.i, label %.thread232.i, label %bb.da, !llvm.loop !158

.thread232.i:                                     ; preds = %bb.bw, %bb.er, %bb.cy
  %i.akt = phi ptr [ %i.age, %bb.er ], [ %i.so, %bb.cy ], [ %i.nx, %bb.bw ]
  %i.aku = phi i32 [ %i.agf, %bb.er ], [ %i.sp, %bb.cy ], [ %i.ny, %bb.bw ]
  %i.akv = phi i64 [ %i.acn, %bb.er ], [ %i.jv, %bb.cy ], [ %i.jv, %bb.bw ]
  %i.akw = phi i64 [ %.sink465.i, %bb.er ], [ %.sink463.i, %bb.cy ], [ %.sink463.i, %bb.bw ]
  %i.akx = phi i64 [ %.sink464.i, %bb.er ], [ %.sink.i, %bb.cy ], [ %.sink.i, %bb.bw ]
  %.9151.i230.i = phi ptr [ %i.akr, %bb.er ], [ %i.zn, %bb.cy ], [ %i.sl, %bb.bw ]
  %.2159.i205214229.i = phi ptr [ %i.ve, %bb.er ], [ %i.ve, %bb.cy ], [ %i.h, %bb.bw ]
  %i.aky = icmp eq ptr %i.akt, %3
  %.not257.i = icmp eq i32 %i.aku, 64
  %or.cond.i = select i1 %i.aky, i1 %.not257.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.thread236.i

.preheader.i:                                     ; preds = %.thread232.i
  %i.akz = trunc i64 %i.akx to i32
  store i32 %i.akz, ptr %i.p, align 4, !tbaa !3
  %i.ala = trunc i64 %i.akw to i32
  store i32 %i.ala, ptr %i.t, align 4, !tbaa !3
  %i.alb = trunc i64 %i.akv to i32
  store i32 %i.alb, ptr %i.x, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.es

.thread236.i:                                     ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, %.thread232.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, %.loopexit.i, %.loopexit.thread.i, %bb.by, %bb.bx, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.n, %bb.f, %bb.d
  %.9.i.ph.i = phi i64 [ -20, %.loopexit.thread.i ], [ -20, %bb.bx ], [ -20, %bb.d ], [ %.0.i203.i.i, %.loopexit.i ], [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i ], [ -20, %.thread232.i ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ -20, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i ], [ %.0.i.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i ], [ -20, %bb.f ], [ -70, %bb.by ], [ -20, %bb.n ], [ %.0.i209.i.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.es:                                            ; preds = %.preheader.i, %bb.c
  %.pre.i = phi ptr [ %.pre.pre.i, %.preheader.i ], [ %i.f, %bb.c ] ; 3 uses
  %.4161.i.i = phi ptr [ %.2159.i205214229.i, %.preheader.i ], [ %i.h, %bb.c ] ; 2 uses
  %.11153.i.i = phi ptr [ %.9151.i230.i, %.preheader.i ], [ %1, %bb.c ] ; 5 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !43
  %i.ale = icmp eq i32 %i.ald, 2
  br i1 %i.ale, label %bb.et, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.es
  %.pre327.i = ptrtoint ptr %i.d to i64
  br label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.alf = ptrtoint ptr %.4161.i.i to i64
  %i.alg = ptrtoint ptr %.pre.i to i64
  %i.alh = sub i64 %i.alf, %i.alg                 ; 3 uses
  %i.ali = ptrtoint ptr %i.d to i64               ; 2 uses
  %i.alj = ptrtoint ptr %.11153.i.i to i64
  %i.alk = sub i64 %i.ali, %i.alj
  %.not188.i.i = icmp ugt i64 %i.alh, %i.alk
  br i1 %.not188.i.i, label %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not187.i.i = icmp eq ptr %.11153.i.i, null
  br i1 %.not187.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.11153.i.i, ptr align 1 %.pre.i, i64 %i.alh, i1 false)
  %i.all = getelementptr inbounds nuw i8, ptr %.11153.i.i, i64 %i.alh
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.12154.i.i = phi ptr [ %i.all, %bb.ev ], [ null, %bb.eu ]
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %i.alc, align 8, !tbaa !43
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre327.i, %._crit_edge.i ], [ %i.ali, %bb.ew ]
  %i.alo = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.alm, %bb.ew ] ; 2 uses
  %.6163.i.i = phi ptr [ %.4161.i.i, %._crit_edge.i ], [ %i.aln, %bb.ew ]
  %.14156.i.i = phi ptr [ %.11153.i.i, %._crit_edge.i ], [ %.12154.i.i, %bb.ew ] ; 4 uses
  %i.alp = ptrtoint ptr %.6163.i.i to i64
  %i.alq = ptrtoint ptr %i.alo to i64
  %i.alr = sub i64 %i.alp, %i.alq                 ; 3 uses
  %i.als = ptrtoint ptr %.14156.i.i to i64
  %i.alt = sub i64 %.pre-phi.i, %i.als
  %.not190.i.i = icmp ugt i64 %i.alr, %i.alt
  br i1 %.not190.i.i, label %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %.not189.i.i = icmp eq ptr %.14156.i.i, null
  br i1 %.not189.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14156.i.i, ptr align 1 %i.alo, i64 %i.alr, i1 false)
  %i.alu = getelementptr inbounds nuw i8, ptr %.14156.i.i, i64 %i.alr
  %i.alv = ptrtoint ptr %i.alu to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.16.i.ph.i = phi i64 [ 0, %bb.ey ], [ %i.alv, %bb.ez ]
  %i.alw = ptrtoint ptr %1 to i64
  %i.alx = sub i64 %.16.i.ph.i, %i.alw
  br label %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %.thread236.i, %bb.et, %bb.ex, %bb.fa
  %.14.i.i = phi i64 [ %i.alx, %bb.fa ], [ %.9.i.ph.i, %.thread236.i ], [ -70, %bb.ex ], [ -70, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.fb

bb.fb:                                            ; preds = %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, %bb.b
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL24ZSTD_decompressSequencesEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
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
  store ptr %i.nr, ptr %i.dg, align 8, !tbaa !86, !noalias !164
  %i.ns = shl i32 %.021.i87.i.i, 3
  %i.nt = sub i32 %i.mq, %i.ns                    ; 2 uses
  store i32 %i.nt, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %.val.i35.i = load i64, ptr %i.nr, align 1, !tbaa !53, !noalias !164 ; 2 uses
  store i64 %.val.i35.i, ptr %7, align 8, !tbaa !87, !noalias !164
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %i.nu = phi ptr [ %i.lj, %bb.bd ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ba ], [ %i.ne, %bb.bc ], [ %i.nr, %bb.be ], [ %i.lj, %bb.ay ] ; 2 uses
  %i.nv = phi i32 [ %i.mq, %bb.bd ], [ %i.mq, %bb.ba ], [ %i.nf, %bb.bc ], [ %i.nt, %bb.be ], [ %i.lv, %bb.ay ] ; 2 uses
  %i.nw = phi i64 [ %i.ll, %bb.bd ], [ %i.ll, %bb.ba ], [ %.val.i.i34.i, %bb.bc ], [ %.val.i35.i, %bb.be ], [ %i.ll, %bb.ay ]
  %i.nx = phi i64 [ %i.mp, %bb.bd ], [ %i.mp, %bb.ba ], [ %i.mp, %bb.bc ], [ %i.mp, %bb.be ], [ %i.hm, %bb.ay ]
  %i.ny = phi i64 [ %i.mz, %bb.bd ], [ %i.mz, %bb.ba ], [ %i.mz, %bb.bc ], [ %i.mz, %bb.be ], [ %i.hn, %bb.ay ]
  %i.nz = phi i64 [ %i.mf, %bb.bd ], [ %i.mf, %bb.ba ], [ %i.mf, %bb.bc ], [ %i.mf, %bb.be ], [ %i.ho, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.oa = getelementptr i8, ptr %.068.i103.i, i64 %.sroa.0.0.i ; 7 uses
  %i.ob = add i64 %.sroa.0.0.i, %.sroa.6.0.i      ; 9 uses
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.sroa.0.0.i ; 2 uses
  %i.oe = sub i64 0, %.sink.i
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 %i.oe ; 2 uses
  %i.og = icmp ugt ptr %i.od, %i.o
  %i.oh = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 %i.ob
  %i.oi = icmp ugt ptr %i.oh, %i.hb
  %or.cond.i.i.i = select i1 %i.og, i1 true, i1 %i.oi, !prof !112
  br i1 %or.cond.i.i.i, label %bb.bf, label %.critedge.i.i.i, !prof !112

.critedge.i.i.i:                                  ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  %i.oj = load <2 x i64>, ptr %i.oc, align 1, !tbaa !9
  store <2 x i64> %i.oj, ptr %.068.i103.i, align 1, !tbaa !9
  %i.ok = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.ok, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !prof !60

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  store i64 %.sroa.0.0.i, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.6.0.i, ptr %.sroa.643.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !53
  %i.ol = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.068.i103.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bg:                                            ; preds = %.critedge.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 16
  %i.on = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.oo = add i64 %.sroa.0.0.i, -16
  %i.op = load <2 x i64>, ptr %i.on, align 1, !tbaa !9
  store <2 x i64> %i.op, ptr %i.om, align 1, !tbaa !9
  %i.oq = icmp slt i64 %i.oo, 17
  br i1 %i.oq, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.or = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.130.i.i.i = phi ptr [ %i.or, %bb.bh ], [ %i.ow, %bb.bi ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.on, %bb.bh ], [ %i.ou, %bb.bi ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.os = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !9
  store <2 x i64> %i.os, ptr %.130.i.i.i, align 1, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %i.ov = load <2 x i64>, ptr %i.ou, align 1, !tbaa !9
  store <2 x i64> %i.ov, ptr %i.ot, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.oa
  br i1 %i.ox, label %bb.bi, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i: ; preds = %bb.bi, %bb.bg, %.critedge.i.i.i
  store ptr %i.od, ptr %i.a, align 8, !tbaa !46
  %i.oy = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.oz = sub i64 %i.oy, %i.hc                    ; 3 uses
  %i.pa = icmp ugt i64 %.sink.i, %i.oz
  br i1 %i.pa, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %i.pb = sub i64 %i.oy, %i.hd
  %i.pc = icmp ugt i64 %.sink.i, %i.pb
  br i1 %i.pc, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, label %bb.bk, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread85.i

bb.bk:                                            ; preds = %bb.bj
  %i.pd = ptrtoint ptr %i.of to i64
  %i.pe = sub i64 %i.pd, %i.hc                    ; 3 uses
  %i.pf = getelementptr inbounds i8, ptr %i.u, i64 %i.pe ; 2 uses
  %i.pg = add nsw i64 %i.pe, %.sroa.6.0.i         ; 2 uses
  %.not.i82.i.i = icmp sgt i64 %i.pg, 0
  br i1 %.not.i82.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pf, i64 %.sroa.6.0.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %gepdiff.i.i.i = sub nsw i64 0, %i.pe           ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pf, i64 %gepdiff.i.i.i, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oa, i64 %gepdiff.i.i.i
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %.sroa.643.0.i = phi i64 [ %i.pg, %bb.bm ], [ %.sroa.6.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 5 uses
  %.072.i = phi ptr [ %i.q, %bb.bm ], [ %i.of, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ph, %bb.bm ], [ %i.oa, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 12 uses
  %i.pi = icmp ugt i64 %.sink.i, 15
  br i1 %i.pi, label %bb.bo, label %bb.br, !prof !97

bb.bo:                                            ; preds = %bb.bn
  %i.pj = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.643.0.i
  %i.pk = load <2 x i64>, ptr %.072.i, align 1, !tbaa !9
  store <2 x i64> %i.pk, ptr %.0.i, align 1, !tbaa !9
  %i.pl = icmp slt i64 %.sroa.643.0.i, 17
  br i1 %i.pl, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.130.i97.i.i = phi ptr [ %i.pm, %bb.bp ], [ %i.pr, %bb.bq ] ; 3 uses
  %.pn.i98.i.i = phi ptr [ %.072.i, %bb.bp ], [ %i.pp, %bb.bq ] ; 2 uses
  %.1.i99.i.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 16
  %i.pn = load <2 x i64>, ptr %.1.i99.i.i, align 1, !tbaa !9
  store <2 x i64> %i.pn, ptr %.130.i97.i.i, align 1, !tbaa !9
  %i.po = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 16
  %i.pp = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 32 ; 2 uses
  %i.pq = load <2 x i64>, ptr %i.pp, align 1, !tbaa !9
  store <2 x i64> %i.pq, ptr %i.po, align 1, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 32 ; 2 uses
  %i.ps = icmp ult ptr %i.pr, %i.pj
  br i1 %i.ps, label %bb.bq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

bb.br:                                            ; preds = %bb.bn
  %i.pt = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = load i8, ptr %.072.i, align 1, !tbaa !9
  store i8 %i.pw, ptr %.0.i, align 1, !tbaa !9
  %i.px = getelementptr inbounds nuw i8, ptr %.072.i, i64 1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !9
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !9
  %i.qa = getelementptr inbounds nuw i8, ptr %.072.i, i64 2
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw i8, ptr %.072.i, i64 3
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !9
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !9
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !3
  %i.qi = zext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %.072.i, i64 %i.qi ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ql = load i32, ptr %i.qj, align 1
  store i32 %i.ql, ptr %i.qk, align 1
  %i.qm = sext i32 %i.pv to i64
  %i.qn = sub nsw i64 0, %i.qm
  %i.qo = getelementptr inbounds i8, ptr %i.qj, i64 %i.qn
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %i.qp = load i64, ptr %.072.i, align 1
  store i64 %i.qp, ptr %.0.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i: ; preds = %bb.bt, %bb.bs
  %.1.i = phi ptr [ %i.qo, %bb.bs ], [ %.072.i, %bb.bt ] ; 2 uses
  %.1.i18 = ptrtoaddr ptr %.1.i to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qs = icmp ugt i64 %.sroa.643.0.i, 8
  br i1 %i.qs, label %bb.bu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = ptrtoint ptr %i.qq to i64
  %i.qv = sub i64 %i.qt, %i.qu
  %i.qw = getelementptr i8, ptr %.0.i, i64 %.sroa.643.0.i ; 2 uses
  %i.qx = icmp slt i64 %i.qv, 16
  br i1 %i.qx, label %.preheader97.i.preheader, label %bb.bv

.preheader97.i.preheader:                         ; preds = %bb.bu
  %i.qy = add i64 %.sroa.6.0.i, %i.hc
  %i.qz = add i64 %.sink.i, %i.oz
  %umax19 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.oz) ; 2 uses
  %i.ra = add i64 %i.qy, %i.qz
  %i.rb = sub i64 %i.ra, %.sink.i
  %i.rc = add i64 %i.hf, %umax19
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.rb, i64 %i.rc)
  %i.rd = add i64 %umax20, -9
  %i.re = add i64 %umax19, %i.hc
  %i.rf = sub i64 %i.rd, %i.re                    ; 2 uses
  %i.rg = lshr i64 %i.rf, 3
  %i.rh = add nuw nsw i64 %i.rg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rf, 72
  br i1 %min.iters.check, label %.preheader97.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader97.i.preheader
  %i.ri = sub i64 %.sroa.0.0.i, %i.hc
  %i.rj = add i64 %i.ri, %.068.i103.i17
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.rj)
  %i.rk = add i64 %umax, %i.hc
  %i.rl = sub i64 %i.rk, %.1.i18
  %diff.check = icmp ult i64 %i.rl, 32
  br i1 %diff.check, label %.preheader97.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rh, 4611686018427387900     ; 3 uses
  %i.rm = shl i64 %n.vec, 3                       ; 2 uses
  %i.rn = getelementptr i8, ptr %i.qr, i64 %i.rm
  %i.ro = getelementptr i8, ptr %i.qq, i64 %i.rm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qr, i64 %i.rp ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.qq, i64 %i.rp ; 2 uses
  %i.rq = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 1
  %wide.load22 = load <2 x i64>, ptr %i.rq, align 1
  %i.rr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load22, ptr %i.rr, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rs = icmp eq i64 %index.next, %n.vec
  br i1 %i.rs, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rh, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %.preheader97.i.preheader25

.preheader97.i.preheader25:                       ; preds = %vector.memcheck, %.preheader97.i.preheader, %middle.block
  %.029.i.i.i.ph = phi ptr [ %i.qr, %vector.memcheck ], [ %i.qr, %.preheader97.i.preheader ], [ %i.rn, %middle.block ]
  %.0.i106.i.i.ph = phi ptr [ %i.qq, %vector.memcheck ], [ %i.qq, %.preheader97.i.preheader ], [ %i.ro, %middle.block ]
  br label %.preheader97.i

.preheader97.i:                                   ; preds = %.preheader97.i.preheader25, %.preheader97.i
  %.029.i.i.i = phi ptr [ %i.ru, %.preheader97.i ], [ %.029.i.i.i.ph, %.preheader97.i.preheader25 ] ; 2 uses
  %.0.i106.i.i = phi ptr [ %i.rv, %.preheader97.i ], [ %.0.i106.i.i.ph, %.preheader97.i.preheader25 ] ; 2 uses
  %i.rt = load i64, ptr %.0.i106.i.i, align 1
  store i64 %i.rt, ptr %.029.i.i.i, align 1
  %i.ru = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i106.i.i, i64 8
  %i.rw = icmp ult ptr %i.ru, %i.qw
  br i1 %i.rw, label %.preheader97.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !168

bb.bv:                                            ; preds = %bb.bu
  %i.rx = load <2 x i64>, ptr %i.qq, align 1, !tbaa !9
  store <2 x i64> %i.rx, ptr %i.qr, align 1, !tbaa !9
  %i.ry = icmp slt i64 %.sroa.643.0.i, 25
  br i1 %i.ry, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.130.i103.i.i = phi ptr [ %i.rz, %bb.bw ], [ %i.se, %bb.bx ] ; 3 uses
  %.pn.i104.i.i = phi ptr [ %i.qq, %bb.bw ], [ %i.sc, %bb.bx ] ; 2 uses
  %.1.i105.i.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i.i, i64 16
  %i.sa = load <2 x i64>, ptr %.1.i105.i.i, align 1, !tbaa !9
  store <2 x i64> %i.sa, ptr %.130.i103.i.i, align 1, !tbaa !9
  %i.sb = getelementptr inbounds nuw i8, ptr %.130.i103.i.i, i64 16
  %i.sc = getelementptr inbounds nuw i8, ptr %.pn.i104.i.i, i64 32 ; 2 uses
  %i.sd = load <2 x i64>, ptr %i.sc, align 1, !tbaa !9
  store <2 x i64> %i.sd, ptr %i.sb, align 1, !tbaa !9
  %i.se = getelementptr inbounds nuw i8, ptr %.130.i103.i.i, i64 32 ; 2 uses
  %i.sf = icmp ult ptr %i.se, %i.qw
  br i1 %i.sf, label %bb.bx, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i: ; preds = %bb.bx, %.preheader97.i, %bb.bq, %middle.block, %bb.bv, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i, %bb.bo, %bb.bl, %bb.bf
  %.0.i.i.i = phi i64 [ %i.ol, %bb.bf ], [ %i.ob, %middle.block ], [ %i.ob, %bb.bl ], [ %i.ob, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i ], [ %i.ob, %bb.bo ], [ %i.ob, %bb.bv ], [ %i.ob, %bb.bq ], [ %i.ob, %.preheader97.i ], [ %i.ob, %bb.bx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sg = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.sg, label %bb.by, label %.thread85.i

bb.by:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 %.0.i.i.i ; 2 uses
  %i.si = add nsw i32 %.063.i105.i, -1            ; 2 uses
  %.not77.i.i = icmp eq i32 %i.si, 0
  br i1 %.not77.i.i, label %bb.bz, label %bb.ah, !llvm.loop !169

bb.bz:                                            ; preds = %bb.by
  %i.sj = icmp eq ptr %i.nu, %3
  %.not96.i = icmp eq i32 %i.nv, 64
  %or.cond.i = select i1 %i.sj, i1 %.not96.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.thread85.i

.preheader.i:                                     ; preds = %bb.bz
  %i.sk = trunc i64 %.sink.i to i32
  store i32 %i.sk, ptr %i.w, align 4, !tbaa !3
  %i.sl = trunc i64 %.sink159.i to i32
  store i32 %i.sl, ptr %i.aa, align 4, !tbaa !3
  %i.sm = trunc i64 %i.kd to i32
  store i32 %i.sm, ptr %i.ae, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.ca

.thread85.i:                                      ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, %bb.bz, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.q, %bb.i, %bb.g
  %.2.i.ph.i = phi i64 [ -20, %bb.g ], [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ -20, %bb.bz ], [ -20, %bb.i ], [ -20, %bb.q ], [ %.0.i.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.ca:                                            ; preds = %.preheader.i, %bb.f
  %i.sn = phi ptr [ %.pre.i, %.preheader.i ], [ %i.l, %bb.f ] ; 2 uses
  %.371.i.i = phi ptr [ %i.sh, %.preheader.i ], [ %1, %bb.f ] ; 4 uses
  %i.so = ptrtoint ptr %i.o to i64
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = sub i64 %i.so, %i.sp                    ; 3 uses
  %i.sr = ptrtoint ptr %i.j to i64
  %i.ss = ptrtoint ptr %.371.i.i to i64
  %i.st = sub i64 %i.sr, %i.ss
  %.not81.i.i = icmp ugt i64 %i.sq, %i.st
  br i1 %.not81.i.i, label %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not80.i.i = icmp eq ptr %.371.i.i, null
  br i1 %.not80.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i.i, ptr align 1 %i.sn, i64 %i.sq, i1 false)
  %i.su = getelementptr inbounds nuw i8, ptr %.371.i.i, i64 %i.sq
  %i.sv = ptrtoint ptr %i.su to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.573.i.ph.i = phi i64 [ 0, %bb.cb ], [ %i.sv, %bb.cc ]
  %i.sw = ptrtoint ptr %1 to i64
  %i.sx = sub i64 %.573.i.ph.i, %i.sw
  br label %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %.thread85.i, %bb.ca, %bb.cd
  %.5.i.i = phi i64 [ %i.sx, %bb.cd ], [ %.2.i.ph.i, %.thread85.i ], [ -70, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.5.i.i, %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11duckdb_zstd20ZSTD_checkContinuityEPNS_11ZSTD_DCtx_sEPKvm(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29888 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = icmp ne ptr %1, %i.b
  %i.d = icmp ne i64 %2, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %i.b, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29896 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %.neg = sub i64 %i.i, %i.h
  %i.j = getelementptr inbounds i8, ptr %1, i64 %.neg
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %i.j, ptr %i.k, align 8, !tbaa !78
  store ptr %1, ptr %i.f, align 8, !tbaa !81
  store ptr %1, ptr %i.a, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd31ZSTD_decompressBlock_deprecatedEPNS_11ZSTD_DCtx_sEPvmPKvm(ptr noundef initializes((30176, 30180)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 29888 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !170  ; 3 uses
  %i.d = icmp ne ptr %1, %i.c
  %i.e = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %bb.b, label %_ZN11duckdb_zstd20ZSTD_checkContinuityEPNS_11ZSTD_DCtx_sEPKvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29912
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.237.i = phi ptr [ %i.ym, %.lr.ph.i ], [ %.237.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23136.i = phi ptr [ %i.yk, %.lr.ph.i ], [ %.23136.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.23136.i, i64 1
  %i.yl = load i8, ptr %.23136.i, align 1, !tbaa !9
  %i.ym = getelementptr inbounds nuw i8, ptr %.237.i, i64 1 ; 2 uses
  store i8 %i.yl, ptr %.237.i, align 1, !tbaa !9
  %exitcond.not.i = icmp eq ptr %i.ym, %scevgep.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph.i, !llvm.loop !182

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit: ; preds = %.lr.ph.i, %.lr.ph40.i, %middle.block83, %vec.epilog.middle.block101, %middle.block51, %vec.epilog.middle.block, %.preheader.i
  %i.yn = load i64, ptr %i.wd, align 8, !tbaa !102
  %i.yo = sub i64 %i.yn, %i.wk                    ; 2 uses
  store i64 %i.yo, ptr %i.wd, align 8, !tbaa !102
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.cc, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit
  %.sroa.0320.0.copyload = phi i64 [ %i.yo, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %i.we, %bb.cc ] ; 8 uses
  %.1208.i = phi ptr [ %i.wp, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.0207.i699, %bb.cc ] ; 8 uses
  %.1208.i28 = ptrtoaddr ptr %.1208.i to i64
  store ptr %i.hw, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.b, align 8, !tbaa !43
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wd, i64 8 ; 2 uses
  %.sroa.4321.0.copyload = load i64, ptr %.sroa.4321.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wd, i64 16 ; 2 uses
  %.sroa.5322.0.copyload = load i64, ptr %.sroa.5322.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.yp = getelementptr i8, ptr %.1208.i, i64 %.sroa.0320.0.copyload ; 7 uses
  %i.yq = add i64 %.sroa.4321.0.copyload, %.sroa.0320.0.copyload ; 9 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sroa.0320.0.copyload
  %i.ys = sub i64 0, %.sroa.5322.0.copyload
  %i.yt = getelementptr inbounds i8, ptr %i.yp, i64 %i.ys ; 2 uses
  %i.yu = icmp ugt i64 %.sroa.0320.0.copyload, 65536
  %i.yv = getelementptr inbounds nuw i8, ptr %.1208.i, i64 %i.yq
  %i.yw = icmp ugt ptr %i.yv, %i.ht
  %or.cond.i = select i1 %i.yu, i1 true, i1 %i.yw, !prof !112
  br i1 %or.cond.i, label %bb.cj, label %.critedge.i, !prof !112

.critedge.i:                                      ; preds = %thread-pre-split
  %i.yx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !9
  store <2 x i64> %i.yx, ptr %.1208.i, align 1, !tbaa !9
  %i.yy = icmp samesign ugt i64 %.sroa.0320.0.copyload, 16
  br i1 %i.yy, label %bb.ck, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, !prof !60

bb.cj:                                            ; preds = %thread-pre-split
  store i64 %.sroa.0320.0.copyload, ptr %11, align 8, !tbaa !53
  store i64 %.sroa.4321.0.copyload, ptr %.sroa.6308.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5322.0.copyload, ptr %.sroa.12315.0..sroa_idx, align 8, !tbaa !53
  %i.yz = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.1208.i, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hx, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.ck:                                            ; preds = %.critedge.i
  %i.za = getelementptr inbounds nuw i8, ptr %.1208.i, i64 16
  %i.zb = load <2 x i64>, ptr %i.hy, align 1, !tbaa !9
  store <2 x i64> %i.zb, ptr %i.za, align 1, !tbaa !9
  %i.zc = icmp samesign ult i64 %.sroa.0320.0.copyload, 33
  br i1 %i.zc, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.zd = getelementptr inbounds nuw i8, ptr %.1208.i, i64 32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %.130.i173 = phi ptr [ %i.zd, %bb.cl ], [ %i.zi, %bb.cm ] ; 3 uses
  %.pn.i174 = phi ptr [ %i.hy, %bb.cl ], [ %i.zg, %bb.cm ] ; 2 uses
  %.1.i175 = getelementptr inbounds nuw i8, ptr %.pn.i174, i64 16
  %i.ze = load <2 x i64>, ptr %.1.i175, align 1, !tbaa !9
  store <2 x i64> %i.ze, ptr %.130.i173, align 1, !tbaa !9
  %i.zf = getelementptr inbounds nuw i8, ptr %.130.i173, i64 16
  %i.zg = getelementptr inbounds nuw i8, ptr %.pn.i174, i64 32 ; 2 uses
  %i.zh = load <2 x i64>, ptr %i.zg, align 1, !tbaa !9
  store <2 x i64> %i.zh, ptr %i.zf, align 1, !tbaa !9
  %i.zi = getelementptr inbounds nuw i8, ptr %.130.i173, i64 32 ; 2 uses
  %i.zj = icmp ult ptr %i.zi, %i.yp
  br i1 %i.zj, label %bb.cm, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178: ; preds = %bb.cm, %bb.ck, %.critedge.i
  store ptr %i.yr, ptr %i.a, align 8, !tbaa !46
  %i.zk = ptrtoint ptr %i.yp to i64               ; 2 uses
  %i.zl = sub i64 %i.zk, %i.ah                    ; 3 uses
  %i.zm = icmp ugt i64 %.sroa.5322.0.copyload, %i.zl
  br i1 %i.zm, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178
  %i.zn = sub i64 %i.zk, %i.hu
  %i.zo = icmp ugt i64 %.sroa.5322.0.copyload, %i.zn
  br i1 %i.zo, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread, label %bb.co, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread620

bb.co:                                            ; preds = %bb.cn
  %i.zp = ptrtoint ptr %i.yt to i64
  %i.zq = sub i64 %i.zp, %i.ah                    ; 3 uses
  %i.zr = getelementptr inbounds i8, ptr %i.r, i64 %i.zq ; 2 uses
  %i.zs = add nsw i64 %i.zq, %.sroa.4321.0.copyload ; 2 uses
  %.not.i16 = icmp sgt i64 %i.zs, 0
  br i1 %.not.i16, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yp, ptr align 1 %i.zr, i64 %.sroa.4321.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.cq:                                            ; preds = %bb.co
  %gepdiff.i = sub nsw i64 0, %i.zq               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yp, ptr align 1 %i.zr, i64 %gepdiff.i, i1 false)
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yp, i64 %gepdiff.i
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178
  %.sroa.6308.0 = phi i64 [ %i.zs, %bb.cq ], [ %.sroa.4321.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 5 uses
  %.0564 = phi ptr [ %i.n, %bb.cq ], [ %i.yt, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 9 uses
  %.0563 = phi ptr [ %i.zt, %bb.cq ], [ %i.yp, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 12 uses
  %i.zu = icmp ugt i64 %.sroa.5322.0.copyload, 15
  br i1 %i.zu, label %bb.cs, label %bb.cv, !prof !97

bb.cs:                                            ; preds = %bb.cr
  %i.zv = getelementptr inbounds i8, ptr %.0563, i64 %.sroa.6308.0
  %i.zw = load <2 x i64>, ptr %.0564, align 1, !tbaa !9
  store <2 x i64> %i.zw, ptr %.0563, align 1, !tbaa !9
  %i.zx = icmp slt i64 %.sroa.6308.0, 17
  br i1 %i.zx, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zy = getelementptr inbounds nuw i8, ptr %.0563, i64 16
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %.130.i180 = phi ptr [ %i.zy, %bb.ct ], [ %i.aad, %bb.cu ] ; 3 uses
  %.pn.i181 = phi ptr [ %.0564, %bb.ct ], [ %i.aab, %bb.cu ] ; 2 uses
  %.1.i182 = getelementptr inbounds nuw i8, ptr %.pn.i181, i64 16
  %i.zz = load <2 x i64>, ptr %.1.i182, align 1, !tbaa !9
  store <2 x i64> %i.zz, ptr %.130.i180, align 1, !tbaa !9
  %i.aaa = getelementptr inbounds nuw i8, ptr %.130.i180, i64 16
  %i.aab = getelementptr inbounds nuw i8, ptr %.pn.i181, i64 32 ; 2 uses
  %i.aac = load <2 x i64>, ptr %i.aab, align 1, !tbaa !9
  store <2 x i64> %i.aac, ptr %i.aaa, align 1, !tbaa !9
  %i.aad = getelementptr inbounds nuw i8, ptr %.130.i180, i64 32 ; 2 uses
  %i.aae = icmp ult ptr %i.aad, %i.zv
  br i1 %i.aae, label %bb.cu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, !llvm.loop !108

bb.cv:                                            ; preds = %bb.cr
  %i.aaf = icmp samesign ult i64 %.sroa.5322.0.copyload, 8
  br i1 %i.aaf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5322.0.copyload
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !3
  %i.aai = load i8, ptr %.0564, align 1, !tbaa !9
  store i8 %i.aai, ptr %.0563, align 1, !tbaa !9
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0564, i64 1
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !9
  %i.aal = getelementptr inbounds nuw i8, ptr %.0563, i64 1
  store i8 %i.aak, ptr %i.aal, align 1, !tbaa !9
  %i.aam = getelementptr inbounds nuw i8, ptr %.0564, i64 2
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !9
  %i.aao = getelementptr inbounds nuw i8, ptr %.0563, i64 2
  store i8 %i.aan, ptr %i.aao, align 1, !tbaa !9
  %i.aap = getelementptr inbounds nuw i8, ptr %.0564, i64 3
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !9
  %i.aar = getelementptr inbounds nuw i8, ptr %.0563, i64 3
  store i8 %i.aaq, ptr %i.aar, align 1, !tbaa !9
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5322.0.copyload
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !3
  %i.aau = zext i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %.0564, i64 %i.aau ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0563, i64 4
  %i.aax = load i32, ptr %i.aav, align 1
  store i32 %i.aax, ptr %i.aaw, align 1
  %i.aay = sext i32 %i.aah to i64
  %i.aaz = sub nsw i64 0, %i.aay
  %i.aba = getelementptr inbounds i8, ptr %i.aav, i64 %i.aaz
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197

bb.cx:                                            ; preds = %bb.cv
  %i.abb = load i64, ptr %.0564, align 1
  store i64 %i.abb, ptr %.0563, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197: ; preds = %bb.cw, %bb.cx
  %.1565 = phi ptr [ %i.aba, %bb.cw ], [ %.0564, %bb.cx ] ; 2 uses
  %.156529 = ptrtoaddr ptr %.1565 to i64
  %i.abc = getelementptr inbounds nuw i8, ptr %.1565, i64 8 ; 7 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.0563, i64 8 ; 6 uses
  %i.abe = icmp ugt i64 %.sroa.6308.0, 8
  br i1 %i.abe, label %bb.cy, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.cy:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197
  %i.abf = ptrtoint ptr %i.abd to i64
  %i.abg = ptrtoint ptr %i.abc to i64
  %i.abh = sub i64 %i.abf, %i.abg
  %i.abi = getelementptr i8, ptr %.0563, i64 %.sroa.6308.0 ; 2 uses
  %i.abj = icmp slt i64 %i.abh, 16
  br i1 %i.abj, label %.preheader651.preheader, label %bb.cz

.preheader651.preheader:                          ; preds = %bb.cy
  %i.abk = add i64 %.sroa.4321.0.copyload, %i.ah
  %i.abl = add i64 %.sroa.5322.0.copyload, %i.zl
  %umax30 = tail call i64 @llvm.umax.i64(i64 %.sroa.5322.0.copyload, i64 %i.zl) ; 2 uses
  %i.abm = add i64 %i.abk, %i.abl
  %i.abn = sub i64 %i.abm, %.sroa.5322.0.copyload
  %i.abo = add i64 %i.hz, %umax30
  %umax31 = tail call i64 @llvm.umax.i64(i64 %i.abn, i64 %i.abo)
  %i.abp = add i64 %umax31, -9
  %i.abq = add i64 %umax30, %i.ah
  %i.abr = sub i64 %i.abp, %i.abq                 ; 2 uses
  %i.abs = lshr i64 %i.abr, 3
  %i.abt = add nuw nsw i64 %i.abs, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.abr, 72
  br i1 %min.iters.check, label %.preheader651.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader651.preheader
  %i.abu = sub i64 %.sroa.0320.0.copyload, %i.ah
  %i.abv = add i64 %i.abu, %.1208.i28
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.5322.0.copyload, i64 %i.abv)
  %i.abw = add i64 %umax, %i.ah
  %i.abx = sub i64 %i.abw, %.156529
  %diff.check = icmp ult i64 %i.abx, 32
  br i1 %diff.check, label %.preheader651.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abt, 4611686018427387900    ; 3 uses
  %i.aby = shl i64 %n.vec, 3                      ; 2 uses
  %i.abz = getelementptr i8, ptr %i.abd, i64 %i.aby
  %i.aca = getelementptr i8, ptr %i.abc, i64 %i.aby
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.acb = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.abd, i64 %i.acb ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.abc, i64 %i.acb ; 2 uses
  %i.acc = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 1
  %wide.load33 = load <2 x i64>, ptr %i.acc, align 1
  %i.acd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load33, ptr %i.acd, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ace = icmp eq i64 %index.next, %n.vec
  br i1 %i.ace, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abt, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, label %.preheader651.preheader322

.preheader651.preheader322:                       ; preds = %vector.memcheck, %.preheader651.preheader, %middle.block
  %.029.i190.ph = phi ptr [ %i.abd, %vector.memcheck ], [ %i.abd, %.preheader651.preheader ], [ %i.abz, %middle.block ]
  %.0.i191.ph = phi ptr [ %i.abc, %vector.memcheck ], [ %i.abc, %.preheader651.preheader ], [ %i.aca, %middle.block ]
  br label %.preheader651

.preheader651:                                    ; preds = %.preheader651.preheader322, %.preheader651
  %.029.i190 = phi ptr [ %i.acg, %.preheader651 ], [ %.029.i190.ph, %.preheader651.preheader322 ] ; 2 uses
  %.0.i191 = phi ptr [ %i.ach, %.preheader651 ], [ %.0.i191.ph, %.preheader651.preheader322 ] ; 2 uses
  %i.acf = load i64, ptr %.0.i191, align 1
  store i64 %i.acf, ptr %.029.i190, align 1
  %i.acg = getelementptr inbounds nuw i8, ptr %.029.i190, i64 8 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.0.i191, i64 8
  %i.aci = icmp ult ptr %i.acg, %i.abi
  br i1 %i.aci, label %.preheader651, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, !llvm.loop !184

bb.cz:                                            ; preds = %bb.cy
  %i.acj = load <2 x i64>, ptr %i.abc, align 1, !tbaa !9
  store <2 x i64> %i.acj, ptr %i.abd, align 1, !tbaa !9
  %i.ack = icmp slt i64 %.sroa.6308.0, 25
  br i1 %i.ack, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.acl = getelementptr inbounds nuw i8, ptr %.0563, i64 24
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.130.i187 = phi ptr [ %i.acl, %bb.da ], [ %i.acq, %bb.db ] ; 3 uses
  %.pn.i188 = phi ptr [ %i.abc, %bb.da ], [ %i.aco, %bb.db ] ; 2 uses
  %.1.i189 = getelementptr inbounds nuw i8, ptr %.pn.i188, i64 16
  %i.acm = load <2 x i64>, ptr %.1.i189, align 1, !tbaa !9
  store <2 x i64> %i.acm, ptr %.130.i187, align 1, !tbaa !9
  %i.acn = getelementptr inbounds nuw i8, ptr %.130.i187, i64 16
  %i.aco = getelementptr inbounds nuw i8, ptr %.pn.i188, i64 32 ; 2 uses
  %i.acp = load <2 x i64>, ptr %i.aco, align 1, !tbaa !9
  store <2 x i64> %i.acp, ptr %i.acn, align 1, !tbaa !9
  %i.acq = getelementptr inbounds nuw i8, ptr %.130.i187, i64 32 ; 2 uses
  %i.acr = icmp ult ptr %i.acq, %i.abi
  br i1 %i.acr, label %bb.db, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit: ; preds = %bb.db, %.preheader651, %bb.cu, %middle.block, %bb.cz, %bb.cs, %bb.cj, %bb.cp, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197
  %.0.i15 = phi i64 [ %i.yz, %bb.cj ], [ %i.yq, %bb.cu ], [ %i.yq, %bb.cp ], [ %i.yq, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197 ], [ %i.yq, %bb.cz ], [ %i.yq, %bb.cs ], [ %i.yq, %middle.block ], [ %i.yq, %.preheader651 ], [ %i.yq, %bb.db ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.acs = icmp ult i64 %.0.i15, -119
  br i1 %i.acs, label %bb.dc, label %.thread620

bb.dc:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit
  %i.act = add i64 %.sroa.0.0, %.1242.i696        ; 3 uses
  %i.acu = icmp ugt i64 %.sink855, %i.act
  %i.acv = select i1 %i.acu, ptr %i.r, ptr %i.n
  %i.acw = getelementptr inbounds i8, ptr %i.acv, i64 %i.act
  %i.acx = sub i64 0, %.sink855
  %i.acy = getelementptr inbounds i8, ptr %i.acw, i64 %i.acx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.acy, i32 0, i32 3, i32 1)
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.acz, i32 0, i32 3, i32 1)
  store i64 %.sroa.0.0, ptr %i.wd, align 8, !tbaa !53
  store i64 %.sroa.9.0, ptr %.sroa.4321.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink855, ptr %.sroa.5322.0..sroa_idx, align 8, !tbaa !53
  %i.ada = getelementptr inbounds nuw i8, ptr %.1208.i, i64 %.0.i15
  br label %bb.es

bb.dd:                                            ; preds = %bb.cb
  %i.adb = getelementptr inbounds i8, ptr %i.wf, i64 -32 ; 2 uses
  %.sroa.4484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %.sroa.4484.0.copyload = load i64, ptr %.sroa.4484.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %.sroa.5485.0.copyload = load i64, ptr %.sroa.5485.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.adc = getelementptr i8, ptr %.0207.i699, i64 %i.we ; 7 uses
  %i.add = add i64 %.sroa.4484.0.copyload, %i.we  ; 9 uses
  %i.ade = sub i64 0, %.sroa.5485.0.copyload
  %i.adf = getelementptr inbounds i8, ptr %i.adc, i64 %i.ade ; 2 uses
  %i.adg = icmp ugt ptr %i.wf, %.0226.i698
  %i.adh = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 %i.add
  %i.adi = icmp ugt ptr %i.adh, %i.adb
  %or.cond.i35 = select i1 %i.adg, i1 true, i1 %i.adi, !prof !112
  br i1 %or.cond.i35, label %bb.de, label %.critedge.i36, !prof !112

.critedge.i36:                                    ; preds = %bb.dd
  %i.adj = load <2 x i64>, ptr %i.wa, align 1, !tbaa !9
  store <2 x i64> %i.adj, ptr %.0207.i699, align 1, !tbaa !9
  %i.adk = icmp ugt i64 %i.we, 16
  br i1 %i.adk, label %bb.df, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94, !prof !60

bb.de:                                            ; preds = %bb.dd
  store i64 %i.we, ptr %7, align 8, !tbaa !53
  store i64 %.sroa.4484.0.copyload, ptr %.sroa.6471.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5485.0.copyload, ptr %.sroa.12478.0..sroa_idx, align 8, !tbaa !53
  %i.adl = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0207.i699, ptr noundef %i.h, ptr noundef nonnull %i.adb, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef %.0226.i698, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit

bb.df:                                            ; preds = %.critedge.i36
  %i.adm = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 16
  %i.adn = getelementptr inbounds nuw i8, ptr %i.wa, i64 16 ; 2 uses
  %i.ado = add i64 %i.we, -16
  %i.adp = load <2 x i64>, ptr %i.adn, align 1, !tbaa !9
  store <2 x i64> %i.adp, ptr %i.adm, align 1, !tbaa !9
  %i.adq = icmp slt i64 %i.ado, 17
  br i1 %i.adq, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.adr = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %bb.dg
  %.130.i89 = phi ptr [ %i.adr, %bb.dg ], [ %i.adw, %bb.dh ] ; 3 uses
  %.pn.i90 = phi ptr [ %i.adn, %bb.dg ], [ %i.adu, %bb.dh ] ; 2 uses
  %.1.i91 = getelementptr inbounds nuw i8, ptr %.pn.i90, i64 16
  %i.ads = load <2 x i64>, ptr %.1.i91, align 1, !tbaa !9
  store <2 x i64> %i.ads, ptr %.130.i89, align 1, !tbaa !9
  %i.adt = getelementptr inbounds nuw i8, ptr %.130.i89, i64 16
  %i.adu = getelementptr inbounds nuw i8, ptr %.pn.i90, i64 32 ; 2 uses
  %i.adv = load <2 x i64>, ptr %i.adu, align 1, !tbaa !9
  store <2 x i64> %i.adv, ptr %i.adt, align 1, !tbaa !9
  %i.adw = getelementptr inbounds nuw i8, ptr %.130.i89, i64 32 ; 2 uses
  %i.adx = icmp ult ptr %i.adw, %i.adc
  br i1 %i.adx, label %bb.dh, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94: ; preds = %bb.dh, %bb.df, %.critedge.i36
  store ptr %i.wf, ptr %i.a, align 8, !tbaa !46
  %i.ady = ptrtoint ptr %i.adc to i64             ; 2 uses
  %i.adz = sub i64 %i.ady, %i.ah                  ; 3 uses
  %i.aea = icmp ugt i64 %.sroa.5485.0.copyload, %i.adz
  br i1 %i.aea, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94
  %i.aeb = sub i64 %i.ady, %i.hu
  %i.aec = icmp ugt i64 %.sroa.5485.0.copyload, %i.aeb
  br i1 %i.aec, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, label %bb.dj, !prof !60

bb.dj:                                            ; preds = %bb.di
  %i.aed = ptrtoint ptr %i.adf to i64
  %i.aee = sub i64 %i.aed, %i.ah                  ; 3 uses
  %i.aef = getelementptr inbounds i8, ptr %i.r, i64 %i.aee ; 2 uses
  %i.aeg = add nsw i64 %i.aee, %.sroa.4484.0.copyload ; 2 uses
  %.not.i38 = icmp sgt i64 %i.aeg, 0
  br i1 %.not.i38, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.adc, ptr align 1 %i.aef, i64 %.sroa.4484.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit

bb.dl:                                            ; preds = %bb.dj
  %gepdiff.i39 = sub nsw i64 0, %i.aee            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.adc, ptr align 1 %i.aef, i64 %gepdiff.i39, i1 false)
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adc, i64 %gepdiff.i39
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94
  %.sroa.6471.0 = phi i64 [ %i.aeg, %bb.dl ], [ %.sroa.4484.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94 ] ; 5 uses
  %.0552 = phi ptr [ %i.n, %bb.dl ], [ %i.adf, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94 ] ; 9 uses
  %.0551 = phi ptr [ %i.aeh, %bb.dl ], [ %i.adc, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94 ] ; 12 uses
  %i.aei = icmp ugt i64 %.sroa.5485.0.copyload, 15
  br i1 %i.aei, label %bb.dn, label %bb.dq, !prof !97

bb.dn:                                            ; preds = %bb.dm
  %i.aej = getelementptr inbounds i8, ptr %.0551, i64 %.sroa.6471.0
  %i.aek = load <2 x i64>, ptr %.0552, align 1, !tbaa !9
  store <2 x i64> %i.aek, ptr %.0551, align 1, !tbaa !9
  %i.ael = icmp slt i64 %.sroa.6471.0, 17
  br i1 %i.ael, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aem = getelementptr inbounds nuw i8, ptr %.0551, i64 16
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %bb.do
  %.130.i96 = phi ptr [ %i.aem, %bb.do ], [ %i.aer, %bb.dp ] ; 3 uses
  %.pn.i97 = phi ptr [ %.0552, %bb.do ], [ %i.aep, %bb.dp ] ; 2 uses
  %.1.i98 = getelementptr inbounds nuw i8, ptr %.pn.i97, i64 16
  %i.aen = load <2 x i64>, ptr %.1.i98, align 1, !tbaa !9
  store <2 x i64> %i.aen, ptr %.130.i96, align 1, !tbaa !9
  %i.aeo = getelementptr inbounds nuw i8, ptr %.130.i96, i64 16
  %i.aep = getelementptr inbounds nuw i8, ptr %.pn.i97, i64 32 ; 2 uses
  %i.aeq = load <2 x i64>, ptr %i.aep, align 1, !tbaa !9
  store <2 x i64> %i.aeq, ptr %i.aeo, align 1, !tbaa !9
  %i.aer = getelementptr inbounds nuw i8, ptr %.130.i96, i64 32 ; 2 uses
  %i.aes = icmp ult ptr %i.aer, %i.aej
  br i1 %i.aes, label %bb.dp, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, !llvm.loop !108

bb.dq:                                            ; preds = %bb.dm
  %i.aet = icmp samesign ult i64 %.sroa.5485.0.copyload, 8
  br i1 %i.aet, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5485.0.copyload
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !3
  %i.aew = load i8, ptr %.0552, align 1, !tbaa !9
  store i8 %i.aew, ptr %.0551, align 1, !tbaa !9
  %i.aex = getelementptr inbounds nuw i8, ptr %.0552, i64 1
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !9
  %i.aez = getelementptr inbounds nuw i8, ptr %.0551, i64 1
  store i8 %i.aey, ptr %i.aez, align 1, !tbaa !9
  %i.afa = getelementptr inbounds nuw i8, ptr %.0552, i64 2
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !9
  %i.afc = getelementptr inbounds nuw i8, ptr %.0551, i64 2
  store i8 %i.afb, ptr %i.afc, align 1, !tbaa !9
  %i.afd = getelementptr inbounds nuw i8, ptr %.0552, i64 3
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !9
  %i.aff = getelementptr inbounds nuw i8, ptr %.0551, i64 3
  store i8 %i.afe, ptr %i.aff, align 1, !tbaa !9
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5485.0.copyload
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !3
  %i.afi = zext i32 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %.0552, i64 %i.afi ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.0551, i64 4
  %i.afl = load i32, ptr %i.afj, align 1
  store i32 %i.afl, ptr %i.afk, align 1
  %i.afm = sext i32 %i.aev to i64
  %i.afn = sub nsw i64 0, %i.afm
  %i.afo = getelementptr inbounds i8, ptr %i.afj, i64 %i.afn
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193

bb.ds:                                            ; preds = %bb.dq
  %i.afp = load i64, ptr %.0552, align 1
  store i64 %i.afp, ptr %.0551, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193: ; preds = %bb.dr, %bb.ds
  %.1553 = phi ptr [ %i.afo, %bb.dr ], [ %.0552, %bb.ds ] ; 2 uses
  %.1553108 = ptrtoaddr ptr %.1553 to i64
  %i.afq = getelementptr inbounds nuw i8, ptr %.1553, i64 8 ; 7 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.0551, i64 8 ; 6 uses
  %i.afs = icmp ugt i64 %.sroa.6471.0, 8
  br i1 %i.afs, label %bb.dt, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit

bb.dt:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193
  %i.aft = ptrtoint ptr %i.afr to i64
  %i.afu = ptrtoint ptr %i.afq to i64
  %i.afv = sub i64 %i.aft, %i.afu
  %i.afw = getelementptr i8, ptr %.0551, i64 %.sroa.6471.0 ; 2 uses
  %i.afx = icmp slt i64 %i.afv, 16
  br i1 %i.afx, label %.preheader655.preheader, label %bb.du

.preheader655.preheader:                          ; preds = %bb.dt
  %i.afy = add i64 %.sroa.4484.0.copyload, %i.ah
  %i.afz = add i64 %.sroa.5485.0.copyload, %i.adz
  %umax111 = tail call i64 @llvm.umax.i64(i64 %.sroa.5485.0.copyload, i64 %i.adz) ; 2 uses
  %i.aga = add i64 %i.afy, %i.afz
  %i.agb = sub i64 %i.aga, %.sroa.5485.0.copyload
  %i.agc = add i64 %i.ia, %umax111
  %umax112 = tail call i64 @llvm.umax.i64(i64 %i.agb, i64 %i.agc)
  %i.agd = add i64 %umax112, -9
  %i.age = add i64 %umax111, %i.ah
  %i.agf = sub i64 %i.agd, %i.age                 ; 2 uses
  %i.agg = lshr i64 %i.agf, 3
  %i.agh = add nuw nsw i64 %i.agg, 1              ; 2 uses
  %min.iters.check114 = icmp ult i64 %i.agf, 72
  br i1 %min.iters.check114, label %.preheader655.preheader326, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.preheader655.preheader
  %i.agi = sub i64 %i.we, %i.ah
  %i.agj = add i64 %i.agi, %.0207.i699106
  %umax107 = tail call i64 @llvm.umax.i64(i64 %.sroa.5485.0.copyload, i64 %i.agj)
  %i.agk = add i64 %umax107, %i.ah
  %i.agl = sub i64 %i.agk, %.1553108
  %diff.check109 = icmp ult i64 %i.agl, 32
  br i1 %diff.check109, label %.preheader655.preheader326, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck105
  %n.vec117 = and i64 %i.agh, 4611686018427387900 ; 3 uses
  %i.agm = shl i64 %n.vec117, 3                   ; 2 uses
  %i.agn = getelementptr i8, ptr %i.afr, i64 %i.agm
  %i.ago = getelementptr i8, ptr %i.afq, i64 %i.agm
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next124, %vector.body118 ] ; 2 uses
  %i.agp = shl i64 %index119, 3                   ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.afr, i64 %i.agp ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.afq, i64 %i.agp ; 2 uses
  %i.agq = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <2 x i64>, ptr %next.gep121, align 1
  %wide.load123 = load <2 x i64>, ptr %i.agq, align 1
  %i.agr = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %wide.load122, ptr %next.gep120, align 1
  store <2 x i64> %wide.load123, ptr %i.agr, align 1
  %index.next124 = add nuw i64 %index119, 4       ; 2 uses
  %i.ags = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.ags, label %middle.block125, label %vector.body118, !llvm.loop !185

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.agh, %n.vec117
  br i1 %cmp.n126, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, label %.preheader655.preheader326

.preheader655.preheader326:                       ; preds = %vector.memcheck105, %.preheader655.preheader, %middle.block125
  %.029.i106.ph = phi ptr [ %i.afr, %vector.memcheck105 ], [ %i.afr, %.preheader655.preheader ], [ %i.agn, %middle.block125 ]
  %.0.i107.ph = phi ptr [ %i.afq, %vector.memcheck105 ], [ %i.afq, %.preheader655.preheader ], [ %i.ago, %middle.block125 ]
  br label %.preheader655

.preheader655:                                    ; preds = %.preheader655.preheader326, %.preheader655
  %.029.i106 = phi ptr [ %i.agu, %.preheader655 ], [ %.029.i106.ph, %.preheader655.preheader326 ] ; 2 uses
  %.0.i107 = phi ptr [ %i.agv, %.preheader655 ], [ %.0.i107.ph, %.preheader655.preheader326 ] ; 2 uses
  %i.agt = load i64, ptr %.0.i107, align 1
  store i64 %i.agt, ptr %.029.i106, align 1
  %i.agu = getelementptr inbounds nuw i8, ptr %.029.i106, i64 8 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.0.i107, i64 8
  %i.agw = icmp ult ptr %i.agu, %i.afw
  br i1 %i.agw, label %.preheader655, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, !llvm.loop !186

bb.du:                                            ; preds = %bb.dt
  %i.agx = load <2 x i64>, ptr %i.afq, align 1, !tbaa !9
  store <2 x i64> %i.agx, ptr %i.afr, align 1, !tbaa !9
  %i.agy = icmp slt i64 %.sroa.6471.0, 25
  br i1 %i.agy, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.agz = getelementptr inbounds nuw i8, ptr %.0551, i64 24
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %bb.dv
  %.130.i103 = phi ptr [ %i.agz, %bb.dv ], [ %i.ahe, %bb.dw ] ; 3 uses
  %.pn.i104 = phi ptr [ %i.afq, %bb.dv ], [ %i.ahc, %bb.dw ] ; 2 uses
  %.1.i105 = getelementptr inbounds nuw i8, ptr %.pn.i104, i64 16
  %i.aha = load <2 x i64>, ptr %.1.i105, align 1, !tbaa !9
  store <2 x i64> %i.aha, ptr %.130.i103, align 1, !tbaa !9
  %i.ahb = getelementptr inbounds nuw i8, ptr %.130.i103, i64 16
  %i.ahc = getelementptr inbounds nuw i8, ptr %.pn.i104, i64 32 ; 2 uses
  %i.ahd = load <2 x i64>, ptr %i.ahc, align 1, !tbaa !9
  store <2 x i64> %i.ahd, ptr %i.ahb, align 1, !tbaa !9
  %i.ahe = getelementptr inbounds nuw i8, ptr %.130.i103, i64 32 ; 2 uses
  %i.ahf = icmp ult ptr %i.ahe, %i.afw
  br i1 %i.ahf, label %bb.dw, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit: ; preds = %bb.dw, %.preheader655, %bb.dp, %middle.block125, %bb.du, %bb.dn, %bb.de, %bb.di, %bb.dk, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193
  %.0.i37 = phi i64 [ %i.adl, %bb.de ], [ -20, %bb.di ], [ %i.add, %bb.dk ], [ %i.add, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193 ], [ %i.add, %bb.dp ], [ %i.add, %bb.dn ], [ %i.add, %middle.block125 ], [ %i.add, %bb.du ], [ %i.add, %.preheader655 ], [ %i.add, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.er

bb.dx:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14
  %i.ahg = and i32 %.1239.i697, 7
  %i.ahh = zext nneg i32 %i.ahg to i64
  %i.ahi = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.ahh ; 3 uses
  %.sroa.0360.0.copyload = load i64, ptr %i.ahi, align 8, !tbaa !53 ; 7 uses
  %.sroa.4361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %.sroa.4361.0.copyload = load i64, ptr %.sroa.4361.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  %.sroa.5362.0.copyload = load i64, ptr %.sroa.5362.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ahj = getelementptr i8, ptr %.0207.i699, i64 %.sroa.0360.0.copyload ; 7 uses
  %i.ahk = add i64 %.sroa.4361.0.copyload, %.sroa.0360.0.copyload ; 9 uses
  %i.ahl = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %.sroa.0360.0.copyload ; 2 uses
  %i.ahn = sub i64 0, %.sroa.5362.0.copyload
  %i.aho = getelementptr inbounds i8, ptr %i.ahj, i64 %i.ahn ; 2 uses
  %i.ahp = icmp ugt ptr %i.ahm, %.0226.i698
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 %i.ahk
  %i.ahr = icmp ugt ptr %i.ahq, %i.ht
  %or.cond.i17 = select i1 %i.ahp, i1 true, i1 %i.ahr, !prof !112
  br i1 %or.cond.i17, label %bb.dy, label %.critedge.i18, !prof !112

.critedge.i18:                                    ; preds = %bb.dx
  %i.ahs = load <2 x i64>, ptr %i.ahl, align 1, !tbaa !9
  store <2 x i64> %i.ahs, ptr %.0207.i699, align 1, !tbaa !9
  %i.aht = icmp ugt i64 %.sroa.0360.0.copyload, 16
  br i1 %i.aht, label %bb.dz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157, !prof !60

bb.dy:                                            ; preds = %bb.dx
  store i64 %.sroa.0360.0.copyload, ptr %10, align 8, !tbaa !53
  store i64 %.sroa.4361.0.copyload, ptr %.sroa.6348.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5362.0.copyload, ptr %.sroa.12355.0..sroa_idx, align 8, !tbaa !53
  %i.ahu = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.0207.i699, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %10, ptr noundef nonnull %i.a, ptr noundef %.0226.i698, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22

bb.dz:                                            ; preds = %.critedge.i18
  %i.ahv = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 16
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16 ; 2 uses
  %i.ahx = add i64 %.sroa.0360.0.copyload, -16
  %i.ahy = load <2 x i64>, ptr %i.ahw, align 1, !tbaa !9
  store <2 x i64> %i.ahy, ptr %i.ahv, align 1, !tbaa !9
  %i.ahz = icmp slt i64 %i.ahx, 17
  br i1 %i.ahz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aia = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %bb.ea
  %.130.i152 = phi ptr [ %i.aia, %bb.ea ], [ %i.aif, %bb.eb ] ; 3 uses
  %.pn.i153 = phi ptr [ %i.ahw, %bb.ea ], [ %i.aid, %bb.eb ] ; 2 uses
  %.1.i154 = getelementptr inbounds nuw i8, ptr %.pn.i153, i64 16
  %i.aib = load <2 x i64>, ptr %.1.i154, align 1, !tbaa !9
  store <2 x i64> %i.aib, ptr %.130.i152, align 1, !tbaa !9
  %i.aic = getelementptr inbounds nuw i8, ptr %.130.i152, i64 16
  %i.aid = getelementptr inbounds nuw i8, ptr %.pn.i153, i64 32 ; 2 uses
  %i.aie = load <2 x i64>, ptr %i.aid, align 1, !tbaa !9
  store <2 x i64> %i.aie, ptr %i.aic, align 1, !tbaa !9
  %i.aif = getelementptr inbounds nuw i8, ptr %.130.i152, i64 32 ; 2 uses
  %i.aig = icmp ult ptr %i.aif, %i.ahj
  br i1 %i.aig, label %bb.eb, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157: ; preds = %bb.eb, %bb.dz, %.critedge.i18
  store ptr %i.ahm, ptr %i.a, align 8, !tbaa !46
  %i.aih = ptrtoint ptr %i.ahj to i64             ; 2 uses
  %i.aii = sub i64 %i.aih, %i.ah                  ; 3 uses
  %i.aij = icmp ugt i64 %.sroa.5362.0.copyload, %i.aii
  br i1 %i.aij, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157
  %i.aik = sub i64 %i.aih, %i.hu
  %i.ail = icmp ugt i64 %.sroa.5362.0.copyload, %i.aik
  br i1 %i.ail, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, label %bb.ed, !prof !60

bb.ed:                                            ; preds = %bb.ec
  %i.aim = ptrtoint ptr %i.aho to i64
  %i.ain = sub i64 %i.aim, %i.ah                  ; 3 uses
  %i.aio = getelementptr inbounds i8, ptr %i.r, i64 %i.ain ; 2 uses
  %i.aip = add nsw i64 %i.ain, %.sroa.4361.0.copyload ; 2 uses
  %.not.i20 = icmp sgt i64 %i.aip, 0
  br i1 %.not.i20, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ahj, ptr align 1 %i.aio, i64 %.sroa.4361.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22

bb.ef:                                            ; preds = %bb.ed
  %gepdiff.i21 = sub nsw i64 0, %i.ain            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ahj, ptr align 1 %i.aio, i64 %gepdiff.i21, i1 false)
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ahj, i64 %gepdiff.i21
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157
  %.sroa.6348.0 = phi i64 [ %i.aip, %bb.ef ], [ %.sroa.4361.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157 ] ; 5 uses
  %.0561 = phi ptr [ %i.n, %bb.ef ], [ %i.aho, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157 ] ; 9 uses
  %.0560 = phi ptr [ %i.aiq, %bb.ef ], [ %i.ahj, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157 ] ; 12 uses
  %i.air = icmp ugt i64 %.sroa.5362.0.copyload, 15
  br i1 %i.air, label %bb.eh, label %bb.ek, !prof !97

bb.eh:                                            ; preds = %bb.eg
  %i.ais = getelementptr inbounds i8, ptr %.0560, i64 %.sroa.6348.0
  %i.ait = load <2 x i64>, ptr %.0561, align 1, !tbaa !9
  store <2 x i64> %i.ait, ptr %.0560, align 1, !tbaa !9
  %i.aiu = icmp slt i64 %.sroa.6348.0, 17
  br i1 %i.aiu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0560, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %bb.ei
  %.130.i159 = phi ptr [ %i.aiv, %bb.ei ], [ %i.aja, %bb.ej ] ; 3 uses
  %.pn.i160 = phi ptr [ %.0561, %bb.ei ], [ %i.aiy, %bb.ej ] ; 2 uses
  %.1.i161 = getelementptr inbounds nuw i8, ptr %.pn.i160, i64 16
  %i.aiw = load <2 x i64>, ptr %.1.i161, align 1, !tbaa !9
  store <2 x i64> %i.aiw, ptr %.130.i159, align 1, !tbaa !9
  %i.aix = getelementptr inbounds nuw i8, ptr %.130.i159, i64 16
  %i.aiy = getelementptr inbounds nuw i8, ptr %.pn.i160, i64 32 ; 2 uses
  %i.aiz = load <2 x i64>, ptr %i.aiy, align 1, !tbaa !9
  store <2 x i64> %i.aiz, ptr %i.aix, align 1, !tbaa !9
  %i.aja = getelementptr inbounds nuw i8, ptr %.130.i159, i64 32 ; 2 uses
  %i.ajb = icmp ult ptr %i.aja, %i.ais
  br i1 %i.ajb, label %bb.ej, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, !llvm.loop !108

bb.ek:                                            ; preds = %bb.eg
  %i.ajc = icmp samesign ult i64 %.sroa.5362.0.copyload, 8
  br i1 %i.ajc, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5362.0.copyload
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !3
  %i.ajf = load i8, ptr %.0561, align 1, !tbaa !9
  store i8 %i.ajf, ptr %.0560, align 1, !tbaa !9
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0561, i64 1
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !9
  %i.aji = getelementptr inbounds nuw i8, ptr %.0560, i64 1
  store i8 %i.ajh, ptr %i.aji, align 1, !tbaa !9
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0561, i64 2
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !9
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0560, i64 2
  store i8 %i.ajk, ptr %i.ajl, align 1, !tbaa !9
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0561, i64 3
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !9
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0560, i64 3
  store i8 %i.ajn, ptr %i.ajo, align 1, !tbaa !9
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5362.0.copyload
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !3
  %i.ajr = zext i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds nuw i8, ptr %.0561, i64 %i.ajr ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0560, i64 4
  %i.aju = load i32, ptr %i.ajs, align 1
  store i32 %i.aju, ptr %i.ajt, align 1
  %i.ajv = sext i32 %i.aje to i64
  %i.ajw = sub nsw i64 0, %i.ajv
  %i.ajx = getelementptr inbounds i8, ptr %i.ajs, i64 %i.ajw
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196

bb.em:                                            ; preds = %bb.ek
  %i.ajy = load i64, ptr %.0561, align 1
  store i64 %i.ajy, ptr %.0560, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196: ; preds = %bb.el, %bb.em
  %.1562 = phi ptr [ %i.ajx, %bb.el ], [ %.0561, %bb.em ] ; 2 uses
  %.1562131 = ptrtoaddr ptr %.1562 to i64
  %i.ajz = getelementptr inbounds nuw i8, ptr %.1562, i64 8 ; 7 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.0560, i64 8 ; 6 uses
  %i.akb = icmp ugt i64 %.sroa.6348.0, 8
  br i1 %i.akb, label %bb.en, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22

bb.en:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196
  %i.akc = ptrtoint ptr %i.aka to i64
  %i.akd = ptrtoint ptr %i.ajz to i64
  %i.ake = sub i64 %i.akc, %i.akd
  %i.akf = getelementptr i8, ptr %.0560, i64 %.sroa.6348.0 ; 2 uses
  %i.akg = icmp slt i64 %i.ake, 16
  br i1 %i.akg, label %.preheader658.preheader, label %bb.eo

.preheader658.preheader:                          ; preds = %bb.en
  %i.akh = add i64 %.sroa.4361.0.copyload, %i.ah
  %i.aki = add i64 %.sroa.5362.0.copyload, %i.aii
  %umax134 = tail call i64 @llvm.umax.i64(i64 %.sroa.5362.0.copyload, i64 %i.aii) ; 2 uses
  %i.akj = add i64 %i.akh, %i.aki
  %i.akk = sub i64 %i.akj, %.sroa.5362.0.copyload
  %i.akl = add i64 %i.ib, %umax134
  %umax135 = tail call i64 @llvm.umax.i64(i64 %i.akk, i64 %i.akl)
  %i.akm = add i64 %umax135, -9
  %i.akn = add i64 %umax134, %i.ah
  %i.ako = sub i64 %i.akm, %i.akn                 ; 2 uses
  %i.akp = lshr i64 %i.ako, 3
  %i.akq = add nuw nsw i64 %i.akp, 1              ; 2 uses
  %min.iters.check137 = icmp ult i64 %i.ako, 72
  br i1 %min.iters.check137, label %.preheader658.preheader329, label %vector.memcheck129

vector.memcheck129:                               ; preds = %.preheader658.preheader
  %i.akr = sub i64 %.sroa.0360.0.copyload, %i.ah
  %i.aks = add i64 %i.akr, %.0207.i699106
  %umax130 = tail call i64 @llvm.umax.i64(i64 %.sroa.5362.0.copyload, i64 %i.aks)
  %i.akt = add i64 %umax130, %i.ah
  %i.aku = sub i64 %i.akt, %.1562131
  %diff.check132 = icmp ult i64 %i.aku, 32
  br i1 %diff.check132, label %.preheader658.preheader329, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck129
  %n.vec140 = and i64 %i.akq, 4611686018427387900 ; 3 uses
  %i.akv = shl i64 %n.vec140, 3                   ; 2 uses
  %i.akw = getelementptr i8, ptr %i.aka, i64 %i.akv
  %i.akx = getelementptr i8, ptr %i.ajz, i64 %i.akv
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.aky = shl i64 %index142, 3                   ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.aka, i64 %i.aky ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.ajz, i64 %i.aky ; 2 uses
  %i.akz = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load145 = load <2 x i64>, ptr %next.gep144, align 1
  %wide.load146 = load <2 x i64>, ptr %i.akz, align 1
  %i.ala = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load145, ptr %next.gep143, align 1
  store <2 x i64> %wide.load146, ptr %i.ala, align 1
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.alb = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.alb, label %middle.block148, label %vector.body141, !llvm.loop !187

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.akq, %n.vec140
  br i1 %cmp.n149, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, label %.preheader658.preheader329

.preheader658.preheader329:                       ; preds = %vector.memcheck129, %.preheader658.preheader, %middle.block148
  %.029.i169.ph = phi ptr [ %i.aka, %vector.memcheck129 ], [ %i.aka, %.preheader658.preheader ], [ %i.akw, %middle.block148 ]
  %.0.i170.ph = phi ptr [ %i.ajz, %vector.memcheck129 ], [ %i.ajz, %.preheader658.preheader ], [ %i.akx, %middle.block148 ]
  br label %.preheader658

.preheader658:                                    ; preds = %.preheader658.preheader329, %.preheader658
  %.029.i169 = phi ptr [ %i.ald, %.preheader658 ], [ %.029.i169.ph, %.preheader658.preheader329 ] ; 2 uses
  %.0.i170 = phi ptr [ %i.ale, %.preheader658 ], [ %.0.i170.ph, %.preheader658.preheader329 ] ; 2 uses
  %i.alc = load i64, ptr %.0.i170, align 1
  store i64 %i.alc, ptr %.029.i169, align 1
  %i.ald = getelementptr inbounds nuw i8, ptr %.029.i169, i64 8 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.0.i170, i64 8
  %i.alf = icmp ult ptr %i.ald, %i.akf
  br i1 %i.alf, label %.preheader658, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, !llvm.loop !188

bb.eo:                                            ; preds = %bb.en
  %i.alg = load <2 x i64>, ptr %i.ajz, align 1, !tbaa !9
  store <2 x i64> %i.alg, ptr %i.aka, align 1, !tbaa !9
  %i.alh = icmp slt i64 %.sroa.6348.0, 25
  br i1 %i.alh, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ali = getelementptr inbounds nuw i8, ptr %.0560, i64 24
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.130.i166 = phi ptr [ %i.ali, %bb.ep ], [ %i.aln, %bb.eq ] ; 3 uses
  %.pn.i167 = phi ptr [ %i.ajz, %bb.ep ], [ %i.all, %bb.eq ] ; 2 uses
  %.1.i168 = getelementptr inbounds nuw i8, ptr %.pn.i167, i64 16
  %i.alj = load <2 x i64>, ptr %.1.i168, align 1, !tbaa !9
  store <2 x i64> %i.alj, ptr %.130.i166, align 1, !tbaa !9
  %i.alk = getelementptr inbounds nuw i8, ptr %.130.i166, i64 16
  %i.all = getelementptr inbounds nuw i8, ptr %.pn.i167, i64 32 ; 2 uses
  %i.alm = load <2 x i64>, ptr %i.all, align 1, !tbaa !9
  store <2 x i64> %i.alm, ptr %i.alk, align 1, !tbaa !9
  %i.aln = getelementptr inbounds nuw i8, ptr %.130.i166, i64 32 ; 2 uses
  %i.alo = icmp ult ptr %i.aln, %i.akf
  br i1 %i.alo, label %bb.eq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22: ; preds = %bb.eq, %.preheader658, %bb.ej, %middle.block148, %bb.eo, %bb.eh, %bb.dy, %bb.ec, %bb.ee, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196
  %.0.i19 = phi i64 [ %i.ahu, %bb.dy ], [ -20, %bb.ec ], [ %i.ahk, %bb.ee ], [ %i.ahk, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196 ], [ %i.ahk, %bb.ej ], [ %i.ahk, %bb.eh ], [ %i.ahk, %middle.block148 ], [ %i.ahk, %bb.eo ], [ %i.ahk, %.preheader658 ], [ %i.ahk, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.er

bb.er:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit
  %i.alp = phi i64 [ %.0.i37, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit ], [ %.0.i19, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22 ] ; 3 uses
  %i.alq = icmp ult i64 %i.alp, -119
  br i1 %i.alq, label %.thread585, label %.thread620

.thread585:                                       ; preds = %bb.er
  %i.alr = add i64 %.sroa.0.0, %.1242.i696        ; 3 uses
  %i.als = icmp ugt i64 %.sink855, %i.alr
  %i.alt = select i1 %i.als, ptr %i.r, ptr %i.n
  %i.alu = getelementptr inbounds i8, ptr %i.alt, i64 %i.alr
  %i.alv = sub i64 0, %.sink855
  %i.alw = getelementptr inbounds i8, ptr %i.alu, i64 %i.alv ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.alw, i32 0, i32 3, i32 1)
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.alx, i32 0, i32 3, i32 1)
  %i.aly = and i32 %.1239.i697, 7
  %i.alz = zext nneg i32 %i.aly to i64
  %i.ama = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.alz ; 3 uses
  store i64 %.sroa.0.0, ptr %i.ama, align 8, !tbaa !53
  %.sroa.9.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ama, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx262, align 8, !tbaa !53
  %.sroa.12.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.ama, i64 16
  store i64 %.sink855, ptr %.sroa.12.0..sroa_idx268, align 8, !tbaa !53
  %i.amb = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 %i.alp
  br label %bb.es

bb.es:                                            ; preds = %.thread585, %bb.dc
  %.pn = phi i64 [ %i.alr, %.thread585 ], [ %i.act, %bb.dc ]
  %.3229.i.ph = phi ptr [ %.0226.i698, %.thread585 ], [ %i.hx, %bb.dc ] ; 2 uses
  %.6213.i.ph = phi ptr [ %i.amb, %.thread585 ], [ %i.ada, %bb.dc ] ; 2 uses
  %.6247.i.ph = add i64 %.pn, %.sroa.9.0
  %i.amc = add nuw i32 %.1239.i697, 1             ; 2 uses
  %exitcond740.not = icmp eq i32 %i.amc, %5
  br i1 %exitcond740.not, label %._crit_edge, label %bb.bd, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.es, %.preheader661
  %i.amd = phi i32 [ %i.hh, %.preheader661 ], [ %i.vu, %bb.es ]
  %i.ame = phi ptr [ %i.hi, %.preheader661 ], [ %i.vt, %bb.es ]
  %i.amf = phi i64 [ %i.hj, %.preheader661 ], [ %i.sd, %bb.es ]
  %i.amg = phi i64 [ %i.hk, %.preheader661 ], [ %.sink856, %bb.es ]
  %i.amh = phi i64 [ %i.hl, %.preheader661 ], [ %.sink855, %bb.es ]
  %.1239.i.lcssa = phi i32 [ %.0238.i.lcssa, %.preheader661 ], [ %5, %bb.es ]
  %.0226.i.lcssa = phi ptr [ %i.l, %.preheader661 ], [ %.3229.i.ph, %bb.es ] ; 2 uses
  %.0207.i.lcssa = phi ptr [ %1, %.preheader661 ], [ %.6213.i.ph, %bb.es ] ; 2 uses
  %i.ami = icmp eq ptr %i.ame, %3
  %.not = icmp eq i32 %i.amd, 64
  %or.cond = select i1 %i.ami, i1 %.not, i1 false
  br i1 %or.cond, label %bb.et, label %.thread620

bb.et:                                            ; preds = %._crit_edge
  %i.amj = sub nsw i32 %.1239.i.lcssa, %i.af      ; 2 uses
  %i.amk = icmp slt i32 %i.amj, %5
  br i1 %i.amk, label %.lr.ph715, label %.preheader

.lr.ph715:                                        ; preds = %bb.et
  %i.aml = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.amm = ptrtoint ptr %i.p to i64               ; 3 uses
  %.sroa.6430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.12437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.12519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.amn = ptrtoint ptr %i.h to i64
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.12396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.amr = add i64 %i.ah, 16
  %i.ams = add i64 %i.ah, 16
  %i.amt = add i64 %i.ah, 16
  br label %bb.eu

.preheader:                                       ; preds = %bb.hl, %bb.et
  %.4230.i.lcssa = phi ptr [ %.0226.i.lcssa, %bb.et ], [ %.6232.i, %bb.hl ]
  %.7214.i.lcssa = phi ptr [ %.0207.i.lcssa, %bb.et ], [ %.12219.i, %bb.hl ]
  %i.amu = trunc i64 %i.amh to i32
  store i32 %i.amu, ptr %i.t, align 4, !tbaa !3
  %i.amv = trunc i64 %i.amg to i32
  store i32 %i.amv, ptr %i.x, align 4, !tbaa !3
  %i.amw = trunc i64 %i.amf to i32
  store i32 %i.amw, ptr %i.ab, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.pre751 = load i32, ptr %i.b, align 8, !tbaa !43
  %.pre752.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.hm

bb.eu:                                            ; preds = %.lr.ph715, %bb.hl
  %.7214.i710 = phi ptr [ %.0207.i.lcssa, %.lr.ph715 ], [ %.12219.i, %bb.hl ] ; 26 uses
  %.4230.i708 = phi ptr [ %.0226.i.lcssa, %.lr.ph715 ], [ %.6232.i, %bb.hl ] ; 5 uses
  %.2240.i707 = phi i32 [ %i.amj, %.lr.ph715 ], [ %i.bch, %bb.hl ] ; 2 uses
  %.7214.i710256 = ptrtoaddr ptr %.7214.i710 to i64 ; 2 uses
  %i.amx = and i32 %.2240.i707, 7
  %i.amy = zext nneg i32 %i.amx to i64
  %i.amz = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.amy ; 10 uses
  %i.ana = load i32, ptr %i.b, align 8, !tbaa !43
  %i.anb = icmp eq i32 %i.ana, 2
  br i1 %i.anb, label %bb.ev, label %bb.gq

bb.ev:                                            ; preds = %bb.eu
  %i.anc = load ptr, ptr %i.a, align 8, !tbaa !46 ; 14 uses
  %i.and = load i64, ptr %i.amz, align 8, !tbaa !102 ; 8 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.and ; 4 uses
  %i.anf = load ptr, ptr %i.k, align 8, !tbaa !42 ; 3 uses
  %i.ang = icmp ugt ptr %i.ane, %i.anf
  br i1 %i.ang, label %bb.ew, label %bb.fw

bb.ew:                                            ; preds = %bb.ev
  %i.anh = ptrtoint ptr %i.anf to i64             ; 2 uses
  %i.ani = ptrtoint ptr %i.anc to i64             ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  br label %.lr.ph.i245

.lr.ph.i245:                                      ; preds = %.lr.ph.i245.preheader, %.lr.ph.i245
  %.237.i246 = phi ptr [ %i.apl, %.lr.ph.i245 ], [ %.237.i246.ph, %.lr.ph.i245.preheader ] ; 2 uses
  %.23136.i247 = phi ptr [ %i.apj, %.lr.ph.i245 ], [ %.23136.i247.ph, %.lr.ph.i245.preheader ] ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %.23136.i247, i64 1
  %i.apk = load i8, ptr %.23136.i247, align 1, !tbaa !9
  %i.apl = getelementptr inbounds nuw i8, ptr %.237.i246, i64 1 ; 2 uses
  store i8 %i.apk, ptr %.237.i246, align 1, !tbaa !9
  %exitcond.not.i248 = icmp eq ptr %i.apl, %scevgep.i244
  br i1 %exitcond.not.i248, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258, label %.lr.ph.i245, !llvm.loop !194

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258: ; preds = %.lr.ph.i245, %.lr.ph40.i255, %middle.block233, %vec.epilog.middle.block251, %middle.block193, %vec.epilog.middle.block211, %.preheader.i254
  %i.apm = load i64, ptr %i.amz, align 8, !tbaa !102
  %i.apn = sub i64 %i.apm, %i.anj                 ; 2 uses
  store i64 %i.apn, ptr %i.amz, align 8, !tbaa !102
  br label %thread-pre-split601

thread-pre-split601:                              ; preds = %bb.ew, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258
  %.sroa.0401.0.copyload = phi i64 [ %i.apn, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258 ], [ %i.and, %bb.ew ] ; 8 uses
  %.8215.i = phi ptr [ %i.ano, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit258 ], [ %.7214.i710, %bb.ew ] ; 8 uses
  %.8215.i153 = ptrtoaddr ptr %.8215.i to i64
  store ptr %i.amo, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.b, align 8, !tbaa !43
  %.sroa.4402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %.sroa.4402.0.copyload = load i64, ptr %.sroa.4402.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %.sroa.5403.0.copyload = load i64, ptr %.sroa.5403.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.apo = getelementptr i8, ptr %.8215.i, i64 %.sroa.0401.0.copyload ; 7 uses
  %i.app = add i64 %.sroa.4402.0.copyload, %.sroa.0401.0.copyload ; 9 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.amo, i64 %.sroa.0401.0.copyload
  %i.apr = sub i64 0, %.sroa.5403.0.copyload
  %i.aps = getelementptr inbounds i8, ptr %i.apo, i64 %i.apr ; 2 uses
  %i.apt = icmp ugt i64 %.sroa.0401.0.copyload, 65536
  %i.apu = getelementptr inbounds nuw i8, ptr %.8215.i, i64 %i.app
  %i.apv = icmp ugt ptr %i.apu, %i.aml
  %or.cond.i23 = select i1 %i.apt, i1 true, i1 %i.apv, !prof !112
  br i1 %or.cond.i23, label %bb.fd, label %.critedge.i24, !prof !112

.critedge.i24:                                    ; preds = %thread-pre-split601
  %i.apw = load <2 x i64>, ptr %i.amo, align 1, !tbaa !9
  store <2 x i64> %i.apw, ptr %.8215.i, align 1, !tbaa !9
  %i.apx = icmp samesign ugt i64 %.sroa.0401.0.copyload, 16
  br i1 %i.apx, label %bb.fe, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, !prof !60

bb.fd:                                            ; preds = %thread-pre-split601
  store i64 %.sroa.0401.0.copyload, ptr %9, align 8, !tbaa !53
  store i64 %.sroa.4402.0.copyload, ptr %.sroa.6389.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5403.0.copyload, ptr %.sroa.12396.0..sroa_idx, align 8, !tbaa !53
  %i.apy = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.8215.i, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.amp, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %.loopexit

bb.fe:                                            ; preds = %.critedge.i24
  %i.apz = getelementptr inbounds nuw i8, ptr %.8215.i, i64 16
  %i.aqa = load <2 x i64>, ptr %i.amq, align 1, !tbaa !9
  store <2 x i64> %i.aqa, ptr %i.apz, align 1, !tbaa !9
  %i.aqb = icmp samesign ult i64 %.sroa.0401.0.copyload, 33
  br i1 %i.aqb, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aqc = getelementptr inbounds nuw i8, ptr %.8215.i, i64 32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %bb.ff
  %.130.i131 = phi ptr [ %i.aqc, %bb.ff ], [ %i.aqh, %bb.fg ] ; 3 uses
  %.pn.i132 = phi ptr [ %i.amq, %bb.ff ], [ %i.aqf, %bb.fg ] ; 2 uses
  %.1.i133 = getelementptr inbounds nuw i8, ptr %.pn.i132, i64 16
  %i.aqd = load <2 x i64>, ptr %.1.i133, align 1, !tbaa !9
  store <2 x i64> %i.aqd, ptr %.130.i131, align 1, !tbaa !9
  %i.aqe = getelementptr inbounds nuw i8, ptr %.130.i131, i64 16
  %i.aqf = getelementptr inbounds nuw i8, ptr %.pn.i132, i64 32 ; 2 uses
  %i.aqg = load <2 x i64>, ptr %i.aqf, align 1, !tbaa !9
  store <2 x i64> %i.aqg, ptr %i.aqe, align 1, !tbaa !9
  %i.aqh = getelementptr inbounds nuw i8, ptr %.130.i131, i64 32 ; 2 uses
  %i.aqi = icmp ult ptr %i.aqh, %i.apo
  br i1 %i.aqi, label %bb.fg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136: ; preds = %bb.fg, %bb.fe, %.critedge.i24
  store ptr %i.apq, ptr %i.a, align 8, !tbaa !46
  %i.aqj = ptrtoint ptr %i.apo to i64             ; 2 uses
  %i.aqk = sub i64 %i.aqj, %i.ah                  ; 3 uses
  %i.aql = icmp ugt i64 %.sroa.5403.0.copyload, %i.aqk
  br i1 %i.aql, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136
  %i.aqm = sub i64 %i.aqj, %i.amm
  %i.aqn = icmp ugt i64 %.sroa.5403.0.copyload, %i.aqm
  br i1 %i.aqn, label %.thread607, label %bb.fi, !prof !60

.thread607:                                       ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread620

bb.fi:                                            ; preds = %bb.fh
  %i.aqo = ptrtoint ptr %i.aps to i64
  %i.aqp = sub i64 %i.aqo, %i.ah                  ; 3 uses
  %i.aqq = getelementptr inbounds i8, ptr %i.r, i64 %i.aqp ; 2 uses
  %i.aqr = add nsw i64 %i.aqp, %.sroa.4402.0.copyload ; 2 uses
  %.not.i26 = icmp sgt i64 %i.aqr, 0
  br i1 %.not.i26, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.apo, ptr align 1 %i.aqq, i64 %.sroa.4402.0.copyload, i1 false)
  br label %.loopexit

bb.fk:                                            ; preds = %bb.fi
  %gepdiff.i27 = sub nsw i64 0, %i.aqp            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.apo, ptr align 1 %i.aqq, i64 %gepdiff.i27, i1 false)
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.apo, i64 %gepdiff.i27
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136
  %.sroa.6389.0 = phi i64 [ %i.aqr, %bb.fk ], [ %.sroa.4402.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 5 uses
  %.0558 = phi ptr [ %i.n, %bb.fk ], [ %i.aps, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 9 uses
  %.0557 = phi ptr [ %i.aqs, %bb.fk ], [ %i.apo, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 12 uses
  %i.aqt = icmp ugt i64 %.sroa.5403.0.copyload, 15
  br i1 %i.aqt, label %bb.fm, label %bb.fp, !prof !97

bb.fm:                                            ; preds = %bb.fl
  %i.aqu = getelementptr inbounds i8, ptr %.0557, i64 %.sroa.6389.0
  %i.aqv = load <2 x i64>, ptr %.0558, align 1, !tbaa !9
  store <2 x i64> %i.aqv, ptr %.0557, align 1, !tbaa !9
  %i.aqw = icmp slt i64 %.sroa.6389.0, 17
  br i1 %i.aqw, label %.loopexit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0557, i64 16
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %bb.fn
  %.130.i138 = phi ptr [ %i.aqx, %bb.fn ], [ %i.arc, %bb.fo ] ; 3 uses
  %.pn.i139 = phi ptr [ %.0558, %bb.fn ], [ %i.ara, %bb.fo ] ; 2 uses
  %.1.i140 = getelementptr inbounds nuw i8, ptr %.pn.i139, i64 16
  %i.aqy = load <2 x i64>, ptr %.1.i140, align 1, !tbaa !9
  store <2 x i64> %i.aqy, ptr %.130.i138, align 1, !tbaa !9
  %i.aqz = getelementptr inbounds nuw i8, ptr %.130.i138, i64 16
  %i.ara = getelementptr inbounds nuw i8, ptr %.pn.i139, i64 32 ; 2 uses
  %i.arb = load <2 x i64>, ptr %i.ara, align 1, !tbaa !9
  store <2 x i64> %i.arb, ptr %i.aqz, align 1, !tbaa !9
  %i.arc = getelementptr inbounds nuw i8, ptr %.130.i138, i64 32 ; 2 uses
  %i.ard = icmp ult ptr %i.arc, %i.aqu
  br i1 %i.ard, label %bb.fo, label %.loopexit, !llvm.loop !108

bb.fp:                                            ; preds = %bb.fl
  %i.are = icmp samesign ult i64 %.sroa.5403.0.copyload, 8
  br i1 %i.are, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5403.0.copyload
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !3
  %i.arh = load i8, ptr %.0558, align 1, !tbaa !9
  store i8 %i.arh, ptr %.0557, align 1, !tbaa !9
  %i.ari = getelementptr inbounds nuw i8, ptr %.0558, i64 1
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !9
  %i.ark = getelementptr inbounds nuw i8, ptr %.0557, i64 1
  store i8 %i.arj, ptr %i.ark, align 1, !tbaa !9
  %i.arl = getelementptr inbounds nuw i8, ptr %.0558, i64 2
  %i.arm = load i8, ptr %i.arl, align 1, !tbaa !9
  %i.arn = getelementptr inbounds nuw i8, ptr %.0557, i64 2
  store i8 %i.arm, ptr %i.arn, align 1, !tbaa !9
  %i.aro = getelementptr inbounds nuw i8, ptr %.0558, i64 3
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !9
  %i.arq = getelementptr inbounds nuw i8, ptr %.0557, i64 3
  store i8 %i.arp, ptr %i.arq, align 1, !tbaa !9
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5403.0.copyload
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !3
  %i.art = zext i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr %.0558, i64 %i.art ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %.0557, i64 4
  %i.arw = load i32, ptr %i.aru, align 1
  store i32 %i.arw, ptr %i.arv, align 1
  %i.arx = sext i32 %i.arg to i64
  %i.ary = sub nsw i64 0, %i.arx
  %i.arz = getelementptr inbounds i8, ptr %i.aru, i64 %i.ary
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195

bb.fr:                                            ; preds = %bb.fp
  %i.asa = load i64, ptr %.0558, align 1
  store i64 %i.asa, ptr %.0557, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195: ; preds = %bb.fq, %bb.fr
  %.1559 = phi ptr [ %i.arz, %bb.fq ], [ %.0558, %bb.fr ] ; 2 uses
  %.1559155 = ptrtoaddr ptr %.1559 to i64
  %i.asb = getelementptr inbounds nuw i8, ptr %.1559, i64 8 ; 7 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %.0557, i64 8 ; 6 uses
  %i.asd = icmp ugt i64 %.sroa.6389.0, 8
  br i1 %i.asd, label %bb.fs, label %.loopexit

bb.fs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195
  %i.ase = ptrtoint ptr %i.asc to i64
  %i.asf = ptrtoint ptr %i.asb to i64
  %i.asg = sub i64 %i.ase, %i.asf
  %i.ash = getelementptr i8, ptr %.0557, i64 %.sroa.6389.0 ; 2 uses
  %i.asi = icmp slt i64 %i.asg, 16
  br i1 %i.asi, label %.preheader641.preheader, label %bb.ft

.preheader641.preheader:                          ; preds = %bb.fs
  %i.asj = add i64 %.sroa.4402.0.copyload, %i.ah
  %i.ask = add i64 %.sroa.5403.0.copyload, %i.aqk
  %umax158 = tail call i64 @llvm.umax.i64(i64 %.sroa.5403.0.copyload, i64 %i.aqk) ; 2 uses
  %i.asl = add i64 %i.asj, %i.ask
  %i.asm = sub i64 %i.asl, %.sroa.5403.0.copyload
  %i.asn = add i64 %i.amr, %umax158
  %umax159 = tail call i64 @llvm.umax.i64(i64 %i.asm, i64 %i.asn)
  %i.aso = add i64 %umax159, -9
  %i.asp = add i64 %umax158, %i.ah
  %i.asq = sub i64 %i.aso, %i.asp                 ; 2 uses
  %i.asr = lshr i64 %i.asq, 3
  %i.ass = add nuw nsw i64 %i.asr, 1              ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.asq, 72
  br i1 %min.iters.check161, label %.preheader641.preheader312, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.preheader641.preheader
  %i.ast = sub i64 %.sroa.0401.0.copyload, %i.ah
  %i.asu = add i64 %i.ast, %.8215.i153
  %umax154 = tail call i64 @llvm.umax.i64(i64 %.sroa.5403.0.copyload, i64 %i.asu)
  %i.asv = add i64 %umax154, %i.ah
  %i.asw = sub i64 %i.asv, %.1559155
  %diff.check156 = icmp ult i64 %i.asw, 32
  br i1 %diff.check156, label %.preheader641.preheader312, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck152
  %n.vec164 = and i64 %i.ass, 4611686018427387900 ; 3 uses
  %i.asx = shl i64 %n.vec164, 3                   ; 2 uses
  %i.asy = getelementptr i8, ptr %i.asc, i64 %i.asx
  %i.asz = getelementptr i8, ptr %i.asb, i64 %i.asx
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.ata = shl i64 %index166, 3                   ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.asc, i64 %i.ata ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.asb, i64 %i.ata ; 2 uses
  %i.atb = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 1
  %wide.load170 = load <2 x i64>, ptr %i.atb, align 1
  %i.atc = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 1
  store <2 x i64> %wide.load170, ptr %i.atc, align 1
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.atd = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.atd, label %middle.block172, label %vector.body165, !llvm.loop !195

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.ass, %n.vec164
  br i1 %cmp.n173, label %.loopexit, label %.preheader641.preheader312

.preheader641.preheader312:                       ; preds = %vector.memcheck152, %.preheader641.preheader, %middle.block172
  %.029.i148.ph = phi ptr [ %i.asc, %vector.memcheck152 ], [ %i.asc, %.preheader641.preheader ], [ %i.asy, %middle.block172 ]
  %.0.i149.ph = phi ptr [ %i.asb, %vector.memcheck152 ], [ %i.asb, %.preheader641.preheader ], [ %i.asz, %middle.block172 ]
  br label %.preheader641

.preheader641:                                    ; preds = %.preheader641.preheader312, %.preheader641
  %.029.i148 = phi ptr [ %i.atf, %.preheader641 ], [ %.029.i148.ph, %.preheader641.preheader312 ] ; 2 uses
  %.0.i149 = phi ptr [ %i.atg, %.preheader641 ], [ %.0.i149.ph, %.preheader641.preheader312 ] ; 2 uses
  %i.ate = load i64, ptr %.0.i149, align 1
  store i64 %i.ate, ptr %.029.i148, align 1
  %i.atf = getelementptr inbounds nuw i8, ptr %.029.i148, i64 8 ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %.0.i149, i64 8
  %i.ath = icmp ult ptr %i.atf, %i.ash
  br i1 %i.ath, label %.preheader641, label %.loopexit, !llvm.loop !196

bb.ft:                                            ; preds = %bb.fs
  %i.ati = load <2 x i64>, ptr %i.asb, align 1, !tbaa !9
  store <2 x i64> %i.ati, ptr %i.asc, align 1, !tbaa !9
  %i.atj = icmp slt i64 %.sroa.6389.0, 25
  br i1 %i.atj, label %.loopexit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.atk = getelementptr inbounds nuw i8, ptr %.0557, i64 24
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fv, %bb.fu
  %.130.i145 = phi ptr [ %i.atk, %bb.fu ], [ %i.atp, %bb.fv ] ; 3 uses
  %.pn.i146 = phi ptr [ %i.asb, %bb.fu ], [ %i.atn, %bb.fv ] ; 2 uses
  %.1.i147 = getelementptr inbounds nuw i8, ptr %.pn.i146, i64 16
  %i.atl = load <2 x i64>, ptr %.1.i147, align 1, !tbaa !9
  store <2 x i64> %i.atl, ptr %.130.i145, align 1, !tbaa !9
  %i.atm = getelementptr inbounds nuw i8, ptr %.130.i145, i64 16
  %i.atn = getelementptr inbounds nuw i8, ptr %.pn.i146, i64 32 ; 2 uses
  %i.ato = load <2 x i64>, ptr %i.atn, align 1, !tbaa !9
  store <2 x i64> %i.ato, ptr %i.atm, align 1, !tbaa !9
  %i.atp = getelementptr inbounds nuw i8, ptr %.130.i145, i64 32 ; 2 uses
  %i.atq = icmp ult ptr %i.atp, %i.ash
  br i1 %i.atq, label %bb.fv, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %bb.fv, %.preheader641, %bb.fo, %middle.block172, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195, %bb.fj, %bb.fd, %bb.fm, %bb.ft
  %.0.i25 = phi i64 [ %i.apy, %bb.fd ], [ %i.app, %bb.fo ], [ %i.app, %bb.fj ], [ %i.app, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195 ], [ %i.app, %bb.ft ], [ %i.app, %bb.fm ], [ %i.app, %middle.block172 ], [ %i.app, %.preheader641 ], [ %i.app, %bb.fv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.atr = icmp ult i64 %.0.i25, -119
  %i.ats = getelementptr inbounds nuw i8, ptr %.8215.i, i64 %.0.i25
  br i1 %i.atr, label %bb.hl, label %.thread620

bb.fw:                                            ; preds = %bb.ev
  %i.att = getelementptr inbounds i8, ptr %i.ane, i64 -32 ; 2 uses
  %.sroa.4525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %.sroa.4525.0.copyload = load i64, ptr %.sroa.4525.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %.sroa.5526.0.copyload = load i64, ptr %.sroa.5526.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.atu = getelementptr i8, ptr %.7214.i710, i64 %i.and ; 7 uses
  %i.atv = add i64 %.sroa.4525.0.copyload, %i.and ; 9 uses
  %i.atw = sub i64 0, %.sroa.5526.0.copyload
  %i.atx = getelementptr inbounds i8, ptr %i.atu, i64 %i.atw ; 2 uses
  %i.aty = icmp ugt ptr %i.ane, %.4230.i708
  %i.atz = getelementptr inbounds nuw i8, ptr %.7214.i710, i64 %i.atv
  %i.aua = icmp ugt ptr %i.atz, %i.att
  %or.cond.i40 = select i1 %i.aty, i1 true, i1 %i.aua, !prof !112
  br i1 %or.cond.i40, label %bb.fx, label %.critedge.i41, !prof !112

.critedge.i41:                                    ; preds = %bb.fw
  %i.aub = load <2 x i64>, ptr %i.anc, align 1, !tbaa !9
  store <2 x i64> %i.aub, ptr %.7214.i710, align 1, !tbaa !9
  %i.auc = icmp ugt i64 %i.and, 16
  br i1 %i.auc, label %bb.fy, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !prof !60

bb.fx:                                            ; preds = %bb.fw
  store i64 %i.and, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.4525.0.copyload, ptr %.sroa.6512.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5526.0.copyload, ptr %.sroa.12519.0..sroa_idx, align 8, !tbaa !53
  %i.aud = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.7214.i710, ptr noundef %i.h, ptr noundef nonnull %i.att, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %.4230.i708, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45

bb.fy:                                            ; preds = %.critedge.i41
  %i.aue = getelementptr inbounds nuw i8, ptr %.7214.i710, i64 16
  %i.auf = getelementptr inbounds nuw i8, ptr %i.anc, i64 16 ; 2 uses
  %i.aug = add i64 %i.and, -16
  %i.auh = load <2 x i64>, ptr %i.auf, align 1, !tbaa !9
  store <2 x i64> %i.auh, ptr %i.aue, align 1, !tbaa !9
  %i.aui = icmp slt i64 %i.aug, 17
  br i1 %i.aui, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.auj = getelementptr inbounds nuw i8, ptr %.7214.i710, i64 32
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ga, %bb.fz
  %.130.i = phi ptr [ %i.auj, %bb.fz ], [ %i.auo, %bb.ga ] ; 3 uses
  %.pn.i = phi ptr [ %i.auf, %bb.fz ], [ %i.aum, %bb.ga ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.auk = load <2 x i64>, ptr %.1.i, align 1, !tbaa !9
  store <2 x i64> %i.auk, ptr %.130.i, align 1, !tbaa !9
  %i.aul = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.aum = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %i.aun = load <2 x i64>, ptr %i.aum, align 1, !tbaa !9
  store <2 x i64> %i.aun, ptr %i.aul, align 1, !tbaa !9
  %i.auo = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.aup = icmp ult ptr %i.auo, %i.atu
  br i1 %i.aup, label %bb.ga, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit: ; preds = %bb.ga, %bb.fy, %.critedge.i41
  store ptr %i.ane, ptr %i.a, align 8, !tbaa !46
  %i.auq = ptrtoint ptr %i.atu to i64             ; 2 uses
  %i.aur = sub i64 %i.auq, %i.ah                  ; 3 uses
  %i.aus = icmp ugt i64 %.sroa.5526.0.copyload, %i.aur
  br i1 %i.aus, label %bb.gb, label %bb.gf

bb.gb:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  %i.aut = sub i64 %i.auq, %i.amm
  %i.auu = icmp ugt i64 %.sroa.5526.0.copyload, %i.aut
  br i1 %i.auu, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, label %bb.gc, !prof !60

bb.gc:                                            ; preds = %bb.gb
  %i.auv = ptrtoint ptr %i.atx to i64
  %i.auw = sub i64 %i.auv, %i.ah                  ; 3 uses
  %i.aux = getelementptr inbounds i8, ptr %i.r, i64 %i.auw ; 2 uses
  %i.auy = add nsw i64 %i.auw, %.sroa.4525.0.copyload ; 2 uses
  %.not.i43 = icmp sgt i64 %i.auy, 0
  br i1 %.not.i43, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.atu, ptr align 1 %i.aux, i64 %.sroa.4525.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45

bb.ge:                                            ; preds = %bb.gc
  %gepdiff.i44 = sub nsw i64 0, %i.auw            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.atu, ptr align 1 %i.aux, i64 %gepdiff.i44, i1 false)
  %i.auz = getelementptr inbounds nuw i8, ptr %i.atu, i64 %gepdiff.i44
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  %.sroa.6512.0 = phi i64 [ %i.auy, %bb.ge ], [ %.sroa.4525.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 5 uses
  %.0550 = phi ptr [ %i.n, %bb.ge ], [ %i.atx, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 9 uses
  %.0 = phi ptr [ %i.auz, %bb.ge ], [ %i.atu, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 12 uses
  %i.ava = icmp ugt i64 %.sroa.5526.0.copyload, 15
  br i1 %i.ava, label %bb.gg, label %bb.gj, !prof !97

bb.gg:                                            ; preds = %bb.gf
  %i.avb = getelementptr inbounds i8, ptr %.0, i64 %.sroa.6512.0
  %i.avc = load <2 x i64>, ptr %.0550, align 1, !tbaa !9
  store <2 x i64> %i.avc, ptr %.0, align 1, !tbaa !9
  %i.avd = icmp slt i64 %.sroa.6512.0, 17
  br i1 %i.avd, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ave = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gi, %bb.gh
  %.130.i77 = phi ptr [ %i.ave, %bb.gh ], [ %i.avj, %bb.gi ] ; 3 uses
  %.pn.i78 = phi ptr [ %.0550, %bb.gh ], [ %i.avh, %bb.gi ] ; 2 uses
  %.1.i79 = getelementptr inbounds nuw i8, ptr %.pn.i78, i64 16
  %i.avf = load <2 x i64>, ptr %.1.i79, align 1, !tbaa !9
  store <2 x i64> %i.avf, ptr %.130.i77, align 1, !tbaa !9
  %i.avg = getelementptr inbounds nuw i8, ptr %.130.i77, i64 16
  %i.avh = getelementptr inbounds nuw i8, ptr %.pn.i78, i64 32 ; 2 uses
  %i.avi = load <2 x i64>, ptr %i.avh, align 1, !tbaa !9
  store <2 x i64> %i.avi, ptr %i.avg, align 1, !tbaa !9
  %i.avj = getelementptr inbounds nuw i8, ptr %.130.i77, i64 32 ; 2 uses
  %i.avk = icmp ult ptr %i.avj, %i.avb
  br i1 %i.avk, label %bb.gi, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, !llvm.loop !108

bb.gj:                                            ; preds = %bb.gf
  %i.avl = icmp samesign ult i64 %.sroa.5526.0.copyload, 8
  br i1 %i.avl, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5526.0.copyload
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !3
  %i.avo = load i8, ptr %.0550, align 1, !tbaa !9
  store i8 %i.avo, ptr %.0, align 1, !tbaa !9
  %i.avp = getelementptr inbounds nuw i8, ptr %.0550, i64 1
  %i.avq = load i8, ptr %i.avp, align 1, !tbaa !9
  %i.avr = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.avq, ptr %i.avr, align 1, !tbaa !9
  %i.avs = getelementptr inbounds nuw i8, ptr %.0550, i64 2
  %i.avt = load i8, ptr %i.avs, align 1, !tbaa !9
  %i.avu = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.avt, ptr %i.avu, align 1, !tbaa !9
  %i.avv = getelementptr inbounds nuw i8, ptr %.0550, i64 3
  %i.avw = load i8, ptr %i.avv, align 1, !tbaa !9
  %i.avx = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.avw, ptr %i.avx, align 1, !tbaa !9
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5526.0.copyload
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !3
  %i.awa = zext i32 %i.avz to i64
  %i.awb = getelementptr inbounds nuw i8, ptr %.0550, i64 %i.awa ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.awd = load i32, ptr %i.awb, align 1
  store i32 %i.awd, ptr %i.awc, align 1
  %i.awe = sext i32 %i.avn to i64
  %i.awf = sub nsw i64 0, %i.awe
  %i.awg = getelementptr inbounds i8, ptr %i.awb, i64 %i.awf
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit

bb.gl:                                            ; preds = %bb.gj
  %i.awh = load i64, ptr %.0550, align 1
  store i64 %i.awh, ptr %.0, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit: ; preds = %bb.gk, %bb.gl
  %.1 = phi ptr [ %i.awg, %bb.gk ], [ %.0550, %bb.gl ] ; 2 uses
  %.1258 = ptrtoaddr ptr %.1 to i64
  %i.awi = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.awk = icmp ugt i64 %.sroa.6512.0, 8
  br i1 %i.awk, label %bb.gm, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45

bb.gm:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit
  %i.awl = ptrtoint ptr %i.awj to i64
  %i.awm = ptrtoint ptr %i.awi to i64
  %i.awn = sub i64 %i.awl, %i.awm
  %i.awo = getelementptr i8, ptr %.0, i64 %.sroa.6512.0 ; 2 uses
  %i.awp = icmp slt i64 %i.awn, 16
  br i1 %i.awp, label %.preheader645.preheader, label %bb.gn

.preheader645.preheader:                          ; preds = %bb.gm
  %i.awq = add i64 %.sroa.4525.0.copyload, %i.ah
  %i.awr = add i64 %.sroa.5526.0.copyload, %i.aur
  %umax261 = tail call i64 @llvm.umax.i64(i64 %.sroa.5526.0.copyload, i64 %i.aur) ; 2 uses
  %i.aws = add i64 %i.awq, %i.awr
  %i.awt = sub i64 %i.aws, %.sroa.5526.0.copyload
  %i.awu = add i64 %i.ams, %umax261
  %umax262 = tail call i64 @llvm.umax.i64(i64 %i.awt, i64 %i.awu)
  %i.awv = add i64 %umax262, -9
  %i.aww = add i64 %umax261, %i.ah
  %i.awx = sub i64 %i.awv, %i.aww                 ; 2 uses
  %i.awy = lshr i64 %i.awx, 3
  %i.awz = add nuw nsw i64 %i.awy, 1              ; 2 uses
  %min.iters.check264 = icmp ult i64 %i.awx, 72
  br i1 %min.iters.check264, label %.preheader645.preheader316, label %vector.memcheck255

vector.memcheck255:                               ; preds = %.preheader645.preheader
  %i.axa = sub i64 %i.and, %i.ah
  %i.axb = add i64 %i.axa, %.7214.i710256
  %umax257 = tail call i64 @llvm.umax.i64(i64 %.sroa.5526.0.copyload, i64 %i.axb)
  %i.axc = add i64 %umax257, %i.ah
  %i.axd = sub i64 %i.axc, %.1258
  %diff.check259 = icmp ult i64 %i.axd, 32
  br i1 %diff.check259, label %.preheader645.preheader316, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck255
  %n.vec267 = and i64 %i.awz, 4611686018427387900 ; 3 uses
  %i.axe = shl i64 %n.vec267, 3                   ; 2 uses
  %i.axf = getelementptr i8, ptr %i.awj, i64 %i.axe
  %i.axg = getelementptr i8, ptr %i.awi, i64 %i.axe
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph265
  %index269 = phi i64 [ 0, %vector.ph265 ], [ %index.next274, %vector.body268 ] ; 2 uses
  %i.axh = shl i64 %index269, 3                   ; 2 uses
  %next.gep270 = getelementptr i8, ptr %i.awj, i64 %i.axh ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.awi, i64 %i.axh ; 2 uses
  %i.axi = getelementptr i8, ptr %next.gep271, i64 16
  %wide.load272 = load <2 x i64>, ptr %next.gep271, align 1
  %wide.load273 = load <2 x i64>, ptr %i.axi, align 1
  %i.axj = getelementptr i8, ptr %next.gep270, i64 16
  store <2 x i64> %wide.load272, ptr %next.gep270, align 1
  store <2 x i64> %wide.load273, ptr %i.axj, align 1
  %index.next274 = add nuw i64 %index269, 4       ; 2 uses
  %i.axk = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.axk, label %middle.block275, label %vector.body268, !llvm.loop !197

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %i.awz, %n.vec267
  br i1 %cmp.n276, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, label %.preheader645.preheader316

.preheader645.preheader316:                       ; preds = %vector.memcheck255, %.preheader645.preheader, %middle.block275
  %.029.i.ph = phi ptr [ %i.awj, %vector.memcheck255 ], [ %i.awj, %.preheader645.preheader ], [ %i.axf, %middle.block275 ]
  %.0.i86.ph = phi ptr [ %i.awi, %vector.memcheck255 ], [ %i.awi, %.preheader645.preheader ], [ %i.axg, %middle.block275 ]
  br label %.preheader645

.preheader645:                                    ; preds = %.preheader645.preheader316, %.preheader645
  %.029.i = phi ptr [ %i.axm, %.preheader645 ], [ %.029.i.ph, %.preheader645.preheader316 ] ; 2 uses
  %.0.i86 = phi ptr [ %i.axn, %.preheader645 ], [ %.0.i86.ph, %.preheader645.preheader316 ] ; 2 uses
  %i.axl = load i64, ptr %.0.i86, align 1
  store i64 %i.axl, ptr %.029.i, align 1
  %i.axm = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.0.i86, i64 8
  %i.axo = icmp ult ptr %i.axm, %i.awo
  br i1 %i.axo, label %.preheader645, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, !llvm.loop !198

bb.gn:                                            ; preds = %bb.gm
  %i.axp = load <2 x i64>, ptr %i.awi, align 1, !tbaa !9
  store <2 x i64> %i.axp, ptr %i.awj, align 1, !tbaa !9
  %i.axq = icmp slt i64 %.sroa.6512.0, 25
  br i1 %i.axq, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.axr = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gp, %bb.go
  %.130.i83 = phi ptr [ %i.axr, %bb.go ], [ %i.axw, %bb.gp ] ; 3 uses
  %.pn.i84 = phi ptr [ %i.awi, %bb.go ], [ %i.axu, %bb.gp ] ; 2 uses
  %.1.i85 = getelementptr inbounds nuw i8, ptr %.pn.i84, i64 16
  %i.axs = load <2 x i64>, ptr %.1.i85, align 1, !tbaa !9
  store <2 x i64> %i.axs, ptr %.130.i83, align 1, !tbaa !9
  %i.axt = getelementptr inbounds nuw i8, ptr %.130.i83, i64 16
  %i.axu = getelementptr inbounds nuw i8, ptr %.pn.i84, i64 32 ; 2 uses
  %i.axv = load <2 x i64>, ptr %i.axu, align 1, !tbaa !9
  store <2 x i64> %i.axv, ptr %i.axt, align 1, !tbaa !9
  %i.axw = getelementptr inbounds nuw i8, ptr %.130.i83, i64 32 ; 2 uses
  %i.axx = icmp ult ptr %i.axw, %i.awo
  br i1 %i.axx, label %bb.gp, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45: ; preds = %bb.gp, %.preheader645, %bb.gi, %middle.block275, %bb.gn, %bb.gg, %bb.fx, %bb.gb, %bb.gd, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit
  %.0.i42 = phi i64 [ %i.aud, %bb.fx ], [ -20, %bb.gb ], [ %i.atv, %bb.gd ], [ %i.atv, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit ], [ %i.atv, %bb.gi ], [ %i.atv, %bb.gg ], [ %i.atv, %middle.block275 ], [ %i.atv, %bb.gn ], [ %i.atv, %.preheader645 ], [ %i.atv, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.hk

bb.gq:                                            ; preds = %bb.eu
  %.sroa.0442.0.copyload = load i64, ptr %i.amz, align 8, !tbaa !53 ; 7 uses
  %.sroa.4443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %.sroa.4443.0.copyload = load i64, ptr %.sroa.4443.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %.sroa.5444.0.copyload = load i64, ptr %.sroa.5444.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.axy = getelementptr i8, ptr %.7214.i710, i64 %.sroa.0442.0.copyload ; 7 uses
  %i.axz = add i64 %.sroa.4443.0.copyload, %.sroa.0442.0.copyload ; 9 uses
  %i.aya = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 %.sroa.0442.0.copyload ; 2 uses
  %i.ayc = sub i64 0, %.sroa.5444.0.copyload
  %i.ayd = getelementptr inbounds i8, ptr %i.axy, i64 %i.ayc ; 2 uses
  %i.aye = icmp ugt ptr %i.ayb, %.4230.i708
  %i.ayf = getelementptr inbounds nuw i8, ptr %.7214.i710, i64 %i.axz
  %i.ayg = icmp ugt ptr %i.ayf, %i.aml
  %or.cond.i29 = select i1 %i.aye, i1 true, i1 %i.ayg, !prof !112
  br i1 %or.cond.i29, label %bb.gr, label %.critedge.i30, !prof !112

.critedge.i30:                                    ; preds = %bb.gq
  %i.ayh = load <2 x i64>, ptr %i.aya, align 1, !tbaa !9
  store <2 x i64> %i.ayh, ptr %.7214.i710, align 1, !tbaa !9
  %i.ayi = icmp ugt i64 %.sroa.0442.0.copyload, 16
  br i1 %i.ayi, label %bb.gs, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115, !prof !60

bb.gr:                                            ; preds = %bb.gq
  store i64 %.sroa.0442.0.copyload, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.4443.0.copyload, ptr %.sroa.6430.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5444.0.copyload, ptr %.sroa.12437.0..sroa_idx, align 8, !tbaa !53
  %i.ayj = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7214.i710, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef %.4230.i708, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34

bb.gs:                                            ; preds = %.critedge.i30
  %i.ayk = getelementptr inbounds nuw i8, ptr %.7214.i710, i64 16
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.aya, i64 16 ; 2 uses
  %i.aym = add i64 %.sroa.0442.0.copyload, -16
  %i.ayn = load <2 x i64>, ptr %i.ayl, align 1, !tbaa !9
  store <2 x i64> %i.ayn, ptr %i.ayk, align 1, !tbaa !9
  %i.ayo = icmp slt i64 %i.aym, 17
  br i1 %i.ayo, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ayp = getelementptr inbounds nuw i8, ptr %.7214.i710, i64 32
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gu, %bb.gt
  %.130.i110 = phi ptr [ %i.ayp, %bb.gt ], [ %i.ayu, %bb.gu ] ; 3 uses
  %.pn.i111 = phi ptr [ %i.ayl, %bb.gt ], [ %i.ays, %bb.gu ] ; 2 uses
  %.1.i112 = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 16
  %i.ayq = load <2 x i64>, ptr %.1.i112, align 1, !tbaa !9
  store <2 x i64> %i.ayq, ptr %.130.i110, align 1, !tbaa !9
  %i.ayr = getelementptr inbounds nuw i8, ptr %.130.i110, i64 16
  %i.ays = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 32 ; 2 uses
  %i.ayt = load <2 x i64>, ptr %i.ays, align 1, !tbaa !9
  store <2 x i64> %i.ayt, ptr %i.ayr, align 1, !tbaa !9
  %i.ayu = getelementptr inbounds nuw i8, ptr %.130.i110, i64 32 ; 2 uses
  %i.ayv = icmp ult ptr %i.ayu, %i.axy
  br i1 %i.ayv, label %bb.gu, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115: ; preds = %bb.gu, %bb.gs, %.critedge.i30
  store ptr %i.ayb, ptr %i.a, align 8, !tbaa !46
  %i.ayw = ptrtoint ptr %i.axy to i64             ; 2 uses
  %i.ayx = sub i64 %i.ayw, %i.ah                  ; 3 uses
  %i.ayy = icmp ugt i64 %.sroa.5444.0.copyload, %i.ayx
  br i1 %i.ayy, label %bb.gv, label %bb.gz

bb.gv:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115
  %i.ayz = sub i64 %i.ayw, %i.amm
  %i.aza = icmp ugt i64 %.sroa.5444.0.copyload, %i.ayz
  br i1 %i.aza, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, label %bb.gw, !prof !60

bb.gw:                                            ; preds = %bb.gv
  %i.azb = ptrtoint ptr %i.ayd to i64
  %i.azc = sub i64 %i.azb, %i.ah                  ; 3 uses
  %i.azd = getelementptr inbounds i8, ptr %i.r, i64 %i.azc ; 2 uses
  %i.aze = add nsw i64 %i.azc, %.sroa.4443.0.copyload ; 2 uses
  %.not.i32 = icmp sgt i64 %i.aze, 0
  br i1 %.not.i32, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.axy, ptr align 1 %i.azd, i64 %.sroa.4443.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34

bb.gy:                                            ; preds = %bb.gw
  %gepdiff.i33 = sub nsw i64 0, %i.azc            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.axy, ptr align 1 %i.azd, i64 %gepdiff.i33, i1 false)
  %i.azf = getelementptr inbounds nuw i8, ptr %i.axy, i64 %gepdiff.i33
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115
  %.sroa.6430.0 = phi i64 [ %i.aze, %bb.gy ], [ %.sroa.4443.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115 ] ; 5 uses
  %.0555 = phi ptr [ %i.n, %bb.gy ], [ %i.ayd, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115 ] ; 9 uses
  %.0554 = phi ptr [ %i.azf, %bb.gy ], [ %i.axy, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115 ] ; 12 uses
  %i.azg = icmp ugt i64 %.sroa.5444.0.copyload, 15
  br i1 %i.azg, label %bb.ha, label %bb.hd, !prof !97

bb.ha:                                            ; preds = %bb.gz
  %i.azh = getelementptr inbounds i8, ptr %.0554, i64 %.sroa.6430.0
  %i.azi = load <2 x i64>, ptr %.0555, align 1, !tbaa !9
  store <2 x i64> %i.azi, ptr %.0554, align 1, !tbaa !9
  %i.azj = icmp slt i64 %.sroa.6430.0, 17
  br i1 %i.azj, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.azk = getelementptr inbounds nuw i8, ptr %.0554, i64 16
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hc, %bb.hb
  %.130.i117 = phi ptr [ %i.azk, %bb.hb ], [ %i.azp, %bb.hc ] ; 3 uses
  %.pn.i118 = phi ptr [ %.0555, %bb.hb ], [ %i.azn, %bb.hc ] ; 2 uses
  %.1.i119 = getelementptr inbounds nuw i8, ptr %.pn.i118, i64 16
  %i.azl = load <2 x i64>, ptr %.1.i119, align 1, !tbaa !9
  store <2 x i64> %i.azl, ptr %.130.i117, align 1, !tbaa !9
  %i.azm = getelementptr inbounds nuw i8, ptr %.130.i117, i64 16
  %i.azn = getelementptr inbounds nuw i8, ptr %.pn.i118, i64 32 ; 2 uses
  %i.azo = load <2 x i64>, ptr %i.azn, align 1, !tbaa !9
  store <2 x i64> %i.azo, ptr %i.azm, align 1, !tbaa !9
  %i.azp = getelementptr inbounds nuw i8, ptr %.130.i117, i64 32 ; 2 uses
  %i.azq = icmp ult ptr %i.azp, %i.azh
  br i1 %i.azq, label %bb.hc, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, !llvm.loop !108

bb.hd:                                            ; preds = %bb.gz
  %i.azr = icmp samesign ult i64 %.sroa.5444.0.copyload, 8
  br i1 %i.azr, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5444.0.copyload
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !3
  %i.azu = load i8, ptr %.0555, align 1, !tbaa !9
  store i8 %i.azu, ptr %.0554, align 1, !tbaa !9
  %i.azv = getelementptr inbounds nuw i8, ptr %.0555, i64 1
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !9
  %i.azx = getelementptr inbounds nuw i8, ptr %.0554, i64 1
  store i8 %i.azw, ptr %i.azx, align 1, !tbaa !9
  %i.azy = getelementptr inbounds nuw i8, ptr %.0555, i64 2
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !9
  %i.baa = getelementptr inbounds nuw i8, ptr %.0554, i64 2
  store i8 %i.azz, ptr %i.baa, align 1, !tbaa !9
  %i.bab = getelementptr inbounds nuw i8, ptr %.0555, i64 3
  %i.bac = load i8, ptr %i.bab, align 1, !tbaa !9
  %i.bad = getelementptr inbounds nuw i8, ptr %.0554, i64 3
  store i8 %i.bac, ptr %i.bad, align 1, !tbaa !9
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5444.0.copyload
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !3
  %i.bag = zext i32 %i.baf to i64
  %i.bah = getelementptr inbounds nuw i8, ptr %.0555, i64 %i.bag ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.0554, i64 4
  %i.baj = load i32, ptr %i.bah, align 1
  store i32 %i.baj, ptr %i.bai, align 1
  %i.bak = sext i32 %i.azt to i64
  %i.bal = sub nsw i64 0, %i.bak
  %i.bam = getelementptr inbounds i8, ptr %i.bah, i64 %i.bal
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194

bb.hf:                                            ; preds = %bb.hd
  %i.ban = load i64, ptr %.0555, align 1
  store i64 %i.ban, ptr %.0554, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194: ; preds = %bb.he, %bb.hf
  %.1556 = phi ptr [ %i.bam, %bb.he ], [ %.0555, %bb.hf ] ; 2 uses
  %.1556281 = ptrtoaddr ptr %.1556 to i64
  %i.bao = getelementptr inbounds nuw i8, ptr %.1556, i64 8 ; 7 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %.0554, i64 8 ; 6 uses
  %i.baq = icmp ugt i64 %.sroa.6430.0, 8
  br i1 %i.baq, label %bb.hg, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34

bb.hg:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194
  %i.bar = ptrtoint ptr %i.bap to i64
  %i.bas = ptrtoint ptr %i.bao to i64
  %i.bat = sub i64 %i.bar, %i.bas
  %i.bau = getelementptr i8, ptr %.0554, i64 %.sroa.6430.0 ; 2 uses
  %i.bav = icmp slt i64 %i.bat, 16
  br i1 %i.bav, label %.preheader648.preheader, label %bb.hh

.preheader648.preheader:                          ; preds = %bb.hg
  %i.baw = add i64 %.sroa.4443.0.copyload, %i.ah
  %i.bax = add i64 %.sroa.5444.0.copyload, %i.ayx
  %umax284 = tail call i64 @llvm.umax.i64(i64 %.sroa.5444.0.copyload, i64 %i.ayx) ; 2 uses
  %i.bay = add i64 %i.baw, %i.bax
  %i.baz = sub i64 %i.bay, %.sroa.5444.0.copyload
  %i.bba = add i64 %i.amt, %umax284
  %umax285 = tail call i64 @llvm.umax.i64(i64 %i.baz, i64 %i.bba)
  %i.bbb = add i64 %umax285, -9
  %i.bbc = add i64 %umax284, %i.ah
  %i.bbd = sub i64 %i.bbb, %i.bbc                 ; 2 uses
  %i.bbe = lshr i64 %i.bbd, 3
  %i.bbf = add nuw nsw i64 %i.bbe, 1              ; 2 uses
  %min.iters.check287 = icmp ult i64 %i.bbd, 72
  br i1 %min.iters.check287, label %.preheader648.preheader319, label %vector.memcheck279

vector.memcheck279:                               ; preds = %.preheader648.preheader
  %i.bbg = sub i64 %.sroa.0442.0.copyload, %i.ah
  %i.bbh = add i64 %i.bbg, %.7214.i710256
  %umax280 = tail call i64 @llvm.umax.i64(i64 %.sroa.5444.0.copyload, i64 %i.bbh)
  %i.bbi = add i64 %umax280, %i.ah
  %i.bbj = sub i64 %i.bbi, %.1556281
  %diff.check282 = icmp ult i64 %i.bbj, 32
  br i1 %diff.check282, label %.preheader648.preheader319, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck279
  %n.vec290 = and i64 %i.bbf, 4611686018427387900 ; 3 uses
  %i.bbk = shl i64 %n.vec290, 3                   ; 2 uses
  %i.bbl = getelementptr i8, ptr %i.bap, i64 %i.bbk
  %i.bbm = getelementptr i8, ptr %i.bao, i64 %i.bbk
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph288
  %index292 = phi i64 [ 0, %vector.ph288 ], [ %index.next297, %vector.body291 ] ; 2 uses
  %i.bbn = shl i64 %index292, 3                   ; 2 uses
  %next.gep293 = getelementptr i8, ptr %i.bap, i64 %i.bbn ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.bao, i64 %i.bbn ; 2 uses
  %i.bbo = getelementptr i8, ptr %next.gep294, i64 16
  %wide.load295 = load <2 x i64>, ptr %next.gep294, align 1
  %wide.load296 = load <2 x i64>, ptr %i.bbo, align 1
  %i.bbp = getelementptr i8, ptr %next.gep293, i64 16
  store <2 x i64> %wide.load295, ptr %next.gep293, align 1
  store <2 x i64> %wide.load296, ptr %i.bbp, align 1
  %index.next297 = add nuw i64 %index292, 4       ; 2 uses
  %i.bbq = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.bbq, label %middle.block298, label %vector.body291, !llvm.loop !199

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.bbf, %n.vec290
  br i1 %cmp.n299, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, label %.preheader648.preheader319

.preheader648.preheader319:                       ; preds = %vector.memcheck279, %.preheader648.preheader, %middle.block298
  %.029.i127.ph = phi ptr [ %i.bap, %vector.memcheck279 ], [ %i.bap, %.preheader648.preheader ], [ %i.bbl, %middle.block298 ]
  %.0.i128.ph = phi ptr [ %i.bao, %vector.memcheck279 ], [ %i.bao, %.preheader648.preheader ], [ %i.bbm, %middle.block298 ]
  br label %.preheader648

.preheader648:                                    ; preds = %.preheader648.preheader319, %.preheader648
  %.029.i127 = phi ptr [ %i.bbs, %.preheader648 ], [ %.029.i127.ph, %.preheader648.preheader319 ] ; 2 uses
  %.0.i128 = phi ptr [ %i.bbt, %.preheader648 ], [ %.0.i128.ph, %.preheader648.preheader319 ] ; 2 uses
  %i.bbr = load i64, ptr %.0.i128, align 1
  store i64 %i.bbr, ptr %.029.i127, align 1
  %i.bbs = getelementptr inbounds nuw i8, ptr %.029.i127, i64 8 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %.0.i128, i64 8
  %i.bbu = icmp ult ptr %i.bbs, %i.bau
  br i1 %i.bbu, label %.preheader648, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, !llvm.loop !200

bb.hh:                                            ; preds = %bb.hg
  %i.bbv = load <2 x i64>, ptr %i.bao, align 1, !tbaa !9
  store <2 x i64> %i.bbv, ptr %i.bap, align 1, !tbaa !9
  %i.bbw = icmp slt i64 %.sroa.6430.0, 25
  br i1 %i.bbw, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bbx = getelementptr inbounds nuw i8, ptr %.0554, i64 24
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hj, %bb.hi
  %.130.i124 = phi ptr [ %i.bbx, %bb.hi ], [ %i.bcc, %bb.hj ] ; 3 uses
  %.pn.i125 = phi ptr [ %i.bao, %bb.hi ], [ %i.bca, %bb.hj ] ; 2 uses
  %.1.i126 = getelementptr inbounds nuw i8, ptr %.pn.i125, i64 16
  %i.bby = load <2 x i64>, ptr %.1.i126, align 1, !tbaa !9
  store <2 x i64> %i.bby, ptr %.130.i124, align 1, !tbaa !9
  %i.bbz = getelementptr inbounds nuw i8, ptr %.130.i124, i64 16
  %i.bca = getelementptr inbounds nuw i8, ptr %.pn.i125, i64 32 ; 2 uses
  %i.bcb = load <2 x i64>, ptr %i.bca, align 1, !tbaa !9
  store <2 x i64> %i.bcb, ptr %i.bbz, align 1, !tbaa !9
  %i.bcc = getelementptr inbounds nuw i8, ptr %.130.i124, i64 32 ; 2 uses
  %i.bcd = icmp ult ptr %i.bcc, %i.bau
  br i1 %i.bcd, label %bb.hj, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34: ; preds = %bb.hj, %.preheader648, %bb.hc, %middle.block298, %bb.hh, %bb.ha, %bb.gr, %bb.gv, %bb.gx, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194
  %.0.i31 = phi i64 [ %i.ayj, %bb.gr ], [ -20, %bb.gv ], [ %i.axz, %bb.gx ], [ %i.axz, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194 ], [ %i.axz, %bb.hc ], [ %i.axz, %bb.ha ], [ %i.axz, %middle.block298 ], [ %i.axz, %bb.hh ], [ %i.axz, %.preheader648 ], [ %i.axz, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.hk

bb.hk:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45
  %i.bce = phi i64 [ %.0.i42, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45 ], [ %.0.i31, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34 ] ; 3 uses
  %i.bcf = icmp ult i64 %i.bce, -119
  %i.bcg = getelementptr inbounds nuw i8, ptr %.7214.i710, i64 %i.bce
  br i1 %i.bcf, label %bb.hl, label %.thread620

bb.hl:                                            ; preds = %bb.hk, %.loopexit
  %.6232.i = phi ptr [ %i.amp, %.loopexit ], [ %.4230.i708, %bb.hk ] ; 2 uses
  %.12219.i = phi ptr [ %i.ats, %.loopexit ], [ %i.bcg, %bb.hk ] ; 2 uses
  %i.bch = add i32 %.2240.i707, 1                 ; 2 uses
  %exitcond741.not = icmp eq i32 %i.bch, %5
  br i1 %exitcond741.not, label %.preheader, label %bb.eu, !llvm.loop !132

.thread620:                                       ; preds = %bb.er, %bb.cd, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, %.loopexit, %bb.hk, %bb.ex, %bb.o, %bb.g, %bb.e, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread, %._crit_edge, %.thread607
  %.12.i.ph = phi i64 [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread ], [ -20, %bb.e ], [ -20, %bb.o ], [ -20, %.thread607 ], [ -20, %._crit_edge ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ], [ -70, %bb.ex ], [ -20, %bb.g ], [ %i.bce, %bb.hk ], [ %.0.i25, %.loopexit ], [ %.0.i15, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit ], [ %i.alp, %bb.er ], [ -70, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.hm:                                            ; preds = %.preheader, %bb.d
  %.pre752 = phi ptr [ %.pre752.pre, %.preheader ], [ %i.j, %bb.d ] ; 3 uses
  %i.bci = phi i32 [ %.pre751, %.preheader ], [ %i.c, %bb.d ]
  %.9235.i = phi ptr [ %.4230.i.lcssa, %.preheader ], [ %i.l, %bb.d ] ; 2 uses
  %.15222.i = phi ptr [ %.7214.i.lcssa, %.preheader ], [ %1, %bb.d ] ; 5 uses
  %i.bcj = icmp eq i32 %i.bci, 2
  br i1 %i.bcj, label %bb.hn, label %._crit_edge754

._crit_edge754:                                   ; preds = %bb.hm
  %.pre755 = ptrtoint ptr %i.h to i64
  br label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  %i.bck = ptrtoint ptr %.9235.i to i64
  %i.bcl = ptrtoint ptr %.pre752 to i64
  %i.bcm = sub i64 %i.bck, %i.bcl                 ; 3 uses
  %i.bcn = ptrtoint ptr %i.h to i64               ; 2 uses
  %i.bco = ptrtoint ptr %.15222.i to i64
  %i.bcp = sub i64 %i.bcn, %i.bco
  %.not276.i = icmp ugt i64 %i.bcm, %i.bcp
  br i1 %.not276.i, label %_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.not275.i = icmp eq ptr %.15222.i, null
  br i1 %.not275.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.15222.i, ptr align 1 %.pre752, i64 %i.bcm, i1 false)
  %i.bcq = getelementptr inbounds nuw i8, ptr %.15222.i, i64 %i.bcm
  br label %bb.hq

bb.hq:                                            ; preds = %bb.ho, %bb.hp
  %.16223.i = phi ptr [ %i.bcq, %bb.hp ], [ null, %bb.ho ]
  %i.bcr = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.bcs = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %bb.hr

bb.hr:                                            ; preds = %._crit_edge754, %bb.hq
  %.pre-phi = phi i64 [ %.pre755, %._crit_edge754 ], [ %i.bcn, %bb.hq ]
  %i.bct = phi ptr [ %.pre752, %._crit_edge754 ], [ %i.bcr, %bb.hq ] ; 2 uses
  %.11237.i = phi ptr [ %.9235.i, %._crit_edge754 ], [ %i.bcs, %bb.hq ]
  %.18.i = phi ptr [ %.15222.i, %._crit_edge754 ], [ %.16223.i, %bb.hq ] ; 4 uses
  %i.bcu = ptrtoint ptr %.11237.i to i64
  %i.bcv = ptrtoint ptr %i.bct to i64
  %i.bcw = sub i64 %i.bcu, %i.bcv                 ; 3 uses
  %i.bcx = ptrtoint ptr %.18.i to i64
  %i.bcy = sub i64 %.pre-phi, %i.bcx
  %.not278.i = icmp ugt i64 %i.bcw, %i.bcy
  br i1 %.not278.i, label %_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.not277.i = icmp eq ptr %.18.i, null
  br i1 %.not277.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.18.i, ptr align 1 %i.bct, i64 %i.bcw, i1 false)
  %i.bcz = getelementptr inbounds nuw i8, ptr %.18.i, i64 %i.bcw
  %i.bda = ptrtoint ptr %i.bcz to i64
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.20.i.ph = phi i64 [ 0, %bb.hs ], [ %i.bda, %bb.ht ]
  %i.bdb = ptrtoint ptr %1 to i64
  %i.bdc = sub i64 %.20.i.ph, %i.bdb
  br label %_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %bb.hn, %bb.hr, %.thread620, %bb.hu
  %.17.i = phi i64 [ %i.bdc, %bb.hu ], [ %.12.i.ph, %.thread620 ], [ -70, %bb.hr ], [ -70, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.17.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef readonly byval(%"struct.duckdb_zstd::seq_t") align 8 captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly captures(none) %7) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !102    ; 9 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !201  ; 4 uses
  %i.e = add i64 %i.d, %i.a                       ; 3 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !46     ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !202  ; 3 uses
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %1, i64 -32 ; 5 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.e, %i.o
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i: ; preds = %bb.ay, %bb.av, %bb.ax, %bb.az
  %i.nn = phi ptr [ %i.lc, %bb.ay ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.av ], [ %i.mx, %bb.ax ], [ %i.nk, %bb.az ] ; 2 uses
  %i.no = phi i32 [ %i.mj, %bb.ay ], [ %i.mj, %bb.av ], [ %i.my, %bb.ax ], [ %i.nm, %bb.az ] ; 2 uses
  %i.np = phi i64 [ %i.le, %bb.ay ], [ %i.le, %bb.av ], [ %.val.i.i34, %bb.ax ], [ %.val.i35, %bb.az ] ; 2 uses
  %i.nq = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sroa.057.0 ; 2 uses
  %i.ns = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.nt = icmp ugt ptr %i.nr, %i.ns
  br i1 %i.nt, label %bb.bv, label %bb.ba

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread: ; preds = %bb.at
  %i.nu = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.sroa.057.0 ; 2 uses
  %i.nw = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.nx = icmp ugt ptr %i.nv, %i.nw
  br i1 %i.nx, label %.thread384, label %bb.ba

bb.ba:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i
  %i.ny = phi ptr [ %i.lc, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nn, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.nz = phi i32 [ %i.lo, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.no, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.oa = phi i64 [ %i.le, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.np, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.ob = phi ptr [ %i.nv, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nr, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 3 uses
  %i.oc = phi ptr [ %i.nu, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.od = phi i64 [ %i.hh, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.ly, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.oe = phi i64 [ %i.hg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.ms, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.of = phi i64 [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.mi, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.og = getelementptr inbounds i8, ptr %i.ob, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.oh = getelementptr i8, ptr %.0142.i285, i64 %.sroa.057.0 ; 7 uses
  %i.oi = add i64 %.sroa.057.0, %.sroa.659.0      ; 9 uses
  %i.oj = sub i64 0, %.sink
  %i.ok = getelementptr inbounds i8, ptr %i.oh, i64 %i.oj ; 2 uses
  %i.ol = icmp ugt ptr %i.ob, %i.f
  %i.om = getelementptr inbounds nuw i8, ptr %.0142.i285, i64 %i.oi
  %i.on = icmp ugt ptr %i.om, %i.og
  %or.cond.i207.i = select i1 %i.ol, i1 true, i1 %i.on, !prof !112
  br i1 %or.cond.i207.i, label %bb.bb, label %.critedge.i208.i, !prof !112

.critedge.i208.i:                                 ; preds = %bb.ba
  %i.oo = load <2 x i64>, ptr %i.oc, align 1, !tbaa !9
  store <2 x i64> %i.oo, ptr %.0142.i285, align 1, !tbaa !9
  %i.op = icmp ugt i64 %.sroa.057.0, 16
  br i1 %i.op, label %bb.bc, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !prof !60

bb.bb:                                            ; preds = %bb.ba
  store i64 %.sroa.057.0, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.659.0, ptr %.sroa.6139.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink, ptr %.sroa.13144.0..sroa_idx, align 8, !tbaa !53
  %i.oq = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0142.i285, ptr noundef %i.b, ptr noundef nonnull %i.og, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bc:                                            ; preds = %.critedge.i208.i
  %i.or = getelementptr inbounds nuw i8, ptr %.0142.i285, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.ot = add i64 %.sroa.057.0, -16
  %i.ou = load <2 x i64>, ptr %i.os, align 1, !tbaa !9
  store <2 x i64> %i.ou, ptr %i.or, align 1, !tbaa !9
  %i.ov = icmp slt i64 %i.ot, 17
  br i1 %i.ov, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ow = getelementptr inbounds nuw i8, ptr %.0142.i285, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.130.i.i = phi ptr [ %i.ow, %bb.bd ], [ %i.pb, %bb.be ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.os, %bb.bd ], [ %i.oz, %bb.be ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ox = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ox, ptr %.130.i.i, align 1, !tbaa !9
  %i.oy = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.oz = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.pa = load <2 x i64>, ptr %i.oz, align 1, !tbaa !9
  store <2 x i64> %i.pa, ptr %i.oy, align 1, !tbaa !9
  %i.pb = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.pc = icmp ult ptr %i.pb, %i.oh
  br i1 %i.pc, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.be, %bb.bc, %.critedge.i208.i
  store ptr %i.ob, ptr %i.a, align 8, !tbaa !46
  %i.pd = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.pe = sub i64 %i.pd, %i.gu                    ; 3 uses
  %i.pf = icmp ugt i64 %.sink, %i.pe
  br i1 %i.pf, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.pg = sub i64 %i.pd, %i.gv
  %i.ph = icmp ugt i64 %.sink, %i.pg
  br i1 %i.ph, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread, label %bb.bg, !prof !60

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread236

bb.bg:                                            ; preds = %bb.bf
  %i.pi = ptrtoint ptr %i.ok to i64
  %i.pj = sub i64 %i.pi, %i.gu                    ; 3 uses
  %i.pk = getelementptr inbounds i8, ptr %i.l, i64 %i.pj ; 2 uses
  %i.pl = add nsw i64 %i.pj, %.sroa.659.0         ; 2 uses
  %.not.i210.i = icmp sgt i64 %i.pl, 0
  br i1 %.not.i210.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oh, ptr align 1 %i.pk, i64 %.sroa.659.0, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i211.i = sub nsw i64 0, %i.pj          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oh, ptr align 1 %i.pk, i64 %gepdiff.i211.i, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oh, i64 %gepdiff.i211.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.sroa.6139.0 = phi i64 [ %i.pl, %bb.bi ], [ %.sroa.659.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %.0170 = phi ptr [ %i.h, %bb.bi ], [ %i.ok, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pm, %bb.bi ], [ %i.oh, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %i.pn = icmp ugt i64 %.sink, 15
  br i1 %i.pn, label %bb.bk, label %bb.bn, !prof !97

bb.bk:                                            ; preds = %bb.bj
  %i.po = getelementptr inbounds i8, ptr %.0, i64 %.sroa.6139.0
  %i.pp = load <2 x i64>, ptr %.0170, align 1, !tbaa !9
  store <2 x i64> %i.pp, ptr %.0, align 1, !tbaa !9
  %i.pq = icmp slt i64 %.sroa.6139.0, 17
  br i1 %i.pq, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pr = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.130.i243.i = phi ptr [ %i.pr, %bb.bl ], [ %i.pw, %bb.bm ] ; 3 uses
  %.pn.i244.i = phi ptr [ %.0170, %bb.bl ], [ %i.pu, %bb.bm ] ; 2 uses
  %.1.i245.i = getelementptr inbounds nuw i8, ptr %.pn.i244.i, i64 16
  %i.ps = load <2 x i64>, ptr %.1.i245.i, align 1, !tbaa !9
  store <2 x i64> %i.ps, ptr %.130.i243.i, align 1, !tbaa !9
  %i.pt = getelementptr inbounds nuw i8, ptr %.130.i243.i, i64 16
  %i.pu = getelementptr inbounds nuw i8, ptr %.pn.i244.i, i64 32 ; 2 uses
  %i.pv = load <2 x i64>, ptr %i.pu, align 1, !tbaa !9
  store <2 x i64> %i.pv, ptr %i.pt, align 1, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %.130.i243.i, i64 32 ; 2 uses
  %i.px = icmp ult ptr %i.pw, %i.po
  br i1 %i.px, label %bb.bm, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

bb.bn:                                            ; preds = %bb.bj
  %i.py = icmp samesign ult i64 %.sink, 8
  br i1 %i.py, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !3
  %i.qb = load i8, ptr %.0170, align 1, !tbaa !9
  store i8 %i.qb, ptr %.0, align 1, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !9
  %i.qe = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !9
  %i.qf = getelementptr inbounds nuw i8, ptr %.0170, i64 2
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !9
  %i.qh = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !9
  %i.qi = getelementptr inbounds nuw i8, ptr %.0170, i64 3
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !9
  %i.qk = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !9
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !3
  %i.qn = zext i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %.0170, i64 %i.qn ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.qq = load i32, ptr %i.qo, align 1
  store i32 %i.qq, ptr %i.qp, align 1
  %i.qr = sext i32 %i.qa to i64
  %i.qs = sub nsw i64 0, %i.qr
  %i.qt = getelementptr inbounds i8, ptr %i.qo, i64 %i.qs
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.qu = load i64, ptr %.0170, align 1
  store i64 %i.qu, ptr %.0, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.bp, %bb.bo
  %.1 = phi ptr [ %i.qt, %bb.bo ], [ %.0170, %bb.bp ] ; 2 uses
  %.177 = ptrtoaddr ptr %.1 to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qx = icmp ugt i64 %.sroa.6139.0, 8
  br i1 %i.qx, label %bb.bq, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bq:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.qy = ptrtoint ptr %i.qw to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = getelementptr i8, ptr %.0, i64 %.sroa.6139.0 ; 2 uses
  %i.rc = icmp slt i64 %i.ra, 16
  br i1 %i.rc, label %.preheader265.preheader, label %bb.br

.preheader265.preheader:                          ; preds = %bb.bq
  %i.rd = add i64 %.sroa.659.0, %i.gu
  %i.re = add i64 %.sink, %i.pe
  %umax78 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.pe) ; 2 uses
  %i.rf = add i64 %i.rd, %i.re
  %i.rg = sub i64 %i.rf, %.sink
  %i.rh = add i64 %i.gw, %umax78
  %umax79 = tail call i64 @llvm.umax.i64(i64 %i.rg, i64 %i.rh)
  %i.ri = add i64 %umax79, -9
  %i.rj = add i64 %umax78, %i.gu
  %i.rk = sub i64 %i.ri, %i.rj                    ; 2 uses
  %i.rl = lshr i64 %i.rk, 3
  %i.rm = add nuw nsw i64 %i.rl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rk, 72
  br i1 %min.iters.check, label %.preheader265.preheader220, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader265.preheader
  %i.rn = sub i64 %.sroa.057.0, %i.gu
  %i.ro = add i64 %i.rn, %.0142.i28576
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.ro)
  %i.rp = add i64 %umax, %i.gu
  %i.rq = sub i64 %i.rp, %.177
  %diff.check = icmp ult i64 %i.rq, 32
  br i1 %diff.check, label %.preheader265.preheader220, label %vector.ph

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
  %next.gep80 = getelementptr i8, ptr %i.qv, i64 %i.ru ; 2 uses
  %i.rv = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 1
  %wide.load81 = load <2 x i64>, ptr %i.rv, align 1
  %i.rw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load81, ptr %i.rw, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rx = icmp eq i64 %index.next, %n.vec
  br i1 %i.rx, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rm, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %.preheader265.preheader220

.preheader265.preheader220:                       ; preds = %vector.memcheck, %.preheader265.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.qw, %vector.memcheck ], [ %i.qw, %.preheader265.preheader ], [ %i.rs, %middle.block ]
  %.0.i252.i.ph = phi ptr [ %i.qv, %vector.memcheck ], [ %i.qv, %.preheader265.preheader ], [ %i.rt, %middle.block ]
  br label %.preheader265

.preheader265:                                    ; preds = %.preheader265.preheader220, %.preheader265
  %.029.i.i = phi ptr [ %i.rz, %.preheader265 ], [ %.029.i.i.ph, %.preheader265.preheader220 ] ; 2 uses
  %.0.i252.i = phi ptr [ %i.sa, %.preheader265 ], [ %.0.i252.i.ph, %.preheader265.preheader220 ] ; 2 uses
  %i.ry = load i64, ptr %.0.i252.i, align 1
  store i64 %i.ry, ptr %.029.i.i, align 1
  %i.rz = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.0.i252.i, i64 8
  %i.sb = icmp ult ptr %i.rz, %i.rb
  br i1 %i.sb, label %.preheader265, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !229

bb.br:                                            ; preds = %bb.bq
  %i.sc = load <2 x i64>, ptr %i.qv, align 1, !tbaa !9
  store <2 x i64> %i.sc, ptr %i.qw, align 1, !tbaa !9
  %i.sd = icmp slt i64 %.sroa.6139.0, 25
  br i1 %i.sd, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.se = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.130.i249.i = phi ptr [ %i.se, %bb.bs ], [ %i.sj, %bb.bt ] ; 3 uses
  %.pn.i250.i = phi ptr [ %i.qv, %bb.bs ], [ %i.sh, %bb.bt ] ; 2 uses
  %.1.i251.i = getelementptr inbounds nuw i8, ptr %.pn.i250.i, i64 16
  %i.sf = load <2 x i64>, ptr %.1.i251.i, align 1, !tbaa !9
  store <2 x i64> %i.sf, ptr %.130.i249.i, align 1, !tbaa !9
  %i.sg = getelementptr inbounds nuw i8, ptr %.130.i249.i, i64 16
  %i.sh = getelementptr inbounds nuw i8, ptr %.pn.i250.i, i64 32 ; 2 uses
  %i.si = load <2 x i64>, ptr %i.sh, align 1, !tbaa !9
  store <2 x i64> %i.si, ptr %i.sg, align 1, !tbaa !9
  %i.sj = getelementptr inbounds nuw i8, ptr %.130.i249.i, i64 32 ; 2 uses
  %i.sk = icmp ult ptr %i.sj, %i.rb
  br i1 %i.sk, label %bb.bt, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i: ; preds = %bb.bt, %.preheader265, %bb.bm, %middle.block, %bb.br, %bb.bk, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i, %bb.bh, %bb.bb
  %.0.i209.i = phi i64 [ %i.oq, %bb.bb ], [ %i.oi, %middle.block ], [ %i.oi, %bb.bh ], [ %i.oi, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i ], [ %i.oi, %bb.bk ], [ %i.oi, %bb.br ], [ %i.oi, %bb.bm ], [ %i.oi, %.preheader265 ], [ %i.oi, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sl = icmp ult i64 %.0.i209.i, -119
  br i1 %i.sl, label %bb.bu, label %.thread236

bb.bu:                                            ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i
  %i.sm = getelementptr inbounds nuw i8, ptr %.0142.i285, i64 %.0.i209.i ; 2 uses
  %i.sn = add nsw i32 %.0135.i287, -1             ; 2 uses
  %.not179.i = icmp eq i32 %i.sn, 0
  br i1 %.not179.i, label %.thread232, label %bb.ac, !llvm.loop !139

bb.bv:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i
  %i.so = icmp sgt i32 %.0135.i287, 0
  br i1 %i.so, label %.thread384, label %.thread236

.thread384:                                       ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread, %bb.bv
  %i.sp = phi ptr [ %i.nn, %bb.bv ], [ %i.lc, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.sq = phi i32 [ %i.no, %bb.bv ], [ %i.lo, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.sr = phi i64 [ %i.np, %bb.bv ], [ %i.le, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.ss = phi i64 [ %i.mi, %bb.bv ], [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.st = phi i64 [ %i.ms, %bb.bv ], [ %i.hg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.su = phi i64 [ %i.ly, %bb.bv ], [ %i.hh, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.sv = phi ptr [ %i.nq, %bb.bv ], [ %i.nu, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 11 uses
  %i.sw = phi ptr [ %i.ns, %bb.bv ], [ %i.nw, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.sx = ptrtoint ptr %i.sw to i64               ; 2 uses
  %i.sy = ptrtoint ptr %i.sv to i64               ; 4 uses
  %i.sz = sub i64 %i.sx, %i.sy                    ; 9 uses
  %.not181.i = icmp eq ptr %i.sw, %i.sv
  br i1 %.not181.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.thread384
  %i.ta = ptrtoint ptr %i.b to i64
  %i.tb = ptrtoint ptr %.0142.i285 to i64         ; 8 uses
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = icmp ugt i64 %i.sz, %i.tc
  br i1 %i.td, label %.thread236, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.te = sub i64 %i.tb, %i.sy                    ; 2 uses
  %i.tf = getelementptr inbounds i8, ptr %.0142.i285, i64 %i.sz ; 3 uses
  %i.tg = icmp slt i64 %i.sz, 8
  %i.th = icmp sgt i64 %i.te, -8
  %or.cond.i = or i1 %i.tg, %i.th
  br i1 %or.cond.i, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.bx
  %i.ti = icmp sgt i64 %i.sz, 0
  br i1 %i.ti, label %iter.check136, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit

iter.check136:                                    ; preds = %.preheader.i
  %i.tj = add i64 %i.tb, %i.sx
  %i.tk = sub i64 %i.tj, %i.sy
  %i.tl = add i64 %i.tb, 1
  %umax116 = tail call i64 @llvm.umax.i64(i64 %i.tk, i64 %i.tl)
  %i.tm = sub i64 %umax116, %i.tb                 ; 7 uses
  %min.iters.check118 = icmp ult i64 %i.tm, 4
  %i.tn = sub i64 %i.tb, %i.sy
  %diff.check115 = icmp ult i64 %i.tn, 32
  %or.cond203 = or i1 %min.iters.check118, %diff.check115
  br i1 %or.cond203, label %.lr.ph40.i.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %iter.check136
  %min.iters.check120 = icmp ult i64 %i.tm, 32
  br i1 %min.iters.check120, label %vec.epilog.ph140, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %n.mod.vf122 = and i64 %i.tm, 28
  %n.vec123 = and i64 %i.tm, -32                  ; 5 uses
  %i.to = getelementptr i8, ptr %.0142.i285, i64 %n.vec123
  %i.tp = getelementptr i8, ptr %i.sv, i64 %n.vec123
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph121
  %index125 = phi i64 [ 0, %vector.ph121 ], [ %index.next130, %vector.body124 ] ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.0142.i285, i64 %index125 ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.sv, i64 %index125 ; 2 uses
  %i.tq = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load128 = load <16 x i8>, ptr %next.gep127, align 1, !tbaa !9
  %wide.load129 = load <16 x i8>, ptr %i.tq, align 1, !tbaa !9
  %i.tr = getelementptr i8, ptr %next.gep126, i64 16
  store <16 x i8> %wide.load128, ptr %next.gep126, align 1, !tbaa !9
  store <16 x i8> %wide.load129, ptr %i.tr, align 1, !tbaa !9
  %index.next130 = add nuw i64 %index125, 32      ; 2 uses
  %i.ts = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.ts, label %middle.block131, label %vector.body124, !llvm.loop !230

middle.block131:                                  ; preds = %vector.body124
  %cmp.n132 = icmp eq i64 %i.tm, %n.vec123
  br i1 %cmp.n132, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %vec.epilog.iter.check138

vec.epilog.iter.check138:                         ; preds = %middle.block131
  %min.epilog.iters.check139 = icmp eq i64 %n.mod.vf122, 0
  br i1 %min.epilog.iters.check139, label %.lr.ph40.i.preheader, label %vec.epilog.ph140, !prof !105

vec.epilog.ph140:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check138
  %vec.epilog.resume.val133 = phi i64 [ %n.vec123, %vec.epilog.iter.check138 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec142 = and i64 %i.tm, -4                   ; 4 uses
  %i.tt = getelementptr i8, ptr %.0142.i285, i64 %n.vec142
  %i.tu = getelementptr i8, ptr %i.sv, i64 %n.vec142
  br label %vec.epilog.vector.body143

vec.epilog.vector.body143:                        ; preds = %vec.epilog.vector.body143, %vec.epilog.ph140
  %index144 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph140 ], [ %index.next148, %vec.epilog.vector.body143 ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %.0142.i285, i64 %index144
  %next.gep146 = getelementptr i8, ptr %i.sv, i64 %index144
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !9
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !9
  %index.next148 = add nuw i64 %index144, 4       ; 2 uses
  %i.tv = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.tv, label %vec.epilog.middle.block149, label %vec.epilog.vector.body143, !llvm.loop !231

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body143
  %cmp.n150 = icmp eq i64 %i.tm, %n.vec142
  br i1 %cmp.n150, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph40.i.preheader
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.237.i = phi ptr [ %i.vc, %.lr.ph.i ], [ %.237.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23136.i = phi ptr [ %i.va, %.lr.ph.i ], [ %.23136.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.23136.i, i64 1
  %i.vb = load i8, ptr %.23136.i, align 1, !tbaa !9
  %i.vc = getelementptr inbounds nuw i8, ptr %.237.i, i64 1 ; 2 uses
  store i8 %i.vb, ptr %.237.i, align 1, !tbaa !9
  %exitcond.not.i = icmp eq ptr %i.vc, %scevgep.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph.i, !llvm.loop !235

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit: ; preds = %.lr.ph.i, %.lr.ph40.i, %middle.block100, %vec.epilog.middle.block, %middle.block131, %vec.epilog.middle.block149, %.preheader.i
  %i.vd = sub i64 %.sroa.057.0, %i.sz
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, %.thread384
  %.sroa.0.2.i = phi i64 [ %i.vd, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.sroa.057.0, %.thread384 ] ; 8 uses
  %.2144.i = phi ptr [ %i.tf, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.0142.i285, %.thread384 ] ; 8 uses
  %.2144.i154 = ptrtoaddr ptr %.2144.i to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.ve, ptr %i.a, align 8, !tbaa !46
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.vg, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.vh = getelementptr i8, ptr %.2144.i, i64 %.sroa.0.2.i ; 7 uses
  %i.vi = add i64 %.sroa.0.2.i, %.sroa.659.0      ; 9 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.sroa.0.2.i
  %i.vk = sub i64 0, %.sink
  %i.vl = getelementptr inbounds i8, ptr %i.vh, i64 %i.vk ; 2 uses
  %i.vm = icmp ugt i64 %.sroa.0.2.i, 65536
  %i.vn = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.2144.i, i64 %i.vi
  %i.vp = icmp ugt ptr %i.vo, %i.vn
  %or.cond.i201.i = select i1 %i.vm, i1 true, i1 %i.vp, !prof !112
  br i1 %or.cond.i201.i, label %bb.cd, label %.critedge.i202.i, !prof !112

.critedge.i202.i:                                 ; preds = %bb.cc
  %i.vq = load <2 x i64>, ptr %i.ve, align 1, !tbaa !9
  store <2 x i64> %i.vq, ptr %.2144.i, align 1, !tbaa !9
  %i.vr = icmp samesign ugt i64 %.sroa.0.2.i, 16
  br i1 %i.vr, label %bb.ce, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, !prof !60

bb.cd:                                            ; preds = %bb.cc
  store i64 %.sroa.0.2.i, ptr %7, align 8, !tbaa !53
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.659.0, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !53
  %.sroa.13111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink, ptr %.sroa.13111.0..sroa_idx, align 8, !tbaa !53
  %i.vs = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.2144.i, ptr noundef %i.b, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.vf, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %.loopexit

bb.ce:                                            ; preds = %.critedge.i202.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.2144.i, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %i.vv = load <2 x i64>, ptr %i.vu, align 1, !tbaa !9
  store <2 x i64> %i.vv, ptr %i.vt, align 1, !tbaa !9
  %i.vw = icmp samesign ult i64 %.sroa.0.2.i, 33
  br i1 %i.vw, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vx = getelementptr inbounds nuw i8, ptr %.2144.i, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.130.i255.i = phi ptr [ %i.vx, %bb.cf ], [ %i.wc, %bb.cg ] ; 3 uses
  %.pn.i256.i = phi ptr [ %i.vu, %bb.cf ], [ %i.wa, %bb.cg ] ; 2 uses
  %.1.i257.i = getelementptr inbounds nuw i8, ptr %.pn.i256.i, i64 16
  %i.vy = load <2 x i64>, ptr %.1.i257.i, align 1, !tbaa !9
  store <2 x i64> %i.vy, ptr %.130.i255.i, align 1, !tbaa !9
  %i.vz = getelementptr inbounds nuw i8, ptr %.130.i255.i, i64 16
  %i.wa = getelementptr inbounds nuw i8, ptr %.pn.i256.i, i64 32 ; 2 uses
  %i.wb = load <2 x i64>, ptr %i.wa, align 1, !tbaa !9
  store <2 x i64> %i.wb, ptr %i.vz, align 1, !tbaa !9
  %i.wc = getelementptr inbounds nuw i8, ptr %.130.i255.i, i64 32 ; 2 uses
  %i.wd = icmp ult ptr %i.wc, %i.vh
  br i1 %i.wd, label %bb.cg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i: ; preds = %bb.cg, %bb.ce, %.critedge.i202.i
  store ptr %i.vj, ptr %i.a, align 8, !tbaa !46
  %i.we = ptrtoint ptr %i.vh to i64               ; 2 uses
  %i.wf = sub i64 %i.we, %i.gu                    ; 3 uses
  %i.wg = icmp ugt i64 %.sink, %i.wf
  br i1 %i.wg, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i
  %i.wh = sub i64 %i.we, %i.gv
  %i.wi = icmp ugt i64 %.sink, %i.wh
  br i1 %i.wi, label %.loopexit.thread, label %bb.ci, !prof !60

.loopexit.thread:                                 ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread236

bb.ci:                                            ; preds = %bb.ch
  %i.wj = ptrtoint ptr %i.vl to i64
  %i.wk = sub i64 %i.wj, %i.gu                    ; 3 uses
  %i.wl = getelementptr inbounds i8, ptr %i.l, i64 %i.wk ; 2 uses
  %i.wm = add nsw i64 %i.wk, %.sroa.659.0         ; 2 uses
  %.not.i204.i = icmp sgt i64 %i.wm, 0
  br i1 %.not.i204.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vh, ptr align 1 %i.wl, i64 %.sroa.659.0, i1 false)
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %gepdiff.i205.i = sub nsw i64 0, %i.wk          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vh, ptr align 1 %i.wl, i64 %gepdiff.i205.i, i1 false)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vh, i64 %gepdiff.i205.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i
  %.sroa.6106.0 = phi i64 [ %i.wm, %bb.ck ], [ %.sroa.659.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 5 uses
  %.0172 = phi ptr [ %i.h, %bb.ck ], [ %i.vl, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 9 uses
  %.0171 = phi ptr [ %i.wn, %bb.ck ], [ %i.vh, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 12 uses
  %i.wo = icmp ugt i64 %.sink, 15
  br i1 %i.wo, label %bb.cm, label %bb.cp, !prof !97

bb.cm:                                            ; preds = %bb.cl
  %i.wp = getelementptr inbounds i8, ptr %.0171, i64 %.sroa.6106.0
  %i.wq = load <2 x i64>, ptr %.0172, align 1, !tbaa !9
  store <2 x i64> %i.wq, ptr %.0171, align 1, !tbaa !9
  %i.wr = icmp slt i64 %.sroa.6106.0, 17
  br i1 %i.wr, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ws = getelementptr inbounds nuw i8, ptr %.0171, i64 16
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.130.i262.i = phi ptr [ %i.ws, %bb.cn ], [ %i.wx, %bb.co ] ; 3 uses
  %.pn.i263.i = phi ptr [ %.0172, %bb.cn ], [ %i.wv, %bb.co ] ; 2 uses
  %.1.i264.i = getelementptr inbounds nuw i8, ptr %.pn.i263.i, i64 16
  %i.wt = load <2 x i64>, ptr %.1.i264.i, align 1, !tbaa !9
  store <2 x i64> %i.wt, ptr %.130.i262.i, align 1, !tbaa !9
  %i.wu = getelementptr inbounds nuw i8, ptr %.130.i262.i, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %.pn.i263.i, i64 32 ; 2 uses
  %i.ww = load <2 x i64>, ptr %i.wv, align 1, !tbaa !9
  store <2 x i64> %i.ww, ptr %i.wu, align 1, !tbaa !9
  %i.wx = getelementptr inbounds nuw i8, ptr %.130.i262.i, i64 32 ; 2 uses
  %i.wy = icmp ult ptr %i.wx, %i.wp
  br i1 %i.wy, label %bb.co, label %.loopexit, !llvm.loop !108

bb.cp:                                            ; preds = %bb.cl
  %i.wz = icmp samesign ult i64 %.sink, 8
  br i1 %i.wz, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !3
  %i.xc = load i8, ptr %.0172, align 1, !tbaa !9
  store i8 %i.xc, ptr %.0171, align 1, !tbaa !9
  %i.xd = getelementptr inbounds nuw i8, ptr %.0172, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !9
  %i.xf = getelementptr inbounds nuw i8, ptr %.0171, i64 1
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !9
  %i.xg = getelementptr inbounds nuw i8, ptr %.0172, i64 2
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !9
  %i.xi = getelementptr inbounds nuw i8, ptr %.0171, i64 2
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !9
  %i.xj = getelementptr inbounds nuw i8, ptr %.0172, i64 3
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !9
  %i.xl = getelementptr inbounds nuw i8, ptr %.0171, i64 3
  store i8 %i.xk, ptr %i.xl, align 1, !tbaa !9
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !3
  %i.xo = zext i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %.0172, i64 %i.xo ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.0171, i64 4
  %i.xr = load i32, ptr %i.xp, align 1
  store i32 %i.xr, ptr %i.xq, align 1
  %i.xs = sext i32 %i.xb to i64
  %i.xt = sub nsw i64 0, %i.xs
  %i.xu = getelementptr inbounds i8, ptr %i.xp, i64 %i.xt
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i

bb.cr:                                            ; preds = %bb.cp
  %i.xv = load i64, ptr %.0172, align 1
  store i64 %i.xv, ptr %.0171, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i: ; preds = %bb.cr, %bb.cq
  %.1173 = phi ptr [ %i.xu, %bb.cq ], [ %.0172, %bb.cr ] ; 2 uses
  %.1173156 = ptrtoaddr ptr %.1173 to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %.1173, i64 8 ; 7 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.0171, i64 8 ; 6 uses
  %i.xy = icmp ugt i64 %.sroa.6106.0, 8
  br i1 %i.xy, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i
  %i.xz = ptrtoint ptr %i.xx to i64
  %i.ya = ptrtoint ptr %i.xw to i64
  %i.yb = sub i64 %i.xz, %i.ya
  %i.yc = getelementptr i8, ptr %.0171, i64 %.sroa.6106.0 ; 2 uses
  %i.yd = icmp slt i64 %i.yb, 16
  br i1 %i.yd, label %.preheader261.preheader, label %bb.ct

.preheader261.preheader:                          ; preds = %bb.cs
  %i.ye = add i64 %.sroa.659.0, %i.gu
  %i.yf = add i64 %.sink, %i.wf
  %umax159 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.wf) ; 2 uses
  %i.yg = add i64 %i.ye, %i.yf
  %i.yh = sub i64 %i.yg, %.sink
  %i.yi = add i64 %umax159, %i.gu
  %i.yj = add i64 %i.yi, 16
  %umax160 = tail call i64 @llvm.umax.i64(i64 %i.yh, i64 %i.yj)
  %i.yk = add i64 %umax160, -9
  %i.yl = add i64 %umax159, %i.gu
  %i.ym = sub i64 %i.yk, %i.yl                    ; 2 uses
  %i.yn = lshr i64 %i.ym, 3
  %i.yo = add nuw nsw i64 %i.yn, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.ym, 152
  br i1 %min.iters.check162, label %.preheader261.preheader216, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.preheader261.preheader
  %i.yp = add i64 %.sroa.0.2.i, %.2144.i154
  %i.yq = sub i64 %i.yp, %i.gu
  %umax155 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.yq)
  %i.yr = add i64 %umax155, %i.gu
  %i.ys = sub i64 %i.yr, %.1173156
  %diff.check157 = icmp ult i64 %i.ys, 32
  br i1 %diff.check157, label %.preheader261.preheader216, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck153
  %n.vec165 = and i64 %i.yo, 4611686018427387900  ; 3 uses
  %i.yt = shl i64 %n.vec165, 3                    ; 2 uses
  %i.yu = getelementptr i8, ptr %i.xx, i64 %i.yt
  %i.yv = getelementptr i8, ptr %i.xw, i64 %i.yt
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next172, %vector.body166 ] ; 2 uses
  %i.yw = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.xx, i64 %i.yw ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.xw, i64 %i.yw ; 2 uses
  %i.yx = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load170 = load <2 x i64>, ptr %next.gep169, align 1
  %wide.load171 = load <2 x i64>, ptr %i.yx, align 1
  %i.yy = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x i64> %wide.load170, ptr %next.gep168, align 1
  store <2 x i64> %wide.load171, ptr %i.yy, align 1
  %index.next172 = add nuw i64 %index167, 4       ; 2 uses
  %i.yz = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.yz, label %middle.block173, label %vector.body166, !llvm.loop !236

middle.block173:                                  ; preds = %vector.body166
  %cmp.n174 = icmp eq i64 %i.yo, %n.vec165
  br i1 %cmp.n174, label %.loopexit, label %.preheader261.preheader216

.preheader261.preheader216:                       ; preds = %vector.memcheck153, %.preheader261.preheader, %middle.block173
  %.029.i272.i.ph = phi ptr [ %i.xx, %vector.memcheck153 ], [ %i.xx, %.preheader261.preheader ], [ %i.yu, %middle.block173 ]
  %.0.i273.i.ph = phi ptr [ %i.xw, %vector.memcheck153 ], [ %i.xw, %.preheader261.preheader ], [ %i.yv, %middle.block173 ]
  br label %.preheader261

.preheader261:                                    ; preds = %.preheader261.preheader216, %.preheader261
  %.029.i272.i = phi ptr [ %i.zb, %.preheader261 ], [ %.029.i272.i.ph, %.preheader261.preheader216 ] ; 2 uses
  %.0.i273.i = phi ptr [ %i.zc, %.preheader261 ], [ %.0.i273.i.ph, %.preheader261.preheader216 ] ; 2 uses
  %i.za = load i64, ptr %.0.i273.i, align 1
  store i64 %i.za, ptr %.029.i272.i, align 1
  %i.zb = getelementptr inbounds nuw i8, ptr %.029.i272.i, i64 8 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 8
  %i.zd = icmp ult ptr %i.zb, %i.yc
  br i1 %i.zd, label %.preheader261, label %.loopexit, !llvm.loop !237

bb.ct:                                            ; preds = %bb.cs
  %i.ze = load <2 x i64>, ptr %i.xw, align 1, !tbaa !9
  store <2 x i64> %i.ze, ptr %i.xx, align 1, !tbaa !9
  %i.zf = icmp slt i64 %.sroa.6106.0, 25
  br i1 %i.zf, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zg = getelementptr inbounds nuw i8, ptr %.0171, i64 24
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.130.i269.i = phi ptr [ %i.zg, %bb.cu ], [ %i.zl, %bb.cv ] ; 3 uses
  %.pn.i270.i = phi ptr [ %i.xw, %bb.cu ], [ %i.zj, %bb.cv ] ; 2 uses
  %.1.i271.i = getelementptr inbounds nuw i8, ptr %.pn.i270.i, i64 16
  %i.zh = load <2 x i64>, ptr %.1.i271.i, align 1, !tbaa !9
  store <2 x i64> %i.zh, ptr %.130.i269.i, align 1, !tbaa !9
  %i.zi = getelementptr inbounds nuw i8, ptr %.130.i269.i, i64 16
  %i.zj = getelementptr inbounds nuw i8, ptr %.pn.i270.i, i64 32 ; 2 uses
  %i.zk = load <2 x i64>, ptr %i.zj, align 1, !tbaa !9
  store <2 x i64> %i.zk, ptr %i.zi, align 1, !tbaa !9
  %i.zl = getelementptr inbounds nuw i8, ptr %.130.i269.i, i64 32 ; 2 uses
  %i.zm = icmp ult ptr %i.zl, %i.yc
  br i1 %i.zm, label %bb.cv, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %bb.cv, %.preheader261, %bb.co, %middle.block173, %bb.cd, %bb.cj, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i, %bb.cm, %bb.ct
  %.0.i203.i = phi i64 [ %i.vs, %bb.cd ], [ %i.vi, %bb.co ], [ %i.vi, %bb.cj ], [ %i.vi, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i ], [ %i.vi, %bb.cm ], [ %i.vi, %middle.block173 ], [ %i.vi, %bb.ct ], [ %i.vi, %.preheader261 ], [ %i.vi, %bb.cv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.zn = icmp ult i64 %.0.i203.i, -119
  %i.zo = getelementptr inbounds nuw i8, ptr %.2144.i, i64 %.0.i203.i ; 2 uses
  %i.zp = add nsw i32 %.0135.i287, -1             ; 2 uses
  br i1 %i.zn, label %bb.cw, label %.thread236

bb.cw:                                            ; preds = %.loopexit
  %.not252 = icmp eq i32 %i.zp, 0
  br i1 %.not252, label %.thread232, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !148
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !149
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !151
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !152
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.zq = add i64 %i.gu, 16
  %i.zr = ptrtoint ptr %3 to i64
  %i.zs = ptrtoint ptr %3 to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ep
  %i.zt = phi ptr [ %i.sp, %bb.cx ], [ %i.agh, %bb.ep ] ; 8 uses
  %i.zu = phi i32 [ %i.sq, %bb.cx ], [ %i.agi, %bb.ep ] ; 5 uses
  %i.zv = phi i64 [ %i.sr, %bb.cx ], [ %i.agj, %bb.ep ] ; 6 uses
  %i.zw = phi i64 [ %i.jw, %bb.cx ], [ %i.acq, %bb.ep ] ; 2 uses
  %i.zx = phi i64 [ %.sink463, %bb.cx ], [ %.sink465, %bb.ep ] ; 6 uses
  %i.zy = phi i64 [ %.sink, %bb.cx ], [ %.sink464, %bb.ep ] ; 6 uses
  %i.zz = phi i64 [ %i.ss, %bb.cx ], [ %i.agk, %bb.ep ] ; 2 uses
  %i.aaa = phi i64 [ %i.st, %bb.cx ], [ %i.agl, %bb.ep ] ; 2 uses
  %i.aab = phi i64 [ %i.su, %bb.cx ], [ %i.agm, %bb.ep ] ; 2 uses
  %.4139.i290 = phi i32 [ %i.zp, %bb.cx ], [ %i.akv, %bb.ep ] ; 2 uses
  %.7149.i288 = phi ptr [ %i.zo, %bb.cx ], [ %i.aku, %bb.ep ] ; 8 uses
  %.7149.i288178 = ptrtoaddr ptr %.7149.i288 to i64
  %.not256 = icmp eq i32 %.4139.i290, 1
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.aab ; 4 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.zz ; 4 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.aaa ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !49, !noalias !238
  %i.aah = zext i32 %i.aag to i64                 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !49, !noalias !238 ; 2 uses
  %i.aak = zext i32 %i.aaj to i64                 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !49, !noalias !238 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aac, i64 2
  %i.aao = load i8, ptr %i.aan, align 2, !tbaa !66, !noalias !238 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aad, i64 2
  %i.aaq = load i8, ptr %i.aap, align 2, !tbaa !66, !noalias !238 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aae, i64 2
  %i.aas = load i8, ptr %i.aar, align 2, !tbaa !66, !noalias !238 ; 4 uses
  %i.aat = zext i8 %i.aao to i32                  ; 2 uses
  %i.aau = zext i8 %i.aaq to i32                  ; 2 uses
  %i.aav = add i8 %i.aaq, %i.aao
  %i.aaw = add i8 %i.aav, %i.aas
  %i.aax = load i16, ptr %i.aac, align 4, !tbaa !65, !noalias !238
  %i.aay = load i16, ptr %i.aad, align 4, !tbaa !65, !noalias !238
  %i.aaz = load i16, ptr %i.aae, align 4, !tbaa !65, !noalias !238
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aac, i64 3
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.abc = zext i8 %i.abb to i32
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aad, i64 3
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.abf = zext i8 %i.abe to i32
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aae, i64 3
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.abi = zext i8 %i.abh to i32
  %i.abj = icmp ugt i8 %i.aas, 1
  br i1 %i.abj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.abk = zext i8 %i.aas to i32                  ; 2 uses
  %i.abl = and i32 %i.zu, 63
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = shl i64 %i.zv, %i.abm
  %i.abo = sub nsw i32 0, %i.abk
  %i.abp = and i32 %i.abo, 63
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = lshr i64 %i.abn, %i.abq
  %i.abs = add i32 %i.zu, %i.abk                  ; 2 uses
  store i32 %i.abs, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.abt = zext i32 %i.aam to i64
  %i.abu = add i64 %i.abr, %i.abt
  store i64 %i.zx, ptr %i.gt, align 8, !tbaa !53, !noalias !238
  br label %bb.df

bb.da:                                            ; preds = %bb.cy
  %i.abv = icmp eq i32 %i.aaj, 0                  ; 3 uses
  %i.abw = icmp eq i8 %i.aas, 0
  br i1 %i.abw, label %bb.db, label %bb.dc, !prof !97

bb.db:                                            ; preds = %bb.da
  %i.abx = select i1 %i.abv, i64 %i.zx, i64 %i.zy
  %i.aby = select i1 %i.abv, i64 %i.zy, i64 %i.zx
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.abz = zext i1 %i.abv to i32
  %i.aca = add i32 %i.aam, %i.abz
  %i.acb = zext i32 %i.aca to i64
  %i.acc = and i32 %i.zu, 63
  %i.acd = zext nneg i32 %i.acc to i64
  %i.ace = shl i64 %i.zv, %i.acd
  %i.acf = lshr i64 %i.ace, 63
  %i.acg = add i32 %i.zu, 1                       ; 3 uses
  store i32 %i.acg, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.ach = add nuw nsw i64 %i.acf, %i.acb         ; 3 uses
  %i.aci = icmp eq i64 %i.ach, 3
  br i1 %i.aci, label %.thread215, label %bb.dd
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.afw = sub nsw i64 0, %i.afv
  %i.afx = getelementptr inbounds i8, ptr %i.adw, i64 %i.afw
  %i.afy = icmp ult ptr %i.afx, %3
  %i.afz = ptrtoint ptr %i.adw to i64
  %i.aga = sub i64 %i.afz, %i.zs
  %i.agb = trunc i64 %i.aga to i32
  %.021.i230.i = select i1 %i.afy, i32 %i.agb, i32 %i.afu ; 2 uses
  %i.agc = zext i32 %.021.i230.i to i64
  %i.agd = sub nsw i64 0, %i.agc
  %i.age = getelementptr inbounds i8, ptr %i.adw, i64 %i.agd ; 3 uses
  store ptr %i.age, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.agf = shl i32 %.021.i230.i, 3
  %i.agg = sub i32 %i.afd, %i.agf                 ; 2 uses
  store i32 %i.agg, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val.i51 = load i64, ptr %i.age, align 1, !tbaa !53, !noalias !238 ; 2 uses
  store i64 %.val.i51, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i: ; preds = %bb.du, %bb.dr, %bb.dt, %bb.dv, %bb.dp
  %i.agh = phi ptr [ %i.adw, %bb.du ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dr ], [ %i.afr, %bb.dt ], [ %i.age, %bb.dv ], [ %i.adw, %bb.dp ] ; 2 uses
  %i.agi = phi i32 [ %i.afd, %bb.du ], [ %i.afd, %bb.dr ], [ %i.afs, %bb.dt ], [ %i.agg, %bb.dv ], [ %i.aei, %bb.dp ] ; 2 uses
  %i.agj = phi i64 [ %i.ady, %bb.du ], [ %i.ady, %bb.dr ], [ %.val.i.i50, %bb.dt ], [ %.val.i51, %bb.dv ], [ %i.ady, %bb.dp ]
  %i.agk = phi i64 [ %i.afc, %bb.du ], [ %i.afc, %bb.dr ], [ %i.afc, %bb.dt ], [ %i.afc, %bb.dv ], [ %i.zz, %bb.dp ]
  %i.agl = phi i64 [ %i.afm, %bb.du ], [ %i.afm, %bb.dr ], [ %i.afm, %bb.dt ], [ %i.afm, %bb.dv ], [ %i.aaa, %bb.dp ]
  %i.agm = phi i64 [ %i.aes, %bb.du ], [ %i.aes, %bb.dr ], [ %i.aes, %bb.dt ], [ %i.aes, %bb.dv ], [ %i.aab, %bb.dp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.agn = getelementptr i8, ptr %.7149.i288, i64 %.sroa.0.0 ; 7 uses
  %i.ago = add i64 %.sroa.0.0, %.sroa.6.0         ; 9 uses
  %i.agp = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 %.sroa.0.0 ; 2 uses
  %i.agr = sub i64 0, %.sink464
  %i.ags = getelementptr inbounds i8, ptr %i.agn, i64 %i.agr ; 2 uses
  %i.agt = icmp ugt ptr %i.agq, %i.vf
  %i.agu = getelementptr inbounds nuw i8, ptr %.7149.i288, i64 %i.ago
  %i.agv = icmp ugt ptr %i.agu, %i.vn
  %or.cond.i.i = select i1 %i.agt, i1 true, i1 %i.agv, !prof !112
  br i1 %or.cond.i.i, label %bb.dw, label %.critedge.i.i, !prof !112

.critedge.i.i:                                    ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  %i.agw = load <2 x i64>, ptr %i.agp, align 1, !tbaa !9
  store <2 x i64> %i.agw, ptr %.7149.i288, align 1, !tbaa !9
  %i.agx = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.agx, label %bb.dx, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, !prof !60

bb.dw:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  store i64 %.sroa.0.0, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.6.0, ptr %.sroa.675.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink464, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !53
  %i.agy = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7149.i288, ptr noundef %i.b, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.vf, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.dx:                                            ; preds = %.critedge.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %.7149.i288, i64 16
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agp, i64 16 ; 2 uses
  %i.ahb = add i64 %.sroa.0.0, -16
  %i.ahc = load <2 x i64>, ptr %i.aha, align 1, !tbaa !9
  store <2 x i64> %i.ahc, ptr %i.agz, align 1, !tbaa !9
  %i.ahd = icmp slt i64 %i.ahb, 17
  br i1 %i.ahd, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ahe = getelementptr inbounds nuw i8, ptr %.7149.i288, i64 32
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %bb.dy
  %.130.i276.i = phi ptr [ %i.ahe, %bb.dy ], [ %i.ahj, %bb.dz ] ; 3 uses
  %.pn.i277.i = phi ptr [ %i.aha, %bb.dy ], [ %i.ahh, %bb.dz ] ; 2 uses
  %.1.i278.i = getelementptr inbounds nuw i8, ptr %.pn.i277.i, i64 16
  %i.ahf = load <2 x i64>, ptr %.1.i278.i, align 1, !tbaa !9
  store <2 x i64> %i.ahf, ptr %.130.i276.i, align 1, !tbaa !9
  %i.ahg = getelementptr inbounds nuw i8, ptr %.130.i276.i, i64 16
  %i.ahh = getelementptr inbounds nuw i8, ptr %.pn.i277.i, i64 32 ; 2 uses
  %i.ahi = load <2 x i64>, ptr %i.ahh, align 1, !tbaa !9
  store <2 x i64> %i.ahi, ptr %i.ahg, align 1, !tbaa !9
  %i.ahj = getelementptr inbounds nuw i8, ptr %.130.i276.i, i64 32 ; 2 uses
  %i.ahk = icmp ult ptr %i.ahj, %i.agn
  br i1 %i.ahk, label %bb.dz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i: ; preds = %bb.dz, %bb.dx, %.critedge.i.i
  store ptr %i.agq, ptr %i.a, align 8, !tbaa !46
  %i.ahl = ptrtoint ptr %i.agn to i64             ; 2 uses
  %i.ahm = sub i64 %i.ahl, %i.gu                  ; 3 uses
  %i.ahn = icmp ugt i64 %.sink464, %i.ahm
  br i1 %i.ahn, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i
  %i.aho = sub i64 %i.ahl, %i.gv
  %i.ahp = icmp ugt i64 %.sink464, %i.aho
  br i1 %i.ahp, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, label %bb.eb, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread: ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread236

bb.eb:                                            ; preds = %bb.ea
  %i.ahq = ptrtoint ptr %i.ags to i64
  %i.ahr = sub i64 %i.ahq, %i.gu                  ; 3 uses
  %i.ahs = getelementptr inbounds i8, ptr %i.l, i64 %i.ahr ; 2 uses
  %i.aht = add nsw i64 %i.ahr, %.sroa.6.0         ; 2 uses
  %.not.i200.i = icmp sgt i64 %i.aht, 0
  br i1 %.not.i200.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agn, ptr align 1 %i.ahs, i64 %.sroa.6.0, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.ed:                                            ; preds = %bb.eb
  %gepdiff.i.i = sub nsw i64 0, %i.ahr            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agn, ptr align 1 %i.ahs, i64 %gepdiff.i.i, i1 false)
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agn, i64 %gepdiff.i.i
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i
  %.sroa.675.0 = phi i64 [ %i.aht, %bb.ed ], [ %.sroa.6.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 5 uses
  %.0175 = phi ptr [ %i.h, %bb.ed ], [ %i.ags, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 9 uses
  %.0174 = phi ptr [ %i.ahu, %bb.ed ], [ %i.agn, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 12 uses
  %i.ahv = icmp ugt i64 %.sink464, 15
  br i1 %i.ahv, label %bb.ef, label %bb.ei, !prof !97

bb.ef:                                            ; preds = %bb.ee
  %i.ahw = getelementptr inbounds i8, ptr %.0174, i64 %.sroa.675.0
  %i.ahx = load <2 x i64>, ptr %.0175, align 1, !tbaa !9
  store <2 x i64> %i.ahx, ptr %.0174, align 1, !tbaa !9
  %i.ahy = icmp slt i64 %.sroa.675.0, 17
  br i1 %i.ahy, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0174, i64 16
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %bb.eg
  %.130.i283.i = phi ptr [ %i.ahz, %bb.eg ], [ %i.aie, %bb.eh ] ; 3 uses
  %.pn.i284.i = phi ptr [ %.0175, %bb.eg ], [ %i.aic, %bb.eh ] ; 2 uses
  %.1.i285.i = getelementptr inbounds nuw i8, ptr %.pn.i284.i, i64 16
  %i.aia = load <2 x i64>, ptr %.1.i285.i, align 1, !tbaa !9
  store <2 x i64> %i.aia, ptr %.130.i283.i, align 1, !tbaa !9
  %i.aib = getelementptr inbounds nuw i8, ptr %.130.i283.i, i64 16
  %i.aic = getelementptr inbounds nuw i8, ptr %.pn.i284.i, i64 32 ; 2 uses
  %i.aid = load <2 x i64>, ptr %i.aic, align 1, !tbaa !9
  store <2 x i64> %i.aid, ptr %i.aib, align 1, !tbaa !9
  %i.aie = getelementptr inbounds nuw i8, ptr %.130.i283.i, i64 32 ; 2 uses
  %i.aif = icmp ult ptr %i.aie, %i.ahw
  br i1 %i.aif, label %bb.eh, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

bb.ei:                                            ; preds = %bb.ee
  %i.aig = icmp samesign ult i64 %.sink464, 8
  br i1 %i.aig, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink464
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !3
  %i.aij = load i8, ptr %.0175, align 1, !tbaa !9
  store i8 %i.aij, ptr %.0174, align 1, !tbaa !9
  %i.aik = getelementptr inbounds nuw i8, ptr %.0175, i64 1
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !9
  %i.aim = getelementptr inbounds nuw i8, ptr %.0174, i64 1
  store i8 %i.ail, ptr %i.aim, align 1, !tbaa !9
  %i.ain = getelementptr inbounds nuw i8, ptr %.0175, i64 2
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !9
  %i.aip = getelementptr inbounds nuw i8, ptr %.0174, i64 2
  store i8 %i.aio, ptr %i.aip, align 1, !tbaa !9
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0175, i64 3
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !9
  %i.ais = getelementptr inbounds nuw i8, ptr %.0174, i64 3
  store i8 %i.air, ptr %i.ais, align 1, !tbaa !9
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink464
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !3
  %i.aiv = zext i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0175, i64 %i.aiv ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.0174, i64 4
  %i.aiy = load i32, ptr %i.aiw, align 1
  store i32 %i.aiy, ptr %i.aix, align 1
  %i.aiz = sext i32 %i.aii to i64
  %i.aja = sub nsw i64 0, %i.aiz
  %i.ajb = getelementptr inbounds i8, ptr %i.aiw, i64 %i.aja
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i

bb.ek:                                            ; preds = %bb.ei
  %i.ajc = load i64, ptr %.0175, align 1
  store i64 %i.ajc, ptr %.0174, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i: ; preds = %bb.ek, %bb.ej
  %.1176 = phi ptr [ %i.ajb, %bb.ej ], [ %.0175, %bb.ek ] ; 2 uses
  %.1176180 = ptrtoaddr ptr %.1176 to i64
  %i.ajd = getelementptr inbounds nuw i8, ptr %.1176, i64 8 ; 7 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.0174, i64 8 ; 6 uses
  %i.ajf = icmp ugt i64 %.sroa.675.0, 8
  br i1 %i.ajf, label %bb.el, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.el:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = ptrtoint ptr %i.ajd to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = getelementptr i8, ptr %.0174, i64 %.sroa.675.0 ; 2 uses
  %i.ajk = icmp slt i64 %i.aji, 16
  br i1 %i.ajk, label %.preheader258.preheader, label %bb.em

.preheader258.preheader:                          ; preds = %bb.el
  %i.ajl = add i64 %.sroa.6.0, %i.gu
  %i.ajm = add i64 %.sink464, %i.ahm
  %umax183 = tail call i64 @llvm.umax.i64(i64 %.sink464, i64 %i.ahm) ; 2 uses
  %i.ajn = add i64 %i.ajl, %i.ajm
  %i.ajo = sub i64 %i.ajn, %.sink464
  %i.ajp = add i64 %i.zq, %umax183
  %umax184 = tail call i64 @llvm.umax.i64(i64 %i.ajo, i64 %i.ajp)
  %i.ajq = add i64 %umax184, -9
  %i.ajr = add i64 %umax183, %i.gu
  %i.ajs = sub i64 %i.ajq, %i.ajr                 ; 2 uses
  %i.ajt = lshr i64 %i.ajs, 3
  %i.aju = add nuw nsw i64 %i.ajt, 1              ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.ajs, 72
  br i1 %min.iters.check186, label %.preheader258.preheader205, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.preheader258.preheader
  %i.ajv = sub i64 %.sroa.0.0, %i.gu
  %i.ajw = add i64 %i.ajv, %.7149.i288178
  %umax179 = tail call i64 @llvm.umax.i64(i64 %.sink464, i64 %i.ajw)
  %i.ajx = add i64 %umax179, %i.gu
  %i.ajy = sub i64 %i.ajx, %.1176180
  %diff.check181 = icmp ult i64 %i.ajy, 32
  br i1 %diff.check181, label %.preheader258.preheader205, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck177
  %n.vec189 = and i64 %i.aju, 4611686018427387900 ; 3 uses
  %i.ajz = shl i64 %n.vec189, 3                   ; 2 uses
  %i.aka = getelementptr i8, ptr %i.aje, i64 %i.ajz
  %i.akb = getelementptr i8, ptr %i.ajd, i64 %i.ajz
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %i.akc = shl i64 %index191, 3                   ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.aje, i64 %i.akc ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.ajd, i64 %i.akc ; 2 uses
  %i.akd = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <2 x i64>, ptr %next.gep193, align 1
  %wide.load195 = load <2 x i64>, ptr %i.akd, align 1
  %i.ake = getelementptr i8, ptr %next.gep192, i64 16
  store <2 x i64> %wide.load194, ptr %next.gep192, align 1
  store <2 x i64> %wide.load195, ptr %i.ake, align 1
  %index.next196 = add nuw i64 %index191, 4       ; 2 uses
  %i.akf = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.akf, label %middle.block197, label %vector.body190, !llvm.loop !241

middle.block197:                                  ; preds = %vector.body190
  %cmp.n198 = icmp eq i64 %i.aju, %n.vec189
  br i1 %cmp.n198, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %.preheader258.preheader205

.preheader258.preheader205:                       ; preds = %vector.memcheck177, %.preheader258.preheader, %middle.block197
  %.029.i293.i.ph = phi ptr [ %i.aje, %vector.memcheck177 ], [ %i.aje, %.preheader258.preheader ], [ %i.aka, %middle.block197 ]
  %.0.i294.i.ph = phi ptr [ %i.ajd, %vector.memcheck177 ], [ %i.ajd, %.preheader258.preheader ], [ %i.akb, %middle.block197 ]
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader258.preheader205, %.preheader258
  %.029.i293.i = phi ptr [ %i.akh, %.preheader258 ], [ %.029.i293.i.ph, %.preheader258.preheader205 ] ; 2 uses
  %.0.i294.i = phi ptr [ %i.aki, %.preheader258 ], [ %.0.i294.i.ph, %.preheader258.preheader205 ] ; 2 uses
  %i.akg = load i64, ptr %.0.i294.i, align 1
  store i64 %i.akg, ptr %.029.i293.i, align 1
  %i.akh = getelementptr inbounds nuw i8, ptr %.029.i293.i, i64 8 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.0.i294.i, i64 8
  %i.akj = icmp ult ptr %i.akh, %i.ajj
  br i1 %i.akj, label %.preheader258, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !242

bb.em:                                            ; preds = %bb.el
  %i.akk = load <2 x i64>, ptr %i.ajd, align 1, !tbaa !9
  store <2 x i64> %i.akk, ptr %i.aje, align 1, !tbaa !9
  %i.akl = icmp slt i64 %.sroa.675.0, 25
  br i1 %i.akl, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.akm = getelementptr inbounds nuw i8, ptr %.0174, i64 24
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %bb.en
  %.130.i290.i = phi ptr [ %i.akm, %bb.en ], [ %i.akr, %bb.eo ] ; 3 uses
  %.pn.i291.i = phi ptr [ %i.ajd, %bb.en ], [ %i.akp, %bb.eo ] ; 2 uses
  %.1.i292.i = getelementptr inbounds nuw i8, ptr %.pn.i291.i, i64 16
  %i.akn = load <2 x i64>, ptr %.1.i292.i, align 1, !tbaa !9
  store <2 x i64> %i.akn, ptr %.130.i290.i, align 1, !tbaa !9
  %i.ako = getelementptr inbounds nuw i8, ptr %.130.i290.i, i64 16
  %i.akp = getelementptr inbounds nuw i8, ptr %.pn.i291.i, i64 32 ; 2 uses
  %i.akq = load <2 x i64>, ptr %i.akp, align 1, !tbaa !9
  store <2 x i64> %i.akq, ptr %i.ako, align 1, !tbaa !9
  %i.akr = getelementptr inbounds nuw i8, ptr %.130.i290.i, i64 32 ; 2 uses
  %i.aks = icmp ult ptr %i.akr, %i.ajj
  br i1 %i.aks, label %bb.eo, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i: ; preds = %bb.eo, %.preheader258, %bb.eh, %middle.block197, %bb.em, %bb.ef, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i, %bb.ec, %bb.dw
  %.0.i.i = phi i64 [ %i.agy, %bb.dw ], [ %i.ago, %middle.block197 ], [ %i.ago, %bb.ec ], [ %i.ago, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i ], [ %i.ago, %bb.ef ], [ %i.ago, %bb.em ], [ %i.ago, %bb.eh ], [ %i.ago, %.preheader258 ], [ %i.ago, %bb.eo ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.akt = icmp ult i64 %.0.i.i, -119
  br i1 %i.akt, label %bb.ep, label %.thread236

bb.ep:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i
  %i.aku = getelementptr inbounds nuw i8, ptr %.7149.i288, i64 %.0.i.i ; 2 uses
  %i.akv = add nsw i32 %.4139.i290, -1            ; 2 uses
  %.not183.i = icmp eq i32 %i.akv, 0
  br i1 %.not183.i, label %.thread232, label %bb.cy, !llvm.loop !158

.thread232:                                       ; preds = %bb.bu, %bb.ep, %bb.cw
  %i.akw = phi ptr [ %i.agh, %bb.ep ], [ %i.sp, %bb.cw ], [ %i.ny, %bb.bu ]
  %i.akx = phi i32 [ %i.agi, %bb.ep ], [ %i.sq, %bb.cw ], [ %i.nz, %bb.bu ]
  %i.aky = phi i64 [ %i.acq, %bb.ep ], [ %i.jw, %bb.cw ], [ %i.jw, %bb.bu ]
  %i.akz = phi i64 [ %.sink465, %bb.ep ], [ %.sink463, %bb.cw ], [ %.sink463, %bb.bu ]
  %i.ala = phi i64 [ %.sink464, %bb.ep ], [ %.sink, %bb.cw ], [ %.sink, %bb.bu ]
  %.9151.i230 = phi ptr [ %i.aku, %bb.ep ], [ %i.zo, %bb.cw ], [ %i.sm, %bb.bu ]
  %.2159.i205214229 = phi ptr [ %i.vf, %bb.ep ], [ %i.vf, %bb.cw ], [ %i.f, %bb.bu ]
  %i.alb = icmp eq ptr %i.akw, %3
  %.not257 = icmp eq i32 %i.akx, 64
  %or.cond = select i1 %i.alb, i1 %.not257, i1 false
  br i1 %or.cond, label %.preheader, label %.thread236

.preheader:                                       ; preds = %.thread232
  %i.alc = trunc i64 %i.ala to i32
  store i32 %i.alc, ptr %i.n, align 4, !tbaa !3
  %i.ald = trunc i64 %i.akz to i32
  store i32 %i.ald, ptr %i.r, align 4, !tbaa !3
  %i.ale = trunc i64 %i.aky to i32
  store i32 %i.ale, ptr %i.v, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.eq

.thread236:                                       ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, %bb.l, %bb.d, %bb.b, %.loopexit.thread, %.loopexit, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, %bb.bv, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread, %bb.bw, %.thread232
  %.9.i.ph = phi i64 [ -20, %.loopexit.thread ], [ -20, %bb.bv ], [ -20, %bb.b ], [ %.0.i203.i, %.loopexit ], [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread ], [ -20, %.thread232 ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ], [ -20, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread ], [ %.0.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i ], [ -20, %bb.d ], [ -70, %bb.bw ], [ -20, %bb.l ], [ %.0.i209.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.eq:                                            ; preds = %.preheader, %bb.a
  %.pre = phi ptr [ %.pre.pre, %.preheader ], [ %i.d, %bb.a ] ; 3 uses
  %.4161.i = phi ptr [ %.2159.i205214229, %.preheader ], [ %i.f, %bb.a ] ; 2 uses
  %.11153.i = phi ptr [ %.9151.i230, %.preheader ], [ %1, %bb.a ] ; 5 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !43
  %i.alh = icmp eq i32 %i.alg, 2
  br i1 %i.alh, label %bb.er, label %._crit_edge

._crit_edge:                                      ; preds = %bb.eq
  %.pre327 = ptrtoint ptr %i.b to i64
  br label %bb.ev

bb.er:                                            ; preds = %bb.eq
  %i.ali = ptrtoint ptr %.4161.i to i64
  %i.alj = ptrtoint ptr %.pre to i64
  %i.alk = sub i64 %i.ali, %i.alj                 ; 3 uses
  %i.all = ptrtoint ptr %i.b to i64               ; 2 uses
  %i.alm = ptrtoint ptr %.11153.i to i64
  %i.aln = sub i64 %i.all, %i.alm
  %.not188.i = icmp ugt i64 %i.alk, %i.aln
  br i1 %.not188.i, label %_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.not187.i = icmp eq ptr %.11153.i, null
  br i1 %.not187.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.11153.i, ptr align 1 %.pre, i64 %i.alk, i1 false)
  %i.alo = getelementptr inbounds nuw i8, ptr %.11153.i, i64 %i.alk
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et
  %.12154.i = phi ptr [ %i.alo, %bb.et ], [ null, %bb.es ]
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %i.alf, align 8, !tbaa !43
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge, %bb.eu
  %.pre-phi = phi i64 [ %.pre327, %._crit_edge ], [ %i.all, %bb.eu ]
  %i.alr = phi ptr [ %.pre, %._crit_edge ], [ %i.alp, %bb.eu ] ; 2 uses
  %.6163.i = phi ptr [ %.4161.i, %._crit_edge ], [ %i.alq, %bb.eu ]
  %.14156.i = phi ptr [ %.11153.i, %._crit_edge ], [ %.12154.i, %bb.eu ] ; 4 uses
  %i.als = ptrtoint ptr %.6163.i to i64
  %i.alt = ptrtoint ptr %i.alr to i64
  %i.alu = sub i64 %i.als, %i.alt                 ; 3 uses
  %i.alv = ptrtoint ptr %.14156.i to i64
  %i.alw = sub i64 %.pre-phi, %i.alv
  %.not190.i = icmp ugt i64 %i.alu, %i.alw
  br i1 %.not190.i, label %_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.not189.i = icmp eq ptr %.14156.i, null
  br i1 %.not189.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14156.i, ptr align 1 %i.alr, i64 %i.alu, i1 false)
  %i.alx = getelementptr inbounds nuw i8, ptr %.14156.i, i64 %i.alu
  %i.aly = ptrtoint ptr %i.alx to i64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.16.i.ph = phi i64 [ 0, %bb.ew ], [ %i.aly, %bb.ex ]
  %i.alz = ptrtoint ptr %1 to i64
  %i.ama = sub i64 %.16.i.ph, %i.alz
  br label %_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %bb.er, %bb.ev, %.thread236, %bb.ey
  %.14.i = phi i64 [ %i.ama, %bb.ey ], [ %.9.i.ph, %.thread236 ], [ -70, %bb.ev ], [ -70, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.14.i
}

end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL29ZSTD_decompressSequences_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.nk = sub nsw i64 0, %i.nj
  %i.nl = getelementptr inbounds i8, ptr %i.lk, i64 %i.nk
  %i.nm = icmp ult ptr %i.nl, %3
  %i.nn = ptrtoint ptr %i.lk to i64
  %i.no = sub i64 %i.nn, %i.hg
  %i.np = trunc i64 %i.no to i32
  %.021.i87.i = select i1 %i.nm, i32 %i.np, i32 %i.ni ; 2 uses
  %i.nq = zext i32 %.021.i87.i to i64
  %i.nr = sub nsw i64 0, %i.nq
  %i.ns = getelementptr inbounds i8, ptr %i.lk, i64 %i.nr ; 3 uses
  store ptr %i.ns, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.nt = shl i32 %.021.i87.i, 3
  %i.nu = sub i32 %i.mr, %i.nt                    ; 2 uses
  store i32 %i.nu, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val.i35 = load i64, ptr %i.ns, align 1, !tbaa !53, !noalias !243 ; 2 uses
  store i64 %.val.i35, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i: ; preds = %bb.bb, %bb.ay, %bb.ba, %bb.bc, %bb.aw
  %i.nv = phi ptr [ %i.lk, %bb.bb ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ay ], [ %i.nf, %bb.ba ], [ %i.ns, %bb.bc ], [ %i.lk, %bb.aw ] ; 2 uses
  %i.nw = phi i32 [ %i.mr, %bb.bb ], [ %i.mr, %bb.ay ], [ %i.ng, %bb.ba ], [ %i.nu, %bb.bc ], [ %i.lw, %bb.aw ] ; 2 uses
  %i.nx = phi i64 [ %i.lm, %bb.bb ], [ %i.lm, %bb.ay ], [ %.val.i.i34, %bb.ba ], [ %.val.i35, %bb.bc ], [ %i.lm, %bb.aw ]
  %i.ny = phi i64 [ %i.mq, %bb.bb ], [ %i.mq, %bb.ay ], [ %i.mq, %bb.ba ], [ %i.mq, %bb.bc ], [ %i.hn, %bb.aw ]
  %i.nz = phi i64 [ %i.na, %bb.bb ], [ %i.na, %bb.ay ], [ %i.na, %bb.ba ], [ %i.na, %bb.bc ], [ %i.ho, %bb.aw ]
  %i.oa = phi i64 [ %i.mg, %bb.bb ], [ %i.mg, %bb.ay ], [ %i.mg, %bb.ba ], [ %i.mg, %bb.bc ], [ %i.hp, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ob = getelementptr i8, ptr %.068.i103, i64 %.sroa.0.0 ; 7 uses
  %i.oc = add i64 %.sroa.0.0, %.sroa.6.0          ; 9 uses
  %i.od = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %.sroa.0.0 ; 2 uses
  %i.of = sub i64 0, %.sink
  %i.og = getelementptr inbounds i8, ptr %i.ob, i64 %i.of ; 2 uses
  %i.oh = icmp ugt ptr %i.oe, %i.m
  %i.oi = getelementptr inbounds nuw i8, ptr %.068.i103, i64 %i.oc
  %i.oj = icmp ugt ptr %i.oi, %i.gz
  %or.cond.i.i = select i1 %i.oh, i1 true, i1 %i.oj, !prof !112
  br i1 %or.cond.i.i, label %bb.bd, label %.critedge.i.i, !prof !112

.critedge.i.i:                                    ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  %i.ok = load <2 x i64>, ptr %i.od, align 1, !tbaa !9
  store <2 x i64> %i.ok, ptr %.068.i103, align 1, !tbaa !9
  %i.ol = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.ol, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !prof !60

bb.bd:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  store i64 %.sroa.0.0, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.6.0, ptr %.sroa.643.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !53
  %i.om = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.068.i103, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.be:                                            ; preds = %.critedge.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %.068.i103, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %i.op = add i64 %.sroa.0.0, -16
  %i.oq = load <2 x i64>, ptr %i.oo, align 1, !tbaa !9
  store <2 x i64> %i.oq, ptr %i.on, align 1, !tbaa !9
  %i.or = icmp slt i64 %i.op, 17
  br i1 %i.or, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.os = getelementptr inbounds nuw i8, ptr %.068.i103, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i = phi ptr [ %i.os, %bb.bf ], [ %i.ox, %bb.bg ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.oo, %bb.bf ], [ %i.ov, %bb.bg ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ot = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ot, ptr %.130.i.i, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.ow = load <2 x i64>, ptr %i.ov, align 1, !tbaa !9
  store <2 x i64> %i.ow, ptr %i.ou, align 1, !tbaa !9
  %i.ox = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.oy = icmp ult ptr %i.ox, %i.ob
  br i1 %i.oy, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.bg, %bb.be, %.critedge.i.i
  store ptr %i.oe, ptr %i.a, align 8, !tbaa !46
  %i.oz = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.pa = sub i64 %i.oz, %i.hc                    ; 3 uses
  %i.pb = icmp ugt i64 %.sink, %i.pa
  br i1 %i.pb, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.pc = sub i64 %i.oz, %i.hd
  %i.pd = icmp ugt i64 %.sink, %i.pc
  br i1 %i.pd, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, label %bb.bi, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread85

bb.bi:                                            ; preds = %bb.bh
  %i.pe = ptrtoint ptr %i.og to i64
  %i.pf = sub i64 %i.pe, %i.hc                    ; 3 uses
  %i.pg = getelementptr inbounds i8, ptr %i.s, i64 %i.pf ; 2 uses
  %i.ph = add nsw i64 %i.pf, %.sroa.6.0           ; 2 uses
  %.not.i82.i = icmp sgt i64 %i.ph, 0
  br i1 %.not.i82.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ob, ptr align 1 %i.pg, i64 %.sroa.6.0, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i.i = sub nsw i64 0, %i.pf             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ob, ptr align 1 %i.pg, i64 %gepdiff.i.i, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ob, i64 %gepdiff.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.sroa.643.0 = phi i64 [ %i.ph, %bb.bk ], [ %.sroa.6.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %.072 = phi ptr [ %i.o, %bb.bk ], [ %i.og, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pi, %bb.bk ], [ %i.ob, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %i.pj = icmp ugt i64 %.sink, 15
  br i1 %i.pj, label %bb.bm, label %bb.bp, !prof !97

bb.bm:                                            ; preds = %bb.bl
  %i.pk = getelementptr inbounds i8, ptr %.0, i64 %.sroa.643.0
  %i.pl = load <2 x i64>, ptr %.072, align 1, !tbaa !9
  store <2 x i64> %i.pl, ptr %.0, align 1, !tbaa !9
  %i.pm = icmp slt i64 %.sroa.643.0, 17
  br i1 %i.pm, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pn = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i97.i = phi ptr [ %i.pn, %bb.bn ], [ %i.ps, %bb.bo ] ; 3 uses
  %.pn.i98.i = phi ptr [ %.072, %bb.bn ], [ %i.pq, %bb.bo ] ; 2 uses
  %.1.i99.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 16
  %i.po = load <2 x i64>, ptr %.1.i99.i, align 1, !tbaa !9
  store <2 x i64> %i.po, ptr %.130.i97.i, align 1, !tbaa !9
  %i.pp = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 32 ; 2 uses
  %i.pr = load <2 x i64>, ptr %i.pq, align 1, !tbaa !9
  store <2 x i64> %i.pr, ptr %i.pp, align 1, !tbaa !9
  %i.ps = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 32 ; 2 uses
  %i.pt = icmp ult ptr %i.ps, %i.pk
  br i1 %i.pt, label %bb.bo, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

bb.bp:                                            ; preds = %bb.bl
  %i.pu = icmp samesign ult i64 %.sink, 8
  br i1 %i.pu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !3
  %i.px = load i8, ptr %.072, align 1, !tbaa !9
  store i8 %i.px, ptr %.0, align 1, !tbaa !9
  %i.py = getelementptr inbounds nuw i8, ptr %.072, i64 1
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !9
  %i.qa = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !9
  %i.qb = getelementptr inbounds nuw i8, ptr %.072, i64 2
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !9
  %i.qe = getelementptr inbounds nuw i8, ptr %.072, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !9
  %i.qg = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !9
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !3
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %.072, i64 %i.qj ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.qm = load i32, ptr %i.qk, align 1
  store i32 %i.qm, ptr %i.ql, align 1
  %i.qn = sext i32 %i.pw to i64
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = getelementptr inbounds i8, ptr %i.qk, i64 %i.qo
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.qq = load i64, ptr %.072, align 1
  store i64 %i.qq, ptr %.0, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.br, %bb.bq
  %.1 = phi ptr [ %i.qp, %bb.bq ], [ %.072, %bb.br ] ; 2 uses
  %.112 = ptrtoaddr ptr %.1 to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qt = icmp ugt i64 %.sroa.643.0, 8
  br i1 %i.qt, label %bb.bs, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.bs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qr to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = getelementptr i8, ptr %.0, i64 %.sroa.643.0 ; 2 uses
  %i.qy = icmp slt i64 %i.qw, 16
  br i1 %i.qy, label %.preheader97.preheader, label %bb.bt

.preheader97.preheader:                           ; preds = %bb.bs
  %i.qz = add i64 %.sroa.6.0, %i.hc
  %i.ra = add i64 %.sink, %i.pa
  %umax13 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.pa) ; 2 uses
  %i.rb = add i64 %i.qz, %i.ra
  %i.rc = sub i64 %i.rb, %.sink
  %i.rd = add i64 %i.he, %umax13
  %umax14 = tail call i64 @llvm.umax.i64(i64 %i.rc, i64 %i.rd)
  %i.re = add i64 %umax14, -9
  %i.rf = add i64 %umax13, %i.hc
  %i.rg = sub i64 %i.re, %i.rf                    ; 2 uses
  %i.rh = lshr i64 %i.rg, 3
  %i.ri = add nuw nsw i64 %i.rh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rg, 72
  br i1 %min.iters.check, label %.preheader97.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader97.preheader
  %i.rj = sub i64 %.sroa.0.0, %i.hc
  %i.rk = add i64 %i.rj, %.068.i10311
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.rk)
  %i.rl = add i64 %umax, %i.hc
  %i.rm = sub i64 %i.rl, %.112
  %diff.check = icmp ult i64 %i.rm, 32
  br i1 %diff.check, label %.preheader97.preheader19, label %vector.ph

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
  %next.gep15 = getelementptr i8, ptr %i.qr, i64 %i.rq ; 2 uses
  %i.rr = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 1
  %wide.load16 = load <2 x i64>, ptr %i.rr, align 1
  %i.rs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load16, ptr %i.rs, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rt = icmp eq i64 %index.next, %n.vec
  br i1 %i.rt, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ri, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %.preheader97.preheader19

.preheader97.preheader19:                         ; preds = %vector.memcheck, %.preheader97.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.qs, %vector.memcheck ], [ %i.qs, %.preheader97.preheader ], [ %i.ro, %middle.block ]
  %.0.i106.i.ph = phi ptr [ %i.qr, %vector.memcheck ], [ %i.qr, %.preheader97.preheader ], [ %i.rp, %middle.block ]
  br label %.preheader97

.preheader97:                                     ; preds = %.preheader97.preheader19, %.preheader97
  %.029.i.i = phi ptr [ %i.rv, %.preheader97 ], [ %.029.i.i.ph, %.preheader97.preheader19 ] ; 2 uses
  %.0.i106.i = phi ptr [ %i.rw, %.preheader97 ], [ %.0.i106.i.ph, %.preheader97.preheader19 ] ; 2 uses
  %i.ru = load i64, ptr %.0.i106.i, align 1
  store i64 %i.ru, ptr %.029.i.i, align 1
  %i.rv = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i106.i, i64 8
  %i.rx = icmp ult ptr %i.rv, %i.qx
  br i1 %i.rx, label %.preheader97, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !247

bb.bt:                                            ; preds = %bb.bs
  %i.ry = load <2 x i64>, ptr %i.qr, align 1, !tbaa !9
  store <2 x i64> %i.ry, ptr %i.qs, align 1, !tbaa !9
  %i.rz = icmp slt i64 %.sroa.643.0, 25
  br i1 %i.rz, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sa = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i103.i = phi ptr [ %i.sa, %bb.bu ], [ %i.sf, %bb.bv ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.qr, %bb.bu ], [ %i.sd, %bb.bv ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %i.sb = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !9
  store <2 x i64> %i.sb, ptr %.130.i103.i, align 1, !tbaa !9
  %i.sc = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %i.se = load <2 x i64>, ptr %i.sd, align 1, !tbaa !9
  store <2 x i64> %i.se, ptr %i.sc, align 1, !tbaa !9
  %i.sf = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.sg = icmp ult ptr %i.sf, %i.qx
  br i1 %i.sg, label %bb.bv, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i: ; preds = %bb.bv, %.preheader97, %bb.bo, %middle.block, %bb.bt, %bb.bm, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i, %bb.bj, %bb.bd
  %.0.i.i = phi i64 [ %i.om, %bb.bd ], [ %i.oc, %middle.block ], [ %i.oc, %bb.bj ], [ %i.oc, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i ], [ %i.oc, %bb.bm ], [ %i.oc, %bb.bt ], [ %i.oc, %bb.bo ], [ %i.oc, %.preheader97 ], [ %i.oc, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sh = icmp ult i64 %.0.i.i, -119
  br i1 %i.sh, label %bb.bw, label %.thread85

bb.bw:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i
  %i.si = getelementptr inbounds nuw i8, ptr %.068.i103, i64 %.0.i.i ; 2 uses
  %i.sj = add nsw i32 %.063.i105, -1              ; 2 uses
  %.not77.i = icmp eq i32 %i.sj, 0
  br i1 %.not77.i, label %bb.bx, label %bb.af, !llvm.loop !169

bb.bx:                                            ; preds = %bb.bw
  %i.sk = icmp eq ptr %i.nv, %3
  %.not96 = icmp eq i32 %i.nw, 64
  %or.cond = select i1 %i.sk, i1 %.not96, i1 false
  br i1 %or.cond, label %.preheader, label %.thread85

.preheader:                                       ; preds = %bb.bx
  %i.sl = trunc i64 %.sink to i32
  store i32 %i.sl, ptr %i.u, align 4, !tbaa !3
  %i.sm = trunc i64 %.sink159 to i32
  store i32 %i.sm, ptr %i.y, align 4, !tbaa !3
  %i.sn = trunc i64 %i.ke to i32
  store i32 %i.sn, ptr %i.ac, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.by

.thread85:                                        ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, %bb.o, %bb.g, %bb.e, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, %bb.bx
  %.2.i.ph = phi i64 [ -20, %bb.e ], [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ], [ -20, %bb.bx ], [ -20, %bb.g ], [ -20, %bb.o ], [ %.0.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN11duckdb_zstdL29ZSTD_decompressSequences_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.by:                                            ; preds = %.preheader, %bb.d
  %i.so = phi ptr [ %.pre, %.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %.371.i = phi ptr [ %i.si, %.preheader ], [ %1, %bb.d ] ; 4 uses
  %i.sp = ptrtoint ptr %i.m to i64
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = sub i64 %i.sp, %i.sq                    ; 3 uses
  %i.ss = ptrtoint ptr %i.h to i64
  %i.st = ptrtoint ptr %.371.i to i64
  %i.su = sub i64 %i.ss, %i.st
  %.not81.i = icmp ugt i64 %i.sr, %i.su
  br i1 %.not81.i, label %_ZN11duckdb_zstdL29ZSTD_decompressSequences_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not80.i = icmp eq ptr %.371.i, null
  br i1 %.not80.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i, ptr align 1 %i.so, i64 %i.sr, i1 false)
  %i.sv = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.sr
  %i.sw = ptrtoint ptr %i.sv to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.573.i.ph = phi i64 [ 0, %bb.bz ], [ %i.sw, %bb.ca ]
  %i.sx = ptrtoint ptr %1 to i64
  %i.sy = sub i64 %.573.i.ph, %i.sx
  br label %_ZN11duckdb_zstdL29ZSTD_decompressSequences_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL29ZSTD_decompressSequences_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %bb.by, %.thread85, %bb.cb
  %.5.i = phi i64 [ %i.sy, %bb.cb ], [ %.2.i.ph, %.thread85 ], [ -70, %bb.by ]
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
end_hunk_11
