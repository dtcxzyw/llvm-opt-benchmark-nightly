inline.NumInlined: 579
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN11duckdb_zstdL28ZSTD_decompressSequencesLongEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %.23137.i.i.ph = phi ptr [ %.13049.i.i, %iter.check95 ], [ %i.yb, %vec.epilog.iter.check97 ], [ %i.yg, %vec.epilog.middle.block108 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.yk, %.lr.ph.i.i ], [ %.238.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23137.i.i = phi ptr [ %i.yi, %.lr.ph.i.i ], [ %.23137.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.23137.i.i, i64 1
  %i.yj = load i8, ptr %.23137.i.i, align 1, !tbaa !9
  %i.yk = getelementptr inbounds nuw i8, ptr %.238.i.i, i64 1 ; 2 uses
  store i8 %i.yj, ptr %.238.i.i, align 1, !tbaa !9
  %exitcond.not.i.i = icmp eq ptr %i.yk, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph.i.i, !llvm.loop !111

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph41.i.i, %middle.block90, %vec.epilog.middle.block108, %middle.block58, %vec.epilog.middle.block, %.preheader.i.i
  %i.yl = load i64, ptr %i.we, align 8, !tbaa !102
  %i.ym = sub i64 %i.yl, %i.wl                    ; 2 uses
  store i64 %i.ym, ptr %i.we, align 8, !tbaa !102
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, %bb.ce
  %.sroa.0378.0.copyload.i = phi i64 [ %i.ym, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %i.wf, %bb.ce ] ; 8 uses
  %.1208.i.i = phi ptr [ %i.wq, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.0207.i758.i, %bb.ce ] ; 8 uses
  %.1208.i.i35 = ptrtoaddr ptr %.1208.i.i to i64
  store ptr %i.hv, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.d, align 8, !tbaa !43
  %.sroa.4379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 2 uses
  %.sroa.4379.0.copyload.i = load i64, ptr %.sroa.4379.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.we, i64 16 ; 2 uses
  %.sroa.5380.0.copyload.i = load i64, ptr %.sroa.5380.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.yn = getelementptr i8, ptr %.1208.i.i, i64 %.sroa.0378.0.copyload.i ; 7 uses
  %i.yo = add i64 %.sroa.4379.0.copyload.i, %.sroa.0378.0.copyload.i ; 9 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.0378.0.copyload.i
  %i.yq = sub i64 0, %.sroa.5380.0.copyload.i
  %i.yr = getelementptr inbounds i8, ptr %i.yn, i64 %i.yq ; 2 uses
  %i.ys = icmp ugt i64 %.sroa.0378.0.copyload.i, 65536
  %i.yt = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 %i.yo
  %i.yu = icmp ugt ptr %i.yt, %i.hs
  %or.cond.i.i = select i1 %i.ys, i1 true, i1 %i.yu, !prof !112
  br i1 %or.cond.i.i, label %bb.cl, label %.critedge.i.i, !prof !112

.critedge.i.i:                                    ; preds = %thread-pre-split.i
  %.val242.i = load <2 x i64>, ptr %i.hv, align 4, !tbaa !9
  store <2 x i64> %.val242.i, ptr %.1208.i.i, align 1, !tbaa !9
  %i.yv = icmp samesign ugt i64 %.sroa.0378.0.copyload.i, 16
  br i1 %i.yv, label %bb.cm, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, !prof !60

bb.cl:                                            ; preds = %thread-pre-split.i
  store i64 %.sroa.0378.0.copyload.i, ptr %11, align 8, !tbaa !53
  store i64 %.sroa.4379.0.copyload.i, ptr %.sroa.6366.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5380.0.copyload.i, ptr %.sroa.12373.0..sroa_idx.i, align 8, !tbaa !53
  %i.yw = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.1208.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hw, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.cm:                                            ; preds = %.critedge.i.i
  %i.yx = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 16
  %.val206.i = load <2 x i64>, ptr %i.hx, align 4, !tbaa !9
  store <2 x i64> %.val206.i, ptr %i.yx, align 1, !tbaa !9
  %i.yy = icmp samesign ult i64 %.sroa.0378.0.copyload.i, 33
  br i1 %i.yy, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.yz = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 32
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.130.i173.i = phi ptr [ %i.yz, %bb.cn ], [ %i.zc, %bb.co ] ; 3 uses
  %.pn.i174.i = phi ptr [ %i.hx, %bb.cn ], [ %i.zb, %bb.co ] ; 2 uses
  %.1.i175.i = getelementptr inbounds nuw i8, ptr %.pn.i174.i, i64 16
  %.1.i175.val.i = load <2 x i64>, ptr %.1.i175.i, align 1, !tbaa !9
  store <2 x i64> %.1.i175.val.i, ptr %.130.i173.i, align 1, !tbaa !9
  %i.za = getelementptr inbounds nuw i8, ptr %.130.i173.i, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %.pn.i174.i, i64 32 ; 2 uses
  %.val205.i = load <2 x i64>, ptr %i.zb, align 1, !tbaa !9
  store <2 x i64> %.val205.i, ptr %i.za, align 1, !tbaa !9
  %i.zc = getelementptr inbounds nuw i8, ptr %.130.i173.i, i64 32 ; 2 uses
  %i.zd = icmp ult ptr %i.zc, %i.yn
  br i1 %i.zd, label %bb.co, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i: ; preds = %bb.co, %bb.cm, %.critedge.i.i
  store ptr %i.yp, ptr %i.a, align 8, !tbaa !46
  %i.ze = ptrtoint ptr %i.yn to i64               ; 2 uses
  %i.zf = sub i64 %i.ze, %i.aj                    ; 3 uses
  %i.zg = icmp ugt i64 %.sroa.5380.0.copyload.i, %i.zf
  br i1 %i.zg, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i
  %i.zh = sub i64 %i.ze, %i.ht
  %i.zi = icmp ugt i64 %.sroa.5380.0.copyload.i, %i.zh
  br i1 %i.zi, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i, label %bb.cq, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread678.i

bb.cq:                                            ; preds = %bb.cp
  %i.zj = ptrtoint ptr %i.yr to i64
  %i.zk = sub i64 %i.zj, %i.aj                    ; 3 uses
  %i.zl = getelementptr inbounds i8, ptr %i.t, i64 %i.zk ; 2 uses
  %i.zm = add nsw i64 %i.zk, %.sroa.4379.0.copyload.i ; 2 uses
  %.not.i16.i = icmp sgt i64 %i.zm, 0
  br i1 %.not.i16.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yn, ptr align 1 %i.zl, i64 %.sroa.4379.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.cs:                                            ; preds = %bb.cq
  %gepdiff.i.i = sub nsw i64 0, %i.zk             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yn, ptr align 1 %i.zl, i64 %gepdiff.i.i, i1 false)
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yn, i64 %gepdiff.i.i
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i
  %.sroa.6366.0.i = phi i64 [ %i.zm, %bb.cs ], [ %.sroa.4379.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 5 uses
  %.0622.i = phi ptr [ %i.p, %bb.cs ], [ %i.yr, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 9 uses
  %.0621.i = phi ptr [ %i.zn, %bb.cs ], [ %i.yn, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 12 uses
  %i.zo = icmp ugt i64 %.sroa.5380.0.copyload.i, 15
  br i1 %i.zo, label %bb.cu, label %bb.cx, !prof !97

bb.cu:                                            ; preds = %bb.ct
  %i.zp = getelementptr inbounds i8, ptr %.0621.i, i64 %.sroa.6366.0.i
  %.val204.i = load <2 x i64>, ptr %.0622.i, align 1, !tbaa !9
  store <2 x i64> %.val204.i, ptr %.0621.i, align 1, !tbaa !9
  %i.zq = icmp slt i64 %.sroa.6366.0.i, 17
  br i1 %i.zq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zr = getelementptr inbounds nuw i8, ptr %.0621.i, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.130.i180.i = phi ptr [ %i.zr, %bb.cv ], [ %i.zu, %bb.cw ] ; 3 uses
  %.pn.i181.i = phi ptr [ %.0622.i, %bb.cv ], [ %i.zt, %bb.cw ] ; 2 uses
  %.1.i182.i = getelementptr inbounds nuw i8, ptr %.pn.i181.i, i64 16
  %.1.i182.val.i = load <2 x i64>, ptr %.1.i182.i, align 1, !tbaa !9
  store <2 x i64> %.1.i182.val.i, ptr %.130.i180.i, align 1, !tbaa !9
  %i.zs = getelementptr inbounds nuw i8, ptr %.130.i180.i, i64 16
  %i.zt = getelementptr inbounds nuw i8, ptr %.pn.i181.i, i64 32 ; 2 uses
  %.val203.i = load <2 x i64>, ptr %i.zt, align 1, !tbaa !9
  store <2 x i64> %.val203.i, ptr %i.zs, align 1, !tbaa !9
  %i.zu = getelementptr inbounds nuw i8, ptr %.130.i180.i, i64 32 ; 2 uses
  %i.zv = icmp ult ptr %i.zu, %i.zp
  br i1 %i.zv, label %bb.cw, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

bb.cx:                                            ; preds = %bb.ct
  %i.zw = icmp samesign ult i64 %.sroa.5380.0.copyload.i, 8
  br i1 %i.zw, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5380.0.copyload.i
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !3
  %i.zz = load i8, ptr %.0622.i, align 1, !tbaa !9
  store i8 %i.zz, ptr %.0621.i, align 1, !tbaa !9
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0622.i, i64 1
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !9
  %i.aac = getelementptr inbounds nuw i8, ptr %.0621.i, i64 1
  store i8 %i.aab, ptr %i.aac, align 1, !tbaa !9
  %i.aad = getelementptr inbounds nuw i8, ptr %.0622.i, i64 2
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !9
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0621.i, i64 2
  store i8 %i.aae, ptr %i.aaf, align 1, !tbaa !9
  %i.aag = getelementptr inbounds nuw i8, ptr %.0622.i, i64 3
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !9
  %i.aai = getelementptr inbounds nuw i8, ptr %.0621.i, i64 3
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !9
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5380.0.copyload.i
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !3
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %.0622.i, i64 %i.aal ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.0621.i, i64 4
  %.val243.i = load i32, ptr %i.aam, align 1
  store i32 %.val243.i, ptr %i.aan, align 1
  %i.aao = sext i32 %i.zy to i64
  %i.aap = sub nsw i64 0, %i.aao
  %i.aaq = getelementptr inbounds i8, ptr %i.aam, i64 %i.aap
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i

bb.cz:                                            ; preds = %bb.cx
  %.val249.i = load i64, ptr %.0622.i, align 1
  store i64 %.val249.i, ptr %.0621.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i: ; preds = %bb.cz, %bb.cy
  %.1623.i = phi ptr [ %i.aaq, %bb.cy ], [ %.0622.i, %bb.cz ] ; 2 uses
  %.1623.i36 = ptrtoaddr ptr %.1623.i to i64
  %i.aar = getelementptr inbounds nuw i8, ptr %.1623.i, i64 8 ; 7 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.0621.i, i64 8 ; 6 uses
  %i.aat = icmp ugt i64 %.sroa.6366.0.i, 8
  br i1 %i.aat, label %bb.da, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.da:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i
  %i.aau = ptrtoint ptr %i.aas to i64
  %i.aav = ptrtoint ptr %i.aar to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  %i.aax = getelementptr i8, ptr %.0621.i, i64 %.sroa.6366.0.i ; 2 uses
  %i.aay = icmp slt i64 %i.aaw, 16
  br i1 %i.aay, label %.preheader710.i.preheader, label %bb.db

.preheader710.i.preheader:                        ; preds = %bb.da
  %14 = tail call i64 @llvm.umin.i64(i64 %.sroa.5380.0.copyload.i, i64 %i.zf)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sroa.5380.0.copyload.i, i64 %i.zf) ; 3 uses
  %i.aaz = add i64 %.sroa.4379.0.copyload.i, %i.aj
  %15 = add i64 %i.aaz, %14
  %i.aba = add i64 %15, %umin
  %i.abb = sub i64 %i.aba, %.sroa.5380.0.copyload.i
  %i.abc = add i64 %umin, %i.ib
  %umax38 = tail call i64 @llvm.umax.i64(i64 %i.abb, i64 %i.abc)
  %i.abd = add i64 %umin, %i.aj
  %16 = sub i64 %umax38, %i.abd
  %17 = add i64 %16, -9                           ; 2 uses
  %i.abe = lshr i64 %17, 3
  %i.abf = add nuw nsw i64 %i.abe, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %17, 72
  br i1 %min.iters.check, label %.preheader710.i.preheader328, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader710.i.preheader
  %i.abg = sub i64 %.sroa.0378.0.copyload.i, %i.aj
  %i.abh = add i64 %i.abg, %.1208.i.i35
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.5380.0.copyload.i, i64 %i.abh)
  %i.abi = add i64 %umax, %i.aj
  %i.abj = sub i64 %.1623.i36, %i.abi
  %diff.check = icmp ugt i64 %i.abj, -32
  br i1 %diff.check, label %.preheader710.i.preheader328, label %vector.ph

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
  %next.gep39 = getelementptr i8, ptr %i.aar, i64 %i.abn ; 2 uses
  %i.abo = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep39, align 1
  %wide.load40 = load <2 x i64>, ptr %i.abo, align 1
  %i.abp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load40, ptr %i.abp, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abq = icmp eq i64 %index.next, %n.vec
  br i1 %i.abq, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abf, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %.preheader710.i.preheader328

.preheader710.i.preheader328:                     ; preds = %vector.memcheck, %.preheader710.i.preheader, %middle.block
  %.029.i190.i.ph = phi ptr [ %i.aas, %vector.memcheck ], [ %i.aas, %.preheader710.i.preheader ], [ %i.abl, %middle.block ]
  %.0.i191.i.ph = phi ptr [ %i.aar, %vector.memcheck ], [ %i.aar, %.preheader710.i.preheader ], [ %i.abm, %middle.block ]
  br label %.preheader710.i

.preheader710.i:                                  ; preds = %.preheader710.i.preheader328, %.preheader710.i
  %.029.i190.i = phi ptr [ %i.abr, %.preheader710.i ], [ %.029.i190.i.ph, %.preheader710.i.preheader328 ] ; 2 uses
  %.0.i191.i = phi ptr [ %i.abs, %.preheader710.i ], [ %.0.i191.i.ph, %.preheader710.i.preheader328 ] ; 2 uses
  %.0.i191.val.i = load i64, ptr %.0.i191.i, align 1
  store i64 %.0.i191.val.i, ptr %.029.i190.i, align 1
  %i.abr = getelementptr inbounds nuw i8, ptr %.029.i190.i, i64 8 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.0.i191.i, i64 8
  %i.abt = icmp ult ptr %i.abr, %i.aax
  br i1 %i.abt, label %.preheader710.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !114

bb.db:                                            ; preds = %bb.da
  %.val202.i = load <2 x i64>, ptr %i.aar, align 1, !tbaa !9
  store <2 x i64> %.val202.i, ptr %i.aas, align 1, !tbaa !9
  %i.abu = icmp slt i64 %.sroa.6366.0.i, 25
  br i1 %i.abu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.abv = getelementptr inbounds nuw i8, ptr %.0621.i, i64 24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %bb.dc
  %.130.i187.i = phi ptr [ %i.abv, %bb.dc ], [ %i.aby, %bb.dd ] ; 3 uses
  %.pn.i188.i = phi ptr [ %i.aar, %bb.dc ], [ %i.abx, %bb.dd ] ; 2 uses
  %.1.i189.i = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 16
  %.1.i189.val.i = load <2 x i64>, ptr %.1.i189.i, align 1, !tbaa !9
  store <2 x i64> %.1.i189.val.i, ptr %.130.i187.i, align 1, !tbaa !9
  %i.abw = getelementptr inbounds nuw i8, ptr %.130.i187.i, i64 16
  %i.abx = getelementptr inbounds nuw i8, ptr %.pn.i188.i, i64 32 ; 2 uses
  %.val201.i = load <2 x i64>, ptr %i.abx, align 1, !tbaa !9
  store <2 x i64> %.val201.i, ptr %i.abw, align 1, !tbaa !9
  %i.aby = getelementptr inbounds nuw i8, ptr %.130.i187.i, i64 32 ; 2 uses
  %i.abz = icmp ult ptr %i.aby, %i.aax
  br i1 %i.abz, label %bb.dd, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i: ; preds = %bb.dd, %.preheader710.i, %bb.cw, %middle.block, %bb.db, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i, %bb.cu, %bb.cr, %bb.cl
  %.0.i15.i = phi i64 [ %i.yw, %bb.cl ], [ %i.yo, %bb.cw ], [ %i.yo, %bb.cr ], [ %i.yo, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i ], [ %i.yo, %bb.db ], [ %i.yo, %bb.cu ], [ %i.yo, %middle.block ], [ %i.yo, %.preheader710.i ], [ %i.yo, %bb.dd ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aca = icmp ult i64 %.0.i15.i, -119
  br i1 %i.aca, label %bb.de, label %.thread678.i

bb.de:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i
  %i.acb = add i64 %.sroa.0.0.i, %.1242.i755.i    ; 3 uses
  %i.acc = icmp ugt i64 %.sink914.i, %i.acb
  %i.acd = select i1 %i.acc, ptr %i.t, ptr %i.p
  %i.ace = getelementptr inbounds i8, ptr %i.acd, i64 %i.acb
  %i.acf = sub i64 0, %.sink914.i
  %i.acg = getelementptr inbounds i8, ptr %i.ace, i64 %i.acf ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.acg, i32 0, i32 3, i32 1)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ach, i32 0, i32 3, i32 1)
  store i64 %.sroa.0.0.i, ptr %i.we, align 8, !tbaa !53
  store i64 %.sroa.9.0.i, ptr %.sroa.4379.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink914.i, ptr %.sroa.5380.0..sroa_idx.i, align 8, !tbaa !53
  %i.aci = getelementptr inbounds nuw i8, ptr %.1208.i.i, i64 %.0.i15.i
  br label %bb.eu

bb.df:                                            ; preds = %bb.cd
  %i.acj = getelementptr inbounds i8, ptr %i.wg, i64 -32 ; 2 uses
  %.sroa.4542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %.sroa.4542.0.copyload.i = load i64, ptr %.sroa.4542.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %.sroa.5543.0.copyload.i = load i64, ptr %.sroa.5543.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ack = getelementptr i8, ptr %.0207.i758.i, i64 %i.wf ; 7 uses
  %i.acl = add i64 %.sroa.4542.0.copyload.i, %i.wf ; 9 uses
  %i.acm = sub i64 0, %.sroa.5543.0.copyload.i
  %i.acn = getelementptr inbounds i8, ptr %i.ack, i64 %i.acm ; 2 uses
  %i.aco = icmp ugt ptr %i.wg, %.0226.i757.i
  %i.acp = getelementptr inbounds nuw i8, ptr %.0207.i758.i, i64 %i.acl
  %i.acq = icmp ugt ptr %i.acp, %i.acj
  %or.cond.i35.i = select i1 %i.aco, i1 true, i1 %i.acq, !prof !112
  br i1 %or.cond.i35.i, label %bb.dg, label %.critedge.i36.i, !prof !112

.critedge.i36.i:                                  ; preds = %bb.df
  %.val238.i = load <2 x i64>, ptr %i.wb, align 1, !tbaa !9
  store <2 x i64> %.val238.i, ptr %.0207.i758.i, align 1, !tbaa !9
  %i.acr = icmp ugt i64 %i.wf, 16
  br i1 %i.acr, label %bb.dh, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i, !prof !60

bb.dg:                                            ; preds = %bb.df
  store i64 %i.wf, ptr %7, align 8, !tbaa !53
  store i64 %.sroa.4542.0.copyload.i, ptr %.sroa.6529.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5543.0.copyload.i, ptr %.sroa.12536.0..sroa_idx.i, align 8, !tbaa !53
  %i.acs = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0207.i758.i, ptr noundef %i.j, ptr noundef nonnull %i.acj, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef %.0226.i757.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.dh:                                            ; preds = %.critedge.i36.i
  %i.act = getelementptr inbounds nuw i8, ptr %.0207.i758.i, i64 16
  %i.acu = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %i.acv = add i64 %i.wf, -16
  %.val230.i = load <2 x i64>, ptr %i.acu, align 1, !tbaa !9
  store <2 x i64> %.val230.i, ptr %i.act, align 1, !tbaa !9
  %i.acw = icmp slt i64 %i.acv, 17
  br i1 %i.acw, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.acx = getelementptr inbounds nuw i8, ptr %.0207.i758.i, i64 32
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %bb.di
  %.130.i89.i = phi ptr [ %i.acx, %bb.di ], [ %i.ada, %bb.dj ] ; 3 uses
  %.pn.i90.i = phi ptr [ %i.acu, %bb.di ], [ %i.acz, %bb.dj ] ; 2 uses
  %.1.i91.i = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 16
  %.1.i91.val.i = load <2 x i64>, ptr %.1.i91.i, align 1, !tbaa !9
  store <2 x i64> %.1.i91.val.i, ptr %.130.i89.i, align 1, !tbaa !9
  %i.acy = getelementptr inbounds nuw i8, ptr %.130.i89.i, i64 16
  %i.acz = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 32 ; 2 uses
  %.val229.i = load <2 x i64>, ptr %i.acz, align 1, !tbaa !9
  store <2 x i64> %.val229.i, ptr %i.acy, align 1, !tbaa !9
  %i.ada = getelementptr inbounds nuw i8, ptr %.130.i89.i, i64 32 ; 2 uses
  %i.adb = icmp ult ptr %i.ada, %i.ack
  br i1 %i.adb, label %bb.dj, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i: ; preds = %bb.dj, %bb.dh, %.critedge.i36.i
  store ptr %i.wg, ptr %i.a, align 8, !tbaa !46
  %i.adc = ptrtoint ptr %i.ack to i64             ; 2 uses
  %i.add = sub i64 %i.adc, %i.aj                  ; 3 uses
  %i.ade = icmp ugt i64 %.sroa.5543.0.copyload.i, %i.add
  br i1 %i.ade, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i
  %i.adf = sub i64 %i.adc, %i.ht
  %i.adg = icmp ugt i64 %.sroa.5543.0.copyload.i, %i.adf
  br i1 %i.adg, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.dl, !prof !60

bb.dl:                                            ; preds = %bb.dk
  %i.adh = ptrtoint ptr %i.acn to i64
  %i.adi = sub i64 %i.adh, %i.aj                  ; 3 uses
  %i.adj = getelementptr inbounds i8, ptr %i.t, i64 %i.adi ; 2 uses
  %i.adk = add nsw i64 %i.adi, %.sroa.4542.0.copyload.i ; 2 uses
  %.not.i38.i = icmp sgt i64 %i.adk, 0
  br i1 %.not.i38.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ack, ptr align 1 %i.adj, i64 %.sroa.4542.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.dn:                                            ; preds = %bb.dl
  %gepdiff.i39.i = sub nsw i64 0, %i.adi          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ack, ptr align 1 %i.adj, i64 %gepdiff.i39.i, i1 false)
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %gepdiff.i39.i
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i
  %.sroa.6529.0.i = phi i64 [ %i.adk, %bb.dn ], [ %.sroa.4542.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i ] ; 5 uses
  %.0610.i = phi ptr [ %i.p, %bb.dn ], [ %i.acn, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i ] ; 9 uses
  %.0609.i = phi ptr [ %i.adl, %bb.dn ], [ %i.ack, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94.i ] ; 12 uses
  %i.adm = icmp ugt i64 %.sroa.5543.0.copyload.i, 15
  br i1 %i.adm, label %bb.dp, label %bb.ds, !prof !97

bb.dp:                                            ; preds = %bb.do
  %i.adn = getelementptr inbounds i8, ptr %.0609.i, i64 %.sroa.6529.0.i
  %.val228.i = load <2 x i64>, ptr %.0610.i, align 1, !tbaa !9
  store <2 x i64> %.val228.i, ptr %.0609.i, align 1, !tbaa !9
  %i.ado = icmp slt i64 %.sroa.6529.0.i, 17
  br i1 %i.ado, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.adp = getelementptr inbounds nuw i8, ptr %.0609.i, i64 16
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %bb.dq
  %.130.i96.i = phi ptr [ %i.adp, %bb.dq ], [ %i.ads, %bb.dr ] ; 3 uses
  %.pn.i97.i = phi ptr [ %.0610.i, %bb.dq ], [ %i.adr, %bb.dr ] ; 2 uses
  %.1.i98.i = getelementptr inbounds nuw i8, ptr %.pn.i97.i, i64 16
  %.1.i98.val.i = load <2 x i64>, ptr %.1.i98.i, align 1, !tbaa !9
  store <2 x i64> %.1.i98.val.i, ptr %.130.i96.i, align 1, !tbaa !9
  %i.adq = getelementptr inbounds nuw i8, ptr %.130.i96.i, i64 16
  %i.adr = getelementptr inbounds nuw i8, ptr %.pn.i97.i, i64 32 ; 2 uses
  %.val227.i = load <2 x i64>, ptr %i.adr, align 1, !tbaa !9
  store <2 x i64> %.val227.i, ptr %i.adq, align 1, !tbaa !9
  %i.ads = getelementptr inbounds nuw i8, ptr %.130.i96.i, i64 32 ; 2 uses
  %i.adt = icmp ult ptr %i.ads, %i.adn
  br i1 %i.adt, label %bb.dr, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

bb.ds:                                            ; preds = %bb.do
  %i.adu = icmp samesign ult i64 %.sroa.5543.0.copyload.i, 8
  br i1 %i.adu, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5543.0.copyload.i
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !3
  %i.adx = load i8, ptr %.0610.i, align 1, !tbaa !9
  store i8 %i.adx, ptr %.0609.i, align 1, !tbaa !9
  %i.ady = getelementptr inbounds nuw i8, ptr %.0610.i, i64 1
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !9
  %i.aea = getelementptr inbounds nuw i8, ptr %.0609.i, i64 1
  store i8 %i.adz, ptr %i.aea, align 1, !tbaa !9
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0610.i, i64 2
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !9
  %i.aed = getelementptr inbounds nuw i8, ptr %.0609.i, i64 2
  store i8 %i.aec, ptr %i.aed, align 1, !tbaa !9
  %i.aee = getelementptr inbounds nuw i8, ptr %.0610.i, i64 3
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !9
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0609.i, i64 3
  store i8 %i.aef, ptr %i.aeg, align 1, !tbaa !9
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5543.0.copyload.i
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !3
  %i.aej = zext i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw i8, ptr %.0610.i, i64 %i.aej ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.0609.i, i64 4
  %.val247.i = load i32, ptr %i.aek, align 1
  store i32 %.val247.i, ptr %i.ael, align 1
  %i.aem = sext i32 %i.adw to i64
  %i.aen = sub nsw i64 0, %i.aem
  %i.aeo = getelementptr inbounds i8, ptr %i.aek, i64 %i.aen
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i

bb.du:                                            ; preds = %bb.ds
  %.val253.i = load i64, ptr %.0610.i, align 1
  store i64 %.val253.i, ptr %.0609.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i: ; preds = %bb.du, %bb.dt
  %.1611.i = phi ptr [ %i.aeo, %bb.dt ], [ %.0610.i, %bb.du ] ; 2 uses
  %.1611.i115 = ptrtoaddr ptr %.1611.i to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %.1611.i, i64 8 ; 7 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0609.i, i64 8 ; 6 uses
  %i.aer = icmp ugt i64 %.sroa.6529.0.i, 8
  br i1 %i.aer, label %bb.dv, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.dv:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i
  %i.aes = ptrtoint ptr %i.aeq to i64
  %i.aet = ptrtoint ptr %i.aep to i64
  %i.aeu = sub i64 %i.aes, %i.aet
  %i.aev = getelementptr i8, ptr %.0609.i, i64 %.sroa.6529.0.i ; 2 uses
  %i.aew = icmp slt i64 %i.aeu, 16
  br i1 %i.aew, label %.preheader714.i.preheader, label %bb.dw

.preheader714.i.preheader:                        ; preds = %bb.dv
  %18 = tail call i64 @llvm.umin.i64(i64 %.sroa.5543.0.copyload.i, i64 %i.add)
  %umin117 = tail call i64 @llvm.umax.i64(i64 %.sroa.5543.0.copyload.i, i64 %i.add) ; 3 uses
  %i.aex = add i64 %.sroa.4542.0.copyload.i, %i.aj
  %19 = add i64 %i.aex, %18
  %i.aey = add i64 %19, %umin117
  %i.aez = sub i64 %i.aey, %.sroa.5543.0.copyload.i
  %i.afa = add i64 %umin117, %i.ia
  %umax119 = tail call i64 @llvm.umax.i64(i64 %i.aez, i64 %i.afa)
  %i.afb = add i64 %umin117, %i.aj
  %20 = sub i64 %umax119, %i.afb
  %21 = add i64 %20, -9                           ; 2 uses
  %i.afc = lshr i64 %21, 3
  %i.afd = add nuw nsw i64 %i.afc, 1              ; 2 uses
  %min.iters.check121 = icmp ult i64 %21, 72
  br i1 %min.iters.check121, label %.preheader714.i.preheader332, label %vector.memcheck112

vector.memcheck112:                               ; preds = %.preheader714.i.preheader
  %i.afe = sub i64 %i.wf, %i.aj
  %i.aff = add i64 %i.afe, %.0207.i758.i113
  %umax114 = tail call i64 @llvm.umax.i64(i64 %.sroa.5543.0.copyload.i, i64 %i.aff)
  %i.afg = add i64 %umax114, %i.aj
  %i.afh = sub i64 %.1611.i115, %i.afg
  %diff.check116 = icmp ugt i64 %i.afh, -32
  br i1 %diff.check116, label %.preheader714.i.preheader332, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck112
  %n.vec124 = and i64 %i.afd, 4611686018427387900 ; 3 uses
  %i.afi = shl i64 %n.vec124, 3                   ; 2 uses
  %i.afj = getelementptr i8, ptr %i.aeq, i64 %i.afi
  %i.afk = getelementptr i8, ptr %i.aep, i64 %i.afi
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.afl = shl i64 %index126, 3                   ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.aeq, i64 %i.afl ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.aep, i64 %i.afl ; 2 uses
  %i.afm = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load129 = load <2 x i64>, ptr %next.gep128, align 1
  %wide.load130 = load <2 x i64>, ptr %i.afm, align 1
  %i.afn = getelementptr i8, ptr %next.gep127, i64 16
  store <2 x i64> %wide.load129, ptr %next.gep127, align 1
  store <2 x i64> %wide.load130, ptr %i.afn, align 1
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.afo = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.afo, label %middle.block132, label %vector.body125, !llvm.loop !115

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %i.afd, %n.vec124
  br i1 %cmp.n133, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %.preheader714.i.preheader332

.preheader714.i.preheader332:                     ; preds = %vector.memcheck112, %.preheader714.i.preheader, %middle.block132
  %.029.i106.i.ph = phi ptr [ %i.aeq, %vector.memcheck112 ], [ %i.aeq, %.preheader714.i.preheader ], [ %i.afj, %middle.block132 ]
  %.0.i107.i.ph = phi ptr [ %i.aep, %vector.memcheck112 ], [ %i.aep, %.preheader714.i.preheader ], [ %i.afk, %middle.block132 ]
  br label %.preheader714.i

.preheader714.i:                                  ; preds = %.preheader714.i.preheader332, %.preheader714.i
  %.029.i106.i = phi ptr [ %i.afp, %.preheader714.i ], [ %.029.i106.i.ph, %.preheader714.i.preheader332 ] ; 2 uses
  %.0.i107.i = phi ptr [ %i.afq, %.preheader714.i ], [ %.0.i107.i.ph, %.preheader714.i.preheader332 ] ; 2 uses
  %.0.i107.val.i = load i64, ptr %.0.i107.i, align 1
  store i64 %.0.i107.val.i, ptr %.029.i106.i, align 1
  %i.afp = getelementptr inbounds nuw i8, ptr %.029.i106.i, i64 8 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.0.i107.i, i64 8
  %i.afr = icmp ult ptr %i.afp, %i.aev
  br i1 %i.afr, label %.preheader714.i, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !116

bb.dw:                                            ; preds = %bb.dv
  %.val226.i = load <2 x i64>, ptr %i.aep, align 1, !tbaa !9
  store <2 x i64> %.val226.i, ptr %i.aeq, align 1, !tbaa !9
  %i.afs = icmp slt i64 %.sroa.6529.0.i, 25
  br i1 %i.afs, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aft = getelementptr inbounds nuw i8, ptr %.0609.i, i64 24
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %bb.dx
  %.130.i103.i = phi ptr [ %i.aft, %bb.dx ], [ %i.afw, %bb.dy ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.aep, %bb.dx ], [ %i.afv, %bb.dy ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %.1.i105.val.i = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !9
  store <2 x i64> %.1.i105.val.i, ptr %.130.i103.i, align 1, !tbaa !9
  %i.afu = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.afv = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %.val225.i = load <2 x i64>, ptr %i.afv, align 1, !tbaa !9
  store <2 x i64> %.val225.i, ptr %i.afu, align 1, !tbaa !9
  %i.afw = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.afx = icmp ult ptr %i.afw, %i.aev
  br i1 %i.afx, label %bb.dy, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i: ; preds = %bb.dy, %.preheader714.i, %bb.dr, %middle.block132, %bb.dw, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i, %bb.dp, %bb.dm, %bb.dk, %bb.dg
  %.0.i37.i = phi i64 [ %i.acs, %bb.dg ], [ -20, %bb.dk ], [ %i.acl, %bb.dm ], [ %i.acl, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193.i ], [ %i.acl, %bb.dr ], [ %i.acl, %bb.dp ], [ %i.acl, %middle.block132 ], [ %i.acl, %bb.dw ], [ %i.acl, %.preheader714.i ], [ %i.acl, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.et

bb.dz:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i
  %i.afy = and i32 %.1239.i756.i, 7
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.afz ; 3 uses
  %.sroa.0418.0.copyload.i = load i64, ptr %i.aga, align 8, !tbaa !53 ; 7 uses
  %.sroa.4419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %.sroa.4419.0.copyload.i = load i64, ptr %.sroa.4419.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %.sroa.5420.0.copyload.i = load i64, ptr %.sroa.5420.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.agb = getelementptr i8, ptr %.0207.i758.i, i64 %.sroa.0418.0.copyload.i ; 7 uses
  %i.agc = add i64 %.sroa.4419.0.copyload.i, %.sroa.0418.0.copyload.i ; 9 uses
  %i.agd = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 %.sroa.0418.0.copyload.i ; 2 uses
  %i.agf = sub i64 0, %.sroa.5420.0.copyload.i
  %i.agg = getelementptr inbounds i8, ptr %i.agb, i64 %i.agf ; 2 uses
  %i.agh = icmp ugt ptr %i.age, %.0226.i757.i
  %i.agi = getelementptr inbounds nuw i8, ptr %.0207.i758.i, i64 %i.agc
  %i.agj = icmp ugt ptr %i.agi, %i.hs
  %or.cond.i17.i = select i1 %i.agh, i1 true, i1 %i.agj, !prof !112
  br i1 %or.cond.i17.i, label %bb.ea, label %.critedge.i18.i, !prof !112

.critedge.i18.i:                                  ; preds = %bb.dz
  %.val241.i = load <2 x i64>, ptr %i.agd, align 1, !tbaa !9
  store <2 x i64> %.val241.i, ptr %.0207.i758.i, align 1, !tbaa !9
  %i.agk = icmp ugt i64 %.sroa.0418.0.copyload.i, 16
  br i1 %i.agk, label %bb.eb, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i, !prof !60

bb.ea:                                            ; preds = %bb.dz
  store i64 %.sroa.0418.0.copyload.i, ptr %10, align 8, !tbaa !53
  store i64 %.sroa.4419.0.copyload.i, ptr %.sroa.6406.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5420.0.copyload.i, ptr %.sroa.12413.0..sroa_idx.i, align 8, !tbaa !53
  %i.agl = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.0207.i758.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %10, ptr noundef nonnull %i.a, ptr noundef %.0226.i757.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i

bb.eb:                                            ; preds = %.critedge.i18.i
  %i.agm = getelementptr inbounds nuw i8, ptr %.0207.i758.i, i64 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agd, i64 16 ; 2 uses
  %i.ago = add i64 %.sroa.0418.0.copyload.i, -16
  %.val212.i = load <2 x i64>, ptr %i.agn, align 1, !tbaa !9
  store <2 x i64> %.val212.i, ptr %i.agm, align 1, !tbaa !9
  %i.agp = icmp slt i64 %i.ago, 17
  br i1 %i.agp, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.agq = getelementptr inbounds nuw i8, ptr %.0207.i758.i, i64 32
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %bb.ec
  %.130.i152.i = phi ptr [ %i.agq, %bb.ec ], [ %i.agt, %bb.ed ] ; 3 uses
  %.pn.i153.i = phi ptr [ %i.agn, %bb.ec ], [ %i.ags, %bb.ed ] ; 2 uses
  %.1.i154.i = getelementptr inbounds nuw i8, ptr %.pn.i153.i, i64 16
  %.1.i154.val.i = load <2 x i64>, ptr %.1.i154.i, align 1, !tbaa !9
  store <2 x i64> %.1.i154.val.i, ptr %.130.i152.i, align 1, !tbaa !9
  %i.agr = getelementptr inbounds nuw i8, ptr %.130.i152.i, i64 16
  %i.ags = getelementptr inbounds nuw i8, ptr %.pn.i153.i, i64 32 ; 2 uses
  %.val211.i = load <2 x i64>, ptr %i.ags, align 1, !tbaa !9
  store <2 x i64> %.val211.i, ptr %i.agr, align 1, !tbaa !9
  %i.agt = getelementptr inbounds nuw i8, ptr %.130.i152.i, i64 32 ; 2 uses
  %i.agu = icmp ult ptr %i.agt, %i.agb
  br i1 %i.agu, label %bb.ed, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i: ; preds = %bb.ed, %bb.eb, %.critedge.i18.i
  store ptr %i.age, ptr %i.a, align 8, !tbaa !46
  %i.agv = ptrtoint ptr %i.agb to i64             ; 2 uses
  %i.agw = sub i64 %i.agv, %i.aj                  ; 3 uses
  %i.agx = icmp ugt i64 %.sroa.5420.0.copyload.i, %i.agw
  br i1 %i.agx, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i
  %i.agy = sub i64 %i.agv, %i.ht
  %i.agz = icmp ugt i64 %.sroa.5420.0.copyload.i, %i.agy
  br i1 %i.agz, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, label %bb.ef, !prof !60

bb.ef:                                            ; preds = %bb.ee
  %i.aha = ptrtoint ptr %i.agg to i64
  %i.ahb = sub i64 %i.aha, %i.aj                  ; 3 uses
  %i.ahc = getelementptr inbounds i8, ptr %i.t, i64 %i.ahb ; 2 uses
  %i.ahd = add nsw i64 %i.ahb, %.sroa.4419.0.copyload.i ; 2 uses
  %.not.i20.i = icmp sgt i64 %i.ahd, 0
  br i1 %.not.i20.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agb, ptr align 1 %i.ahc, i64 %.sroa.4419.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i

bb.eh:                                            ; preds = %bb.ef
  %gepdiff.i21.i = sub nsw i64 0, %i.ahb          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agb, ptr align 1 %i.ahc, i64 %gepdiff.i21.i, i1 false)
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agb, i64 %gepdiff.i21.i
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i
  %.sroa.6406.0.i = phi i64 [ %i.ahd, %bb.eh ], [ %.sroa.4419.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i ] ; 5 uses
  %.0619.i = phi ptr [ %i.p, %bb.eh ], [ %i.agg, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i ] ; 9 uses
  %.0618.i = phi ptr [ %i.ahe, %bb.eh ], [ %i.agb, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157.i ] ; 12 uses
  %i.ahf = icmp ugt i64 %.sroa.5420.0.copyload.i, 15
  br i1 %i.ahf, label %bb.ej, label %bb.em, !prof !97

bb.ej:                                            ; preds = %bb.ei
  %i.ahg = getelementptr inbounds i8, ptr %.0618.i, i64 %.sroa.6406.0.i
  %.val210.i = load <2 x i64>, ptr %.0619.i, align 1, !tbaa !9
  store <2 x i64> %.val210.i, ptr %.0618.i, align 1, !tbaa !9
  %i.ahh = icmp slt i64 %.sroa.6406.0.i, 17
  br i1 %i.ahh, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0618.i, i64 16
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.130.i159.i = phi ptr [ %i.ahi, %bb.ek ], [ %i.ahl, %bb.el ] ; 3 uses
  %.pn.i160.i = phi ptr [ %.0619.i, %bb.ek ], [ %i.ahk, %bb.el ] ; 2 uses
  %.1.i161.i = getelementptr inbounds nuw i8, ptr %.pn.i160.i, i64 16
  %.1.i161.val.i = load <2 x i64>, ptr %.1.i161.i, align 1, !tbaa !9
  store <2 x i64> %.1.i161.val.i, ptr %.130.i159.i, align 1, !tbaa !9
  %i.ahj = getelementptr inbounds nuw i8, ptr %.130.i159.i, i64 16
  %i.ahk = getelementptr inbounds nuw i8, ptr %.pn.i160.i, i64 32 ; 2 uses
  %.val209.i = load <2 x i64>, ptr %i.ahk, align 1, !tbaa !9
  store <2 x i64> %.val209.i, ptr %i.ahj, align 1, !tbaa !9
  %i.ahl = getelementptr inbounds nuw i8, ptr %.130.i159.i, i64 32 ; 2 uses
  %i.ahm = icmp ult ptr %i.ahl, %i.ahg
  br i1 %i.ahm, label %bb.el, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, !llvm.loop !108

bb.em:                                            ; preds = %bb.ei
  %i.ahn = icmp samesign ult i64 %.sroa.5420.0.copyload.i, 8
  br i1 %i.ahn, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5420.0.copyload.i
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !3
  %i.ahq = load i8, ptr %.0619.i, align 1, !tbaa !9
  store i8 %i.ahq, ptr %.0618.i, align 1, !tbaa !9
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0619.i, i64 1
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !9
  %i.aht = getelementptr inbounds nuw i8, ptr %.0618.i, i64 1
  store i8 %i.ahs, ptr %i.aht, align 1, !tbaa !9
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0619.i, i64 2
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !9
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0618.i, i64 2
  store i8 %i.ahv, ptr %i.ahw, align 1, !tbaa !9
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0619.i, i64 3
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !9
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0618.i, i64 3
  store i8 %i.ahy, ptr %i.ahz, align 1, !tbaa !9
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5420.0.copyload.i
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !3
  %i.aic = zext i32 %i.aib to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %.0619.i, i64 %i.aic ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0618.i, i64 4
  %.val244.i = load i32, ptr %i.aid, align 1
  store i32 %.val244.i, ptr %i.aie, align 1
  %i.aif = sext i32 %i.ahp to i64
  %i.aig = sub nsw i64 0, %i.aif
  %i.aih = getelementptr inbounds i8, ptr %i.aid, i64 %i.aig
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i

bb.eo:                                            ; preds = %bb.em
  %.val250.i = load i64, ptr %.0619.i, align 1
  store i64 %.val250.i, ptr %.0618.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i: ; preds = %bb.eo, %bb.en
  %.1620.i = phi ptr [ %i.aih, %bb.en ], [ %.0619.i, %bb.eo ] ; 2 uses
  %.1620.i138 = ptrtoaddr ptr %.1620.i to i64
  %i.aii = getelementptr inbounds nuw i8, ptr %.1620.i, i64 8 ; 7 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.0618.i, i64 8 ; 6 uses
  %i.aik = icmp ugt i64 %.sroa.6406.0.i, 8
  br i1 %i.aik, label %bb.ep, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i

bb.ep:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i
  %i.ail = ptrtoint ptr %i.aij to i64
  %i.aim = ptrtoint ptr %i.aii to i64
  %i.ain = sub i64 %i.ail, %i.aim
  %i.aio = getelementptr i8, ptr %.0618.i, i64 %.sroa.6406.0.i ; 2 uses
  %i.aip = icmp slt i64 %i.ain, 16
  br i1 %i.aip, label %.preheader717.i.preheader, label %bb.eq

.preheader717.i.preheader:                        ; preds = %bb.ep
  %22 = tail call i64 @llvm.umin.i64(i64 %.sroa.5420.0.copyload.i, i64 %i.agw)
  %umin140 = tail call i64 @llvm.umax.i64(i64 %.sroa.5420.0.copyload.i, i64 %i.agw) ; 3 uses
  %i.aiq = add i64 %.sroa.4419.0.copyload.i, %i.aj
  %23 = add i64 %i.aiq, %22
  %i.air = add i64 %23, %umin140
  %i.ais = sub i64 %i.air, %.sroa.5420.0.copyload.i
  %i.ait = add i64 %umin140, %i.hz
  %umax142 = tail call i64 @llvm.umax.i64(i64 %i.ais, i64 %i.ait)
  %i.aiu = add i64 %umin140, %i.aj
  %24 = sub i64 %umax142, %i.aiu
  %25 = add i64 %24, -9                           ; 2 uses
  %i.aiv = lshr i64 %25, 3
  %i.aiw = add nuw nsw i64 %i.aiv, 1              ; 2 uses
  %min.iters.check144 = icmp ult i64 %25, 72
  br i1 %min.iters.check144, label %.preheader717.i.preheader335, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.preheader717.i.preheader
  %i.aix = sub i64 %.sroa.0418.0.copyload.i, %i.aj
  %i.aiy = add i64 %i.aix, %.0207.i758.i113
  %umax137 = tail call i64 @llvm.umax.i64(i64 %.sroa.5420.0.copyload.i, i64 %i.aiy)
  %i.aiz = add i64 %umax137, %i.aj
  %i.aja = sub i64 %.1620.i138, %i.aiz
  %diff.check139 = icmp ugt i64 %i.aja, -32
  br i1 %diff.check139, label %.preheader717.i.preheader335, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck136
  %n.vec147 = and i64 %i.aiw, 4611686018427387900 ; 3 uses
  %i.ajb = shl i64 %n.vec147, 3                   ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.aij, i64 %i.ajb
  %i.ajd = getelementptr i8, ptr %i.aii, i64 %i.ajb
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.aje = shl i64 %index149, 3                   ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.aij, i64 %i.aje ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.aii, i64 %i.aje ; 2 uses
  %i.ajf = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <2 x i64>, ptr %next.gep151, align 1
  %wide.load153 = load <2 x i64>, ptr %i.ajf, align 1
  %i.ajg = getelementptr i8, ptr %next.gep150, i64 16
  store <2 x i64> %wide.load152, ptr %next.gep150, align 1
  store <2 x i64> %wide.load153, ptr %i.ajg, align 1
  %index.next154 = add nuw i64 %index149, 4       ; 2 uses
  %i.ajh = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.ajh, label %middle.block155, label %vector.body148, !llvm.loop !117

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.aiw, %n.vec147
  br i1 %cmp.n156, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, label %.preheader717.i.preheader335

.preheader717.i.preheader335:                     ; preds = %vector.memcheck136, %.preheader717.i.preheader, %middle.block155
  %.029.i169.i.ph = phi ptr [ %i.aij, %vector.memcheck136 ], [ %i.aij, %.preheader717.i.preheader ], [ %i.ajc, %middle.block155 ]
  %.0.i170.i.ph = phi ptr [ %i.aii, %vector.memcheck136 ], [ %i.aii, %.preheader717.i.preheader ], [ %i.ajd, %middle.block155 ]
  br label %.preheader717.i

.preheader717.i:                                  ; preds = %.preheader717.i.preheader335, %.preheader717.i
  %.029.i169.i = phi ptr [ %i.aji, %.preheader717.i ], [ %.029.i169.i.ph, %.preheader717.i.preheader335 ] ; 2 uses
  %.0.i170.i = phi ptr [ %i.ajj, %.preheader717.i ], [ %.0.i170.i.ph, %.preheader717.i.preheader335 ] ; 2 uses
  %.0.i170.val.i = load i64, ptr %.0.i170.i, align 1
  store i64 %.0.i170.val.i, ptr %.029.i169.i, align 1
  %i.aji = getelementptr inbounds nuw i8, ptr %.029.i169.i, i64 8 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0.i170.i, i64 8
  %i.ajk = icmp ult ptr %i.aji, %i.aio
  br i1 %i.ajk, label %.preheader717.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, !llvm.loop !118

bb.eq:                                            ; preds = %bb.ep
  %.val208.i = load <2 x i64>, ptr %i.aii, align 1, !tbaa !9
  store <2 x i64> %.val208.i, ptr %i.aij, align 1, !tbaa !9
  %i.ajl = icmp slt i64 %.sroa.6406.0.i, 25
  br i1 %i.ajl, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0618.i, i64 24
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %bb.er
  %.130.i166.i = phi ptr [ %i.ajm, %bb.er ], [ %i.ajp, %bb.es ] ; 3 uses
  %.pn.i167.i = phi ptr [ %i.aii, %bb.er ], [ %i.ajo, %bb.es ] ; 2 uses
  %.1.i168.i = getelementptr inbounds nuw i8, ptr %.pn.i167.i, i64 16
  %.1.i168.val.i = load <2 x i64>, ptr %.1.i168.i, align 1, !tbaa !9
  store <2 x i64> %.1.i168.val.i, ptr %.130.i166.i, align 1, !tbaa !9
  %i.ajn = getelementptr inbounds nuw i8, ptr %.130.i166.i, i64 16
  %i.ajo = getelementptr inbounds nuw i8, ptr %.pn.i167.i, i64 32 ; 2 uses
  %.val207.i = load <2 x i64>, ptr %i.ajo, align 1, !tbaa !9
  store <2 x i64> %.val207.i, ptr %i.ajn, align 1, !tbaa !9
  %i.ajp = getelementptr inbounds nuw i8, ptr %.130.i166.i, i64 32 ; 2 uses
  %i.ajq = icmp ult ptr %i.ajp, %i.aio
  br i1 %i.ajq, label %bb.es, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i: ; preds = %bb.es, %.preheader717.i, %bb.el, %middle.block155, %bb.eq, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i, %bb.ej, %bb.eg, %bb.ee, %bb.ea
  %.0.i19.i = phi i64 [ %i.agl, %bb.ea ], [ -20, %bb.ee ], [ %i.agc, %bb.eg ], [ %i.agc, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i ], [ %i.agc, %bb.el ], [ %i.agc, %bb.ej ], [ %i.agc, %middle.block155 ], [ %i.agc, %bb.eq ], [ %i.agc, %.preheader717.i ], [ %i.agc, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.et

bb.et:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i
  %i.ajr = phi i64 [ %.0.i37.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i ], [ %.0.i19.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22.i ] ; 3 uses
  %i.ajs = icmp ult i64 %i.ajr, -119
  br i1 %i.ajs, label %.thread643.i, label %.thread678.i

.thread643.i:                                     ; preds = %bb.et
  %i.ajt = add i64 %.sroa.0.0.i, %.1242.i755.i    ; 3 uses
  %i.aju = icmp ugt i64 %.sink914.i, %i.ajt
  %i.ajv = select i1 %i.aju, ptr %i.t, ptr %i.p
  %i.ajw = getelementptr inbounds i8, ptr %i.ajv, i64 %i.ajt
  %i.ajx = sub i64 0, %.sink914.i
  %i.ajy = getelementptr inbounds i8, ptr %i.ajw, i64 %i.ajx ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ajy, i32 0, i32 3, i32 1)
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ajz, i32 0, i32 3, i32 1)
  %i.aka = and i32 %.1239.i756.i, 7
  %i.akb = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.akb ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.akc, align 8, !tbaa !53
  %.sroa.9.0..sroa_idx320.i = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx320.i, align 8, !tbaa !53
  %.sroa.12.0..sroa_idx326.i = getelementptr inbounds nuw i8, ptr %i.akc, i64 16
  store i64 %.sink914.i, ptr %.sroa.12.0..sroa_idx326.i, align 8, !tbaa !53
  %i.akd = getelementptr inbounds nuw i8, ptr %.0207.i758.i, i64 %i.ajr
  br label %bb.eu

bb.eu:                                            ; preds = %.thread643.i, %bb.de
  %.pn.i = phi i64 [ %i.ajt, %.thread643.i ], [ %i.acb, %bb.de ]
  %.3229.i.ph.i = phi ptr [ %.0226.i757.i, %.thread643.i ], [ %i.hw, %bb.de ] ; 2 uses
  %.6213.i.ph.i = phi ptr [ %i.akd, %.thread643.i ], [ %i.aci, %bb.de ] ; 2 uses
  %.6247.i.ph.i = add i64 %.pn.i, %.sroa.9.0.i
  %i.ake = add nuw i32 %.1239.i756.i, 1           ; 2 uses
  %exitcond799.not.i = icmp eq i32 %i.ake, %5
  br i1 %exitcond799.not.i, label %._crit_edge.i, label %bb.bf, !llvm.loop !119

._crit_edge.i:                                    ; preds = %bb.eu, %.preheader720.i
  %i.akf = phi i32 [ %i.hi, %.preheader720.i ], [ %i.vu, %bb.eu ]
  %i.akg = phi ptr [ %i.hj, %.preheader720.i ], [ %i.vt, %bb.eu ]
  %i.akh = phi i64 [ %i.hk, %.preheader720.i ], [ %i.sc, %bb.eu ]
  %i.aki = phi i64 [ %i.hl, %.preheader720.i ], [ %.sink915.i, %bb.eu ]
  %i.akj = phi i64 [ %i.hm, %.preheader720.i ], [ %.sink914.i, %bb.eu ]
  %.1239.i.lcssa.i = phi i32 [ %.0238.i.lcssa.i, %.preheader720.i ], [ %5, %bb.eu ]
  %.0226.i.lcssa.i = phi ptr [ %i.n, %.preheader720.i ], [ %.3229.i.ph.i, %bb.eu ] ; 2 uses
  %.0207.i.lcssa.i = phi ptr [ %1, %.preheader720.i ], [ %.6213.i.ph.i, %bb.eu ] ; 2 uses
  %i.akk = icmp eq ptr %i.akg, %3
  %.not.i = icmp eq i32 %i.akf, 64
  %or.cond.i = select i1 %i.akk, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.ev, label %.thread678.i

bb.ev:                                            ; preds = %._crit_edge.i
  %i.akl = sub nsw i32 %.1239.i.lcssa.i, %i.ah    ; 2 uses
  %i.akm = icmp slt i32 %i.akl, %5
  br i1 %i.akm, label %.lr.ph774.i, label %.preheader.i

.lr.ph774.i:                                      ; preds = %bb.ev
  %i.akn = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 2 uses
  %i.ako = ptrtoint ptr %i.r to i64               ; 3 uses
  %.sroa.6488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.12495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.12577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.akp = ptrtoint ptr %i.j to i64
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.12454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.akt = add i64 %i.aj, 16
  %i.aku = add i64 %i.aj, 16
  %i.akv = add i64 %i.aj, 16
  br label %bb.ew

.preheader.i:                                     ; preds = %bb.hn, %bb.ev
  %.4230.i.lcssa.i = phi ptr [ %.0226.i.lcssa.i, %bb.ev ], [ %.6232.i.i, %bb.hn ]
  %.7214.i.lcssa.i = phi ptr [ %.0207.i.lcssa.i, %bb.ev ], [ %.12219.i.i, %bb.hn ]
  %i.akw = trunc i64 %i.akj to i32
  store i32 %i.akw, ptr %i.v, align 4, !tbaa !3
  %i.akx = trunc i64 %i.aki to i32
  store i32 %i.akx, ptr %i.z, align 8, !tbaa !3
  %i.aky = trunc i64 %i.akh to i32
  store i32 %i.aky, ptr %i.ad, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.pre810.i = load i32, ptr %i.d, align 8, !tbaa !43
  %.pre811.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.ho

bb.ew:                                            ; preds = %bb.hn, %.lr.ph774.i
  %.7214.i769.i = phi ptr [ %.0207.i.lcssa.i, %.lr.ph774.i ], [ %.12219.i.i, %bb.hn ] ; 26 uses
  %.4230.i767.i = phi ptr [ %.0226.i.lcssa.i, %.lr.ph774.i ], [ %.6232.i.i, %bb.hn ] ; 5 uses
  %.2240.i766.i = phi i32 [ %i.akl, %.lr.ph774.i ], [ %i.ayk, %bb.hn ] ; 2 uses
  %.7214.i769.i263 = ptrtoaddr ptr %.7214.i769.i to i64 ; 2 uses
  %i.akz = and i32 %.2240.i766.i, 7
  %i.ala = zext nneg i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.ala ; 10 uses
  %i.alc = load i32, ptr %i.d, align 8, !tbaa !43
  %i.ald = icmp eq i32 %i.alc, 2
  br i1 %i.ald, label %bb.ex, label %bb.gs

bb.ex:                                            ; preds = %bb.ew
  %i.ale = load ptr, ptr %i.a, align 8, !tbaa !46 ; 14 uses
  %i.alf = load i64, ptr %i.alb, align 8, !tbaa !102 ; 8 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 %i.alf ; 4 uses
  %i.alh = load ptr, ptr %i.m, align 8, !tbaa !42 ; 3 uses
  %i.ali = icmp ugt ptr %i.alg, %i.alh
  br i1 %i.ali, label %bb.ey, label %bb.fy

bb.ey:                                            ; preds = %bb.ex
  %i.alj = ptrtoint ptr %i.alh to i64             ; 2 uses
  %i.alk = ptrtoint ptr %i.ale to i64             ; 4 uses
  %i.all = sub i64 %i.alj, %i.alk                 ; 9 uses
  %.not270.i.i = icmp eq ptr %i.alh, %i.ale
  br i1 %.not270.i.i, label %thread-pre-split659.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.alm = ptrtoint ptr %.7214.i769.i to i64      ; 8 uses
  %i.aln = sub i64 %i.akp, %i.alm
  %i.alo = icmp ugt i64 %i.all, %i.aln
  br i1 %i.alo, label %.thread678.i, label %bb.fa
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL28ZSTD_decompressSequencesLongEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %.23137.i302.i.ph = phi ptr [ %.13049.i297.i, %iter.check245 ], [ %i.anb, %vec.epilog.iter.check247 ], [ %i.ang, %vec.epilog.middle.block258 ]
  br label %.lr.ph.i300.i

.lr.ph.i300.i:                                    ; preds = %.lr.ph.i300.i.preheader, %.lr.ph.i300.i
  %.238.i301.i = phi ptr [ %i.ank, %.lr.ph.i300.i ], [ %.238.i301.i.ph, %.lr.ph.i300.i.preheader ] ; 2 uses
  %.23137.i302.i = phi ptr [ %i.ani, %.lr.ph.i300.i ], [ %.23137.i302.i.ph, %.lr.ph.i300.i.preheader ] ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.23137.i302.i, i64 1
  %i.anj = load i8, ptr %.23137.i302.i, align 1, !tbaa !9
  %i.ank = getelementptr inbounds nuw i8, ptr %.238.i301.i, i64 1 ; 2 uses
  store i8 %i.anj, ptr %.238.i301.i, align 1, !tbaa !9
  %exitcond.not.i303.i = icmp eq ptr %i.ank, %scevgep.i299.i
  br i1 %exitcond.not.i303.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316.i, label %.lr.ph.i300.i, !llvm.loop !125

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316.i: ; preds = %.lr.ph.i300.i, %.lr.ph41.i313.i, %middle.block240, %vec.epilog.middle.block258, %middle.block200, %vec.epilog.middle.block218, %.preheader.i312.i
  %i.anl = load i64, ptr %i.alb, align 8, !tbaa !102
  %i.anm = sub i64 %i.anl, %i.all                 ; 2 uses
  store i64 %i.anm, ptr %i.alb, align 8, !tbaa !102
  br label %thread-pre-split659.i

thread-pre-split659.i:                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316.i, %bb.ey
  %.sroa.0459.0.copyload.i = phi i64 [ %i.anm, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316.i ], [ %i.alf, %bb.ey ] ; 8 uses
  %.8215.i.i = phi ptr [ %i.alq, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316.i ], [ %.7214.i769.i, %bb.ey ] ; 8 uses
  %.8215.i.i160 = ptrtoaddr ptr %.8215.i.i to i64
  store ptr %i.akq, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.d, align 8, !tbaa !43
  %.sroa.4460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %.sroa.4460.0.copyload.i = load i64, ptr %.sroa.4460.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %.sroa.5461.0.copyload.i = load i64, ptr %.sroa.5461.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ann = getelementptr i8, ptr %.8215.i.i, i64 %.sroa.0459.0.copyload.i ; 7 uses
  %i.ano = add i64 %.sroa.4460.0.copyload.i, %.sroa.0459.0.copyload.i ; 9 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.akq, i64 %.sroa.0459.0.copyload.i
  %i.anq = sub i64 0, %.sroa.5461.0.copyload.i
  %i.anr = getelementptr inbounds i8, ptr %i.ann, i64 %i.anq ; 2 uses
  %i.ans = icmp ugt i64 %.sroa.0459.0.copyload.i, 65536
  %i.ant = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 %i.ano
  %i.anu = icmp ugt ptr %i.ant, %i.akn
  %or.cond.i23.i = select i1 %i.ans, i1 true, i1 %i.anu, !prof !112
  br i1 %or.cond.i23.i, label %bb.ff, label %.critedge.i24.i, !prof !112

.critedge.i24.i:                                  ; preds = %thread-pre-split659.i
  %.val240.i = load <2 x i64>, ptr %i.akq, align 4, !tbaa !9
  store <2 x i64> %.val240.i, ptr %.8215.i.i, align 1, !tbaa !9
  %i.anv = icmp samesign ugt i64 %.sroa.0459.0.copyload.i, 16
  br i1 %i.anv, label %bb.fg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, !prof !60

bb.ff:                                            ; preds = %thread-pre-split659.i
  store i64 %.sroa.0459.0.copyload.i, ptr %9, align 8, !tbaa !53
  store i64 %.sroa.4460.0.copyload.i, ptr %.sroa.6447.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5461.0.copyload.i, ptr %.sroa.12454.0..sroa_idx.i, align 8, !tbaa !53
  %i.anw = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.8215.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.akr, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %.loopexit.i

bb.fg:                                            ; preds = %.critedge.i24.i
  %i.anx = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 16
  %.val218.i = load <2 x i64>, ptr %i.aks, align 4, !tbaa !9
  store <2 x i64> %.val218.i, ptr %i.anx, align 1, !tbaa !9
  %i.any = icmp samesign ult i64 %.sroa.0459.0.copyload.i, 33
  br i1 %i.any, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.anz = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 32
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %bb.fh
  %.130.i131.i = phi ptr [ %i.anz, %bb.fh ], [ %i.aoc, %bb.fi ] ; 3 uses
  %.pn.i132.i = phi ptr [ %i.aks, %bb.fh ], [ %i.aob, %bb.fi ] ; 2 uses
  %.1.i133.i = getelementptr inbounds nuw i8, ptr %.pn.i132.i, i64 16
  %.1.i133.val.i = load <2 x i64>, ptr %.1.i133.i, align 1, !tbaa !9
  store <2 x i64> %.1.i133.val.i, ptr %.130.i131.i, align 1, !tbaa !9
  %i.aoa = getelementptr inbounds nuw i8, ptr %.130.i131.i, i64 16
  %i.aob = getelementptr inbounds nuw i8, ptr %.pn.i132.i, i64 32 ; 2 uses
  %.val217.i = load <2 x i64>, ptr %i.aob, align 1, !tbaa !9
  store <2 x i64> %.val217.i, ptr %i.aoa, align 1, !tbaa !9
  %i.aoc = getelementptr inbounds nuw i8, ptr %.130.i131.i, i64 32 ; 2 uses
  %i.aod = icmp ult ptr %i.aoc, %i.ann
  br i1 %i.aod, label %bb.fi, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i: ; preds = %bb.fi, %bb.fg, %.critedge.i24.i
  store ptr %i.anp, ptr %i.a, align 8, !tbaa !46
  %i.aoe = ptrtoint ptr %i.ann to i64             ; 2 uses
  %i.aof = sub i64 %i.aoe, %i.aj                  ; 3 uses
  %i.aog = icmp ugt i64 %.sroa.5461.0.copyload.i, %i.aof
  br i1 %i.aog, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i
  %i.aoh = sub i64 %i.aoe, %i.ako
  %i.aoi = icmp ugt i64 %.sroa.5461.0.copyload.i, %i.aoh
  br i1 %i.aoi, label %.thread665.i, label %bb.fk, !prof !60

.thread665.i:                                     ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread678.i

bb.fk:                                            ; preds = %bb.fj
  %i.aoj = ptrtoint ptr %i.anr to i64
  %i.aok = sub i64 %i.aoj, %i.aj                  ; 3 uses
  %i.aol = getelementptr inbounds i8, ptr %i.t, i64 %i.aok ; 2 uses
  %i.aom = add nsw i64 %i.aok, %.sroa.4460.0.copyload.i ; 2 uses
  %.not.i26.i = icmp sgt i64 %i.aom, 0
  br i1 %.not.i26.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ann, ptr align 1 %i.aol, i64 %.sroa.4460.0.copyload.i, i1 false)
  br label %.loopexit.i

bb.fm:                                            ; preds = %bb.fk
  %gepdiff.i27.i = sub nsw i64 0, %i.aok          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ann, ptr align 1 %i.aol, i64 %gepdiff.i27.i, i1 false)
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ann, i64 %gepdiff.i27.i
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i
  %.sroa.6447.0.i = phi i64 [ %i.aom, %bb.fm ], [ %.sroa.4460.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 5 uses
  %.0616.i = phi ptr [ %i.p, %bb.fm ], [ %i.anr, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 9 uses
  %.0615.i = phi ptr [ %i.aon, %bb.fm ], [ %i.ann, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 12 uses
  %i.aoo = icmp ugt i64 %.sroa.5461.0.copyload.i, 15
  br i1 %i.aoo, label %bb.fo, label %bb.fr, !prof !97

bb.fo:                                            ; preds = %bb.fn
  %i.aop = getelementptr inbounds i8, ptr %.0615.i, i64 %.sroa.6447.0.i
  %.val216.i = load <2 x i64>, ptr %.0616.i, align 1, !tbaa !9
  store <2 x i64> %.val216.i, ptr %.0615.i, align 1, !tbaa !9
  %i.aoq = icmp slt i64 %.sroa.6447.0.i, 17
  br i1 %i.aoq, label %.loopexit.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aor = getelementptr inbounds nuw i8, ptr %.0615.i, i64 16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %bb.fp
  %.130.i138.i = phi ptr [ %i.aor, %bb.fp ], [ %i.aou, %bb.fq ] ; 3 uses
  %.pn.i139.i = phi ptr [ %.0616.i, %bb.fp ], [ %i.aot, %bb.fq ] ; 2 uses
  %.1.i140.i = getelementptr inbounds nuw i8, ptr %.pn.i139.i, i64 16
  %.1.i140.val.i = load <2 x i64>, ptr %.1.i140.i, align 1, !tbaa !9
  store <2 x i64> %.1.i140.val.i, ptr %.130.i138.i, align 1, !tbaa !9
  %i.aos = getelementptr inbounds nuw i8, ptr %.130.i138.i, i64 16
  %i.aot = getelementptr inbounds nuw i8, ptr %.pn.i139.i, i64 32 ; 2 uses
  %.val215.i = load <2 x i64>, ptr %i.aot, align 1, !tbaa !9
  store <2 x i64> %.val215.i, ptr %i.aos, align 1, !tbaa !9
  %i.aou = getelementptr inbounds nuw i8, ptr %.130.i138.i, i64 32 ; 2 uses
  %i.aov = icmp ult ptr %i.aou, %i.aop
  br i1 %i.aov, label %bb.fq, label %.loopexit.i, !llvm.loop !108

bb.fr:                                            ; preds = %bb.fn
  %i.aow = icmp samesign ult i64 %.sroa.5461.0.copyload.i, 8
  br i1 %i.aow, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5461.0.copyload.i
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !3
  %i.aoz = load i8, ptr %.0616.i, align 1, !tbaa !9
  store i8 %i.aoz, ptr %.0615.i, align 1, !tbaa !9
  %i.apa = getelementptr inbounds nuw i8, ptr %.0616.i, i64 1
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !9
  %i.apc = getelementptr inbounds nuw i8, ptr %.0615.i, i64 1
  store i8 %i.apb, ptr %i.apc, align 1, !tbaa !9
  %i.apd = getelementptr inbounds nuw i8, ptr %.0616.i, i64 2
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !9
  %i.apf = getelementptr inbounds nuw i8, ptr %.0615.i, i64 2
  store i8 %i.ape, ptr %i.apf, align 1, !tbaa !9
  %i.apg = getelementptr inbounds nuw i8, ptr %.0616.i, i64 3
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !9
  %i.api = getelementptr inbounds nuw i8, ptr %.0615.i, i64 3
  store i8 %i.aph, ptr %i.api, align 1, !tbaa !9
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5461.0.copyload.i
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !3
  %i.apl = zext i32 %i.apk to i64
  %i.apm = getelementptr inbounds nuw i8, ptr %.0616.i, i64 %i.apl ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.0615.i, i64 4
  %.val245.i = load i32, ptr %i.apm, align 1
  store i32 %.val245.i, ptr %i.apn, align 1
  %i.apo = sext i32 %i.aoy to i64
  %i.app = sub nsw i64 0, %i.apo
  %i.apq = getelementptr inbounds i8, ptr %i.apm, i64 %i.app
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i

bb.ft:                                            ; preds = %bb.fr
  %.val251.i = load i64, ptr %.0616.i, align 1
  store i64 %.val251.i, ptr %.0615.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i: ; preds = %bb.ft, %bb.fs
  %.1617.i = phi ptr [ %i.apq, %bb.fs ], [ %.0616.i, %bb.ft ] ; 2 uses
  %.1617.i162 = ptrtoaddr ptr %.1617.i to i64
  %i.apr = getelementptr inbounds nuw i8, ptr %.1617.i, i64 8 ; 7 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %.0615.i, i64 8 ; 6 uses
  %i.apt = icmp ugt i64 %.sroa.6447.0.i, 8
  br i1 %i.apt, label %bb.fu, label %.loopexit.i

bb.fu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i
  %i.apu = ptrtoint ptr %i.aps to i64
  %i.apv = ptrtoint ptr %i.apr to i64
  %i.apw = sub i64 %i.apu, %i.apv
  %i.apx = getelementptr i8, ptr %.0615.i, i64 %.sroa.6447.0.i ; 2 uses
  %i.apy = icmp slt i64 %i.apw, 16
  br i1 %i.apy, label %.preheader700.i.preheader, label %bb.fv

.preheader700.i.preheader:                        ; preds = %bb.fu
  %26 = tail call i64 @llvm.umin.i64(i64 %.sroa.5461.0.copyload.i, i64 %i.aof)
  %umin164 = tail call i64 @llvm.umax.i64(i64 %.sroa.5461.0.copyload.i, i64 %i.aof) ; 3 uses
  %i.apz = add i64 %.sroa.4460.0.copyload.i, %i.aj
  %27 = add i64 %i.apz, %26
  %i.aqa = add i64 %27, %umin164
  %i.aqb = sub i64 %i.aqa, %.sroa.5461.0.copyload.i
  %i.aqc = add i64 %umin164, %i.akv
  %umax166 = tail call i64 @llvm.umax.i64(i64 %i.aqb, i64 %i.aqc)
  %i.aqd = add i64 %umin164, %i.aj
  %28 = sub i64 %umax166, %i.aqd
  %29 = add i64 %28, -9                           ; 2 uses
  %i.aqe = lshr i64 %29, 3
  %i.aqf = add nuw nsw i64 %i.aqe, 1              ; 2 uses
  %min.iters.check168 = icmp ult i64 %29, 72
  br i1 %min.iters.check168, label %.preheader700.i.preheader318, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.preheader700.i.preheader
  %i.aqg = sub i64 %.sroa.0459.0.copyload.i, %i.aj
  %i.aqh = add i64 %i.aqg, %.8215.i.i160
  %umax161 = tail call i64 @llvm.umax.i64(i64 %.sroa.5461.0.copyload.i, i64 %i.aqh)
  %i.aqi = add i64 %umax161, %i.aj
  %i.aqj = sub i64 %.1617.i162, %i.aqi
  %diff.check163 = icmp ugt i64 %i.aqj, -32
  br i1 %diff.check163, label %.preheader700.i.preheader318, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck159
  %n.vec171 = and i64 %i.aqf, 4611686018427387900 ; 3 uses
  %i.aqk = shl i64 %n.vec171, 3                   ; 2 uses
  %i.aql = getelementptr i8, ptr %i.aps, i64 %i.aqk
  %i.aqm = getelementptr i8, ptr %i.apr, i64 %i.aqk
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph169
  %index173 = phi i64 [ 0, %vector.ph169 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %i.aqn = shl i64 %index173, 3                   ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.aps, i64 %i.aqn ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.apr, i64 %i.aqn ; 2 uses
  %i.aqo = getelementptr i8, ptr %next.gep175, i64 16
  %wide.load176 = load <2 x i64>, ptr %next.gep175, align 1
  %wide.load177 = load <2 x i64>, ptr %i.aqo, align 1
  %i.aqp = getelementptr i8, ptr %next.gep174, i64 16
  store <2 x i64> %wide.load176, ptr %next.gep174, align 1
  store <2 x i64> %wide.load177, ptr %i.aqp, align 1
  %index.next178 = add nuw i64 %index173, 4       ; 2 uses
  %i.aqq = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.aqq, label %middle.block179, label %vector.body172, !llvm.loop !126

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.aqf, %n.vec171
  br i1 %cmp.n180, label %.loopexit.i, label %.preheader700.i.preheader318

.preheader700.i.preheader318:                     ; preds = %vector.memcheck159, %.preheader700.i.preheader, %middle.block179
  %.029.i148.i.ph = phi ptr [ %i.aps, %vector.memcheck159 ], [ %i.aps, %.preheader700.i.preheader ], [ %i.aql, %middle.block179 ]
  %.0.i149.i.ph = phi ptr [ %i.apr, %vector.memcheck159 ], [ %i.apr, %.preheader700.i.preheader ], [ %i.aqm, %middle.block179 ]
  br label %.preheader700.i

.preheader700.i:                                  ; preds = %.preheader700.i.preheader318, %.preheader700.i
  %.029.i148.i = phi ptr [ %i.aqr, %.preheader700.i ], [ %.029.i148.i.ph, %.preheader700.i.preheader318 ] ; 2 uses
  %.0.i149.i = phi ptr [ %i.aqs, %.preheader700.i ], [ %.0.i149.i.ph, %.preheader700.i.preheader318 ] ; 2 uses
  %.0.i149.val.i = load i64, ptr %.0.i149.i, align 1
  store i64 %.0.i149.val.i, ptr %.029.i148.i, align 1
  %i.aqr = getelementptr inbounds nuw i8, ptr %.029.i148.i, i64 8 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %.0.i149.i, i64 8
  %i.aqt = icmp ult ptr %i.aqr, %i.apx
  br i1 %i.aqt, label %.preheader700.i, label %.loopexit.i, !llvm.loop !127

bb.fv:                                            ; preds = %bb.fu
  %.val214.i = load <2 x i64>, ptr %i.apr, align 1, !tbaa !9
  store <2 x i64> %.val214.i, ptr %i.aps, align 1, !tbaa !9
  %i.aqu = icmp slt i64 %.sroa.6447.0.i, 25
  br i1 %i.aqu, label %.loopexit.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aqv = getelementptr inbounds nuw i8, ptr %.0615.i, i64 24
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fx, %bb.fw
  %.130.i145.i = phi ptr [ %i.aqv, %bb.fw ], [ %i.aqy, %bb.fx ] ; 3 uses
  %.pn.i146.i = phi ptr [ %i.apr, %bb.fw ], [ %i.aqx, %bb.fx ] ; 2 uses
  %.1.i147.i = getelementptr inbounds nuw i8, ptr %.pn.i146.i, i64 16
  %.1.i147.val.i = load <2 x i64>, ptr %.1.i147.i, align 1, !tbaa !9
  store <2 x i64> %.1.i147.val.i, ptr %.130.i145.i, align 1, !tbaa !9
  %i.aqw = getelementptr inbounds nuw i8, ptr %.130.i145.i, i64 16
  %i.aqx = getelementptr inbounds nuw i8, ptr %.pn.i146.i, i64 32 ; 2 uses
  %.val213.i = load <2 x i64>, ptr %i.aqx, align 1, !tbaa !9
  store <2 x i64> %.val213.i, ptr %i.aqw, align 1, !tbaa !9
  %i.aqy = getelementptr inbounds nuw i8, ptr %.130.i145.i, i64 32 ; 2 uses
  %i.aqz = icmp ult ptr %i.aqy, %i.apx
  br i1 %i.aqz, label %bb.fx, label %.loopexit.i, !llvm.loop !108

.loopexit.i:                                      ; preds = %bb.fx, %.preheader700.i, %bb.fq, %middle.block179, %bb.fv, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i, %bb.fo, %bb.fl, %bb.ff
  %.0.i25.i = phi i64 [ %i.anw, %bb.ff ], [ %i.ano, %bb.fq ], [ %i.ano, %bb.fl ], [ %i.ano, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i ], [ %i.ano, %bb.fv ], [ %i.ano, %bb.fo ], [ %i.ano, %middle.block179 ], [ %i.ano, %.preheader700.i ], [ %i.ano, %bb.fx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ara = icmp ult i64 %.0.i25.i, -119
  %i.arb = getelementptr inbounds nuw i8, ptr %.8215.i.i, i64 %.0.i25.i
  br i1 %i.ara, label %bb.hn, label %.thread678.i

bb.fy:                                            ; preds = %bb.ex
  %i.arc = getelementptr inbounds i8, ptr %i.alg, i64 -32 ; 2 uses
  %.sroa.4583.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %.sroa.4583.0.copyload.i = load i64, ptr %.sroa.4583.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %.sroa.5584.0.copyload.i = load i64, ptr %.sroa.5584.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ard = getelementptr i8, ptr %.7214.i769.i, i64 %i.alf ; 7 uses
  %i.are = add i64 %.sroa.4583.0.copyload.i, %i.alf ; 9 uses
  %i.arf = sub i64 0, %.sroa.5584.0.copyload.i
  %i.arg = getelementptr inbounds i8, ptr %i.ard, i64 %i.arf ; 2 uses
  %i.arh = icmp ugt ptr %i.alg, %.4230.i767.i
  %i.ari = getelementptr inbounds nuw i8, ptr %.7214.i769.i, i64 %i.are
  %i.arj = icmp ugt ptr %i.ari, %i.arc
  %or.cond.i40.i = select i1 %i.arh, i1 true, i1 %i.arj, !prof !112
  br i1 %or.cond.i40.i, label %bb.fz, label %.critedge.i41.i, !prof !112

.critedge.i41.i:                                  ; preds = %bb.fy
  %.val237.i = load <2 x i64>, ptr %i.ale, align 1, !tbaa !9
  store <2 x i64> %.val237.i, ptr %.7214.i769.i, align 1, !tbaa !9
  %i.ark = icmp ugt i64 %i.alf, 16
  br i1 %i.ark, label %bb.ga, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !prof !60

bb.fz:                                            ; preds = %bb.fy
  store i64 %i.alf, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.4583.0.copyload.i, ptr %.sroa.6570.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5584.0.copyload.i, ptr %.sroa.12577.0..sroa_idx.i, align 8, !tbaa !53
  %i.arl = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.7214.i769.i, ptr noundef %i.j, ptr noundef nonnull %i.arc, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %.4230.i767.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i

bb.ga:                                            ; preds = %.critedge.i41.i
  %i.arm = getelementptr inbounds nuw i8, ptr %.7214.i769.i, i64 16
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ale, i64 16 ; 2 uses
  %i.aro = add i64 %i.alf, -16
  %.val236.i = load <2 x i64>, ptr %i.arn, align 1, !tbaa !9
  store <2 x i64> %.val236.i, ptr %i.arm, align 1, !tbaa !9
  %i.arp = icmp slt i64 %i.aro, 17
  br i1 %i.arp, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.arq = getelementptr inbounds nuw i8, ptr %.7214.i769.i, i64 32
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gc, %bb.gb
  %.130.i.i = phi ptr [ %i.arq, %bb.gb ], [ %i.art, %bb.gc ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.arn, %bb.gb ], [ %i.ars, %bb.gc ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !9
  %i.arr = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.ars = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val235.i = load <2 x i64>, ptr %i.ars, align 1, !tbaa !9
  store <2 x i64> %.val235.i, ptr %i.arr, align 1, !tbaa !9
  %i.art = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.aru = icmp ult ptr %i.art, %i.ard
  br i1 %i.aru, label %bb.gc, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.gc, %bb.ga, %.critedge.i41.i
  store ptr %i.alg, ptr %i.a, align 8, !tbaa !46
  %i.arv = ptrtoint ptr %i.ard to i64             ; 2 uses
  %i.arw = sub i64 %i.arv, %i.aj                  ; 3 uses
  %i.arx = icmp ugt i64 %.sroa.5584.0.copyload.i, %i.arw
  br i1 %i.arx, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.ary = sub i64 %i.arv, %i.ako
  %i.arz = icmp ugt i64 %.sroa.5584.0.copyload.i, %i.ary
  br i1 %i.arz, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, label %bb.ge, !prof !60

bb.ge:                                            ; preds = %bb.gd
  %i.asa = ptrtoint ptr %i.arg to i64
  %i.asb = sub i64 %i.asa, %i.aj                  ; 3 uses
  %i.asc = getelementptr inbounds i8, ptr %i.t, i64 %i.asb ; 2 uses
  %i.asd = add nsw i64 %i.asb, %.sroa.4583.0.copyload.i ; 2 uses
  %.not.i43.i = icmp sgt i64 %i.asd, 0
  br i1 %.not.i43.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ard, ptr align 1 %i.asc, i64 %.sroa.4583.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i

bb.gg:                                            ; preds = %bb.ge
  %gepdiff.i44.i = sub nsw i64 0, %i.asb          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ard, ptr align 1 %i.asc, i64 %gepdiff.i44.i, i1 false)
  %i.ase = getelementptr inbounds nuw i8, ptr %i.ard, i64 %gepdiff.i44.i
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.sroa.6570.0.i = phi i64 [ %i.asd, %bb.gg ], [ %.sroa.4583.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %.0608.i = phi ptr [ %i.p, %bb.gg ], [ %i.arg, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ase, %bb.gg ], [ %i.ard, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %i.asf = icmp ugt i64 %.sroa.5584.0.copyload.i, 15
  br i1 %i.asf, label %bb.gi, label %bb.gl, !prof !97

bb.gi:                                            ; preds = %bb.gh
  %i.asg = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.6570.0.i
  %.val234.i = load <2 x i64>, ptr %.0608.i, align 1, !tbaa !9
  store <2 x i64> %.val234.i, ptr %.0.i, align 1, !tbaa !9
  %i.ash = icmp slt i64 %.sroa.6570.0.i, 17
  br i1 %i.ash, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.asi = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.130.i77.i = phi ptr [ %i.asi, %bb.gj ], [ %i.asl, %bb.gk ] ; 3 uses
  %.pn.i78.i = phi ptr [ %.0608.i, %bb.gj ], [ %i.ask, %bb.gk ] ; 2 uses
  %.1.i79.i = getelementptr inbounds nuw i8, ptr %.pn.i78.i, i64 16
  %.1.i79.val.i = load <2 x i64>, ptr %.1.i79.i, align 1, !tbaa !9
  store <2 x i64> %.1.i79.val.i, ptr %.130.i77.i, align 1, !tbaa !9
  %i.asj = getelementptr inbounds nuw i8, ptr %.130.i77.i, i64 16
  %i.ask = getelementptr inbounds nuw i8, ptr %.pn.i78.i, i64 32 ; 2 uses
  %.val233.i = load <2 x i64>, ptr %i.ask, align 1, !tbaa !9
  store <2 x i64> %.val233.i, ptr %i.asj, align 1, !tbaa !9
  %i.asl = getelementptr inbounds nuw i8, ptr %.130.i77.i, i64 32 ; 2 uses
  %i.asm = icmp ult ptr %i.asl, %i.asg
  br i1 %i.asm, label %bb.gk, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, !llvm.loop !108

bb.gl:                                            ; preds = %bb.gh
  %i.asn = icmp samesign ult i64 %.sroa.5584.0.copyload.i, 8
  br i1 %i.asn, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5584.0.copyload.i
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !3
  %i.asq = load i8, ptr %.0608.i, align 1, !tbaa !9
  store i8 %i.asq, ptr %.0.i, align 1, !tbaa !9
  %i.asr = getelementptr inbounds nuw i8, ptr %.0608.i, i64 1
  %i.ass = load i8, ptr %i.asr, align 1, !tbaa !9
  %i.ast = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.ass, ptr %i.ast, align 1, !tbaa !9
  %i.asu = getelementptr inbounds nuw i8, ptr %.0608.i, i64 2
  %i.asv = load i8, ptr %i.asu, align 1, !tbaa !9
  %i.asw = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.asv, ptr %i.asw, align 1, !tbaa !9
  %i.asx = getelementptr inbounds nuw i8, ptr %.0608.i, i64 3
  %i.asy = load i8, ptr %i.asx, align 1, !tbaa !9
  %i.asz = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.asy, ptr %i.asz, align 1, !tbaa !9
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5584.0.copyload.i
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !3
  %i.atc = zext i32 %i.atb to i64
  %i.atd = getelementptr inbounds nuw i8, ptr %.0608.i, i64 %i.atc ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %.val248.i = load i32, ptr %i.atd, align 1
  store i32 %.val248.i, ptr %i.ate, align 1
  %i.atf = sext i32 %i.asp to i64
  %i.atg = sub nsw i64 0, %i.atf
  %i.ath = getelementptr inbounds i8, ptr %i.atd, i64 %i.atg
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.gn:                                            ; preds = %bb.gl
  %.val254.i = load i64, ptr %.0608.i, align 1
  store i64 %.val254.i, ptr %.0.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.gn, %bb.gm
  %.1.i = phi ptr [ %i.ath, %bb.gm ], [ %.0608.i, %bb.gn ] ; 2 uses
  %.1.i265 = ptrtoaddr ptr %.1.i to i64
  %i.ati = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.atk = icmp ugt i64 %.sroa.6570.0.i, 8
  br i1 %i.atk, label %bb.go, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i

bb.go:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.atl = ptrtoint ptr %i.atj to i64
  %i.atm = ptrtoint ptr %i.ati to i64
  %i.atn = sub i64 %i.atl, %i.atm
  %i.ato = getelementptr i8, ptr %.0.i, i64 %.sroa.6570.0.i ; 2 uses
  %i.atp = icmp slt i64 %i.atn, 16
  br i1 %i.atp, label %.preheader704.i.preheader, label %bb.gp

.preheader704.i.preheader:                        ; preds = %bb.go
  %30 = tail call i64 @llvm.umin.i64(i64 %.sroa.5584.0.copyload.i, i64 %i.arw)
  %umin267 = tail call i64 @llvm.umax.i64(i64 %.sroa.5584.0.copyload.i, i64 %i.arw) ; 3 uses
  %i.atq = add i64 %.sroa.4583.0.copyload.i, %i.aj
  %31 = add i64 %i.atq, %30
  %i.atr = add i64 %31, %umin267
  %i.ats = sub i64 %i.atr, %.sroa.5584.0.copyload.i
  %i.att = add i64 %umin267, %i.aku
  %umax269 = tail call i64 @llvm.umax.i64(i64 %i.ats, i64 %i.att)
  %i.atu = add i64 %umin267, %i.aj
  %32 = sub i64 %umax269, %i.atu
  %33 = add i64 %32, -9                           ; 2 uses
  %i.atv = lshr i64 %33, 3
  %i.atw = add nuw nsw i64 %i.atv, 1              ; 2 uses
  %min.iters.check271 = icmp ult i64 %33, 72
  br i1 %min.iters.check271, label %.preheader704.i.preheader322, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.preheader704.i.preheader
  %i.atx = sub i64 %i.alf, %i.aj
  %i.aty = add i64 %i.atx, %.7214.i769.i263
  %umax264 = tail call i64 @llvm.umax.i64(i64 %.sroa.5584.0.copyload.i, i64 %i.aty)
  %i.atz = add i64 %umax264, %i.aj
  %i.aua = sub i64 %.1.i265, %i.atz
  %diff.check266 = icmp ugt i64 %i.aua, -32
  br i1 %diff.check266, label %.preheader704.i.preheader322, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck262
  %n.vec274 = and i64 %i.atw, 4611686018427387900 ; 3 uses
  %i.aub = shl i64 %n.vec274, 3                   ; 2 uses
  %i.auc = getelementptr i8, ptr %i.atj, i64 %i.aub
  %i.aud = getelementptr i8, ptr %i.ati, i64 %i.aub
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph272
  %index276 = phi i64 [ 0, %vector.ph272 ], [ %index.next281, %vector.body275 ] ; 2 uses
  %i.aue = shl i64 %index276, 3                   ; 2 uses
  %next.gep277 = getelementptr i8, ptr %i.atj, i64 %i.aue ; 2 uses
  %next.gep278 = getelementptr i8, ptr %i.ati, i64 %i.aue ; 2 uses
  %i.auf = getelementptr i8, ptr %next.gep278, i64 16
  %wide.load279 = load <2 x i64>, ptr %next.gep278, align 1
  %wide.load280 = load <2 x i64>, ptr %i.auf, align 1
  %i.aug = getelementptr i8, ptr %next.gep277, i64 16
  store <2 x i64> %wide.load279, ptr %next.gep277, align 1
  store <2 x i64> %wide.load280, ptr %i.aug, align 1
  %index.next281 = add nuw i64 %index276, 4       ; 2 uses
  %i.auh = icmp eq i64 %index.next281, %n.vec274
  br i1 %i.auh, label %middle.block282, label %vector.body275, !llvm.loop !128

middle.block282:                                  ; preds = %vector.body275
  %cmp.n283 = icmp eq i64 %i.atw, %n.vec274
  br i1 %cmp.n283, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, label %.preheader704.i.preheader322

.preheader704.i.preheader322:                     ; preds = %vector.memcheck262, %.preheader704.i.preheader, %middle.block282
  %.029.i.i.ph = phi ptr [ %i.atj, %vector.memcheck262 ], [ %i.atj, %.preheader704.i.preheader ], [ %i.auc, %middle.block282 ]
  %.0.i86.i.ph = phi ptr [ %i.ati, %vector.memcheck262 ], [ %i.ati, %.preheader704.i.preheader ], [ %i.aud, %middle.block282 ]
  br label %.preheader704.i

.preheader704.i:                                  ; preds = %.preheader704.i.preheader322, %.preheader704.i
  %.029.i.i = phi ptr [ %i.aui, %.preheader704.i ], [ %.029.i.i.ph, %.preheader704.i.preheader322 ] ; 2 uses
  %.0.i86.i = phi ptr [ %i.auj, %.preheader704.i ], [ %.0.i86.i.ph, %.preheader704.i.preheader322 ] ; 2 uses
  %.0.i86.val.i = load i64, ptr %.0.i86.i, align 1
  store i64 %.0.i86.val.i, ptr %.029.i.i, align 1
  %i.aui = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 8
  %i.auk = icmp ult ptr %i.aui, %i.ato
  br i1 %i.auk, label %.preheader704.i, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, !llvm.loop !129

bb.gp:                                            ; preds = %bb.go
  %.val232.i = load <2 x i64>, ptr %i.ati, align 1, !tbaa !9
  store <2 x i64> %.val232.i, ptr %i.atj, align 1, !tbaa !9
  %i.aul = icmp slt i64 %.sroa.6570.0.i, 25
  br i1 %i.aul, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aum = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %bb.gq
  %.130.i83.i = phi ptr [ %i.aum, %bb.gq ], [ %i.aup, %bb.gr ] ; 3 uses
  %.pn.i84.i = phi ptr [ %i.ati, %bb.gq ], [ %i.auo, %bb.gr ] ; 2 uses
  %.1.i85.i = getelementptr inbounds nuw i8, ptr %.pn.i84.i, i64 16
  %.1.i85.val.i = load <2 x i64>, ptr %.1.i85.i, align 1, !tbaa !9
  store <2 x i64> %.1.i85.val.i, ptr %.130.i83.i, align 1, !tbaa !9
  %i.aun = getelementptr inbounds nuw i8, ptr %.130.i83.i, i64 16
  %i.auo = getelementptr inbounds nuw i8, ptr %.pn.i84.i, i64 32 ; 2 uses
  %.val231.i = load <2 x i64>, ptr %i.auo, align 1, !tbaa !9
  store <2 x i64> %.val231.i, ptr %i.aun, align 1, !tbaa !9
  %i.aup = getelementptr inbounds nuw i8, ptr %.130.i83.i, i64 32 ; 2 uses
  %i.auq = icmp ult ptr %i.aup, %i.ato
  br i1 %i.auq, label %bb.gr, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i: ; preds = %bb.gr, %.preheader704.i, %bb.gk, %middle.block282, %bb.gp, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i, %bb.gi, %bb.gf, %bb.gd, %bb.fz
  %.0.i42.i = phi i64 [ %i.arl, %bb.fz ], [ -20, %bb.gd ], [ %i.are, %bb.gf ], [ %i.are, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i ], [ %i.are, %bb.gk ], [ %i.are, %bb.gi ], [ %i.are, %middle.block282 ], [ %i.are, %bb.gp ], [ %i.are, %.preheader704.i ], [ %i.are, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.hm

bb.gs:                                            ; preds = %bb.ew
  %.sroa.0500.0.copyload.i = load i64, ptr %i.alb, align 8, !tbaa !53 ; 7 uses
  %.sroa.4501.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %.sroa.4501.0.copyload.i = load i64, ptr %.sroa.4501.0..sroa_idx.i, align 8, !tbaa !53 ; 6 uses
  %.sroa.5502.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %.sroa.5502.0.copyload.i = load i64, ptr %.sroa.5502.0..sroa_idx.i, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.aur = getelementptr i8, ptr %.7214.i769.i, i64 %.sroa.0500.0.copyload.i ; 7 uses
  %i.aus = add i64 %.sroa.4501.0.copyload.i, %.sroa.0500.0.copyload.i ; 9 uses
  %i.aut = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.sroa.0500.0.copyload.i ; 2 uses
  %i.auv = sub i64 0, %.sroa.5502.0.copyload.i
  %i.auw = getelementptr inbounds i8, ptr %i.aur, i64 %i.auv ; 2 uses
  %i.aux = icmp ugt ptr %i.auu, %.4230.i767.i
  %i.auy = getelementptr inbounds nuw i8, ptr %.7214.i769.i, i64 %i.aus
  %i.auz = icmp ugt ptr %i.auy, %i.akn
  %or.cond.i29.i = select i1 %i.aux, i1 true, i1 %i.auz, !prof !112
  br i1 %or.cond.i29.i, label %bb.gt, label %.critedge.i30.i, !prof !112

.critedge.i30.i:                                  ; preds = %bb.gs
  %.val239.i = load <2 x i64>, ptr %i.aut, align 1, !tbaa !9
  store <2 x i64> %.val239.i, ptr %.7214.i769.i, align 1, !tbaa !9
  %i.ava = icmp ugt i64 %.sroa.0500.0.copyload.i, 16
  br i1 %i.ava, label %bb.gu, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i, !prof !60

bb.gt:                                            ; preds = %bb.gs
  store i64 %.sroa.0500.0.copyload.i, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.4501.0.copyload.i, ptr %.sroa.6488.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sroa.5502.0.copyload.i, ptr %.sroa.12495.0..sroa_idx.i, align 8, !tbaa !53
  %i.avb = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7214.i769.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef %.4230.i767.i, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i

bb.gu:                                            ; preds = %.critedge.i30.i
  %i.avc = getelementptr inbounds nuw i8, ptr %.7214.i769.i, i64 16
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aut, i64 16 ; 2 uses
  %i.ave = add i64 %.sroa.0500.0.copyload.i, -16
  %.val224.i = load <2 x i64>, ptr %i.avd, align 1, !tbaa !9
  store <2 x i64> %.val224.i, ptr %i.avc, align 1, !tbaa !9
  %i.avf = icmp slt i64 %i.ave, 17
  br i1 %i.avf, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.avg = getelementptr inbounds nuw i8, ptr %.7214.i769.i, i64 32
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gw, %bb.gv
  %.130.i110.i = phi ptr [ %i.avg, %bb.gv ], [ %i.avj, %bb.gw ] ; 3 uses
  %.pn.i111.i = phi ptr [ %i.avd, %bb.gv ], [ %i.avi, %bb.gw ] ; 2 uses
  %.1.i112.i = getelementptr inbounds nuw i8, ptr %.pn.i111.i, i64 16
  %.1.i112.val.i = load <2 x i64>, ptr %.1.i112.i, align 1, !tbaa !9
  store <2 x i64> %.1.i112.val.i, ptr %.130.i110.i, align 1, !tbaa !9
  %i.avh = getelementptr inbounds nuw i8, ptr %.130.i110.i, i64 16
  %i.avi = getelementptr inbounds nuw i8, ptr %.pn.i111.i, i64 32 ; 2 uses
  %.val223.i = load <2 x i64>, ptr %i.avi, align 1, !tbaa !9
  store <2 x i64> %.val223.i, ptr %i.avh, align 1, !tbaa !9
  %i.avj = getelementptr inbounds nuw i8, ptr %.130.i110.i, i64 32 ; 2 uses
  %i.avk = icmp ult ptr %i.avj, %i.aur
  br i1 %i.avk, label %bb.gw, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i: ; preds = %bb.gw, %bb.gu, %.critedge.i30.i
  store ptr %i.auu, ptr %i.a, align 8, !tbaa !46
  %i.avl = ptrtoint ptr %i.aur to i64             ; 2 uses
  %i.avm = sub i64 %i.avl, %i.aj                  ; 3 uses
  %i.avn = icmp ugt i64 %.sroa.5502.0.copyload.i, %i.avm
  br i1 %i.avn, label %bb.gx, label %bb.hb

bb.gx:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i
  %i.avo = sub i64 %i.avl, %i.ako
  %i.avp = icmp ugt i64 %.sroa.5502.0.copyload.i, %i.avo
  br i1 %i.avp, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, label %bb.gy, !prof !60

bb.gy:                                            ; preds = %bb.gx
  %i.avq = ptrtoint ptr %i.auw to i64
  %i.avr = sub i64 %i.avq, %i.aj                  ; 3 uses
  %i.avs = getelementptr inbounds i8, ptr %i.t, i64 %i.avr ; 2 uses
  %i.avt = add nsw i64 %i.avr, %.sroa.4501.0.copyload.i ; 2 uses
  %.not.i32.i = icmp sgt i64 %i.avt, 0
  br i1 %.not.i32.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aur, ptr align 1 %i.avs, i64 %.sroa.4501.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i

bb.ha:                                            ; preds = %bb.gy
  %gepdiff.i33.i = sub nsw i64 0, %i.avr          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aur, ptr align 1 %i.avs, i64 %gepdiff.i33.i, i1 false)
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aur, i64 %gepdiff.i33.i
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i
  %.sroa.6488.0.i = phi i64 [ %i.avt, %bb.ha ], [ %.sroa.4501.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i ] ; 5 uses
  %.0613.i = phi ptr [ %i.p, %bb.ha ], [ %i.auw, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i ] ; 9 uses
  %.0612.i = phi ptr [ %i.avu, %bb.ha ], [ %i.aur, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115.i ] ; 12 uses
  %i.avv = icmp ugt i64 %.sroa.5502.0.copyload.i, 15
  br i1 %i.avv, label %bb.hc, label %bb.hf, !prof !97

bb.hc:                                            ; preds = %bb.hb
  %i.avw = getelementptr inbounds i8, ptr %.0612.i, i64 %.sroa.6488.0.i
  %.val222.i = load <2 x i64>, ptr %.0613.i, align 1, !tbaa !9
  store <2 x i64> %.val222.i, ptr %.0612.i, align 1, !tbaa !9
  %i.avx = icmp slt i64 %.sroa.6488.0.i, 17
  br i1 %i.avx, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.avy = getelementptr inbounds nuw i8, ptr %.0612.i, i64 16
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %bb.hd
  %.130.i117.i = phi ptr [ %i.avy, %bb.hd ], [ %i.awb, %bb.he ] ; 3 uses
  %.pn.i118.i = phi ptr [ %.0613.i, %bb.hd ], [ %i.awa, %bb.he ] ; 2 uses
  %.1.i119.i = getelementptr inbounds nuw i8, ptr %.pn.i118.i, i64 16
  %.1.i119.val.i = load <2 x i64>, ptr %.1.i119.i, align 1, !tbaa !9
  store <2 x i64> %.1.i119.val.i, ptr %.130.i117.i, align 1, !tbaa !9
  %i.avz = getelementptr inbounds nuw i8, ptr %.130.i117.i, i64 16
  %i.awa = getelementptr inbounds nuw i8, ptr %.pn.i118.i, i64 32 ; 2 uses
  %.val221.i = load <2 x i64>, ptr %i.awa, align 1, !tbaa !9
  store <2 x i64> %.val221.i, ptr %i.avz, align 1, !tbaa !9
  %i.awb = getelementptr inbounds nuw i8, ptr %.130.i117.i, i64 32 ; 2 uses
  %i.awc = icmp ult ptr %i.awb, %i.avw
  br i1 %i.awc, label %bb.he, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, !llvm.loop !108

bb.hf:                                            ; preds = %bb.hb
  %i.awd = icmp samesign ult i64 %.sroa.5502.0.copyload.i, 8
  br i1 %i.awd, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5502.0.copyload.i
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !3
  %i.awg = load i8, ptr %.0613.i, align 1, !tbaa !9
  store i8 %i.awg, ptr %.0612.i, align 1, !tbaa !9
  %i.awh = getelementptr inbounds nuw i8, ptr %.0613.i, i64 1
  %i.awi = load i8, ptr %i.awh, align 1, !tbaa !9
  %i.awj = getelementptr inbounds nuw i8, ptr %.0612.i, i64 1
  store i8 %i.awi, ptr %i.awj, align 1, !tbaa !9
  %i.awk = getelementptr inbounds nuw i8, ptr %.0613.i, i64 2
  %i.awl = load i8, ptr %i.awk, align 1, !tbaa !9
  %i.awm = getelementptr inbounds nuw i8, ptr %.0612.i, i64 2
  store i8 %i.awl, ptr %i.awm, align 1, !tbaa !9
  %i.awn = getelementptr inbounds nuw i8, ptr %.0613.i, i64 3
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !9
  %i.awp = getelementptr inbounds nuw i8, ptr %.0612.i, i64 3
  store i8 %i.awo, ptr %i.awp, align 1, !tbaa !9
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5502.0.copyload.i
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !3
  %i.aws = zext i32 %i.awr to i64
  %i.awt = getelementptr inbounds nuw i8, ptr %.0613.i, i64 %i.aws ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.0612.i, i64 4
  %.val246.i = load i32, ptr %i.awt, align 1
  store i32 %.val246.i, ptr %i.awu, align 1
  %i.awv = sext i32 %i.awf to i64
  %i.aww = sub nsw i64 0, %i.awv
  %i.awx = getelementptr inbounds i8, ptr %i.awt, i64 %i.aww
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i

bb.hh:                                            ; preds = %bb.hf
  %.val252.i = load i64, ptr %.0613.i, align 1
  store i64 %.val252.i, ptr %.0612.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i: ; preds = %bb.hh, %bb.hg
  %.1614.i = phi ptr [ %i.awx, %bb.hg ], [ %.0613.i, %bb.hh ] ; 2 uses
  %.1614.i288 = ptrtoaddr ptr %.1614.i to i64
  %i.awy = getelementptr inbounds nuw i8, ptr %.1614.i, i64 8 ; 7 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %.0612.i, i64 8 ; 6 uses
  %i.axa = icmp ugt i64 %.sroa.6488.0.i, 8
  br i1 %i.axa, label %bb.hi, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i

bb.hi:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i
  %i.axb = ptrtoint ptr %i.awz to i64
  %i.axc = ptrtoint ptr %i.awy to i64
  %i.axd = sub i64 %i.axb, %i.axc
  %i.axe = getelementptr i8, ptr %.0612.i, i64 %.sroa.6488.0.i ; 2 uses
  %i.axf = icmp slt i64 %i.axd, 16
  br i1 %i.axf, label %.preheader707.i.preheader, label %bb.hj

.preheader707.i.preheader:                        ; preds = %bb.hi
  %34 = tail call i64 @llvm.umin.i64(i64 %.sroa.5502.0.copyload.i, i64 %i.avm)
  %umin290 = tail call i64 @llvm.umax.i64(i64 %.sroa.5502.0.copyload.i, i64 %i.avm) ; 3 uses
  %i.axg = add i64 %.sroa.4501.0.copyload.i, %i.aj
  %35 = add i64 %i.axg, %34
  %i.axh = add i64 %35, %umin290
  %i.axi = sub i64 %i.axh, %.sroa.5502.0.copyload.i
  %i.axj = add i64 %umin290, %i.akt
  %umax292 = tail call i64 @llvm.umax.i64(i64 %i.axi, i64 %i.axj)
  %i.axk = add i64 %umin290, %i.aj
  %36 = sub i64 %umax292, %i.axk
  %37 = add i64 %36, -9                           ; 2 uses
  %i.axl = lshr i64 %37, 3
  %i.axm = add nuw nsw i64 %i.axl, 1              ; 2 uses
  %min.iters.check294 = icmp ult i64 %37, 72
  br i1 %min.iters.check294, label %.preheader707.i.preheader325, label %vector.memcheck286

vector.memcheck286:                               ; preds = %.preheader707.i.preheader
  %i.axn = sub i64 %.sroa.0500.0.copyload.i, %i.aj
  %i.axo = add i64 %i.axn, %.7214.i769.i263
  %umax287 = tail call i64 @llvm.umax.i64(i64 %.sroa.5502.0.copyload.i, i64 %i.axo)
  %i.axp = add i64 %umax287, %i.aj
  %i.axq = sub i64 %.1614.i288, %i.axp
  %diff.check289 = icmp ugt i64 %i.axq, -32
  br i1 %diff.check289, label %.preheader707.i.preheader325, label %vector.ph295

vector.ph295:                                     ; preds = %vector.memcheck286
  %n.vec297 = and i64 %i.axm, 4611686018427387900 ; 3 uses
  %i.axr = shl i64 %n.vec297, 3                   ; 2 uses
  %i.axs = getelementptr i8, ptr %i.awz, i64 %i.axr
  %i.axt = getelementptr i8, ptr %i.awy, i64 %i.axr
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph295
  %index299 = phi i64 [ 0, %vector.ph295 ], [ %index.next304, %vector.body298 ] ; 2 uses
  %i.axu = shl i64 %index299, 3                   ; 2 uses
  %next.gep300 = getelementptr i8, ptr %i.awz, i64 %i.axu ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.awy, i64 %i.axu ; 2 uses
  %i.axv = getelementptr i8, ptr %next.gep301, i64 16
  %wide.load302 = load <2 x i64>, ptr %next.gep301, align 1
  %wide.load303 = load <2 x i64>, ptr %i.axv, align 1
  %i.axw = getelementptr i8, ptr %next.gep300, i64 16
  store <2 x i64> %wide.load302, ptr %next.gep300, align 1
  store <2 x i64> %wide.load303, ptr %i.axw, align 1
  %index.next304 = add nuw i64 %index299, 4       ; 2 uses
  %i.axx = icmp eq i64 %index.next304, %n.vec297
  br i1 %i.axx, label %middle.block305, label %vector.body298, !llvm.loop !130

middle.block305:                                  ; preds = %vector.body298
  %cmp.n306 = icmp eq i64 %i.axm, %n.vec297
  br i1 %cmp.n306, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, label %.preheader707.i.preheader325

.preheader707.i.preheader325:                     ; preds = %vector.memcheck286, %.preheader707.i.preheader, %middle.block305
  %.029.i127.i.ph = phi ptr [ %i.awz, %vector.memcheck286 ], [ %i.awz, %.preheader707.i.preheader ], [ %i.axs, %middle.block305 ]
  %.0.i128.i.ph = phi ptr [ %i.awy, %vector.memcheck286 ], [ %i.awy, %.preheader707.i.preheader ], [ %i.axt, %middle.block305 ]
  br label %.preheader707.i

.preheader707.i:                                  ; preds = %.preheader707.i.preheader325, %.preheader707.i
  %.029.i127.i = phi ptr [ %i.axy, %.preheader707.i ], [ %.029.i127.i.ph, %.preheader707.i.preheader325 ] ; 2 uses
  %.0.i128.i = phi ptr [ %i.axz, %.preheader707.i ], [ %.0.i128.i.ph, %.preheader707.i.preheader325 ] ; 2 uses
  %.0.i128.val.i = load i64, ptr %.0.i128.i, align 1
  store i64 %.0.i128.val.i, ptr %.029.i127.i, align 1
  %i.axy = getelementptr inbounds nuw i8, ptr %.029.i127.i, i64 8 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %.0.i128.i, i64 8
  %i.aya = icmp ult ptr %i.axy, %i.axe
  br i1 %i.aya, label %.preheader707.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, !llvm.loop !131

bb.hj:                                            ; preds = %bb.hi
  %.val220.i = load <2 x i64>, ptr %i.awy, align 1, !tbaa !9
  store <2 x i64> %.val220.i, ptr %i.awz, align 1, !tbaa !9
  %i.ayb = icmp slt i64 %.sroa.6488.0.i, 25
  br i1 %i.ayb, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ayc = getelementptr inbounds nuw i8, ptr %.0612.i, i64 24
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hl, %bb.hk
  %.130.i124.i = phi ptr [ %i.ayc, %bb.hk ], [ %i.ayf, %bb.hl ] ; 3 uses
  %.pn.i125.i = phi ptr [ %i.awy, %bb.hk ], [ %i.aye, %bb.hl ] ; 2 uses
  %.1.i126.i = getelementptr inbounds nuw i8, ptr %.pn.i125.i, i64 16
  %.1.i126.val.i = load <2 x i64>, ptr %.1.i126.i, align 1, !tbaa !9
  store <2 x i64> %.1.i126.val.i, ptr %.130.i124.i, align 1, !tbaa !9
  %i.ayd = getelementptr inbounds nuw i8, ptr %.130.i124.i, i64 16
  %i.aye = getelementptr inbounds nuw i8, ptr %.pn.i125.i, i64 32 ; 2 uses
  %.val219.i = load <2 x i64>, ptr %i.aye, align 1, !tbaa !9
  store <2 x i64> %.val219.i, ptr %i.ayd, align 1, !tbaa !9
  %i.ayf = getelementptr inbounds nuw i8, ptr %.130.i124.i, i64 32 ; 2 uses
  %i.ayg = icmp ult ptr %i.ayf, %i.axe
  br i1 %i.ayg, label %bb.hl, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i: ; preds = %bb.hl, %.preheader707.i, %bb.he, %middle.block305, %bb.hj, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i, %bb.hc, %bb.gz, %bb.gx, %bb.gt
  %.0.i31.i = phi i64 [ %i.avb, %bb.gt ], [ -20, %bb.gx ], [ %i.aus, %bb.gz ], [ %i.aus, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194.i ], [ %i.aus, %bb.he ], [ %i.aus, %bb.hc ], [ %i.aus, %middle.block305 ], [ %i.aus, %bb.hj ], [ %i.aus, %.preheader707.i ], [ %i.aus, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.hm

bb.hm:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i
  %i.ayh = phi i64 [ %.0.i42.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45.i ], [ %.0.i31.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34.i ] ; 3 uses
  %i.ayi = icmp ult i64 %i.ayh, -119
  %i.ayj = getelementptr inbounds nuw i8, ptr %.7214.i769.i, i64 %i.ayh
  br i1 %i.ayi, label %bb.hn, label %.thread678.i

bb.hn:                                            ; preds = %bb.hm, %.loopexit.i
  %.6232.i.i = phi ptr [ %i.akr, %.loopexit.i ], [ %.4230.i767.i, %bb.hm ] ; 2 uses
  %.12219.i.i = phi ptr [ %i.arb, %.loopexit.i ], [ %i.ayj, %bb.hm ] ; 2 uses
  %i.ayk = add i32 %.2240.i766.i, 1               ; 2 uses
  %exitcond800.not.i = icmp eq i32 %i.ayk, %5
  br i1 %exitcond800.not.i, label %.preheader.i, label %bb.ew, !llvm.loop !132

.thread678.i:                                     ; preds = %bb.et, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, %bb.cf, %bb.hm, %.loopexit.i, %bb.ez, %.thread665.i, %._crit_edge.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.q, %bb.i, %bb.g
  %.12.i.ph.i = phi i64 [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i ], [ -20, %bb.g ], [ -20, %bb.q ], [ -20, %.thread665.i ], [ -20, %._crit_edge.i ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ -70, %bb.ez ], [ -20, %bb.i ], [ %.0.i25.i, %.loopexit.i ], [ %i.ayh, %bb.hm ], [ -70, %bb.cf ], [ %i.ajr, %bb.et ], [ %.0.i15.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.ho:                                            ; preds = %.preheader.i, %bb.f
  %.pre811.i = phi ptr [ %.pre811.pre.i, %.preheader.i ], [ %i.l, %bb.f ] ; 3 uses
  %i.ayl = phi i32 [ %.pre810.i, %.preheader.i ], [ %i.e, %bb.f ]
  %.9235.i.i = phi ptr [ %.4230.i.lcssa.i, %.preheader.i ], [ %i.n, %bb.f ] ; 2 uses
  %.15222.i.i = phi ptr [ %.7214.i.lcssa.i, %.preheader.i ], [ %1, %bb.f ] ; 5 uses
  %i.aym = icmp eq i32 %i.ayl, 2
  br i1 %i.aym, label %bb.hp, label %._crit_edge813.i

._crit_edge813.i:                                 ; preds = %bb.ho
  %.pre814.i = ptrtoint ptr %i.j to i64
  br label %bb.ht

bb.hp:                                            ; preds = %bb.ho
  %i.ayn = ptrtoint ptr %.9235.i.i to i64
  %i.ayo = ptrtoint ptr %.pre811.i to i64
  %i.ayp = sub i64 %i.ayn, %i.ayo                 ; 3 uses
  %i.ayq = ptrtoint ptr %i.j to i64               ; 2 uses
  %i.ayr = ptrtoint ptr %.15222.i.i to i64
  %i.ays = sub i64 %i.ayq, %i.ayr
  %.not276.i.i = icmp ugt i64 %i.ayp, %i.ays
  br i1 %.not276.i.i, label %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %.not275.i.i = icmp eq ptr %.15222.i.i, null
  br i1 %.not275.i.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.15222.i.i, ptr align 1 %.pre811.i, i64 %i.ayp, i1 false)
  %i.ayt = getelementptr inbounds nuw i8, ptr %.15222.i.i, i64 %i.ayp
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.16223.i.i = phi ptr [ %i.ayt, %bb.hr ], [ null, %bb.hq ]
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %._crit_edge813.i
  %.pre-phi.i = phi i64 [ %.pre814.i, %._crit_edge813.i ], [ %i.ayq, %bb.hs ]
  %i.ayw = phi ptr [ %.pre811.i, %._crit_edge813.i ], [ %i.ayu, %bb.hs ] ; 2 uses
  %.11237.i.i = phi ptr [ %.9235.i.i, %._crit_edge813.i ], [ %i.ayv, %bb.hs ]
  %.18.i.i = phi ptr [ %.15222.i.i, %._crit_edge813.i ], [ %.16223.i.i, %bb.hs ] ; 4 uses
  %i.ayx = ptrtoint ptr %.11237.i.i to i64
  %i.ayy = ptrtoint ptr %i.ayw to i64
  %i.ayz = sub i64 %i.ayx, %i.ayy                 ; 3 uses
  %i.aza = ptrtoint ptr %.18.i.i to i64
  %i.azb = sub i64 %.pre-phi.i, %i.aza
  %.not278.i.i = icmp ugt i64 %i.ayz, %i.azb
  br i1 %.not278.i.i, label %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.not277.i.i = icmp eq ptr %.18.i.i, null
  br i1 %.not277.i.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.18.i.i, ptr align 1 %i.ayw, i64 %i.ayz, i1 false)
  %i.azc = getelementptr inbounds nuw i8, ptr %.18.i.i, i64 %i.ayz
  %i.azd = ptrtoint ptr %i.azc to i64
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.20.i.ph.i = phi i64 [ 0, %bb.hu ], [ %i.azd, %bb.hv ]
  %i.aze = ptrtoint ptr %1 to i64
  %i.azf = sub i64 %.20.i.ph.i, %i.aze
  br label %_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL36ZSTD_decompressSequencesLong_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %.thread678.i, %bb.hp, %bb.ht, %bb.hw
  %.17.i.i = phi i64 [ %i.azf, %bb.hw ], [ %.12.i.ph.i, %.thread678.i ], [ -70, %bb.ht ], [ -70, %bb.hp ]
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
  br label %bb.fb

bb.c:                                             ; preds = %bb.a
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !46
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  %i.nm = phi ptr [ %i.nj, %bb.bb ], [ %i.lb, %bb.ba ], [ %i.mw, %bb.az ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ax ] ; 2 uses
  %i.nn = phi i32 [ %i.nl, %bb.bb ], [ %i.mi, %bb.ba ], [ %i.mx, %bb.az ], [ %i.mi, %bb.ax ] ; 2 uses
  %i.no = phi i64 [ %.val6.i, %bb.bb ], [ %i.ld, %bb.ba ], [ %.val.i64.i, %bb.az ], [ %i.ld, %bb.ax ] ; 2 uses
  %i.np = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sroa.085.0.i ; 2 uses
  %i.nr = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.ns = icmp ugt ptr %i.nq, %i.nr
  br i1 %i.ns, label %bb.bx, label %bb.bc

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i: ; preds = %bb.av
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.sroa.085.0.i ; 2 uses
  %i.nv = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.nw = icmp ugt ptr %i.nu, %i.nv
  br i1 %i.nw, label %.thread413.i, label %bb.bc

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
  %i.og = getelementptr i8, ptr %.0142.i314.i, i64 %.sroa.085.0.i ; 7 uses
  %i.oh = add i64 %.sroa.085.0.i, %.sroa.687.0.i  ; 9 uses
  %i.oi = sub i64 0, %.sink.i
  %i.oj = getelementptr inbounds i8, ptr %i.og, i64 %i.oi ; 2 uses
  %i.ok = icmp ugt ptr %i.oa, %i.h
  %i.ol = getelementptr inbounds nuw i8, ptr %.0142.i314.i, i64 %i.oh
  %i.om = icmp ugt ptr %i.ol, %i.of
  %or.cond.i207.i.i = select i1 %i.ok, i1 true, i1 %i.om, !prof !112
  br i1 %or.cond.i207.i.i, label %bb.bd, label %.critedge.i208.i.i, !prof !112

.critedge.i208.i.i:                               ; preds = %bb.bc
  %.val29.i = load <2 x i64>, ptr %i.ob, align 1, !tbaa !9
  store <2 x i64> %.val29.i, ptr %.0142.i314.i, align 1, !tbaa !9
  %i.on = icmp ugt i64 %.sroa.085.0.i, 16
  br i1 %i.on, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !prof !60

bb.bd:                                            ; preds = %bb.bc
  store i64 %.sroa.085.0.i, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.687.0.i, ptr %.sroa.6167.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink.i, ptr %.sroa.13172.0..sroa_idx.i, align 8, !tbaa !53
  %i.oo = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0142.i314.i, ptr noundef %i.d, ptr noundef nonnull %i.of, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.be:                                            ; preds = %.critedge.i208.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %.0142.i314.i, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.or = add i64 %.sroa.085.0.i, -16
  %.val17.i = load <2 x i64>, ptr %i.oq, align 1, !tbaa !9
  store <2 x i64> %.val17.i, ptr %i.op, align 1, !tbaa !9
  %i.os = icmp slt i64 %i.or, 17
  br i1 %i.os, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ot = getelementptr inbounds nuw i8, ptr %.0142.i314.i, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i.i = phi ptr [ %i.ot, %bb.bf ], [ %i.ow, %bb.bg ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.oq, %bb.bf ], [ %i.ov, %bb.bg ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.1.i.i.val.i = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i.i.val.i, ptr %.130.i.i.i, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val16.i = load <2 x i64>, ptr %i.ov, align 1, !tbaa !9
  store <2 x i64> %.val16.i, ptr %i.ou, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.og
  br i1 %i.ox, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i: ; preds = %bb.bg, %bb.be, %.critedge.i208.i.i
  store ptr %i.oa, ptr %i.a, align 8, !tbaa !46
  %i.oy = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oz = sub i64 %i.oy, %i.gu                    ; 3 uses
  %i.pa = icmp ugt i64 %.sink.i, %i.oz
  br i1 %i.pa, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %i.pb = sub i64 %i.oy, %i.gv
  %i.pc = icmp ugt i64 %.sink.i, %i.pb
  br i1 %i.pc, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i, label %bb.bi, !prof !60

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread264.i

bb.bi:                                            ; preds = %bb.bh
  %i.pd = ptrtoint ptr %i.oj to i64
  %i.pe = sub i64 %i.pd, %i.gu                    ; 3 uses
  %i.pf = getelementptr inbounds i8, ptr %i.n, i64 %i.pe ; 2 uses
  %i.pg = add nsw i64 %i.pe, %.sroa.687.0.i       ; 2 uses
  %.not.i210.i.i = icmp sgt i64 %i.pg, 0
  br i1 %.not.i210.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pf, i64 %.sroa.687.0.i, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i211.i.i = sub nsw i64 0, %i.pe        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pf, i64 %gepdiff.i211.i.i, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.og, i64 %gepdiff.i211.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %.sroa.6167.0.i = phi i64 [ %i.pg, %bb.bk ], [ %.sroa.687.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 5 uses
  %.0198.i = phi ptr [ %i.j, %bb.bk ], [ %i.oj, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ph, %bb.bk ], [ %i.og, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 12 uses
  %i.pi = icmp ugt i64 %.sink.i, 15
  br i1 %i.pi, label %bb.bm, label %bb.bp, !prof !97

bb.bm:                                            ; preds = %bb.bl
  %i.pj = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.6167.0.i
  %.val19.i = load <2 x i64>, ptr %.0198.i, align 1, !tbaa !9
  store <2 x i64> %.val19.i, ptr %.0.i, align 1, !tbaa !9
  %i.pk = icmp slt i64 %.sroa.6167.0.i, 17
  br i1 %i.pk, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i243.i.i = phi ptr [ %i.pl, %bb.bn ], [ %i.po, %bb.bo ] ; 3 uses
  %.pn.i244.i.i = phi ptr [ %.0198.i, %bb.bn ], [ %i.pn, %bb.bo ] ; 2 uses
  %.1.i245.i.i = getelementptr inbounds nuw i8, ptr %.pn.i244.i.i, i64 16
  %.1.i245.i.val.i = load <2 x i64>, ptr %.1.i245.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i245.i.val.i, ptr %.130.i243.i.i, align 1, !tbaa !9
  %i.pm = getelementptr inbounds nuw i8, ptr %.130.i243.i.i, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %.pn.i244.i.i, i64 32 ; 2 uses
  %.val18.i = load <2 x i64>, ptr %i.pn, align 1, !tbaa !9
  store <2 x i64> %.val18.i, ptr %i.pm, align 1, !tbaa !9
  %i.po = getelementptr inbounds nuw i8, ptr %.130.i243.i.i, i64 32 ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pj
  br i1 %i.pp, label %bb.bo, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !108

bb.bp:                                            ; preds = %bb.bl
  %i.pq = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pq, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3
  %i.pt = load i8, ptr %.0198.i, align 1, !tbaa !9
  store i8 %i.pt, ptr %.0.i, align 1, !tbaa !9
  %i.pu = getelementptr inbounds nuw i8, ptr %.0198.i, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !9
  %i.px = getelementptr inbounds nuw i8, ptr %.0198.i, i64 2
  %i.py = load i8, ptr %i.px, align 1, !tbaa !9
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !9
  %i.qa = getelementptr inbounds nuw i8, ptr %.0198.i, i64 3
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !3
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %.0198.i, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %.val31.i = load i32, ptr %i.qg, align 1
  store i32 %.val31.i, ptr %i.qh, align 1
  %i.qi = sext i32 %i.ps to i64
  %i.qj = sub nsw i64 0, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qg, i64 %i.qj
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %.val35.i = load i64, ptr %.0198.i, align 1
  store i64 %.val35.i, ptr %.0.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i: ; preds = %bb.br, %bb.bq
  %.1.i = phi ptr [ %i.qk, %bb.bq ], [ %.0198.i, %bb.br ] ; 2 uses
  %.1.i107 = ptrtoaddr ptr %.1.i to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qn = icmp ugt i64 %.sroa.6167.0.i, 8
  br i1 %i.qn, label %bb.bs, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.bs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.ql to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = getelementptr i8, ptr %.0.i, i64 %.sroa.6167.0.i ; 2 uses
  %i.qs = icmp slt i64 %i.qq, 16
  br i1 %i.qs, label %.preheader294.i.preheader, label %bb.bt

.preheader294.i.preheader:                        ; preds = %bb.bs
  %10 = tail call i64 @llvm.umin.i64(i64 %.sink.i, i64 %i.oz)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.oz) ; 3 uses
  %i.qt = add i64 %.sroa.687.0.i, %i.gu
  %11 = add i64 %i.qt, %10
  %i.qu = add i64 %11, %umin
  %i.qv = sub i64 %i.qu, %.sink.i
  %i.qw = add i64 %umin, %i.gx
  %umax109 = tail call i64 @llvm.umax.i64(i64 %i.qv, i64 %i.qw)
  %i.qx = add i64 %umin, %i.gu
  %12 = sub i64 %umax109, %i.qx
  %13 = add i64 %12, -9                           ; 2 uses
  %i.qy = lshr i64 %13, 3
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 72
  br i1 %min.iters.check, label %.preheader294.i.preheader255, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader294.i.preheader
  %i.ra = sub i64 %.sroa.085.0.i, %i.gu
  %i.rb = add i64 %i.ra, %.0142.i314.i106
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.rb)
  %i.rc = add i64 %umax, %i.gu
  %i.rd = sub i64 %.1.i107, %i.rc
  %diff.check = icmp ugt i64 %i.rd, -32
  br i1 %diff.check, label %.preheader294.i.preheader255, label %vector.ph

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
  %next.gep110 = getelementptr i8, ptr %i.ql, i64 %i.rh ; 2 uses
  %i.ri = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 1
  %wide.load111 = load <2 x i64>, ptr %i.ri, align 1
  %i.rj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load111, ptr %i.rj, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rk = icmp eq i64 %index.next, %n.vec
  br i1 %i.rk, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qz, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %.preheader294.i.preheader255

.preheader294.i.preheader255:                     ; preds = %vector.memcheck, %.preheader294.i.preheader, %middle.block
  %.029.i.i.i.ph = phi ptr [ %i.qm, %vector.memcheck ], [ %i.qm, %.preheader294.i.preheader ], [ %i.rf, %middle.block ]
  %.0.i252.i.i.ph = phi ptr [ %i.ql, %vector.memcheck ], [ %i.ql, %.preheader294.i.preheader ], [ %i.rg, %middle.block ]
  br label %.preheader294.i

.preheader294.i:                                  ; preds = %.preheader294.i.preheader255, %.preheader294.i
  %.029.i.i.i = phi ptr [ %i.rl, %.preheader294.i ], [ %.029.i.i.i.ph, %.preheader294.i.preheader255 ] ; 2 uses
  %.0.i252.i.i = phi ptr [ %i.rm, %.preheader294.i ], [ %.0.i252.i.i.ph, %.preheader294.i.preheader255 ] ; 2 uses
  %.0.i252.i.val.i = load i64, ptr %.0.i252.i.i, align 1
  store i64 %.0.i252.i.val.i, ptr %.029.i.i.i, align 1
  %i.rl = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0.i252.i.i, i64 8
  %i.rn = icmp ult ptr %i.rl, %i.qr
  br i1 %i.rn, label %.preheader294.i, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !138

bb.bt:                                            ; preds = %bb.bs
  %.val21.i = load <2 x i64>, ptr %i.ql, align 1, !tbaa !9
  store <2 x i64> %.val21.i, ptr %i.qm, align 1, !tbaa !9
  %i.ro = icmp slt i64 %.sroa.6167.0.i, 25
  br i1 %i.ro, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i249.i.i = phi ptr [ %i.rp, %bb.bu ], [ %i.rs, %bb.bv ] ; 3 uses
  %.pn.i250.i.i = phi ptr [ %i.ql, %bb.bu ], [ %i.rr, %bb.bv ] ; 2 uses
  %.1.i251.i.i = getelementptr inbounds nuw i8, ptr %.pn.i250.i.i, i64 16
  %.1.i251.i.val.i = load <2 x i64>, ptr %.1.i251.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i251.i.val.i, ptr %.130.i249.i.i, align 1, !tbaa !9
  %i.rq = getelementptr inbounds nuw i8, ptr %.130.i249.i.i, i64 16
  %i.rr = getelementptr inbounds nuw i8, ptr %.pn.i250.i.i, i64 32 ; 2 uses
  %.val20.i = load <2 x i64>, ptr %i.rr, align 1, !tbaa !9
  store <2 x i64> %.val20.i, ptr %i.rq, align 1, !tbaa !9
  %i.rs = getelementptr inbounds nuw i8, ptr %.130.i249.i.i, i64 32 ; 2 uses
  %i.rt = icmp ult ptr %i.rs, %i.qr
  br i1 %i.rt, label %bb.bv, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i: ; preds = %bb.bv, %.preheader294.i, %bb.bo, %middle.block, %bb.bt, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i, %bb.bm, %bb.bj, %bb.bd
  %.0.i209.i.i = phi i64 [ %i.oo, %bb.bd ], [ %i.oh, %middle.block ], [ %i.oh, %bb.bj ], [ %i.oh, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i ], [ %i.oh, %bb.bm ], [ %i.oh, %bb.bt ], [ %i.oh, %bb.bo ], [ %i.oh, %.preheader294.i ], [ %i.oh, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ru = icmp ult i64 %.0.i209.i.i, -119
  br i1 %i.ru, label %bb.bw, label %.thread264.i

bb.bw:                                            ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i
  %i.rv = getelementptr inbounds nuw i8, ptr %.0142.i314.i, i64 %.0.i209.i.i ; 2 uses
  %i.rw = add nsw i32 %.0135.i316.i, -1           ; 2 uses
  %.not179.i.i = icmp eq i32 %i.rw, 0
  br i1 %.not179.i.i, label %.thread260.i, label %bb.ae, !llvm.loop !139

bb.bx:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i
  %i.rx = icmp sgt i32 %.0135.i316.i, 0
  br i1 %i.rx, label %.thread413.i, label %.thread264.i

.thread413.i:                                     ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i, %bb.bx
  %i.ry = phi ptr [ %i.nm, %bb.bx ], [ %i.lb, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.rz = phi i32 [ %i.nn, %bb.bx ], [ %i.ln, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.sa = phi i64 [ %i.no, %bb.bx ], [ %i.ld, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.sb = phi i64 [ %i.mh, %bb.bx ], [ %i.he, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.sc = phi i64 [ %i.mr, %bb.bx ], [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.sd = phi i64 [ %i.lx, %bb.bx ], [ %i.hg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.se = phi ptr [ %i.np, %bb.bx ], [ %i.nt, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 11 uses
  %i.sf = phi ptr [ %i.nr, %bb.bx ], [ %i.nv, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.sg = ptrtoint ptr %i.sf to i64               ; 2 uses
  %i.sh = ptrtoint ptr %i.se to i64               ; 4 uses
  %i.si = sub i64 %i.sg, %i.sh                    ; 9 uses
  %.not181.i.i = icmp eq ptr %i.sf, %i.se
  br i1 %.not181.i.i, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %.thread413.i
  %i.sj = ptrtoint ptr %i.d to i64
  %i.sk = ptrtoint ptr %.0142.i314.i to i64       ; 8 uses
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = icmp ugt i64 %i.si, %i.sl
  br i1 %i.sm, label %.thread264.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sn = sub i64 %i.sk, %i.sh                    ; 2 uses
  %i.so = getelementptr inbounds i8, ptr %.0142.i314.i, i64 %i.si ; 3 uses
  %i.sp = icmp slt i64 %i.si, 8
  %i.sq = icmp sgt i64 %i.sn, -8
  %or.cond.i.i = or i1 %i.sq, %i.sp
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.ca

.preheader.i.i:                                   ; preds = %bb.bz
  %i.sr = icmp sgt i64 %i.si, 0
  br i1 %i.sr, label %iter.check166, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i

iter.check166:                                    ; preds = %.preheader.i.i
  %i.ss = add i64 %i.sk, %i.sg
  %i.st = sub i64 %i.ss, %i.sh
  %i.su = add i64 %i.sk, 1
  %umax146 = tail call i64 @llvm.umax.i64(i64 %i.st, i64 %i.su)
  %i.sv = sub i64 %umax146, %i.sk                 ; 7 uses
  %min.iters.check148.a = icmp ult i64 %i.sv, 4
  %i.sw = sub i64 %i.sh, %i.sk
  %diff.check145 = icmp ugt i64 %i.sw, -32
  %or.cond = or i1 %min.iters.check148.a, %diff.check145
  br i1 %or.cond, label %.lr.ph41.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check166
  %min.iters.check150 = icmp ult i64 %i.sv, 32
  br i1 %min.iters.check150, label %vec.epilog.ph170, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %n.mod.vf152 = and i64 %i.sv, 28
  %n.vec153 = and i64 %i.sv, -32                  ; 5 uses
  %i.sx = getelementptr i8, ptr %.0142.i314.i, i64 %n.vec153
  %i.sy = getelementptr i8, ptr %i.se, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %.0142.i314.i, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.se, i64 %index155 ; 2 uses
  %i.sz = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep157, align 1, !tbaa !9
  %wide.load159 = load <16 x i8>, ptr %i.sz, align 1, !tbaa !9
  %i.ta = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep156, align 1, !tbaa !9
  store <16 x i8> %wide.load159, ptr %i.ta, align 1, !tbaa !9
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.tb = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.tb, label %middle.block161, label %vector.body154, !llvm.loop !140

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.sv, %n.vec153
  br i1 %cmp.n162, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  %min.epilog.iters.check169 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph41.i.i.preheader, label %vec.epilog.ph170, !prof !105

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec172 = and i64 %i.sv, -4                   ; 4 uses
  %i.tc = getelementptr i8, ptr %.0142.i314.i, i64 %n.vec172
  %i.td = getelementptr i8, ptr %i.se, i64 %n.vec172
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph170
  %index174 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph170 ], [ %index.next178, %vec.epilog.vector.body173 ] ; 3 uses
  %next.gep175 = getelementptr i8, ptr %.0142.i314.i, i64 %index174
  %next.gep176 = getelementptr i8, ptr %i.se, i64 %index174
  %wide.load177 = load <4 x i8>, ptr %next.gep176, align 1, !tbaa !9
  store <4 x i8> %wide.load177, ptr %next.gep175, align 1, !tbaa !9
  %index.next178 = add nuw i64 %index174, 4       ; 2 uses
  %i.te = icmp eq i64 %index.next178, %n.vec172
  br i1 %i.te, label %vec.epilog.middle.block179, label %vec.epilog.vector.body173, !llvm.loop !141

vec.epilog.middle.block179:                       ; preds = %vec.epilog.vector.body173
  %cmp.n180 = icmp eq i64 %i.sv, %n.vec172
  br i1 %cmp.n180, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block179
  %.040.i.i.ph = phi ptr [ %.0142.i314.i, %iter.check166 ], [ %i.sx, %vec.epilog.iter.check168 ], [ %i.tc, %vec.epilog.middle.block179 ]
  %.02939.i.i.ph = phi ptr [ %i.se, %iter.check166 ], [ %i.sy, %vec.epilog.iter.check168 ], [ %i.td, %vec.epilog.middle.block179 ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.040.i.i = phi ptr [ %i.th, %.lr.ph41.i.i ], [ %.040.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %.02939.i.i = phi ptr [ %i.tf, %.lr.ph41.i.i ], [ %.02939.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.ui, %.lr.ph.i.i ], [ %.238.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23137.i.i = phi ptr [ %i.ug, %.lr.ph.i.i ], [ %.23137.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.23137.i.i, i64 1
  %i.uh = load i8, ptr %.23137.i.i, align 1, !tbaa !9
  %i.ui = getelementptr inbounds nuw i8, ptr %.238.i.i, i64 1 ; 2 uses
  store i8 %i.uh, ptr %.238.i.i, align 1, !tbaa !9
  %exitcond.not.i.i = icmp eq ptr %i.ui, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph.i.i, !llvm.loop !145

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph41.i.i, %middle.block130, %vec.epilog.middle.block, %middle.block161, %vec.epilog.middle.block179, %.preheader.i.i
  %i.uj = sub i64 %.sroa.085.0.i, %i.si
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, %.thread413.i
  %.sroa.0.2.i.i = phi i64 [ %i.uj, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.sroa.085.0.i, %.thread413.i ] ; 8 uses
  %.2144.i.i = phi ptr [ %i.so, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.0142.i314.i, %.thread413.i ] ; 8 uses
  %.2144.i.i184 = ptrtoaddr ptr %.2144.i.i to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.uk, ptr %i.a, align 8, !tbaa !46
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.um, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.un = getelementptr i8, ptr %.2144.i.i, i64 %.sroa.0.2.i.i ; 7 uses
  %i.uo = add i64 %.sroa.0.2.i.i, %.sroa.687.0.i  ; 9 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uk, i64 %.sroa.0.2.i.i
  %i.uq = sub i64 0, %.sink.i
  %i.ur = getelementptr inbounds i8, ptr %i.un, i64 %i.uq ; 2 uses
  %i.us = icmp ugt i64 %.sroa.0.2.i.i, 65536
  %i.ut = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.2144.i.i, i64 %i.uo
  %i.uv = icmp ugt ptr %i.uu, %i.ut
  %or.cond.i201.i.i = select i1 %i.us, i1 true, i1 %i.uv, !prof !112
  br i1 %or.cond.i201.i.i, label %bb.cf, label %.critedge.i202.i.i, !prof !112

.critedge.i202.i.i:                               ; preds = %bb.ce
  %.val15.i = load <2 x i64>, ptr %i.uk, align 4, !tbaa !9
  store <2 x i64> %.val15.i, ptr %.2144.i.i, align 1, !tbaa !9
  %i.uw = icmp samesign ugt i64 %.sroa.0.2.i.i, 16
  br i1 %i.uw, label %bb.cg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, !prof !60

bb.cf:                                            ; preds = %bb.ce
  store i64 %.sroa.0.2.i.i, ptr %7, align 8, !tbaa !53
  %.sroa.6134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.687.0.i, ptr %.sroa.6134.0..sroa_idx.i, align 8, !tbaa !53
  %.sroa.13139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink.i, ptr %.sroa.13139.0..sroa_idx.i, align 8, !tbaa !53
  %i.ux = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.2144.i.i, ptr noundef %i.d, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ul, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %.loopexit.i

bb.cg:                                            ; preds = %.critedge.i202.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %.2144.i.i, i64 16
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10.i = load <2 x i64>, ptr %i.uz, align 4, !tbaa !9
  store <2 x i64> %.val10.i, ptr %i.uy, align 1, !tbaa !9
  %i.va = icmp samesign ult i64 %.sroa.0.2.i.i, 33
  br i1 %i.va, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vb = getelementptr inbounds nuw i8, ptr %.2144.i.i, i64 32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.130.i255.i.i = phi ptr [ %i.vb, %bb.ch ], [ %i.ve, %bb.ci ] ; 3 uses
  %.pn.i256.i.i = phi ptr [ %i.uz, %bb.ch ], [ %i.vd, %bb.ci ] ; 2 uses
  %.1.i257.i.i = getelementptr inbounds nuw i8, ptr %.pn.i256.i.i, i64 16
  %.1.i257.i.val.i = load <2 x i64>, ptr %.1.i257.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i257.i.val.i, ptr %.130.i255.i.i, align 1, !tbaa !9
  %i.vc = getelementptr inbounds nuw i8, ptr %.130.i255.i.i, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %.pn.i256.i.i, i64 32 ; 2 uses
  %.val9.i = load <2 x i64>, ptr %i.vd, align 1, !tbaa !9
  store <2 x i64> %.val9.i, ptr %i.vc, align 1, !tbaa !9
  %i.ve = getelementptr inbounds nuw i8, ptr %.130.i255.i.i, i64 32 ; 2 uses
  %i.vf = icmp ult ptr %i.ve, %i.un
  br i1 %i.vf, label %bb.ci, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i: ; preds = %bb.ci, %bb.cg, %.critedge.i202.i.i
  store ptr %i.up, ptr %i.a, align 8, !tbaa !46
  %i.vg = ptrtoint ptr %i.un to i64               ; 2 uses
  %i.vh = sub i64 %i.vg, %i.gu                    ; 3 uses
  %i.vi = icmp ugt i64 %.sink.i, %i.vh
  br i1 %i.vi, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i
  %i.vj = sub i64 %i.vg, %i.gv
  %i.vk = icmp ugt i64 %.sink.i, %i.vj
  br i1 %i.vk, label %.loopexit.thread.i, label %bb.ck, !prof !60

.loopexit.thread.i:                               ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread264.i

bb.ck:                                            ; preds = %bb.cj
  %i.vl = ptrtoint ptr %i.ur to i64
  %i.vm = sub i64 %i.vl, %i.gu                    ; 3 uses
  %i.vn = getelementptr inbounds i8, ptr %i.n, i64 %i.vm ; 2 uses
  %i.vo = add nsw i64 %i.vm, %.sroa.687.0.i       ; 2 uses
  %.not.i204.i.i = icmp sgt i64 %i.vo, 0
  br i1 %.not.i204.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.un, ptr align 1 %i.vn, i64 %.sroa.687.0.i, i1 false)
  br label %.loopexit.i

bb.cm:                                            ; preds = %bb.ck
  %gepdiff.i205.i.i = sub nsw i64 0, %i.vm        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.un, ptr align 1 %i.vn, i64 %gepdiff.i205.i.i, i1 false)
  %i.vp = getelementptr inbounds nuw i8, ptr %i.un, i64 %gepdiff.i205.i.i
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i
  %.sroa.6134.0.i = phi i64 [ %i.vo, %bb.cm ], [ %.sroa.687.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 5 uses
  %.0200.i = phi ptr [ %i.j, %bb.cm ], [ %i.ur, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 9 uses
  %.0199.i = phi ptr [ %i.vp, %bb.cm ], [ %i.un, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 12 uses
  %i.vq = icmp ugt i64 %.sink.i, 15
  br i1 %i.vq, label %bb.co, label %bb.cr, !prof !97

bb.co:                                            ; preds = %bb.cn
  %i.vr = getelementptr inbounds i8, ptr %.0199.i, i64 %.sroa.6134.0.i
  %.val12.i = load <2 x i64>, ptr %.0200.i, align 1, !tbaa !9
  store <2 x i64> %.val12.i, ptr %.0199.i, align 1, !tbaa !9
  %i.vs = icmp slt i64 %.sroa.6134.0.i, 17
  br i1 %i.vs, label %.loopexit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vt = getelementptr inbounds nuw i8, ptr %.0199.i, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.130.i262.i.i = phi ptr [ %i.vt, %bb.cp ], [ %i.vw, %bb.cq ] ; 3 uses
  %.pn.i263.i.i = phi ptr [ %.0200.i, %bb.cp ], [ %i.vv, %bb.cq ] ; 2 uses
  %.1.i264.i.i = getelementptr inbounds nuw i8, ptr %.pn.i263.i.i, i64 16
  %.1.i264.i.val.i = load <2 x i64>, ptr %.1.i264.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i264.i.val.i, ptr %.130.i262.i.i, align 1, !tbaa !9
  %i.vu = getelementptr inbounds nuw i8, ptr %.130.i262.i.i, i64 16
  %i.vv = getelementptr inbounds nuw i8, ptr %.pn.i263.i.i, i64 32 ; 2 uses
  %.val11.i = load <2 x i64>, ptr %i.vv, align 1, !tbaa !9
  store <2 x i64> %.val11.i, ptr %i.vu, align 1, !tbaa !9
  %i.vw = getelementptr inbounds nuw i8, ptr %.130.i262.i.i, i64 32 ; 2 uses
  %i.vx = icmp ult ptr %i.vw, %i.vr
  br i1 %i.vx, label %bb.cq, label %.loopexit.i, !llvm.loop !108

bb.cr:                                            ; preds = %bb.cn
  %i.vy = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.vy, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !3
  %i.wb = load i8, ptr %.0200.i, align 1, !tbaa !9
  store i8 %i.wb, ptr %.0199.i, align 1, !tbaa !9
  %i.wc = getelementptr inbounds nuw i8, ptr %.0200.i, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !9
  %i.we = getelementptr inbounds nuw i8, ptr %.0199.i, i64 1
  store i8 %i.wd, ptr %i.we, align 1, !tbaa !9
  %i.wf = getelementptr inbounds nuw i8, ptr %.0200.i, i64 2
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !9
  %i.wh = getelementptr inbounds nuw i8, ptr %.0199.i, i64 2
  store i8 %i.wg, ptr %i.wh, align 1, !tbaa !9
  %i.wi = getelementptr inbounds nuw i8, ptr %.0200.i, i64 3
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !9
  %i.wk = getelementptr inbounds nuw i8, ptr %.0199.i, i64 3
  store i8 %i.wj, ptr %i.wk, align 1, !tbaa !9
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !3
  %i.wn = zext i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %.0200.i, i64 %i.wn ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.0199.i, i64 4
  %.val30.i = load i32, ptr %i.wo, align 1
  store i32 %.val30.i, ptr %i.wp, align 1
  %i.wq = sext i32 %i.wa to i64
  %i.wr = sub nsw i64 0, %i.wq
  %i.ws = getelementptr inbounds i8, ptr %i.wo, i64 %i.wr
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i

bb.ct:                                            ; preds = %bb.cr
  %.val33.i = load i64, ptr %.0200.i, align 1
  store i64 %.val33.i, ptr %.0199.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i: ; preds = %bb.ct, %bb.cs
  %.1201.i = phi ptr [ %i.ws, %bb.cs ], [ %.0200.i, %bb.ct ] ; 2 uses
  %.1201.i186 = ptrtoaddr ptr %.1201.i to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %.1201.i, i64 8 ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.0199.i, i64 8 ; 6 uses
  %i.wv = icmp ugt i64 %.sroa.6134.0.i, 8
  br i1 %i.wv, label %bb.cu, label %.loopexit.i

bb.cu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i
  %i.ww = ptrtoint ptr %i.wu to i64
  %i.wx = ptrtoint ptr %i.wt to i64
  %i.wy = sub i64 %i.ww, %i.wx
  %i.wz = getelementptr i8, ptr %.0199.i, i64 %.sroa.6134.0.i ; 2 uses
  %i.xa = icmp slt i64 %i.wy, 16
  br i1 %i.xa, label %.preheader290.i.preheader, label %bb.cv

.preheader290.i.preheader:                        ; preds = %bb.cu
  %14 = tail call i64 @llvm.umin.i64(i64 %.sink.i, i64 %i.vh)
  %umin188 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.vh) ; 3 uses
  %i.xb = add i64 %.sroa.687.0.i, %i.gu
  %15 = add i64 %i.xb, %14
  %i.xc = add i64 %15, %umin188
  %i.xd = sub i64 %i.xc, %.sink.i
  %i.xe = add i64 %umin188, %i.gu
  %i.xf = add i64 %i.xe, 16
  %umax190 = tail call i64 @llvm.umax.i64(i64 %i.xd, i64 %i.xf)
  %i.xg = add i64 %umin188, %i.gu
  %16 = sub i64 %umax190, %i.xg
  %17 = add i64 %16, -9                           ; 2 uses
  %i.xh = lshr i64 %17, 3
  %i.xi = add nuw nsw i64 %i.xh, 1                ; 2 uses
  %min.iters.check192 = icmp ult i64 %17, 184
  br i1 %min.iters.check192, label %.preheader290.i.preheader251, label %vector.memcheck183

vector.memcheck183:                               ; preds = %.preheader290.i.preheader
  %i.xj = add i64 %.sroa.0.2.i.i, %.2144.i.i184
  %i.xk = sub i64 %i.xj, %i.gu
  %umax185 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.xk)
  %i.xl = add i64 %umax185, %i.gu
  %i.xm = sub i64 %.1201.i186, %i.xl
  %diff.check187 = icmp ugt i64 %i.xm, -32
  br i1 %diff.check187, label %.preheader290.i.preheader251, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck183
  %n.vec195 = and i64 %i.xi, 4611686018427387900  ; 3 uses
  %i.xn = shl i64 %n.vec195, 3                    ; 2 uses
  %i.xo = getelementptr i8, ptr %i.wu, i64 %i.xn
  %i.xp = getelementptr i8, ptr %i.wt, i64 %i.xn
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %i.xq = shl i64 %index197, 3                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.wu, i64 %i.xq ; 2 uses
  %next.gep199 = getelementptr i8, ptr %i.wt, i64 %i.xq ; 2 uses
  %i.xr = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load200 = load <2 x i64>, ptr %next.gep199, align 1
  %wide.load201 = load <2 x i64>, ptr %i.xr, align 1
  %i.xs = getelementptr i8, ptr %next.gep198, i64 16
  store <2 x i64> %wide.load200, ptr %next.gep198, align 1
  store <2 x i64> %wide.load201, ptr %i.xs, align 1
  %index.next202 = add nuw i64 %index197, 4       ; 2 uses
  %i.xt = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.xt, label %middle.block203, label %vector.body196, !llvm.loop !146

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %i.xi, %n.vec195
  br i1 %cmp.n204, label %.loopexit.i, label %.preheader290.i.preheader251

.preheader290.i.preheader251:                     ; preds = %vector.memcheck183, %.preheader290.i.preheader, %middle.block203
  %.029.i272.i.i.ph = phi ptr [ %i.wu, %vector.memcheck183 ], [ %i.wu, %.preheader290.i.preheader ], [ %i.xo, %middle.block203 ]
  %.0.i273.i.i.ph = phi ptr [ %i.wt, %vector.memcheck183 ], [ %i.wt, %.preheader290.i.preheader ], [ %i.xp, %middle.block203 ]
  br label %.preheader290.i

.preheader290.i:                                  ; preds = %.preheader290.i.preheader251, %.preheader290.i
  %.029.i272.i.i = phi ptr [ %i.xu, %.preheader290.i ], [ %.029.i272.i.i.ph, %.preheader290.i.preheader251 ] ; 2 uses
  %.0.i273.i.i = phi ptr [ %i.xv, %.preheader290.i ], [ %.0.i273.i.i.ph, %.preheader290.i.preheader251 ] ; 2 uses
  %.0.i273.i.val.i = load i64, ptr %.0.i273.i.i, align 1
  store i64 %.0.i273.i.val.i, ptr %.029.i272.i.i, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.029.i272.i.i, i64 8 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.0.i273.i.i, i64 8
  %i.xw = icmp ult ptr %i.xu, %i.wz
  br i1 %i.xw, label %.preheader290.i, label %.loopexit.i, !llvm.loop !147

bb.cv:                                            ; preds = %bb.cu
  %.val14.i = load <2 x i64>, ptr %i.wt, align 1, !tbaa !9
  store <2 x i64> %.val14.i, ptr %i.wu, align 1, !tbaa !9
  %i.xx = icmp slt i64 %.sroa.6134.0.i, 25
  br i1 %i.xx, label %.loopexit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xy = getelementptr inbounds nuw i8, ptr %.0199.i, i64 24
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.130.i269.i.i = phi ptr [ %i.xy, %bb.cw ], [ %i.yb, %bb.cx ] ; 3 uses
  %.pn.i270.i.i = phi ptr [ %i.wt, %bb.cw ], [ %i.ya, %bb.cx ] ; 2 uses
  %.1.i271.i.i = getelementptr inbounds nuw i8, ptr %.pn.i270.i.i, i64 16
  %.1.i271.i.val.i = load <2 x i64>, ptr %.1.i271.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i271.i.val.i, ptr %.130.i269.i.i, align 1, !tbaa !9
  %i.xz = getelementptr inbounds nuw i8, ptr %.130.i269.i.i, i64 16
  %i.ya = getelementptr inbounds nuw i8, ptr %.pn.i270.i.i, i64 32 ; 2 uses
  %.val13.i = load <2 x i64>, ptr %i.ya, align 1, !tbaa !9
  store <2 x i64> %.val13.i, ptr %i.xz, align 1, !tbaa !9
  %i.yb = getelementptr inbounds nuw i8, ptr %.130.i269.i.i, i64 32 ; 2 uses
  %i.yc = icmp ult ptr %i.yb, %i.wz
  br i1 %i.yc, label %bb.cx, label %.loopexit.i, !llvm.loop !108

.loopexit.i:                                      ; preds = %bb.cx, %.preheader290.i, %bb.cq, %middle.block203, %bb.cv, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i, %bb.co, %bb.cl, %bb.cf
  %.0.i203.i.i = phi i64 [ %i.ux, %bb.cf ], [ %i.uo, %bb.cq ], [ %i.uo, %bb.cl ], [ %i.uo, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i ], [ %i.uo, %bb.co ], [ %i.uo, %middle.block203 ], [ %i.uo, %bb.cv ], [ %i.uo, %.preheader290.i ], [ %i.uo, %bb.cx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.yd = icmp ult i64 %.0.i203.i.i, -119
  %i.ye = getelementptr inbounds nuw i8, ptr %.2144.i.i, i64 %.0.i203.i.i ; 2 uses
  %i.yf = add nsw i32 %.0135.i316.i, -1           ; 2 uses
  br i1 %i.yd, label %bb.cy, label %.thread264.i

bb.cy:                                            ; preds = %.loopexit.i
  %.not281.i = icmp eq i32 %i.yf, 0
  br i1 %.not281.i, label %.thread260.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !148
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !149
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !151
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !152
  %.sroa.6103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.yg = add i64 %i.gu, 16
  br label %bb.da

bb.da:                                            ; preds = %bb.er, %bb.cz
  %i.yh = phi ptr [ %i.ry, %bb.cz ], [ %i.aev, %bb.er ] ; 8 uses
  %i.yi = phi i32 [ %i.rz, %bb.cz ], [ %i.aew, %bb.er ] ; 5 uses
  %i.yj = phi i64 [ %i.sa, %bb.cz ], [ %i.aex, %bb.er ] ; 6 uses
  %i.yk = phi i64 [ %i.jv, %bb.cz ], [ %i.abe, %bb.er ] ; 2 uses
  %i.yl = phi i64 [ %.sink492.i, %bb.cz ], [ %.sink494.i, %bb.er ] ; 6 uses
  %i.ym = phi i64 [ %.sink.i, %bb.cz ], [ %.sink493.i, %bb.er ] ; 6 uses
  %i.yn = phi i64 [ %i.sb, %bb.cz ], [ %i.aey, %bb.er ] ; 2 uses
  %i.yo = phi i64 [ %i.sc, %bb.cz ], [ %i.aez, %bb.er ] ; 2 uses
  %i.yp = phi i64 [ %i.sd, %bb.cz ], [ %i.afa, %bb.er ] ; 2 uses
  %.4139.i319.i = phi i32 [ %i.yf, %bb.cz ], [ %i.ait, %bb.er ] ; 2 uses
  %.7149.i317.i = phi ptr [ %i.ye, %bb.cz ], [ %i.ais, %bb.er ] ; 8 uses
  %.7149.i317.i208 = ptrtoaddr ptr %.7149.i317.i to i64
  %.not285.i = icmp eq i32 %.4139.i319.i, 1
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.yp ; 4 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.yn ; 4 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.yo ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !49, !noalias !153
  %i.yv = zext i32 %i.yu to i64                   ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !49, !noalias !153 ; 2 uses
  %i.yy = zext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !49, !noalias !153 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yq, i64 2
  %i.zc = load i8, ptr %i.zb, align 2, !tbaa !66, !noalias !153 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yr, i64 2
  %i.ze = load i8, ptr %i.zd, align 2, !tbaa !66, !noalias !153 ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ys, i64 2
  %i.zg = load i8, ptr %i.zf, align 2, !tbaa !66, !noalias !153 ; 4 uses
  %i.zh = zext i8 %i.zc to i32                    ; 2 uses
  %i.zi = zext i8 %i.ze to i32                    ; 2 uses
  %i.zj = add i8 %i.ze, %i.zc
  %i.zk = add i8 %i.zj, %i.zg
  %i.zl = load i16, ptr %i.yq, align 4, !tbaa !65, !noalias !153
  %i.zm = load i16, ptr %i.yr, align 4, !tbaa !65, !noalias !153
  %i.zn = load i16, ptr %i.ys, align 4, !tbaa !65, !noalias !153
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yq, i64 3
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.zq = zext i8 %i.zp to i32
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yr, i64 3
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.zt = zext i8 %i.zs to i32
  %i.zu = getelementptr inbounds nuw i8, ptr %i.ys, i64 3
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.zw = zext i8 %i.zv to i32
  %i.zx = icmp ugt i8 %i.zg, 1
  br i1 %i.zx, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.zy = zext i8 %i.zg to i32                    ; 2 uses
  %i.zz = and i32 %i.yi, 63
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = shl i64 %i.yj, %i.aaa
  %i.aac = sub nsw i32 0, %i.zy
  %i.aad = and i32 %i.aac, 63
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = lshr i64 %i.aab, %i.aae
  %i.aag = add i32 %i.yi, %i.zy                   ; 2 uses
  store i32 %i.aag, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.aah = zext i32 %i.za to i64
  %i.aai = add i64 %i.aaf, %i.aah
  store i64 %i.yl, ptr %i.aa, align 8, !tbaa !53, !noalias !153
  br label %bb.dh

bb.dc:                                            ; preds = %bb.da
  %i.aaj = icmp eq i32 %i.yx, 0                   ; 3 uses
  %i.aak = icmp eq i8 %i.zg, 0
  br i1 %i.aak, label %bb.dd, label %bb.de, !prof !97

bb.dd:                                            ; preds = %bb.dc
  %i.aal = select i1 %i.aaj, i64 %i.yl, i64 %i.ym
  %i.aam = select i1 %i.aaj, i64 %i.ym, i64 %i.yl
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.aan = zext i1 %i.aaj to i32
  %i.aao = add i32 %i.za, %i.aan
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = and i32 %i.yi, 63
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = shl i64 %i.yj, %i.aar
  %i.aat = lshr i64 %i.aas, 63
  %i.aau = add i32 %i.yi, 1                       ; 3 uses
  store i32 %i.aau, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.aav = add nuw nsw i64 %i.aat, %i.aap         ; 3 uses
  %i.aaw = icmp eq i64 %i.aav, 3
  br i1 %i.aaw, label %.thread243.i, label %bb.df

.thread243.i:                                     ; preds = %bb.de
  %i.aax = add i64 %i.ym, -1                      ; 2 uses
  %.not.i.i244.i = icmp eq i64 %i.aax, 0
  %i.aay = select i1 %.not.i.i244.i, i64 -1, i64 %i.aax
  br label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aav
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !53, !noalias !153 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aba, 0
  %i.abb = select i1 %.not.i.i.i, i64 -1, i64 %i.aba ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = sub nsw i64 0, %i.aej
  %i.ael = getelementptr inbounds i8, ptr %i.ack, i64 %i.aek
  %i.aem = icmp ult ptr %i.ael, %3
  %i.aen = ptrtoint ptr %i.ack to i64
  %i.aeo = sub i64 %i.aen, %i.gw
  %i.aep = trunc i64 %i.aeo to i32
  %.021.i230.i.i = select i1 %i.aem, i32 %i.aep, i32 %i.aei ; 2 uses
  %i.aeq = zext i32 %.021.i230.i.i to i64
  %i.aer = sub nsw i64 0, %i.aeq
  %i.aes = getelementptr inbounds i8, ptr %i.ack, i64 %i.aer ; 3 uses
  store ptr %i.aes, ptr %i.cz, align 8, !tbaa !86, !noalias !153
  %i.aet = shl i32 %.021.i230.i.i, 3
  %i.aeu = sub i32 %i.adr, %i.aet                 ; 2 uses
  store i32 %i.aeu, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %.val8.i = load i64, ptr %i.aes, align 1, !tbaa !53 ; 2 uses
  store i64 %.val8.i, ptr %9, align 8, !tbaa !87, !noalias !153
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i: ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.dr
  %i.aev = phi ptr [ %i.ack, %bb.dw ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dt ], [ %i.aef, %bb.dv ], [ %i.aes, %bb.dx ], [ %i.ack, %bb.dr ] ; 2 uses
  %i.aew = phi i32 [ %i.adr, %bb.dw ], [ %i.adr, %bb.dt ], [ %i.aeg, %bb.dv ], [ %i.aeu, %bb.dx ], [ %i.acw, %bb.dr ] ; 2 uses
  %i.aex = phi i64 [ %i.acm, %bb.dw ], [ %i.acm, %bb.dt ], [ %.val.i79.i, %bb.dv ], [ %.val8.i, %bb.dx ], [ %i.acm, %bb.dr ]
  %i.aey = phi i64 [ %i.adq, %bb.dw ], [ %i.adq, %bb.dt ], [ %i.adq, %bb.dv ], [ %i.adq, %bb.dx ], [ %i.yn, %bb.dr ]
  %i.aez = phi i64 [ %i.aea, %bb.dw ], [ %i.aea, %bb.dt ], [ %i.aea, %bb.dv ], [ %i.aea, %bb.dx ], [ %i.yo, %bb.dr ]
  %i.afa = phi i64 [ %i.adg, %bb.dw ], [ %i.adg, %bb.dt ], [ %i.adg, %bb.dv ], [ %i.adg, %bb.dx ], [ %i.yp, %bb.dr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.afb = getelementptr i8, ptr %.7149.i317.i, i64 %.sroa.0.0.i ; 7 uses
  %i.afc = add i64 %.sroa.0.0.i, %.sroa.6.0.i     ; 9 uses
  %i.afd = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %.sroa.0.0.i ; 2 uses
  %i.aff = sub i64 0, %.sink493.i
  %i.afg = getelementptr inbounds i8, ptr %i.afb, i64 %i.aff ; 2 uses
  %i.afh = icmp ugt ptr %i.afe, %i.ul
  %i.afi = getelementptr inbounds nuw i8, ptr %.7149.i317.i, i64 %i.afc
  %i.afj = icmp ugt ptr %i.afi, %i.ut
  %or.cond.i.i.i = select i1 %i.afh, i1 true, i1 %i.afj, !prof !112
  br i1 %or.cond.i.i.i, label %bb.dy, label %.critedge.i.i.i, !prof !112

.critedge.i.i.i:                                  ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  %.val28.i = load <2 x i64>, ptr %i.afd, align 1, !tbaa !9
  store <2 x i64> %.val28.i, ptr %.7149.i317.i, align 1, !tbaa !9
  %i.afk = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.afk, label %bb.dz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, !prof !60

bb.dy:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  store i64 %.sroa.0.0.i, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.6.0.i, ptr %.sroa.6103.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink493.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !53
  %i.afl = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7149.i317.i, ptr noundef %i.d, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ul, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.dz:                                            ; preds = %.critedge.i.i.i
  %i.afm = getelementptr inbounds nuw i8, ptr %.7149.i317.i, i64 16
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afd, i64 16 ; 2 uses
  %i.afo = add i64 %.sroa.0.0.i, -16
  %.val23.i = load <2 x i64>, ptr %i.afn, align 1, !tbaa !9
  store <2 x i64> %.val23.i, ptr %i.afm, align 1, !tbaa !9
  %i.afp = icmp slt i64 %i.afo, 17
  br i1 %i.afp, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.afq = getelementptr inbounds nuw i8, ptr %.7149.i317.i, i64 32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %bb.ea
  %.130.i276.i.i = phi ptr [ %i.afq, %bb.ea ], [ %i.aft, %bb.eb ] ; 3 uses
  %.pn.i277.i.i = phi ptr [ %i.afn, %bb.ea ], [ %i.afs, %bb.eb ] ; 2 uses
  %.1.i278.i.i = getelementptr inbounds nuw i8, ptr %.pn.i277.i.i, i64 16
  %.1.i278.i.val.i = load <2 x i64>, ptr %.1.i278.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i278.i.val.i, ptr %.130.i276.i.i, align 1, !tbaa !9
  %i.afr = getelementptr inbounds nuw i8, ptr %.130.i276.i.i, i64 16
  %i.afs = getelementptr inbounds nuw i8, ptr %.pn.i277.i.i, i64 32 ; 2 uses
  %.val22.i = load <2 x i64>, ptr %i.afs, align 1, !tbaa !9
  store <2 x i64> %.val22.i, ptr %i.afr, align 1, !tbaa !9
  %i.aft = getelementptr inbounds nuw i8, ptr %.130.i276.i.i, i64 32 ; 2 uses
  %i.afu = icmp ult ptr %i.aft, %i.afb
  br i1 %i.afu, label %bb.eb, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i: ; preds = %bb.eb, %bb.dz, %.critedge.i.i.i
  store ptr %i.afe, ptr %i.a, align 8, !tbaa !46
  %i.afv = ptrtoint ptr %i.afb to i64             ; 2 uses
  %i.afw = sub i64 %i.afv, %i.gu                  ; 3 uses
  %i.afx = icmp ugt i64 %.sink493.i, %i.afw
  br i1 %i.afx, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i
  %i.afy = sub i64 %i.afv, %i.gv
  %i.afz = icmp ugt i64 %.sink493.i, %i.afy
  br i1 %i.afz, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, label %bb.ed, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread264.i

bb.ed:                                            ; preds = %bb.ec
  %i.aga = ptrtoint ptr %i.afg to i64
  %i.agb = sub i64 %i.aga, %i.gu                  ; 3 uses
  %i.agc = getelementptr inbounds i8, ptr %i.n, i64 %i.agb ; 2 uses
  %i.agd = add nsw i64 %i.agb, %.sroa.6.0.i       ; 2 uses
  %.not.i200.i.i = icmp sgt i64 %i.agd, 0
  br i1 %.not.i200.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afb, ptr align 1 %i.agc, i64 %.sroa.6.0.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.ef:                                            ; preds = %bb.ed
  %gepdiff.i.i.i = sub nsw i64 0, %i.agb          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afb, ptr align 1 %i.agc, i64 %gepdiff.i.i.i, i1 false)
  %i.age = getelementptr inbounds nuw i8, ptr %i.afb, i64 %gepdiff.i.i.i
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i
  %.sroa.6103.0.i = phi i64 [ %i.agd, %bb.ef ], [ %.sroa.6.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 5 uses
  %.0203.i = phi ptr [ %i.j, %bb.ef ], [ %i.afg, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 9 uses
  %.0202.i = phi ptr [ %i.age, %bb.ef ], [ %i.afb, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 12 uses
  %i.agf = icmp ugt i64 %.sink493.i, 15
  br i1 %i.agf, label %bb.eh, label %bb.ek, !prof !97

bb.eh:                                            ; preds = %bb.eg
  %i.agg = getelementptr inbounds i8, ptr %.0202.i, i64 %.sroa.6103.0.i
  %.val25.i = load <2 x i64>, ptr %.0203.i, align 1, !tbaa !9
  store <2 x i64> %.val25.i, ptr %.0202.i, align 1, !tbaa !9
  %i.agh = icmp slt i64 %.sroa.6103.0.i, 17
  br i1 %i.agh, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.agi = getelementptr inbounds nuw i8, ptr %.0202.i, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %bb.ei
  %.130.i283.i.i = phi ptr [ %i.agi, %bb.ei ], [ %i.agl, %bb.ej ] ; 3 uses
  %.pn.i284.i.i = phi ptr [ %.0203.i, %bb.ei ], [ %i.agk, %bb.ej ] ; 2 uses
  %.1.i285.i.i = getelementptr inbounds nuw i8, ptr %.pn.i284.i.i, i64 16
  %.1.i285.i.val.i = load <2 x i64>, ptr %.1.i285.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i285.i.val.i, ptr %.130.i283.i.i, align 1, !tbaa !9
  %i.agj = getelementptr inbounds nuw i8, ptr %.130.i283.i.i, i64 16
  %i.agk = getelementptr inbounds nuw i8, ptr %.pn.i284.i.i, i64 32 ; 2 uses
  %.val24.i = load <2 x i64>, ptr %i.agk, align 1, !tbaa !9
  store <2 x i64> %.val24.i, ptr %i.agj, align 1, !tbaa !9
  %i.agl = getelementptr inbounds nuw i8, ptr %.130.i283.i.i, i64 32 ; 2 uses
  %i.agm = icmp ult ptr %i.agl, %i.agg
  br i1 %i.agm, label %bb.ej, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

bb.ek:                                            ; preds = %bb.eg
  %i.agn = icmp samesign ult i64 %.sink493.i, 8
  br i1 %i.agn, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink493.i
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !3
  %i.agq = load i8, ptr %.0203.i, align 1, !tbaa !9
  store i8 %i.agq, ptr %.0202.i, align 1, !tbaa !9
  %i.agr = getelementptr inbounds nuw i8, ptr %.0203.i, i64 1
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !9
  %i.agt = getelementptr inbounds nuw i8, ptr %.0202.i, i64 1
  store i8 %i.ags, ptr %i.agt, align 1, !tbaa !9
  %i.agu = getelementptr inbounds nuw i8, ptr %.0203.i, i64 2
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !9
  %i.agw = getelementptr inbounds nuw i8, ptr %.0202.i, i64 2
  store i8 %i.agv, ptr %i.agw, align 1, !tbaa !9
  %i.agx = getelementptr inbounds nuw i8, ptr %.0203.i, i64 3
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !9
  %i.agz = getelementptr inbounds nuw i8, ptr %.0202.i, i64 3
  store i8 %i.agy, ptr %i.agz, align 1, !tbaa !9
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink493.i
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !3
  %i.ahc = zext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0203.i, i64 %i.ahc ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0202.i, i64 4
  %.val32.i = load i32, ptr %i.ahd, align 1
  store i32 %.val32.i, ptr %i.ahe, align 1
  %i.ahf = sext i32 %i.agp to i64
  %i.ahg = sub nsw i64 0, %i.ahf
  %i.ahh = getelementptr inbounds i8, ptr %i.ahd, i64 %i.ahg
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i

bb.em:                                            ; preds = %bb.ek
  %.val34.i = load i64, ptr %.0203.i, align 1
  store i64 %.val34.i, ptr %.0202.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i: ; preds = %bb.em, %bb.el
  %.1204.i = phi ptr [ %i.ahh, %bb.el ], [ %.0203.i, %bb.em ] ; 2 uses
  %.1204.i210 = ptrtoaddr ptr %.1204.i to i64
  %i.ahi = getelementptr inbounds nuw i8, ptr %.1204.i, i64 8 ; 7 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0202.i, i64 8 ; 6 uses
  %i.ahk = icmp ugt i64 %.sroa.6103.0.i, 8
  br i1 %i.ahk, label %bb.en, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.en:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = ptrtoint ptr %i.ahi to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  %i.aho = getelementptr i8, ptr %.0202.i, i64 %.sroa.6103.0.i ; 2 uses
  %i.ahp = icmp slt i64 %i.ahn, 16
  br i1 %i.ahp, label %.preheader287.i.preheader, label %bb.eo

.preheader287.i.preheader:                        ; preds = %bb.en
  %18 = tail call i64 @llvm.umin.i64(i64 %.sink493.i, i64 %i.afw)
  %umin212 = tail call i64 @llvm.umax.i64(i64 %.sink493.i, i64 %i.afw) ; 3 uses
  %i.ahq = add i64 %.sroa.6.0.i, %i.gu
  %19 = add i64 %i.ahq, %18
  %i.ahr = add i64 %19, %umin212
  %i.ahs = sub i64 %i.ahr, %.sink493.i
  %i.aht = add i64 %umin212, %i.yg
  %umax214 = tail call i64 @llvm.umax.i64(i64 %i.ahs, i64 %i.aht)
  %i.ahu = add i64 %umin212, %i.gu
  %20 = sub i64 %umax214, %i.ahu
  %21 = add i64 %20, -9                           ; 2 uses
  %i.ahv = lshr i64 %21, 3
  %i.ahw = add nuw nsw i64 %i.ahv, 1              ; 2 uses
  %min.iters.check216 = icmp ult i64 %21, 72
  br i1 %min.iters.check216, label %.preheader287.i.preheader234, label %vector.memcheck207

vector.memcheck207:                               ; preds = %.preheader287.i.preheader
  %i.ahx = sub i64 %.sroa.0.0.i, %i.gu
  %i.ahy = add i64 %i.ahx, %.7149.i317.i208
  %umax209 = tail call i64 @llvm.umax.i64(i64 %.sink493.i, i64 %i.ahy)
  %i.ahz = add i64 %umax209, %i.gu
  %i.aia = sub i64 %.1204.i210, %i.ahz
  %diff.check211 = icmp ugt i64 %i.aia, -32
  br i1 %diff.check211, label %.preheader287.i.preheader234, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck207
  %n.vec219 = and i64 %i.ahw, 4611686018427387900 ; 3 uses
  %i.aib = shl i64 %n.vec219, 3                   ; 2 uses
  %i.aic = getelementptr i8, ptr %i.ahj, i64 %i.aib
  %i.aid = getelementptr i8, ptr %i.ahi, i64 %i.aib
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next226, %vector.body220 ] ; 2 uses
  %i.aie = shl i64 %index221, 3                   ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.ahj, i64 %i.aie ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.ahi, i64 %i.aie ; 2 uses
  %i.aif = getelementptr i8, ptr %next.gep223, i64 16
  %wide.load224 = load <2 x i64>, ptr %next.gep223, align 1
  %wide.load225 = load <2 x i64>, ptr %i.aif, align 1
  %i.aig = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x i64> %wide.load224, ptr %next.gep222, align 1
  store <2 x i64> %wide.load225, ptr %i.aig, align 1
  %index.next226 = add nuw i64 %index221, 4       ; 2 uses
  %i.aih = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.aih, label %middle.block227, label %vector.body220, !llvm.loop !156

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %i.ahw, %n.vec219
  br i1 %cmp.n228, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %.preheader287.i.preheader234

.preheader287.i.preheader234:                     ; preds = %vector.memcheck207, %.preheader287.i.preheader, %middle.block227
  %.029.i293.i.i.ph = phi ptr [ %i.ahj, %vector.memcheck207 ], [ %i.ahj, %.preheader287.i.preheader ], [ %i.aic, %middle.block227 ]
  %.0.i294.i.i.ph = phi ptr [ %i.ahi, %vector.memcheck207 ], [ %i.ahi, %.preheader287.i.preheader ], [ %i.aid, %middle.block227 ]
  br label %.preheader287.i

.preheader287.i:                                  ; preds = %.preheader287.i.preheader234, %.preheader287.i
  %.029.i293.i.i = phi ptr [ %i.aii, %.preheader287.i ], [ %.029.i293.i.i.ph, %.preheader287.i.preheader234 ] ; 2 uses
  %.0.i294.i.i = phi ptr [ %i.aij, %.preheader287.i ], [ %.0.i294.i.i.ph, %.preheader287.i.preheader234 ] ; 2 uses
  %.0.i294.i.val.i = load i64, ptr %.0.i294.i.i, align 1
  store i64 %.0.i294.i.val.i, ptr %.029.i293.i.i, align 1
  %i.aii = getelementptr inbounds nuw i8, ptr %.029.i293.i.i, i64 8 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.0.i294.i.i, i64 8
  %i.aik = icmp ult ptr %i.aii, %i.aho
  br i1 %i.aik, label %.preheader287.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !157

bb.eo:                                            ; preds = %bb.en
  %.val27.i = load <2 x i64>, ptr %i.ahi, align 1, !tbaa !9
  store <2 x i64> %.val27.i, ptr %i.ahj, align 1, !tbaa !9
  %i.ail = icmp slt i64 %.sroa.6103.0.i, 25
  br i1 %i.ail, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aim = getelementptr inbounds nuw i8, ptr %.0202.i, i64 24
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.130.i290.i.i = phi ptr [ %i.aim, %bb.ep ], [ %i.aip, %bb.eq ] ; 3 uses
  %.pn.i291.i.i = phi ptr [ %i.ahi, %bb.ep ], [ %i.aio, %bb.eq ] ; 2 uses
  %.1.i292.i.i = getelementptr inbounds nuw i8, ptr %.pn.i291.i.i, i64 16
  %.1.i292.i.val.i = load <2 x i64>, ptr %.1.i292.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i292.i.val.i, ptr %.130.i290.i.i, align 1, !tbaa !9
  %i.ain = getelementptr inbounds nuw i8, ptr %.130.i290.i.i, i64 16
  %i.aio = getelementptr inbounds nuw i8, ptr %.pn.i291.i.i, i64 32 ; 2 uses
  %.val26.i = load <2 x i64>, ptr %i.aio, align 1, !tbaa !9
  store <2 x i64> %.val26.i, ptr %i.ain, align 1, !tbaa !9
  %i.aip = getelementptr inbounds nuw i8, ptr %.130.i290.i.i, i64 32 ; 2 uses
  %i.aiq = icmp ult ptr %i.aip, %i.aho
  br i1 %i.aiq, label %bb.eq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i: ; preds = %bb.eq, %.preheader287.i, %bb.ej, %middle.block227, %bb.eo, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i, %bb.eh, %bb.ee, %bb.dy
  %.0.i.i.i = phi i64 [ %i.afl, %bb.dy ], [ %i.afc, %middle.block227 ], [ %i.afc, %bb.ee ], [ %i.afc, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i ], [ %i.afc, %bb.eh ], [ %i.afc, %bb.eo ], [ %i.afc, %bb.ej ], [ %i.afc, %.preheader287.i ], [ %i.afc, %bb.eq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.air = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.air, label %bb.er, label %.thread264.i

bb.er:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i
  %i.ais = getelementptr inbounds nuw i8, ptr %.7149.i317.i, i64 %.0.i.i.i ; 2 uses
  %i.ait = add nsw i32 %.4139.i319.i, -1          ; 2 uses
  %.not183.i.i = icmp eq i32 %i.ait, 0
  br i1 %.not183.i.i, label %.thread260.i, label %bb.da, !llvm.loop !158

.thread260.i:                                     ; preds = %bb.bw, %bb.er, %bb.cy
  %i.aiu = phi ptr [ %i.aev, %bb.er ], [ %i.ry, %bb.cy ], [ %i.nx, %bb.bw ]
  %i.aiv = phi i32 [ %i.aew, %bb.er ], [ %i.rz, %bb.cy ], [ %i.ny, %bb.bw ]
  %i.aiw = phi i64 [ %i.abe, %bb.er ], [ %i.jv, %bb.cy ], [ %i.jv, %bb.bw ]
  %i.aix = phi i64 [ %.sink494.i, %bb.er ], [ %.sink492.i, %bb.cy ], [ %.sink492.i, %bb.bw ]
  %i.aiy = phi i64 [ %.sink493.i, %bb.er ], [ %.sink.i, %bb.cy ], [ %.sink.i, %bb.bw ]
  %.9151.i258.i = phi ptr [ %i.ais, %bb.er ], [ %i.ye, %bb.cy ], [ %i.rv, %bb.bw ]
  %.2159.i233242257.i = phi ptr [ %i.ul, %bb.er ], [ %i.ul, %bb.cy ], [ %i.h, %bb.bw ]
  %i.aiz = icmp eq ptr %i.aiu, %3
  %.not286.i = icmp eq i32 %i.aiv, 64
  %or.cond.i = select i1 %i.aiz, i1 %.not286.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.thread264.i

.preheader.i:                                     ; preds = %.thread260.i
  %i.aja = trunc i64 %i.aiy to i32
  store i32 %i.aja, ptr %i.p, align 4, !tbaa !3
  %i.ajb = trunc i64 %i.aix to i32
  store i32 %i.ajb, ptr %i.t, align 8, !tbaa !3
  %i.ajc = trunc i64 %i.aiw to i32
  store i32 %i.ajc, ptr %i.x, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.es

.thread264.i:                                     ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, %.thread260.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, %.loopexit.i, %.loopexit.thread.i, %bb.by, %bb.bx, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.n, %bb.f, %bb.d
  %.9.i.ph.i = phi i64 [ -20, %.loopexit.thread.i ], [ -20, %bb.bx ], [ -20, %bb.d ], [ %.0.i203.i.i, %.loopexit.i ], [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i ], [ -20, %.thread260.i ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ -20, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i ], [ %.0.i.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i ], [ -20, %bb.f ], [ -70, %bb.by ], [ -20, %bb.n ], [ %.0.i209.i.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.es:                                            ; preds = %.preheader.i, %bb.c
  %.pre.i = phi ptr [ %.pre.pre.i, %.preheader.i ], [ %i.f, %bb.c ] ; 3 uses
  %.4161.i.i = phi ptr [ %.2159.i233242257.i, %.preheader.i ], [ %i.h, %bb.c ] ; 2 uses
  %.11153.i.i = phi ptr [ %.9151.i258.i, %.preheader.i ], [ %1, %bb.c ] ; 5 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  %i.aje = load i32, ptr %i.ajd, align 8, !tbaa !43
  %i.ajf = icmp eq i32 %i.aje, 2
  br i1 %i.ajf, label %bb.et, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.es
  %.pre356.i = ptrtoint ptr %i.d to i64
  br label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.ajg = ptrtoint ptr %.4161.i.i to i64
  %i.ajh = ptrtoint ptr %.pre.i to i64
  %i.aji = sub i64 %i.ajg, %i.ajh                 ; 3 uses
  %i.ajj = ptrtoint ptr %i.d to i64               ; 2 uses
  %i.ajk = ptrtoint ptr %.11153.i.i to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk
  %.not188.i.i = icmp ugt i64 %i.aji, %i.ajl
  br i1 %.not188.i.i, label %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not187.i.i = icmp eq ptr %.11153.i.i, null
  br i1 %.not187.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.11153.i.i, ptr align 1 %.pre.i, i64 %i.aji, i1 false)
  %i.ajm = getelementptr inbounds nuw i8, ptr %.11153.i.i, i64 %i.aji
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.12154.i.i = phi ptr [ %i.ajm, %bb.ev ], [ null, %bb.eu ]
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %i.ajd, align 8, !tbaa !43
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre356.i, %._crit_edge.i ], [ %i.ajj, %bb.ew ]
  %i.ajp = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ajn, %bb.ew ] ; 2 uses
  %.6163.i.i = phi ptr [ %.4161.i.i, %._crit_edge.i ], [ %i.ajo, %bb.ew ]
  %.14156.i.i = phi ptr [ %.11153.i.i, %._crit_edge.i ], [ %.12154.i.i, %bb.ew ] ; 4 uses
  %i.ajq = ptrtoint ptr %.6163.i.i to i64
  %i.ajr = ptrtoint ptr %i.ajp to i64
  %i.ajs = sub i64 %i.ajq, %i.ajr                 ; 3 uses
  %i.ajt = ptrtoint ptr %.14156.i.i to i64
  %i.aju = sub i64 %.pre-phi.i, %i.ajt
  %.not190.i.i = icmp ugt i64 %i.ajs, %i.aju
  br i1 %.not190.i.i, label %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %.not189.i.i = icmp eq ptr %.14156.i.i, null
  br i1 %.not189.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14156.i.i, ptr align 1 %i.ajp, i64 %i.ajs, i1 false)
  %i.ajv = getelementptr inbounds nuw i8, ptr %.14156.i.i, i64 %i.ajs
  %i.ajw = ptrtoint ptr %i.ajv to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.16.i.ph.i = phi i64 [ 0, %bb.ey ], [ %i.ajw, %bb.ez ]
  %i.ajx = ptrtoint ptr %1 to i64
  %i.ajy = sub i64 %.16.i.ph.i, %i.ajx
  br label %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %.thread264.i, %bb.et, %bb.ex, %bb.fa
  %.14.i.i = phi i64 [ %i.ajy, %bb.fa ], [ %.9.i.ph.i, %.thread264.i ], [ -70, %bb.ex ], [ -70, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.fb

bb.fb:                                            ; preds = %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.14.i.i, %_ZN11duckdb_zstdL46ZSTD_decompressSequencesSplitLitBuffer_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL24ZSTD_decompressSequencesEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::seq_t", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL24ZSTD_decompressSequencesEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.ni = zext nneg i32 %i.nh to i64
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
  %.val6.i = load i64, ptr %i.nr, align 1, !tbaa !53 ; 2 uses
  store i64 %.val6.i, ptr %7, align 8, !tbaa !87, !noalias !164
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %i.nu = phi ptr [ %i.lj, %bb.bd ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ba ], [ %i.ne, %bb.bc ], [ %i.nr, %bb.be ], [ %i.lj, %bb.ay ] ; 2 uses
  %i.nv = phi i32 [ %i.mq, %bb.bd ], [ %i.mq, %bb.ba ], [ %i.nf, %bb.bc ], [ %i.nt, %bb.be ], [ %i.lv, %bb.ay ] ; 2 uses
  %i.nw = phi i64 [ %i.ll, %bb.bd ], [ %i.ll, %bb.ba ], [ %.val.i44.i, %bb.bc ], [ %.val6.i, %bb.be ], [ %i.ll, %bb.ay ]
  %i.nx = phi i64 [ %i.mp, %bb.bd ], [ %i.mp, %bb.ba ], [ %i.mp, %bb.bc ], [ %i.mp, %bb.be ], [ %i.hm, %bb.ay ]
  %i.ny = phi i64 [ %i.mz, %bb.bd ], [ %i.mz, %bb.ba ], [ %i.mz, %bb.bc ], [ %i.mz, %bb.be ], [ %i.hn, %bb.ay ]
  %i.nz = phi i64 [ %i.mf, %bb.bd ], [ %i.mf, %bb.ba ], [ %i.mf, %bb.bc ], [ %i.mf, %bb.be ], [ %i.ho, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.oa = getelementptr i8, ptr %.068.i113.i, i64 %.sroa.0.0.i ; 7 uses
  %i.ob = add i64 %.sroa.0.0.i, %.sroa.6.0.i      ; 9 uses
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.sroa.0.0.i ; 2 uses
  %i.oe = sub i64 0, %.sink.i
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 %i.oe ; 2 uses
  %i.og = icmp ugt ptr %i.od, %i.o
  %i.oh = getelementptr inbounds nuw i8, ptr %.068.i113.i, i64 %i.ob
  %i.oi = icmp ugt ptr %i.oh, %i.hb
  %or.cond.i.i.i = select i1 %i.og, i1 true, i1 %i.oi, !prof !112
  br i1 %or.cond.i.i.i, label %bb.bf, label %.critedge.i.i.i, !prof !112

.critedge.i.i.i:                                  ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  %.val13.i = load <2 x i64>, ptr %i.oc, align 1, !tbaa !9
  store <2 x i64> %.val13.i, ptr %.068.i113.i, align 1, !tbaa !9
  %i.oj = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.oj, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !prof !60

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  store i64 %.sroa.0.0.i, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.6.0.i, ptr %.sroa.652.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !53
  %i.ok = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.068.i113.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bg:                                            ; preds = %.critedge.i.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %.068.i113.i, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.on = add i64 %.sroa.0.0.i, -16
  %.val8.i = load <2 x i64>, ptr %i.om, align 1, !tbaa !9
  store <2 x i64> %.val8.i, ptr %i.ol, align 1, !tbaa !9
  %i.oo = icmp slt i64 %i.on, 17
  br i1 %i.oo, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.op = getelementptr inbounds nuw i8, ptr %.068.i113.i, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.130.i.i.i = phi ptr [ %i.op, %bb.bh ], [ %i.os, %bb.bi ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.om, %bb.bh ], [ %i.or, %bb.bi ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.1.i.i.val.i = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i.i.val.i, ptr %.130.i.i.i, align 1, !tbaa !9
  %i.oq = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val7.i = load <2 x i64>, ptr %i.or, align 1, !tbaa !9
  store <2 x i64> %.val7.i, ptr %i.oq, align 1, !tbaa !9
  %i.os = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.ot = icmp ult ptr %i.os, %i.oa
  br i1 %i.ot, label %bb.bi, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i: ; preds = %bb.bi, %bb.bg, %.critedge.i.i.i
  store ptr %i.od, ptr %i.a, align 8, !tbaa !46
  %i.ou = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.ov = sub i64 %i.ou, %i.hc                    ; 3 uses
  %i.ow = icmp ugt i64 %.sink.i, %i.ov
  br i1 %i.ow, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %i.ox = sub i64 %i.ou, %i.hd
  %i.oy = icmp ugt i64 %.sink.i, %i.ox
  br i1 %i.oy, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, label %bb.bk, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread94.i

bb.bk:                                            ; preds = %bb.bj
  %i.oz = ptrtoint ptr %i.of to i64
  %i.pa = sub i64 %i.oz, %i.hc                    ; 3 uses
  %i.pb = getelementptr inbounds i8, ptr %i.u, i64 %i.pa ; 2 uses
  %i.pc = add nsw i64 %i.pa, %.sroa.6.0.i         ; 2 uses
  %.not.i82.i.i = icmp sgt i64 %i.pc, 0
  br i1 %.not.i82.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pb, i64 %.sroa.6.0.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %gepdiff.i.i.i = sub nsw i64 0, %i.pa           ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pb, i64 %gepdiff.i.i.i, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oa, i64 %gepdiff.i.i.i
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %.sroa.652.0.i = phi i64 [ %i.pc, %bb.bm ], [ %.sroa.6.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 5 uses
  %.081.i = phi ptr [ %i.q, %bb.bm ], [ %i.of, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.pd, %bb.bm ], [ %i.oa, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 12 uses
  %i.pe = icmp ugt i64 %.sink.i, 15
  br i1 %i.pe, label %bb.bo, label %bb.br, !prof !97

bb.bo:                                            ; preds = %bb.bn
  %i.pf = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.652.0.i
  %.val10.i = load <2 x i64>, ptr %.081.i, align 1, !tbaa !9
  store <2 x i64> %.val10.i, ptr %.0.i, align 1, !tbaa !9
  %i.pg = icmp slt i64 %.sroa.652.0.i, 17
  br i1 %i.pg, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ph = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.130.i97.i.i = phi ptr [ %i.ph, %bb.bp ], [ %i.pk, %bb.bq ] ; 3 uses
  %.pn.i98.i.i = phi ptr [ %.081.i, %bb.bp ], [ %i.pj, %bb.bq ] ; 2 uses
  %.1.i99.i.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 16
  %.1.i99.i.val.i = load <2 x i64>, ptr %.1.i99.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i99.i.val.i, ptr %.130.i97.i.i, align 1, !tbaa !9
  %i.pi = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 32 ; 2 uses
  %.val9.i = load <2 x i64>, ptr %i.pj, align 1, !tbaa !9
  store <2 x i64> %.val9.i, ptr %i.pi, align 1, !tbaa !9
  %i.pk = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 32 ; 2 uses
  %i.pl = icmp ult ptr %i.pk, %i.pf
  br i1 %i.pl, label %bb.bq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

bb.br:                                            ; preds = %bb.bn
  %i.pm = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pm, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3
  %i.pp = load i8, ptr %.081.i, align 1, !tbaa !9
  store i8 %i.pp, ptr %.0.i, align 1, !tbaa !9
  %i.pq = getelementptr inbounds nuw i8, ptr %.081.i, i64 1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !9
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !9
  %i.pt = getelementptr inbounds nuw i8, ptr %.081.i, i64 2
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !9
  %i.pv = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %.081.i, i64 3
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !9
  %i.py = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.px, ptr %i.py, align 1, !tbaa !9
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !3
  %i.qb = zext i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %.val14.i = load i32, ptr %i.qc, align 1
  store i32 %.val14.i, ptr %i.qd, align 1
  %i.qe = sext i32 %i.po to i64
  %i.qf = sub nsw i64 0, %i.qe
  %i.qg = getelementptr inbounds i8, ptr %i.qc, i64 %i.qf
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %.val15.i = load i64, ptr %.081.i, align 1
  store i64 %.val15.i, ptr %.0.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i: ; preds = %bb.bt, %bb.bs
  %.1.i = phi ptr [ %i.qg, %bb.bs ], [ %.081.i, %bb.bt ] ; 2 uses
  %.1.i18 = ptrtoaddr ptr %.1.i to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qj = icmp ugt i64 %.sroa.652.0.i, 8
  br i1 %i.qj, label %bb.bu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = getelementptr i8, ptr %.0.i, i64 %.sroa.652.0.i ; 2 uses
  %i.qo = icmp slt i64 %i.qm, 16
  br i1 %i.qo, label %.preheader107.i.preheader, label %bb.bv

.preheader107.i.preheader:                        ; preds = %bb.bu
  %8 = tail call i64 @llvm.umin.i64(i64 %.sink.i, i64 %i.ov)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.ov) ; 3 uses
  %i.qp = add i64 %.sroa.6.0.i, %i.hc
  %9 = add i64 %i.qp, %8
  %i.qq = add i64 %9, %umin
  %i.qr = sub i64 %i.qq, %.sink.i
  %i.qs = add i64 %umin, %i.hf
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.qr, i64 %i.qs)
  %i.qt = add i64 %umin, %i.hc
  %10 = sub i64 %umax20, %i.qt
  %11 = add i64 %10, -9                           ; 2 uses
  %i.qu = lshr i64 %11, 3
  %i.qv = add nuw nsw i64 %i.qu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 72
  br i1 %min.iters.check, label %.preheader107.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader107.i.preheader
  %i.qw = sub i64 %.sroa.0.0.i, %i.hc
  %i.qx = add i64 %i.qw, %.068.i113.i17
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.qx)
  %i.qy = add i64 %umax, %i.hc
  %i.qz = sub i64 %.1.i18, %i.qy
  %diff.check = icmp ugt i64 %i.qz, -32
  br i1 %diff.check, label %.preheader107.i.preheader25, label %vector.ph

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
  %next.gep21 = getelementptr i8, ptr %i.qh, i64 %i.rd ; 2 uses
  %i.re = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 1
  %wide.load22 = load <2 x i64>, ptr %i.re, align 1
  %i.rf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load22, ptr %i.rf, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rg = icmp eq i64 %index.next, %n.vec
  br i1 %i.rg, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qv, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %.preheader107.i.preheader25

.preheader107.i.preheader25:                      ; preds = %vector.memcheck, %.preheader107.i.preheader, %middle.block
  %.029.i.i.i.ph = phi ptr [ %i.qi, %vector.memcheck ], [ %i.qi, %.preheader107.i.preheader ], [ %i.rb, %middle.block ]
  %.0.i106.i.i.ph = phi ptr [ %i.qh, %vector.memcheck ], [ %i.qh, %.preheader107.i.preheader ], [ %i.rc, %middle.block ]
  br label %.preheader107.i

.preheader107.i:                                  ; preds = %.preheader107.i.preheader25, %.preheader107.i
  %.029.i.i.i = phi ptr [ %i.rh, %.preheader107.i ], [ %.029.i.i.i.ph, %.preheader107.i.preheader25 ] ; 2 uses
  %.0.i106.i.i = phi ptr [ %i.ri, %.preheader107.i ], [ %.0.i106.i.i.ph, %.preheader107.i.preheader25 ] ; 2 uses
  %.0.i106.i.val.i = load i64, ptr %.0.i106.i.i, align 1
  store i64 %.0.i106.i.val.i, ptr %.029.i.i.i, align 1
  %i.rh = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0.i106.i.i, i64 8
  %i.rj = icmp ult ptr %i.rh, %i.qn
  br i1 %i.rj, label %.preheader107.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !168

bb.bv:                                            ; preds = %bb.bu
  %.val12.i = load <2 x i64>, ptr %i.qh, align 1, !tbaa !9
  store <2 x i64> %.val12.i, ptr %i.qi, align 1, !tbaa !9
  %i.rk = icmp slt i64 %.sroa.652.0.i, 25
  br i1 %i.rk, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.130.i103.i.i = phi ptr [ %i.rl, %bb.bw ], [ %i.ro, %bb.bx ] ; 3 uses
  %.pn.i104.i.i = phi ptr [ %i.qh, %bb.bw ], [ %i.rn, %bb.bx ] ; 2 uses
  %.1.i105.i.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i.i, i64 16
  %.1.i105.i.val.i = load <2 x i64>, ptr %.1.i105.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i105.i.val.i, ptr %.130.i103.i.i, align 1, !tbaa !9
  %i.rm = getelementptr inbounds nuw i8, ptr %.130.i103.i.i, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %.pn.i104.i.i, i64 32 ; 2 uses
  %.val11.i = load <2 x i64>, ptr %i.rn, align 1, !tbaa !9
  store <2 x i64> %.val11.i, ptr %i.rm, align 1, !tbaa !9
  %i.ro = getelementptr inbounds nuw i8, ptr %.130.i103.i.i, i64 32 ; 2 uses
  %i.rp = icmp ult ptr %i.ro, %i.qn
  br i1 %i.rp, label %bb.bx, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i: ; preds = %bb.bx, %.preheader107.i, %bb.bq, %middle.block, %bb.bv, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i, %bb.bo, %bb.bl, %bb.bf
  %.0.i.i.i = phi i64 [ %i.ok, %bb.bf ], [ %i.ob, %middle.block ], [ %i.ob, %bb.bl ], [ %i.ob, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i ], [ %i.ob, %bb.bo ], [ %i.ob, %bb.bv ], [ %i.ob, %bb.bq ], [ %i.ob, %.preheader107.i ], [ %i.ob, %bb.bx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rq = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.rq, label %bb.by, label %.thread94.i

bb.by:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i
  %i.rr = getelementptr inbounds nuw i8, ptr %.068.i113.i, i64 %.0.i.i.i ; 2 uses
  %i.rs = add nsw i32 %.063.i115.i, -1            ; 2 uses
  %.not77.i.i = icmp eq i32 %i.rs, 0
  br i1 %.not77.i.i, label %bb.bz, label %bb.ah, !llvm.loop !169

bb.bz:                                            ; preds = %bb.by
  %i.rt = icmp eq ptr %i.nu, %3
  %.not106.i = icmp eq i32 %i.nv, 64
  %or.cond.i = select i1 %i.rt, i1 %.not106.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.thread94.i

.preheader.i:                                     ; preds = %bb.bz
  %i.ru = trunc i64 %.sink.i to i32
  store i32 %i.ru, ptr %i.w, align 4, !tbaa !3
  %i.rv = trunc i64 %.sink169.i to i32
  store i32 %i.rv, ptr %i.aa, align 8, !tbaa !3
  %i.rw = trunc i64 %i.kd to i32
  store i32 %i.rw, ptr %i.ae, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.ca

.thread94.i:                                      ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, %bb.bz, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.q, %bb.i, %bb.g
  %.2.i.ph.i = phi i64 [ -20, %bb.g ], [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ -20, %bb.bz ], [ -20, %bb.i ], [ -20, %bb.q ], [ %.0.i.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.ca:                                            ; preds = %.preheader.i, %bb.f
  %i.rx = phi ptr [ %.pre.i, %.preheader.i ], [ %i.l, %bb.f ] ; 2 uses
  %.371.i.i = phi ptr [ %i.rr, %.preheader.i ], [ %1, %bb.f ] ; 4 uses
  %i.ry = ptrtoint ptr %i.o to i64
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz                    ; 3 uses
  %i.sb = ptrtoint ptr %i.j to i64
  %i.sc = ptrtoint ptr %.371.i.i to i64
  %i.sd = sub i64 %i.sb, %i.sc
  %.not81.i.i = icmp ugt i64 %i.sa, %i.sd
  br i1 %.not81.i.i, label %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not80.i.i = icmp eq ptr %.371.i.i, null
  br i1 %.not80.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i.i, ptr align 1 %i.rx, i64 %i.sa, i1 false)
  %i.se = getelementptr inbounds nuw i8, ptr %.371.i.i, i64 %i.sa
  %i.sf = ptrtoint ptr %i.se to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.573.i.ph.i = phi i64 [ 0, %bb.cb ], [ %i.sf, %bb.cc ]
  %i.sg = ptrtoint ptr %1 to i64
  %i.sh = sub i64 %.573.i.ph.i, %i.sg
  br label %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %.thread94.i, %bb.ca, %bb.cd
  %.5.i.i = phi i64 [ %i.sh, %bb.cd ], [ %.2.i.ph.i, %.thread94.i ], [ -70, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %.5.i.i, %_ZN11duckdb_zstdL32ZSTD_decompressSequences_defaultEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11duckdb_zstd20ZSTD_checkContinuityEPNS_11ZSTD_DCtx_sEPKvm(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
  store ptr %i.c, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 29896 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %.neg.i = sub i64 %i.j, %i.i
  %i.k = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %i.k, ptr %i.l, align 8, !tbaa !78
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  store i32 %i.du, ptr %i.cx, align 8, !tbaa !91
  %.val.i258 = load i64, ptr %i.ds, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i258, ptr %13, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %i.dv = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.q ], [ %i.dl, %bb.s ], [ %i.cq, %bb.t ], [ %i.ds, %bb.u ]
  %i.dw = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.q ], [ %i.dl, %bb.s ], [ %3, %bb.t ], [ %i.ds, %bb.u ] ; 7 uses
  %i.dx = phi i32 [ %i.cy, %bb.q ], [ %i.dm, %bb.s ], [ %i.cy, %bb.t ], [ %i.du, %bb.u ]
  %i.dy = phi i64 [ %i.cs, %bb.q ], [ %.val.i.i, %bb.s ], [ %i.cs, %bb.t ], [ %.val.i258, %bb.u ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !92
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !79 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !71 ; 2 uses
  %i.eg = add i32 %i.dx, %i.ef                    ; 8 uses
  %i.eh = sub i32 0, %i.eg
  %i.ei = and i32 %i.eh, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = lshr i64 %i.dy, %i.ej
  %i.el = zext nneg i32 %i.ef to i64
  %notmask.i.i259 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i.i259, -1
  %i.en = and i64 %i.ek, %i.em                    ; 4 uses
  store i64 %i.en, ptr %i.eb, align 8, !tbaa !89
  %i.eo = icmp ugt i32 %i.eg, 64
  br i1 %i.eo, label %bb.v, label %bb.w, !prof !60

bb.v:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit264

bb.w:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit
  %.not.i.i260 = icmp ult ptr %i.dw, %i.al
  br i1 %.not.i.i260, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = lshr i32 %i.eg, 3
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.dw, i64 %i.er ; 4 uses
  store ptr %i.es, ptr %i.dh, align 8, !tbaa !86
  %i.et = and i32 %i.eg, 7
  %.val.i.i261 = load i64, ptr %i.es, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i.i261, ptr %13, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit264

bb.y:                                             ; preds = %bb.w
  %i.eu = icmp eq ptr %i.dw, %3
  br i1 %i.eu, label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit264, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = lshr i32 %i.eg, 3                       ; 2 uses
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr inbounds i8, ptr %i.dw, i64 %i.ex
  %i.ez = icmp ult ptr %i.ey, %3
  %i.fa = ptrtoint ptr %i.dw to i64
  %i.fb = ptrtoint ptr %3 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = trunc i64 %i.fc to i32
  %.021.i.i262 = select i1 %i.ez, i32 %i.fd, i32 %i.ev ; 2 uses
  %i.fe = zext i32 %.021.i.i262 to i64
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr inbounds i8, ptr %i.dw, i64 %i.ff ; 4 uses
  store ptr %i.fg, ptr %i.dh, align 8, !tbaa !86
  %i.fh = shl i32 %.021.i.i262, 3
  %i.fi = sub i32 %i.eg, %i.fh
  %.val.i263 = load i64, ptr %i.fg, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i263, ptr %13, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit264

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit264: ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  %i.fj = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.v ], [ %i.es, %bb.x ], [ %i.dv, %bb.y ], [ %i.fg, %bb.z ]
  %i.fk = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.v ], [ %i.es, %bb.x ], [ %i.dw, %bb.y ], [ %i.fg, %bb.z ] ; 7 uses
  %i.fl = phi i32 [ %i.eg, %bb.v ], [ %i.et, %bb.x ], [ %i.eg, %bb.y ], [ %i.fi, %bb.z ]
  %i.fm = phi i64 [ %i.dy, %bb.v ], [ %.val.i.i261, %bb.x ], [ %i.dy, %bb.y ], [ %.val.i263, %bb.z ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 64
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !92
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !93 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !71 ; 2 uses
  %i.fu = add i32 %i.fl, %i.ft                    ; 9 uses
  %i.fv = sub i32 0, %i.fu
  %i.fw = and i32 %i.fv, 63
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = lshr i64 %i.fm, %i.fx
  %i.fz = zext nneg i32 %i.ft to i64
  %notmask.i.i265 = shl nsw i64 -1, %i.fz
  %i.ga = xor i64 %notmask.i.i265, -1
  %i.gb = and i64 %i.fy, %i.ga                    ; 4 uses
  store i32 %i.fu, ptr %i.cx, align 8, !tbaa !91
  store i64 %i.gb, ptr %i.fp, align 8, !tbaa !89
  %i.gc = icmp ugt i32 %i.fu, 64
  br i1 %i.gc, label %bb.aa, label %bb.ab, !prof !60

bb.aa:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit264
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit264
  %.not.i.i266 = icmp ult ptr %i.fk, %i.al
  br i1 %.not.i.i266, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gd = lshr i32 %i.fu, 3
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.fk, i64 %i.gf ; 4 uses
  store ptr %i.gg, ptr %i.dh, align 8, !tbaa !86
  %i.gh = and i32 %i.fu, 7                        ; 2 uses
  store i32 %i.gh, ptr %i.cx, align 8, !tbaa !91
  %.val.i.i267 = load i64, ptr %i.gg, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i.i267, ptr %13, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270

bb.ad:                                            ; preds = %bb.ab
  %i.gi = icmp eq ptr %i.fk, %3
  br i1 %i.gi, label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gj = lshr i32 %i.fu, 3                       ; 2 uses
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr inbounds i8, ptr %i.fk, i64 %i.gl
  %i.gn = icmp ult ptr %i.gm, %3
  %i.go = ptrtoint ptr %i.fk to i64
  %i.gp = ptrtoint ptr %3 to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = trunc i64 %i.gq to i32
  %.021.i.i268 = select i1 %i.gn, i32 %i.gr, i32 %i.gj ; 2 uses
  %i.gs = zext i32 %.021.i.i268 to i64
  %i.gt = sub nsw i64 0, %i.gs
  %i.gu = getelementptr inbounds i8, ptr %i.fk, i64 %i.gt ; 4 uses
  store ptr %i.gu, ptr %i.dh, align 8, !tbaa !86
  %i.gv = shl i32 %.021.i.i268, 3
  %i.gw = sub i32 %i.fu, %i.gv                    ; 2 uses
  store i32 %i.gw, ptr %i.cx, align 8, !tbaa !91
  %.val.i269 = load i64, ptr %i.gu, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i269, ptr %13, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270: ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %i.gx = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aa ], [ %i.gg, %bb.ac ], [ %i.fj, %bb.ad ], [ %i.gu, %bb.ae ] ; 2 uses
  %.promoted736 = phi i64 [ %i.fm, %bb.aa ], [ %.val.i.i267, %bb.ac ], [ %i.fm, %bb.ad ], [ %.val.i269, %bb.ae ] ; 2 uses
  %.promoted740 = phi i32 [ %i.fu, %bb.aa ], [ %i.gh, %bb.ac ], [ %i.fu, %bb.ad ], [ %i.gw, %bb.ae ] ; 2 uses
  %.promoted747 = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aa ], [ %i.gg, %bb.ac ], [ %i.fk, %bb.ad ], [ %i.gu, %bb.ae ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 80
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !92
  %i.ha = icmp sgt i32 %5, 0
  br i1 %i.ha, label %.lr.ph, label %.preheader720

.lr.ph:                                           ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270
  %i.hb = add nsw i32 %5, -1
  %i.hc = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.he = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.hf = zext nneg i32 %i.hb to i64
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %bb.af

.preheader720:                                    ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270
  %i.hg = phi ptr [ %i.gx, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %i.om, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %.val200348 = phi i64 [ %.promoted736, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %.val.i279738, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.hh = phi i32 [ %.promoted740, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %.val4.i273741, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.hi = phi ptr [ %.promoted747, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %i.oq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.hj = phi i64 [ %i.ad, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %i.ky, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.hk = phi i64 [ %i.z, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %.sink913, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.hl = phi i64 [ %i.w, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %.sink, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.hm = phi i64 [ %i.gb, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %i.on, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.hn = phi i64 [ %i.en, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %i.oo, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.ho = phi i64 [ %i.df, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %i.op, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %.0241.i.lcssa = phi i64 [ %i.ai, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %i.pb, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %.0238.i.lcssa = phi i32 [ 0, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit270 ], [ %i.af, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 3 uses
  %i.hp = icmp slt i32 %.0238.i.lcssa, %5
  br i1 %i.hp, label %.lr.ph762, label %._crit_edge

.lr.ph762:                                        ; preds = %.preheader720
  %i.hq = add nsw i32 %5, -1
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.hu = ptrtoint ptr %i.p to i64                ; 3 uses
  %.sroa.6406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.12413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.6529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.12536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hv = ptrtoint ptr %i.h to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.12373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %14 = ptrtoint ptr %3 to i64
  %15 = ptrtoint ptr %3 to i64
  %i.hz = add i64 %i.ah, 16
  %invariant.op344 = add i64 %i.ah, 16
  %invariant.op346 = add i64 %i.ah, 16
  br label %bb.bd

bb.af:                                            ; preds = %.lr.ph, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit
  %i.ia = phi ptr [ %i.gx, %.lr.ph ], [ %i.om, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.ib = phi i64 [ %i.ad, %.lr.ph ], [ %i.ky, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.ic = phi i64 [ %i.gb, %.lr.ph ], [ %i.on, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.id = phi i64 [ %i.en, %.lr.ph ], [ %i.oo, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.ie = phi i64 [ %i.df, %.lr.ph ], [ %i.op, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 3 uses
  %i.if = phi i64 [ %i.z, %.lr.ph ], [ %.sink913, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 6 uses
  %i.ig = phi i64 [ %i.w, %.lr.ph ], [ %.sink, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 6 uses
  %.0241.i750 = phi i64 [ %i.ai, %.lr.ph ], [ %i.pb, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.ih = phi i64 [ %i.df, %.lr.ph ], [ %i.ot, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.ii = phi i64 [ %i.gb, %.lr.ph ], [ %i.os, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.ij = phi i64 [ %i.en, %.lr.ph ], [ %i.or, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %.val.i279737749 = phi i64 [ %.promoted736, %.lr.ph ], [ %.val.i279738, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 6 uses
  %.val4.i273746748 = phi i32 [ %.promoted740, %.lr.ph ], [ %.val4.i273741, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 5 uses
  %i.ik = phi ptr [ %.promoted747, %.lr.ph ], [ %i.oq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 8 uses
  %.not699 = icmp eq i64 %indvars.iv, %i.hf
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ih ; 4 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.ii ; 4 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ij ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !49, !noalias !171
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !49, !noalias !171 ; 2 uses
  %i.it = zext i32 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !49, !noalias !171 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.ix = load i8, ptr %i.iw, align 2, !tbaa !66, !noalias !171 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.iz = load i8, ptr %i.iy, align 2, !tbaa !66, !noalias !171 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.jb = load i8, ptr %i.ja, align 2, !tbaa !66, !noalias !171 ; 4 uses
  %i.jc = zext i8 %i.ix to i32                    ; 2 uses
  %i.jd = zext i8 %i.iz to i32                    ; 2 uses
  %i.je = add i8 %i.iz, %i.ix
  %i.jf = add i8 %i.je, %i.jb
  %i.jg = load i16, ptr %i.il, align 4, !tbaa !65, !noalias !171
  %i.jh = load i16, ptr %i.im, align 4, !tbaa !65, !noalias !171
  %i.ji = load i16, ptr %i.in, align 4, !tbaa !65, !noalias !171
  %i.jj = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !64, !noalias !171 ; 2 uses
  %i.jl = zext i8 %i.jk to i32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !64, !noalias !171 ; 2 uses
  %i.jo = zext i8 %i.jn to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !64, !noalias !171 ; 2 uses
  %i.jr = zext i8 %i.jq to i32
  %i.js = icmp ugt i8 %i.jb, 1
  br i1 %i.js, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jt = zext i8 %i.jb to i32                    ; 2 uses
  %i.ju = and i32 %.val4.i273746748, 63
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = shl i64 %.val.i279737749, %i.jv
  %i.jx = sub nsw i32 0, %i.jt
  %i.jy = and i32 %i.jx, 63
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = lshr i64 %i.jw, %i.jz
  %i.kb = add i32 %.val4.i273746748, %i.jt        ; 2 uses
  store i32 %i.kb, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %i.kc = zext i32 %i.iv to i64
  %i.kd = add i64 %i.ka, %i.kc
  store i64 %i.if, ptr %i.hd, align 8, !tbaa !53, !noalias !171
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.ke = icmp eq i32 %i.is, 0                    ; 3 uses
  %i.kf = icmp eq i8 %i.jb, 0
  br i1 %i.kf, label %bb.ai, label %bb.aj, !prof !97

bb.ai:                                            ; preds = %bb.ah
  %i.kg = select i1 %i.ke, i64 %i.if, i64 %i.ig
  %i.kh = select i1 %i.ke, i64 %i.ig, i64 %i.if
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.ki = zext i1 %i.ke to i32
  %i.kj = add i32 %i.iv, %i.ki
  %i.kk = zext i32 %i.kj to i64
  %i.kl = and i32 %.val4.i273746748, 63
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = shl i64 %.val.i279737749, %i.km
  %i.ko = lshr i64 %i.kn, 63
  %i.kp = add i32 %.val4.i273746748, 1            ; 3 uses
  store i32 %i.kp, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %i.kq = add nuw nsw i64 %i.ko, %i.kk            ; 3 uses
  %i.kr = icmp eq i64 %i.kq, 3
  br i1 %i.kr, label %.thread, label %bb.ak

.thread:                                          ; preds = %bb.aj
  %i.ks = add i64 %i.ig, -1                       ; 2 uses
  %.not.i6629 = icmp eq i64 %i.ks, 0
  %i.kt = select i1 %.not.i6629, i64 -1, i64 %i.ks
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.kq
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !53, !noalias !171 ; 2 uses
  %.not.i6 = icmp eq i64 %i.kv, 0
  %i.kw = select i1 %.not.i6, i64 -1, i64 %i.kv   ; 2 uses
  %.not101.i = icmp eq i64 %i.kq, 1
  br i1 %.not101.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.kx = phi i64 [ %i.kt, %.thread ], [ %i.kw, %bb.ak ]
  store i64 %i.if, ptr %i.hd, align 8, !tbaa !53, !noalias !171
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai, %bb.ag
  %.sink913 = phi i64 [ %i.ig, %bb.ag ], [ %i.kh, %bb.ai ], [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ] ; 3 uses
  %.sink = phi i64 [ %i.kd, %bb.ag ], [ %i.kg, %bb.ai ], [ %i.kx, %bb.al ], [ %i.kw, %bb.ak ] ; 6 uses
  %i.ky = phi i64 [ %i.if, %bb.ag ], [ %i.ib, %bb.ai ], [ %i.if, %bb.al ], [ %i.ib, %bb.ak ] ; 2 uses
  %.val4.i273745 = phi i32 [ %i.kb, %bb.ag ], [ %.val4.i273746748, %bb.ai ], [ %i.kp, %bb.al ], [ %i.kp, %bb.ak ] ; 3 uses
  store i64 %.sink913, ptr %i.hc, align 8, !tbaa !53, !noalias !171
  store i64 %.sink, ptr %i.u, align 8, !tbaa !53, !noalias !171
  %.not102.i = icmp eq i8 %i.iz, 0
  br i1 %.not102.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kz = and i32 %.val4.i273745, 63
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl i64 %.val.i279737749, %i.la
  %i.lc = sub nsw i32 0, %i.jd
  %i.ld = and i32 %i.lc, 63
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = lshr i64 %i.lb, %i.le
  %i.lg = add i32 %.val4.i273745, %i.jd           ; 2 uses
  store i32 %i.lg, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %i.lh = add i64 %i.lf, %i.iq
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.val4.i273744 = phi i32 [ %.val4.i273745, %bb.am ], [ %i.lg, %bb.an ] ; 8 uses
  %.sroa.7.0 = phi i64 [ %i.iq, %bb.am ], [ %i.lh, %bb.an ] ; 2 uses
  %i.li = icmp ugt i8 %i.jf, 30
  br i1 %i.li, label %bb.ap, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61, !prof !60

bb.ap:                                            ; preds = %bb.ao
  %i.lj = icmp ugt i32 %.val4.i273744, 64
  br i1 %i.lj, label %bb.aq, label %bb.ar, !prof !60

bb.aq:                                            ; preds = %bb.ap
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61

bb.ar:                                            ; preds = %bb.ap
  %.not.i55 = icmp ult ptr %i.ik, %i.al
  br i1 %.not.i55, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lk = lshr i32 %.val4.i273744, 3
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = sub nsw i64 0, %i.ll
  %i.ln = getelementptr inbounds i8, ptr %i.ik, i64 %i.lm ; 4 uses
  store ptr %i.ln, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  %i.lo = and i32 %.val4.i273744, 7               ; 2 uses
  store i32 %i.lo, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %.val.i276 = load i64, ptr %i.ln, align 1, !tbaa !53, !noalias !171 ; 2 uses
  store i64 %.val.i276, ptr %13, align 8, !tbaa !87, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61

bb.at:                                            ; preds = %bb.ar
  %i.lp = icmp eq ptr %i.ik, %3
  br i1 %i.lp, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lq = lshr i32 %.val4.i273744, 3              ; 2 uses
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.ik, i64 %i.ls
  %i.lu = icmp ult ptr %i.lt, %3
  %i.lv = ptrtoint ptr %i.ik to i64
  %i.lw = sub i64 %i.lv, %i.he
  %i.lx = trunc i64 %i.lw to i32
  %.021.i57 = select i1 %i.lu, i32 %i.lx, i32 %i.lq ; 2 uses
  %i.ly = zext i32 %.021.i57 to i64
  %i.lz = sub nsw i64 0, %i.ly
  %i.ma = getelementptr inbounds i8, ptr %i.ik, i64 %i.lz ; 4 uses
  store ptr %i.ma, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  %i.mb = shl i32 %.021.i57, 3
  %i.mc = sub i32 %.val4.i273744, %i.mb           ; 2 uses
  store i32 %i.mc, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %.val198 = load i64, ptr %i.ma, align 1, !tbaa !53 ; 2 uses
  store i64 %.val198, ptr %13, align 8, !tbaa !87, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61: ; preds = %bb.at, %bb.au, %bb.as, %bb.aq, %bb.ao
  %i.md = phi ptr [ %i.ia, %bb.at ], [ %i.ma, %bb.au ], [ %i.ln, %bb.as ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aq ], [ %i.ia, %bb.ao ] ; 2 uses
  %i.me = phi ptr [ %i.ik, %bb.at ], [ %i.ma, %bb.au ], [ %i.ln, %bb.as ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aq ], [ %i.ik, %bb.ao ] ; 8 uses
  %.val4.i273743 = phi i32 [ %.val4.i273744, %bb.at ], [ %i.mc, %bb.au ], [ %i.lo, %bb.as ], [ %.val4.i273744, %bb.aq ], [ %.val4.i273744, %bb.ao ] ; 3 uses
  %.val.i279739 = phi i64 [ %.val.i279737749, %bb.at ], [ %.val198, %bb.au ], [ %.val.i276, %bb.as ], [ %.val.i279737749, %bb.aq ], [ %.val.i279737749, %bb.ao ] ; 7 uses
  %.not103.i = icmp eq i8 %i.ix, 0
  br i1 %.not103.i, label %bb.aw, label %bb.av

end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %.val4.i273741 = phi i32 [ %i.ni, %bb.bb ], [ %i.ol, %bb.bc ], [ %i.nx, %bb.ba ], [ %i.ni, %bb.ay ], [ %.val4.i273742, %bb.aw ] ; 2 uses
  %.val.i279738 = phi i64 [ %.val.i279739, %bb.bb ], [ %.val, %bb.bc ], [ %.val.i279, %bb.ba ], [ %.val.i279739, %bb.ay ], [ %.val.i279739, %bb.aw ] ; 2 uses
  %i.or = phi i64 [ %i.nr, %bb.bb ], [ %i.nr, %bb.bc ], [ %i.nr, %bb.ba ], [ %i.nr, %bb.ay ], [ %i.ij, %bb.aw ]
  %i.os = phi i64 [ %i.nh, %bb.bb ], [ %i.nh, %bb.bc ], [ %i.nh, %bb.ba ], [ %i.nh, %bb.ay ], [ %i.ii, %bb.aw ]
  %i.ot = phi i64 [ %i.mx, %bb.bb ], [ %i.mx, %bb.bc ], [ %i.mx, %bb.ba ], [ %i.mx, %bb.ay ], [ %i.ih, %bb.aw ]
  %i.ou = add i64 %.sroa.0336.0, %.0241.i750      ; 3 uses
  %i.ov = icmp ugt i64 %.sink, %i.ou
  %i.ow = select i1 %i.ov, ptr %i.r, ptr %i.n
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 %i.ou
  %i.oy = sub i64 0, %.sink
  %i.oz = getelementptr inbounds i8, ptr %i.ox, i64 %i.oy ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.oz, i32 0, i32 3, i32 1)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pa, i32 0, i32 3, i32 1)
  %i.pb = add i64 %i.ou, %.sroa.7.0               ; 2 uses
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %indvars.iv ; 3 uses
  store i64 %.sroa.0336.0, ptr %i.pc, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx338 = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx338, align 8, !tbaa !53
  %.sroa.10.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store i64 %.sink, ptr %.sroa.10.0..sroa_idx340, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader720, label %bb.af, !llvm.loop !98

bb.bd:                                            ; preds = %.lr.ph762, %bb.es
  %i.pd = phi ptr [ %i.hg, %.lr.ph762 ], [ %i.vp, %bb.es ] ; 8 uses
  %i.pe = phi i32 [ %i.hh, %.lr.ph762 ], [ %i.vq, %bb.es ] ; 5 uses
  %.val200345 = phi i64 [ %.val200348, %.lr.ph762 ], [ %.val200346, %bb.es ] ; 6 uses
  %i.pf = phi i64 [ %i.hj, %.lr.ph762 ], [ %i.rz, %bb.es ] ; 2 uses
  %i.pg = phi i64 [ %i.hk, %.lr.ph762 ], [ %.sink915, %bb.es ] ; 6 uses
  %i.ph = phi i64 [ %i.hl, %.lr.ph762 ], [ %.sink914, %bb.es ] ; 6 uses
  %i.pi = phi i64 [ %i.hm, %.lr.ph762 ], [ %i.vr, %bb.es ] ; 2 uses
  %i.pj = phi i64 [ %i.hn, %.lr.ph762 ], [ %i.vs, %bb.es ] ; 2 uses
  %i.pk = phi i64 [ %i.ho, %.lr.ph762 ], [ %i.vt, %bb.es ] ; 2 uses
  %.0207.i758 = phi ptr [ %1, %.lr.ph762 ], [ %.6213.i.ph, %bb.es ] ; 26 uses
  %.0226.i757 = phi ptr [ %i.l, %.lr.ph762 ], [ %.3229.i.ph, %bb.es ] ; 5 uses
  %.1239.i756 = phi i32 [ %.0238.i.lcssa, %.lr.ph762 ], [ %i.ajz, %bb.es ] ; 5 uses
  %.1242.i755 = phi i64 [ %.0241.i.lcssa, %.lr.ph762 ], [ %.6247.i.ph, %bb.es ] ; 2 uses
  %.0207.i758106 = ptrtoaddr ptr %.0207.i758 to i64 ; 2 uses
  %.not695 = icmp eq i32 %.1239.i756, %i.hq
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.pk ; 4 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.pi ; 4 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.pj ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !49, !noalias !174
  %i.pq = zext i32 %i.pp to i64                   ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !49, !noalias !174 ; 2 uses
  %i.pt = zext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !49, !noalias !174 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pl, i64 2
  %i.px = load i8, ptr %i.pw, align 2, !tbaa !66, !noalias !174 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.pz = load i8, ptr %i.py, align 2, !tbaa !66, !noalias !174 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  %i.qb = load i8, ptr %i.qa, align 2, !tbaa !66, !noalias !174 ; 4 uses
  %i.qc = zext i8 %i.px to i32                    ; 2 uses
  %i.qd = zext i8 %i.pz to i32                    ; 2 uses
  %i.qe = add i8 %i.pz, %i.px
  %i.qf = add i8 %i.qe, %i.qb
  %i.qg = load i16, ptr %i.pl, align 4, !tbaa !65, !noalias !174
  %i.qh = load i16, ptr %i.pm, align 4, !tbaa !65, !noalias !174
  %i.qi = load i16, ptr %i.pn, align 4, !tbaa !65, !noalias !174
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pl, i64 3
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !64, !noalias !174 ; 2 uses
  %i.ql = zext i8 %i.qk to i32
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pm, i64 3
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !64, !noalias !174 ; 2 uses
  %i.qo = zext i8 %i.qn to i32
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pn, i64 3
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !64, !noalias !174 ; 2 uses
  %i.qr = zext i8 %i.qq to i32
  %i.qs = icmp ugt i8 %i.qb, 1
  br i1 %i.qs, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.qt = zext i8 %i.qb to i32                    ; 2 uses
  %i.qu = and i32 %i.pe, 63
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = shl i64 %.val200345, %i.qv
  %i.qx = sub nsw i32 0, %i.qt
  %i.qy = and i32 %i.qx, 63
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = lshr i64 %i.qw, %i.qz
  %i.rb = add i32 %i.pe, %i.qt                    ; 2 uses
  store i32 %i.rb, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.rc = zext i32 %i.pv to i64
  %i.rd = add i64 %i.ra, %i.rc
  store i64 %i.pg, ptr %i.hs, align 8, !tbaa !53, !noalias !174
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.re = icmp eq i32 %i.ps, 0                    ; 3 uses
  %i.rf = icmp eq i8 %i.qb, 0
  br i1 %i.rf, label %bb.bg, label %bb.bh, !prof !97

bb.bg:                                            ; preds = %bb.bf
  %i.rg = select i1 %i.re, i64 %i.pg, i64 %i.ph
  %i.rh = select i1 %i.re, i64 %i.ph, i64 %i.pg
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.ri = zext i1 %i.re to i32
  %i.rj = add i32 %i.pv, %i.ri
  %i.rk = zext i32 %i.rj to i64
  %i.rl = and i32 %i.pe, 63
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = shl i64 %.val200345, %i.rm
  %i.ro = lshr i64 %i.rn, 63
  %i.rp = add i32 %i.pe, 1                        ; 3 uses
  store i32 %i.rp, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.rq = add nuw nsw i64 %i.ro, %i.rk            ; 3 uses
  %i.rr = icmp eq i64 %i.rq, 3
  br i1 %i.rr, label %.thread631, label %bb.bi

.thread631:                                       ; preds = %bb.bh
  %i.rs = add i64 %i.ph, -1                       ; 2 uses
  %.not.i8632 = icmp eq i64 %i.rs, 0
  %i.rt = select i1 %.not.i8632, i64 -1, i64 %i.rs
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.rq
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !53, !noalias !174 ; 2 uses
  %.not.i8 = icmp eq i64 %i.rv, 0
  %i.rw = select i1 %.not.i8, i64 -1, i64 %i.rv   ; 2 uses
  %.not101.i9 = icmp eq i64 %i.rq, 1
  br i1 %.not101.i9, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.thread631, %bb.bi
  %i.rx = phi i64 [ %i.rt, %.thread631 ], [ %i.rw, %bb.bi ]
  store i64 %i.pg, ptr %i.hs, align 8, !tbaa !53, !noalias !174
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bg, %bb.be
  %i.ry = phi i32 [ %i.rb, %bb.be ], [ %i.pe, %bb.bg ], [ %i.rp, %bb.bj ], [ %i.rp, %bb.bi ] ; 3 uses
  %.sink915 = phi i64 [ %i.ph, %bb.be ], [ %i.rh, %bb.bg ], [ %i.ph, %bb.bj ], [ %i.ph, %bb.bi ] ; 3 uses
  %.sink914 = phi i64 [ %i.rd, %bb.be ], [ %i.rg, %bb.bg ], [ %i.rx, %bb.bj ], [ %i.rw, %bb.bi ] ; 9 uses
  %i.rz = phi i64 [ %i.pg, %bb.be ], [ %i.pf, %bb.bg ], [ %i.pg, %bb.bj ], [ %i.pf, %bb.bi ] ; 2 uses
  store i64 %.sink915, ptr %i.hr, align 8, !tbaa !53, !noalias !174
  store i64 %.sink914, ptr %i.u, align 8, !tbaa !53, !noalias !174
  %.not102.i11 = icmp eq i8 %i.pz, 0
  br i1 %.not102.i11, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.sa = and i32 %i.ry, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl i64 %.val200345, %i.sb
  %i.sd = sub nsw i32 0, %i.qd
  %i.se = and i32 %i.sd, 63
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = lshr i64 %i.sc, %i.sf
  %i.sh = add i32 %i.ry, %i.qd                    ; 2 uses
  store i32 %i.sh, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.si = add i64 %i.sg, %i.pq
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.sj = phi i32 [ %i.ry, %bb.bk ], [ %i.sh, %bb.bl ] ; 8 uses
  %.sroa.9.0 = phi i64 [ %i.pq, %bb.bk ], [ %i.si, %bb.bl ] ; 3 uses
  %i.sk = icmp ugt i8 %i.qf, 30
  br i1 %i.sk, label %bb.bn, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, !prof !60

bb.bn:                                            ; preds = %bb.bm
  %i.sl = icmp ugt i32 %i.sj, 64
  br i1 %i.sl, label %bb.bo, label %bb.bp, !prof !60

bb.bo:                                            ; preds = %bb.bn
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

bb.bp:                                            ; preds = %bb.bn
  %.not.i46 = icmp ult ptr %i.pd, %i.al
  br i1 %.not.i46, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sm = lshr i32 %i.sj, 3
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = sub nsw i64 0, %i.sn
  %i.sp = getelementptr inbounds i8, ptr %i.pd, i64 %i.so ; 3 uses
  store ptr %i.sp, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  %i.sq = and i32 %i.sj, 7                        ; 2 uses
  store i32 %i.sq, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %.val.i286 = load i64, ptr %i.sp, align 1, !tbaa !53, !noalias !174 ; 2 uses
  store i64 %.val.i286, ptr %13, align 8, !tbaa !87, !noalias !174
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

bb.br:                                            ; preds = %bb.bp
  %i.sr = icmp eq ptr %i.pd, %3
  br i1 %i.sr, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ss = lshr i32 %i.sj, 3                       ; 2 uses
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = sub nsw i64 0, %i.st
  %i.sv = getelementptr inbounds i8, ptr %i.pd, i64 %i.su
  %i.sw = icmp ult ptr %i.sv, %3
  %i.sx = ptrtoint ptr %i.pd to i64
  %i.sy = sub i64 %i.sx, %14
  %i.sz = trunc i64 %i.sy to i32
  %.021.i = select i1 %i.sw, i32 %i.sz, i32 %i.ss ; 2 uses
  %i.ta = zext i32 %.021.i to i64
  %i.tb = sub nsw i64 0, %i.ta
  %i.tc = getelementptr inbounds i8, ptr %i.pd, i64 %i.tb ; 3 uses
  store ptr %i.tc, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  %i.td = shl i32 %.021.i, 3
  %i.te = sub i32 %i.sj, %i.td                    ; 2 uses
  store i32 %i.te, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %.val200 = load i64, ptr %i.tc, align 1, !tbaa !53 ; 2 uses
  store i64 %.val200, ptr %13, align 8, !tbaa !87, !noalias !174
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit: ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bo, %bb.bm
  %i.tf = phi ptr [ %i.pd, %bb.br ], [ %i.tc, %bb.bs ], [ %i.sp, %bb.bq ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bo ], [ %i.pd, %bb.bm ] ; 8 uses
  %i.tg = phi i32 [ %i.sj, %bb.br ], [ %i.te, %bb.bs ], [ %i.sq, %bb.bq ], [ %i.sj, %bb.bo ], [ %i.sj, %bb.bm ] ; 3 uses
  %.val200347 = phi i64 [ %.val200345, %bb.br ], [ %.val200, %bb.bs ], [ %.val.i286, %bb.bq ], [ %.val200345, %bb.bo ], [ %.val200345, %bb.bm ] ; 7 uses
  %.not103.i12 = icmp eq i8 %i.px, 0
  br i1 %.not103.i12, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.th = and i32 %i.tg, 63
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = shl i64 %.val200347, %i.ti
  %i.tk = sub nsw i32 0, %i.qc
  %i.tl = and i32 %i.tk, 63
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = lshr i64 %i.tj, %i.tm
  %i.to = add i32 %i.tg, %i.qc                    ; 2 uses
  store i32 %i.to, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.tp = add i64 %i.tn, %i.pt
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.tq = phi i32 [ %i.tg, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %i.to, %bb.bt ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.pt, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %i.tp, %bb.bt ] ; 4 uses
  br i1 %.not695, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tr = add i32 %i.tq, %i.ql                    ; 2 uses
  %i.ts = sub i32 0, %i.tr
  %i.tt = and i32 %i.ts, 63
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = lshr i64 %.val200347, %i.tu
  %i.tw = zext nneg i8 %i.qk to i64
  %notmask.i.i70 = shl nsw i64 -1, %i.tw
  %i.tx = xor i64 %notmask.i.i70, -1
  %i.ty = and i64 %i.tv, %i.tx
  %i.tz = zext i16 %i.qg to i64
  %i.ua = add nuw i64 %i.ty, %i.tz                ; 5 uses
  store i64 %i.ua, ptr %i.ct, align 8, !tbaa !89, !noalias !174
  %i.ub = add i32 %i.tr, %i.qo                    ; 2 uses
  %i.uc = sub i32 0, %i.ub
  %i.ud = and i32 %i.uc, 63
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = lshr i64 %.val200347, %i.ue
  %i.ug = zext nneg i8 %i.qn to i64
  %notmask.i.i69 = shl nsw i64 -1, %i.ug
  %i.uh = xor i64 %notmask.i.i69, -1
  %i.ui = and i64 %i.uf, %i.uh
  %i.uj = zext i16 %i.qh to i64
  %i.uk = add nuw i64 %i.ui, %i.uj                ; 5 uses
  store i64 %i.uk, ptr %i.fp, align 8, !tbaa !89, !noalias !174
  %i.ul = add i32 %i.ub, %i.qr                    ; 9 uses
  %i.um = sub i32 0, %i.ul
  %i.un = and i32 %i.um, 63
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = lshr i64 %.val200347, %i.uo
  %i.uq = zext nneg i8 %i.qq to i64
  %notmask.i.i = shl nsw i64 -1, %i.uq
  %i.ur = xor i64 %notmask.i.i, -1
  %i.us = and i64 %i.up, %i.ur
  store i32 %i.ul, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.ut = zext i16 %i.qi to i64
  %i.uu = add nuw i64 %i.us, %i.ut                ; 5 uses
  store i64 %i.uu, ptr %i.eb, align 8, !tbaa !89, !noalias !174
  %i.uv = icmp ugt i32 %i.ul, 64
  br i1 %i.uv, label %bb.bw, label %bb.bx, !prof !60

bb.bw:                                            ; preds = %bb.bv
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14

bb.bx:                                            ; preds = %bb.bv
  %.not.i48 = icmp ult ptr %i.tf, %i.al
  br i1 %.not.i48, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.uw = lshr i32 %i.ul, 3
  %i.ux = zext nneg i32 %i.uw to i64
  %i.uy = sub nsw i64 0, %i.ux
  %i.uz = getelementptr inbounds i8, ptr %i.tf, i64 %i.uy ; 3 uses
  store ptr %i.uz, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  %i.va = and i32 %i.ul, 7                        ; 2 uses
  store i32 %i.va, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %.val.i289 = load i64, ptr %i.uz, align 1, !tbaa !53, !noalias !174 ; 2 uses
  store i64 %.val.i289, ptr %13, align 8, !tbaa !87, !noalias !174
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14

bb.bz:                                            ; preds = %bb.bx
  %i.vb = icmp eq ptr %i.tf, %3
  br i1 %i.vb, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vc = lshr i32 %i.ul, 3                       ; 2 uses
  %i.vd = zext nneg i32 %i.vc to i64
  %i.ve = sub nsw i64 0, %i.vd
  %i.vf = getelementptr inbounds i8, ptr %i.tf, i64 %i.ve
  %i.vg = icmp ult ptr %i.vf, %3
  %i.vh = ptrtoint ptr %i.tf to i64
  %i.vi = sub i64 %i.vh, %15
  %i.vj = trunc i64 %i.vi to i32
  %.021.i50 = select i1 %i.vg, i32 %i.vj, i32 %i.vc ; 2 uses
  %i.vk = zext i32 %.021.i50 to i64
  %i.vl = sub nsw i64 0, %i.vk
  %i.vm = getelementptr inbounds i8, ptr %i.tf, i64 %i.vl ; 3 uses
  store ptr %i.vm, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  %i.vn = shl i32 %.021.i50, 3
  %i.vo = sub i32 %i.ul, %i.vn                    ; 2 uses
  store i32 %i.vo, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %.val199 = load i64, ptr %i.vm, align 1, !tbaa !53 ; 2 uses
  store i64 %.val199, ptr %13, align 8, !tbaa !87, !noalias !174
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14: ; preds = %bb.bz, %bb.ca, %bb.by, %bb.bw, %bb.bu
  %i.vp = phi ptr [ %i.tf, %bb.bz ], [ %i.vm, %bb.ca ], [ %i.uz, %bb.by ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bw ], [ %i.tf, %bb.bu ] ; 2 uses
  %i.vq = phi i32 [ %i.ul, %bb.bz ], [ %i.vo, %bb.ca ], [ %i.va, %bb.by ], [ %i.ul, %bb.bw ], [ %i.tq, %bb.bu ] ; 2 uses
  %.val200346 = phi i64 [ %.val200347, %bb.bz ], [ %.val199, %bb.ca ], [ %.val.i289, %bb.by ], [ %.val200347, %bb.bw ], [ %.val200347, %bb.bu ]
  %i.vr = phi i64 [ %i.uk, %bb.bz ], [ %i.uk, %bb.ca ], [ %i.uk, %bb.by ], [ %i.uk, %bb.bw ], [ %i.pi, %bb.bu ]
  %i.vs = phi i64 [ %i.uu, %bb.bz ], [ %i.uu, %bb.ca ], [ %i.uu, %bb.by ], [ %i.uu, %bb.bw ], [ %i.pj, %bb.bu ]
  %i.vt = phi i64 [ %i.ua, %bb.bz ], [ %i.ua, %bb.ca ], [ %i.ua, %bb.by ], [ %i.ua, %bb.bw ], [ %i.pk, %bb.bu ]
  %i.vu = load i32, ptr %i.b, align 8, !tbaa !43
  %i.vv = icmp eq i32 %i.vu, 2
  br i1 %i.vv, label %bb.cb, label %bb.dx

bb.cb:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14
  %i.vw = load ptr, ptr %i.a, align 8, !tbaa !46  ; 14 uses
  %i.vx = and i32 %.1239.i756, 7
  %i.vy = zext nneg i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.vy ; 8 uses
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !102 ; 8 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.wa ; 4 uses
  %i.wc = load ptr, ptr %i.k, align 8, !tbaa !42  ; 3 uses
  %i.wd = icmp ugt ptr %i.wb, %i.wc
  br i1 %i.wd, label %bb.cc, label %bb.dd

bb.cc:                                            ; preds = %bb.cb
  %i.we = ptrtoint ptr %i.wc to i64               ; 2 uses
  %i.wf = ptrtoint ptr %i.vw to i64               ; 4 uses
  %i.wg = sub i64 %i.we, %i.wf                    ; 9 uses
  %.not273.i = icmp eq ptr %i.wc, %i.vw
  br i1 %.not273.i, label %thread-pre-split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wh = ptrtoint ptr %.0207.i758 to i64         ; 8 uses
  %i.wi = sub i64 %i.hv, %i.wh
  %i.wj = icmp ugt i64 %i.wg, %i.wi
  br i1 %i.wj, label %.thread678, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wk = sub i64 %i.wh, %i.wf                    ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %.0207.i758, i64 %i.wg ; 3 uses
  %i.wm = icmp slt i64 %i.wg, 8
  %i.wn = icmp sgt i64 %i.wk, -8
  %or.cond.i290 = or i1 %i.wn, %i.wm
  br i1 %or.cond.i290, label %.preheader.i, label %bb.cf

.preheader.i:                                     ; preds = %bb.ce
  %i.wo = icmp sgt i64 %i.wg, 0
  br i1 %i.wo, label %iter.check, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit

iter.check:                                       ; preds = %.preheader.i
  %i.wp = add i64 %i.wh, %i.we
  %i.wq = sub i64 %i.wp, %i.wf
  %i.wr = add i64 %i.wh, 1
  %umax37 = tail call i64 @llvm.umax.i64(i64 %i.wq, i64 %i.wr)
  %i.ws = sub i64 %umax37, %i.wh                  ; 7 uses
  %min.iters.check39 = icmp ult i64 %i.ws, 4
  %i.wt = sub i64 %i.wf, %i.wh
  %diff.check36 = icmp ugt i64 %i.wt, -32
  %or.cond308 = or i1 %min.iters.check39, %diff.check36
  br i1 %or.cond308, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.ws, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph41

vector.ph41:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf42 = and i64 %i.ws, 28
  %n.vec43 = and i64 %i.ws, -32                   ; 5 uses
  %i.wu = getelementptr i8, ptr %.0207.i758, i64 %n.vec43
  %i.wv = getelementptr i8, ptr %i.vw, i64 %n.vec43
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph41
  %index45 = phi i64 [ 0, %vector.ph41 ], [ %index.next50, %vector.body44 ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %.0207.i758, i64 %index45 ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.vw, i64 %index45 ; 2 uses
  %i.ww = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load48 = load <16 x i8>, ptr %next.gep47, align 1, !tbaa !9
  %wide.load49 = load <16 x i8>, ptr %i.ww, align 1, !tbaa !9
  %i.wx = getelementptr i8, ptr %next.gep46, i64 16
  store <16 x i8> %wide.load48, ptr %next.gep46, align 1, !tbaa !9
  store <16 x i8> %wide.load49, ptr %i.wx, align 1, !tbaa !9
  %index.next50 = add nuw i64 %index45, 32        ; 2 uses
  %i.wy = icmp eq i64 %index.next50, %n.vec43
  br i1 %i.wy, label %middle.block51, label %vector.body44, !llvm.loop !177

middle.block51:                                   ; preds = %vector.body44
  %cmp.n52 = icmp eq i64 %i.ws, %n.vec43
  br i1 %cmp.n52, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block51
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf42, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec43, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.ws, -4                    ; 4 uses
  %i.wz = getelementptr i8, ptr %.0207.i758, i64 %n.vec56
  %i.xa = getelementptr i8, ptr %i.vw, i64 %n.vec56
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 3 uses
  %next.gep58 = getelementptr i8, ptr %.0207.i758, i64 %index57
  %next.gep59 = getelementptr i8, ptr %i.vw, i64 %index57
  %wide.load60 = load <4 x i8>, ptr %next.gep59, align 1, !tbaa !9
  store <4 x i8> %wide.load60, ptr %next.gep58, align 1, !tbaa !9
  %index.next61 = add nuw i64 %index57, 4         ; 2 uses
  %i.xb = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.xb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.ws, %n.vec56
  br i1 %cmp.n62, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.040.i.ph = phi ptr [ %.0207.i758, %iter.check ], [ %i.wu, %vec.epilog.iter.check ], [ %i.wz, %vec.epilog.middle.block ]
  %.02939.i.ph = phi ptr [ %i.vw, %iter.check ], [ %i.wv, %vec.epilog.iter.check ], [ %i.xa, %vec.epilog.middle.block ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.xe, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.xc, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.xd = load i8, ptr %.02939.i, align 1, !tbaa !9
  %i.xe = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.xd, ptr %.040.i, align 1, !tbaa !9
  %i.xf = icmp ult ptr %i.xe, %i.wl
  br i1 %i.xf, label %.lr.ph41.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, !llvm.loop !179

bb.cf:                                            ; preds = %bb.ce
  %i.xg = icmp samesign ugt i64 %i.wg, 31
  %i.xh = icmp samesign ult i64 %i.wk, -16
  %or.cond3.i = and i1 %i.xh, %i.xg
  br i1 %or.cond3.i, label %bb.cg, label %iter.check88

bb.cg:                                            ; preds = %bb.cf
  %i.xi = getelementptr inbounds i8, ptr %i.wl, i64 -32 ; 2 uses
  %i.xj = add nsw i64 %i.wg, -32                  ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 %i.xj
  %.val35.i = load <2 x i64>, ptr %i.vw, align 1, !tbaa !9
  store <2 x i64> %.val35.i, ptr %.0207.i758, align 1, !tbaa !9
  %i.xl = icmp samesign ult i64 %i.wg, 49
  br i1 %i.xl, label %.thread.i292, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xm = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.130.i.i = phi ptr [ %i.xm, %bb.ch ], [ %i.xp, %bb.ci ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.vw, %bb.ch ], [ %i.xo, %bb.ci ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !9
  %i.xn = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.xo = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i291 = load <2 x i64>, ptr %i.xo, align 1, !tbaa !9
  store <2 x i64> %.val.i291, ptr %i.xn, align 1, !tbaa !9
  %i.xp = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.xq = icmp ult ptr %i.xp, %i.xk
  br i1 %i.xq, label %bb.ci, label %.thread.i292, !llvm.loop !108

.thread.i292:                                     ; preds = %bb.ci, %bb.cg
  %i.xr = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.xj
  %.pre.i = ptrtoint ptr %i.xi to i64
  br label %iter.check88

iter.check88:                                     ; preds = %bb.cf, %.thread.i292
  %.150.i = phi ptr [ %i.xi, %.thread.i292 ], [ %.0207.i758, %bb.cf ] ; 7 uses
  %.13049.i = phi ptr [ %i.xr, %.thread.i292 ], [ %i.vw, %bb.cf ] ; 6 uses
  %.143.pre-phi48.i = phi i64 [ %.pre.i, %.thread.i292 ], [ %i.wh, %bb.cf ]
  %i.xs = add i64 %i.wg, %i.wh
  %i.xt = sub i64 %i.xs, %.143.pre-phi48.i        ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.150.i, i64 %i.xt
  %min.iters.check70.a = icmp ult i64 %i.xt, 4
  %.13049.i67 = ptrtoaddr ptr %.13049.i to i64
  %.150.i66 = ptrtoaddr ptr %.150.i to i64
  %i.xu = sub i64 %.13049.i67, %.150.i66
  %diff.check68 = icmp ugt i64 %i.xu, -32
  %or.cond309 = select i1 %min.iters.check70.a, i1 true, i1 %diff.check68
  br i1 %or.cond309, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check71

vector.main.loop.iter.check71:                    ; preds = %iter.check88
  %min.iters.check72 = icmp ult i64 %i.xt, 32
  br i1 %min.iters.check72, label %vec.epilog.ph92, label %vector.ph73

vector.ph73:                                      ; preds = %vector.main.loop.iter.check71
  %n.mod.vf74 = and i64 %i.xt, 28
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %.23137.i.ph = phi ptr [ %.13049.i, %iter.check88 ], [ %i.xw, %vec.epilog.iter.check90 ], [ %i.yb, %vec.epilog.middle.block101 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.238.i = phi ptr [ %i.yf, %.lr.ph.i ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23137.i = phi ptr [ %i.yd, %.lr.ph.i ], [ %.23137.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.23137.i, i64 1
  %i.ye = load i8, ptr %.23137.i, align 1, !tbaa !9
  %i.yf = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  store i8 %i.ye, ptr %.238.i, align 1, !tbaa !9
  %exitcond.not.i = icmp eq ptr %i.yf, %scevgep.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph.i, !llvm.loop !182

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit: ; preds = %.lr.ph.i, %.lr.ph41.i, %middle.block83, %vec.epilog.middle.block101, %middle.block51, %vec.epilog.middle.block, %.preheader.i
  %i.yg = load i64, ptr %i.vz, align 8, !tbaa !102
  %i.yh = sub i64 %i.yg, %i.wg                    ; 2 uses
  store i64 %i.yh, ptr %i.vz, align 8, !tbaa !102
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.cc, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit
  %.sroa.0378.0.copyload = phi i64 [ %i.yh, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %i.wa, %bb.cc ] ; 8 uses
  %.1208.i = phi ptr [ %i.wl, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.0207.i758, %bb.cc ] ; 8 uses
  %.1208.i28 = ptrtoaddr ptr %.1208.i to i64
  store ptr %i.hw, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.b, align 8, !tbaa !43
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 2 uses
  %.sroa.4379.0.copyload = load i64, ptr %.sroa.4379.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vz, i64 16 ; 2 uses
  %.sroa.5380.0.copyload = load i64, ptr %.sroa.5380.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.yi = getelementptr i8, ptr %.1208.i, i64 %.sroa.0378.0.copyload ; 7 uses
  %i.yj = add i64 %.sroa.4379.0.copyload, %.sroa.0378.0.copyload ; 9 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sroa.0378.0.copyload
  %i.yl = sub i64 0, %.sroa.5380.0.copyload
  %i.ym = getelementptr inbounds i8, ptr %i.yi, i64 %i.yl ; 2 uses
  %i.yn = icmp ugt i64 %.sroa.0378.0.copyload, 65536
  %i.yo = getelementptr inbounds nuw i8, ptr %.1208.i, i64 %i.yj
  %i.yp = icmp ugt ptr %i.yo, %i.ht
  %or.cond.i = select i1 %i.yn, i1 true, i1 %i.yp, !prof !112
  br i1 %or.cond.i, label %bb.cj, label %.critedge.i, !prof !112

.critedge.i:                                      ; preds = %thread-pre-split
  %.val242 = load <2 x i64>, ptr %i.hw, align 4, !tbaa !9
  store <2 x i64> %.val242, ptr %.1208.i, align 1, !tbaa !9
  %i.yq = icmp samesign ugt i64 %.sroa.0378.0.copyload, 16
  br i1 %i.yq, label %bb.ck, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, !prof !60

bb.cj:                                            ; preds = %thread-pre-split
  store i64 %.sroa.0378.0.copyload, ptr %11, align 8, !tbaa !53
  store i64 %.sroa.4379.0.copyload, ptr %.sroa.6366.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5380.0.copyload, ptr %.sroa.12373.0..sroa_idx, align 8, !tbaa !53
  %i.yr = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.1208.i, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hx, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.ck:                                            ; preds = %.critedge.i
  %i.ys = getelementptr inbounds nuw i8, ptr %.1208.i, i64 16
  %.val206 = load <2 x i64>, ptr %i.hy, align 4, !tbaa !9
  store <2 x i64> %.val206, ptr %i.ys, align 1, !tbaa !9
  %i.yt = icmp samesign ult i64 %.sroa.0378.0.copyload, 33
  br i1 %i.yt, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yu = getelementptr inbounds nuw i8, ptr %.1208.i, i64 32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %.130.i173 = phi ptr [ %i.yu, %bb.cl ], [ %i.yx, %bb.cm ] ; 3 uses
  %.pn.i174 = phi ptr [ %i.hy, %bb.cl ], [ %i.yw, %bb.cm ] ; 2 uses
  %.1.i175 = getelementptr inbounds nuw i8, ptr %.pn.i174, i64 16
  %.1.i175.val = load <2 x i64>, ptr %.1.i175, align 1, !tbaa !9
  store <2 x i64> %.1.i175.val, ptr %.130.i173, align 1, !tbaa !9
  %i.yv = getelementptr inbounds nuw i8, ptr %.130.i173, i64 16
  %i.yw = getelementptr inbounds nuw i8, ptr %.pn.i174, i64 32 ; 2 uses
  %.val205 = load <2 x i64>, ptr %i.yw, align 1, !tbaa !9
  store <2 x i64> %.val205, ptr %i.yv, align 1, !tbaa !9
  %i.yx = getelementptr inbounds nuw i8, ptr %.130.i173, i64 32 ; 2 uses
  %i.yy = icmp ult ptr %i.yx, %i.yi
  br i1 %i.yy, label %bb.cm, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178: ; preds = %bb.cm, %bb.ck, %.critedge.i
  store ptr %i.yk, ptr %i.a, align 8, !tbaa !46
  %i.yz = ptrtoint ptr %i.yi to i64               ; 2 uses
  %i.za = sub i64 %i.yz, %i.ah                    ; 3 uses
  %i.zb = icmp ugt i64 %.sroa.5380.0.copyload, %i.za
  br i1 %i.zb, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178
  %i.zc = sub i64 %i.yz, %i.hu
  %i.zd = icmp ugt i64 %.sroa.5380.0.copyload, %i.zc
  br i1 %i.zd, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread, label %bb.co, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread678

bb.co:                                            ; preds = %bb.cn
  %i.ze = ptrtoint ptr %i.ym to i64
  %i.zf = sub i64 %i.ze, %i.ah                    ; 3 uses
  %i.zg = getelementptr inbounds i8, ptr %i.r, i64 %i.zf ; 2 uses
  %i.zh = add nsw i64 %i.zf, %.sroa.4379.0.copyload ; 2 uses
  %.not.i16 = icmp sgt i64 %i.zh, 0
  br i1 %.not.i16, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yi, ptr align 1 %i.zg, i64 %.sroa.4379.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.cq:                                            ; preds = %bb.co
  %gepdiff.i = sub nsw i64 0, %i.zf               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yi, ptr align 1 %i.zg, i64 %gepdiff.i, i1 false)
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yi, i64 %gepdiff.i
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178
  %.sroa.6366.0 = phi i64 [ %i.zh, %bb.cq ], [ %.sroa.4379.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 5 uses
  %.0622 = phi ptr [ %i.n, %bb.cq ], [ %i.ym, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 9 uses
  %.0621 = phi ptr [ %i.zi, %bb.cq ], [ %i.yi, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 12 uses
  %i.zj = icmp ugt i64 %.sroa.5380.0.copyload, 15
  br i1 %i.zj, label %bb.cs, label %bb.cv, !prof !97

bb.cs:                                            ; preds = %bb.cr
  %i.zk = getelementptr inbounds i8, ptr %.0621, i64 %.sroa.6366.0
  %.val204 = load <2 x i64>, ptr %.0622, align 1, !tbaa !9
  store <2 x i64> %.val204, ptr %.0621, align 1, !tbaa !9
  %i.zl = icmp slt i64 %.sroa.6366.0, 17
  br i1 %i.zl, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zm = getelementptr inbounds nuw i8, ptr %.0621, i64 16
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %.130.i180 = phi ptr [ %i.zm, %bb.ct ], [ %i.zp, %bb.cu ] ; 3 uses
  %.pn.i181 = phi ptr [ %.0622, %bb.ct ], [ %i.zo, %bb.cu ] ; 2 uses
  %.1.i182 = getelementptr inbounds nuw i8, ptr %.pn.i181, i64 16
  %.1.i182.val = load <2 x i64>, ptr %.1.i182, align 1, !tbaa !9
  store <2 x i64> %.1.i182.val, ptr %.130.i180, align 1, !tbaa !9
  %i.zn = getelementptr inbounds nuw i8, ptr %.130.i180, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %.pn.i181, i64 32 ; 2 uses
  %.val203 = load <2 x i64>, ptr %i.zo, align 1, !tbaa !9
  store <2 x i64> %.val203, ptr %i.zn, align 1, !tbaa !9
  %i.zp = getelementptr inbounds nuw i8, ptr %.130.i180, i64 32 ; 2 uses
  %i.zq = icmp ult ptr %i.zp, %i.zk
  br i1 %i.zq, label %bb.cu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, !llvm.loop !108

bb.cv:                                            ; preds = %bb.cr
  %i.zr = icmp samesign ult i64 %.sroa.5380.0.copyload, 8
  br i1 %i.zr, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5380.0.copyload
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !3
  %i.zu = load i8, ptr %.0622, align 1, !tbaa !9
  store i8 %i.zu, ptr %.0621, align 1, !tbaa !9
  %i.zv = getelementptr inbounds nuw i8, ptr %.0622, i64 1
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !9
  %i.zx = getelementptr inbounds nuw i8, ptr %.0621, i64 1
  store i8 %i.zw, ptr %i.zx, align 1, !tbaa !9
  %i.zy = getelementptr inbounds nuw i8, ptr %.0622, i64 2
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !9
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0621, i64 2
  store i8 %i.zz, ptr %i.aaa, align 1, !tbaa !9
  %i.aab = getelementptr inbounds nuw i8, ptr %.0622, i64 3
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !9
  %i.aad = getelementptr inbounds nuw i8, ptr %.0621, i64 3
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !9
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5380.0.copyload
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !3
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr %.0622, i64 %i.aag ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.0621, i64 4
  %.val243 = load i32, ptr %i.aah, align 1
  store i32 %.val243, ptr %i.aai, align 1
  %i.aaj = sext i32 %i.zt to i64
  %i.aak = sub nsw i64 0, %i.aaj
  %i.aal = getelementptr inbounds i8, ptr %i.aah, i64 %i.aak
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197

bb.cx:                                            ; preds = %bb.cv
  %.val249 = load i64, ptr %.0622, align 1
  store i64 %.val249, ptr %.0621, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197: ; preds = %bb.cw, %bb.cx
  %.1623 = phi ptr [ %i.aal, %bb.cw ], [ %.0622, %bb.cx ] ; 2 uses
  %.162329 = ptrtoaddr ptr %.1623 to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %.1623, i64 8 ; 7 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.0621, i64 8 ; 6 uses
  %i.aao = icmp ugt i64 %.sroa.6366.0, 8
  br i1 %i.aao, label %bb.cy, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.cy:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197
  %i.aap = ptrtoint ptr %i.aan to i64
  %i.aaq = ptrtoint ptr %i.aam to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  %i.aas = getelementptr i8, ptr %.0621, i64 %.sroa.6366.0 ; 2 uses
  %i.aat = icmp slt i64 %i.aar, 16
  br i1 %i.aat, label %.preheader710.preheader, label %bb.cz

.preheader710.preheader:                          ; preds = %bb.cy
  %16 = tail call i64 @llvm.umin.i64(i64 %.sroa.5380.0.copyload, i64 %i.za)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sroa.5380.0.copyload, i64 %i.za) ; 3 uses
  %i.aau = add i64 %.sroa.4379.0.copyload, %i.ah
  %17 = add i64 %i.aau, %16
  %i.aav = add i64 %17, %umin
  %i.aaw = sub i64 %i.aav, %.sroa.5380.0.copyload
  %i.aax = add i64 %umin, %invariant.op346
  %umax31 = tail call i64 @llvm.umax.i64(i64 %i.aaw, i64 %i.aax)
  %i.aay = add i64 %umin, %i.ah
  %18 = sub i64 %umax31, %i.aay
  %19 = add i64 %18, -9                           ; 2 uses
  %i.aaz = lshr i64 %19, 3
  %i.aba = add nuw nsw i64 %i.aaz, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %19, 72
  br i1 %min.iters.check, label %.preheader710.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader710.preheader
  %i.abb = sub i64 %.sroa.0378.0.copyload, %i.ah
  %i.abc = add i64 %i.abb, %.1208.i28
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.5380.0.copyload, i64 %i.abc)
  %i.abd = add i64 %umax, %i.ah
  %i.abe = sub i64 %.162329, %i.abd
  %diff.check = icmp ugt i64 %i.abe, -32
  br i1 %diff.check, label %.preheader710.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aba, 4611686018427387900    ; 3 uses
  %i.abf = shl i64 %n.vec, 3                      ; 2 uses
  %i.abg = getelementptr i8, ptr %i.aan, i64 %i.abf
  %i.abh = getelementptr i8, ptr %i.aam, i64 %i.abf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abi = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aan, i64 %i.abi ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.aam, i64 %i.abi ; 2 uses
  %i.abj = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 1
  %wide.load33 = load <2 x i64>, ptr %i.abj, align 1
  %i.abk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load33, ptr %i.abk, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abl = icmp eq i64 %index.next, %n.vec
  br i1 %i.abl, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aba, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, label %.preheader710.preheader322

.preheader710.preheader322:                       ; preds = %vector.memcheck, %.preheader710.preheader, %middle.block
  %.029.i190.ph = phi ptr [ %i.aan, %vector.memcheck ], [ %i.aan, %.preheader710.preheader ], [ %i.abg, %middle.block ]
  %.0.i191.ph = phi ptr [ %i.aam, %vector.memcheck ], [ %i.aam, %.preheader710.preheader ], [ %i.abh, %middle.block ]
  br label %.preheader710

.preheader710:                                    ; preds = %.preheader710.preheader322, %.preheader710
  %.029.i190 = phi ptr [ %i.abm, %.preheader710 ], [ %.029.i190.ph, %.preheader710.preheader322 ] ; 2 uses
  %.0.i191 = phi ptr [ %i.abn, %.preheader710 ], [ %.0.i191.ph, %.preheader710.preheader322 ] ; 2 uses
  %.0.i191.val = load i64, ptr %.0.i191, align 1
  store i64 %.0.i191.val, ptr %.029.i190, align 1
  %i.abm = getelementptr inbounds nuw i8, ptr %.029.i190, i64 8 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.0.i191, i64 8
  %i.abo = icmp ult ptr %i.abm, %i.aas
  br i1 %i.abo, label %.preheader710, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, !llvm.loop !184

bb.cz:                                            ; preds = %bb.cy
  %.val202 = load <2 x i64>, ptr %i.aam, align 1, !tbaa !9
  store <2 x i64> %.val202, ptr %i.aan, align 1, !tbaa !9
  %i.abp = icmp slt i64 %.sroa.6366.0, 25
  br i1 %i.abp, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.abq = getelementptr inbounds nuw i8, ptr %.0621, i64 24
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.130.i187 = phi ptr [ %i.abq, %bb.da ], [ %i.abt, %bb.db ] ; 3 uses
  %.pn.i188 = phi ptr [ %i.aam, %bb.da ], [ %i.abs, %bb.db ] ; 2 uses
  %.1.i189 = getelementptr inbounds nuw i8, ptr %.pn.i188, i64 16
  %.1.i189.val = load <2 x i64>, ptr %.1.i189, align 1, !tbaa !9
  store <2 x i64> %.1.i189.val, ptr %.130.i187, align 1, !tbaa !9
  %i.abr = getelementptr inbounds nuw i8, ptr %.130.i187, i64 16
  %i.abs = getelementptr inbounds nuw i8, ptr %.pn.i188, i64 32 ; 2 uses
  %.val201 = load <2 x i64>, ptr %i.abs, align 1, !tbaa !9
  store <2 x i64> %.val201, ptr %i.abr, align 1, !tbaa !9
  %i.abt = getelementptr inbounds nuw i8, ptr %.130.i187, i64 32 ; 2 uses
  %i.abu = icmp ult ptr %i.abt, %i.aas
  br i1 %i.abu, label %bb.db, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit: ; preds = %bb.db, %.preheader710, %bb.cu, %middle.block, %bb.cz, %bb.cs, %bb.cj, %bb.cp, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197
  %.0.i15 = phi i64 [ %i.yr, %bb.cj ], [ %i.yj, %bb.cu ], [ %i.yj, %bb.cp ], [ %i.yj, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197 ], [ %i.yj, %bb.cz ], [ %i.yj, %bb.cs ], [ %i.yj, %middle.block ], [ %i.yj, %.preheader710 ], [ %i.yj, %bb.db ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.abv = icmp ult i64 %.0.i15, -119
  br i1 %i.abv, label %bb.dc, label %.thread678

bb.dc:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit
  %i.abw = add i64 %.sroa.0.0, %.1242.i755        ; 3 uses
  %i.abx = icmp ugt i64 %.sink914, %i.abw
  %i.aby = select i1 %i.abx, ptr %i.r, ptr %i.n
  %i.abz = getelementptr inbounds i8, ptr %i.aby, i64 %i.abw
  %i.aca = sub i64 0, %.sink914
  %i.acb = getelementptr inbounds i8, ptr %i.abz, i64 %i.aca ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.acb, i32 0, i32 3, i32 1)
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.acc, i32 0, i32 3, i32 1)
  store i64 %.sroa.0.0, ptr %i.vz, align 8, !tbaa !53
  store i64 %.sroa.9.0, ptr %.sroa.4379.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink914, ptr %.sroa.5380.0..sroa_idx, align 8, !tbaa !53
  %i.acd = getelementptr inbounds nuw i8, ptr %.1208.i, i64 %.0.i15
  br label %bb.es

bb.dd:                                            ; preds = %bb.cb
  %i.ace = getelementptr inbounds i8, ptr %i.wb, i64 -32 ; 2 uses
  %.sroa.4542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %.sroa.4542.0.copyload = load i64, ptr %.sroa.4542.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %.sroa.5543.0.copyload = load i64, ptr %.sroa.5543.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.acf = getelementptr i8, ptr %.0207.i758, i64 %i.wa ; 7 uses
  %i.acg = add i64 %.sroa.4542.0.copyload, %i.wa  ; 9 uses
  %i.ach = sub i64 0, %.sroa.5543.0.copyload
  %i.aci = getelementptr inbounds i8, ptr %i.acf, i64 %i.ach ; 2 uses
  %i.acj = icmp ugt ptr %i.wb, %.0226.i757
  %i.ack = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 %i.acg
  %i.acl = icmp ugt ptr %i.ack, %i.ace
  %or.cond.i35 = select i1 %i.acj, i1 true, i1 %i.acl, !prof !112
  br i1 %or.cond.i35, label %bb.de, label %.critedge.i36, !prof !112

.critedge.i36:                                    ; preds = %bb.dd
  %.val238 = load <2 x i64>, ptr %i.vw, align 1, !tbaa !9
  store <2 x i64> %.val238, ptr %.0207.i758, align 1, !tbaa !9
  %i.acm = icmp ugt i64 %i.wa, 16
  br i1 %i.acm, label %bb.df, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94, !prof !60

bb.de:                                            ; preds = %bb.dd
  store i64 %i.wa, ptr %7, align 8, !tbaa !53
  store i64 %.sroa.4542.0.copyload, ptr %.sroa.6529.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5543.0.copyload, ptr %.sroa.12536.0..sroa_idx, align 8, !tbaa !53
  %i.acn = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0207.i758, ptr noundef %i.h, ptr noundef nonnull %i.ace, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef %.0226.i757, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit

bb.df:                                            ; preds = %.critedge.i36
  %i.aco = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 16
  %i.acp = getelementptr inbounds nuw i8, ptr %i.vw, i64 16 ; 2 uses
  %i.acq = add i64 %i.wa, -16
  %.val230 = load <2 x i64>, ptr %i.acp, align 1, !tbaa !9
  store <2 x i64> %.val230, ptr %i.aco, align 1, !tbaa !9
  %i.acr = icmp slt i64 %i.acq, 17
  br i1 %i.acr, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.acs = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %bb.dg
  %.130.i89 = phi ptr [ %i.acs, %bb.dg ], [ %i.acv, %bb.dh ] ; 3 uses
  %.pn.i90 = phi ptr [ %i.acp, %bb.dg ], [ %i.acu, %bb.dh ] ; 2 uses
  %.1.i91 = getelementptr inbounds nuw i8, ptr %.pn.i90, i64 16
  %.1.i91.val = load <2 x i64>, ptr %.1.i91, align 1, !tbaa !9
  store <2 x i64> %.1.i91.val, ptr %.130.i89, align 1, !tbaa !9
  %i.act = getelementptr inbounds nuw i8, ptr %.130.i89, i64 16
  %i.acu = getelementptr inbounds nuw i8, ptr %.pn.i90, i64 32 ; 2 uses
  %.val229 = load <2 x i64>, ptr %i.acu, align 1, !tbaa !9
  store <2 x i64> %.val229, ptr %i.act, align 1, !tbaa !9
  %i.acv = getelementptr inbounds nuw i8, ptr %.130.i89, i64 32 ; 2 uses
  %i.acw = icmp ult ptr %i.acv, %i.acf
  br i1 %i.acw, label %bb.dh, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94: ; preds = %bb.dh, %bb.df, %.critedge.i36
  store ptr %i.wb, ptr %i.a, align 8, !tbaa !46
  %i.acx = ptrtoint ptr %i.acf to i64             ; 2 uses
  %i.acy = sub i64 %i.acx, %i.ah                  ; 3 uses
  %i.acz = icmp ugt i64 %.sroa.5543.0.copyload, %i.acy
  br i1 %i.acz, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94
  %i.ada = sub i64 %i.acx, %i.hu
  %i.adb = icmp ugt i64 %.sroa.5543.0.copyload, %i.ada
  br i1 %i.adb, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, label %bb.dj, !prof !60

bb.dj:                                            ; preds = %bb.di
  %i.adc = ptrtoint ptr %i.aci to i64
  %i.add = sub i64 %i.adc, %i.ah                  ; 3 uses
  %i.ade = getelementptr inbounds i8, ptr %i.r, i64 %i.add ; 2 uses
  %i.adf = add nsw i64 %i.add, %.sroa.4542.0.copyload ; 2 uses
  %.not.i38 = icmp sgt i64 %i.adf, 0
  br i1 %.not.i38, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.acf, ptr align 1 %i.ade, i64 %.sroa.4542.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit

bb.dl:                                            ; preds = %bb.dj
  %gepdiff.i39 = sub nsw i64 0, %i.add            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.acf, ptr align 1 %i.ade, i64 %gepdiff.i39, i1 false)
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %gepdiff.i39
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94
  %.sroa.6529.0 = phi i64 [ %i.adf, %bb.dl ], [ %.sroa.4542.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94 ] ; 5 uses
  %.0610 = phi ptr [ %i.n, %bb.dl ], [ %i.aci, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94 ] ; 9 uses
  %.0609 = phi ptr [ %i.adg, %bb.dl ], [ %i.acf, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit94 ] ; 12 uses
  %i.adh = icmp ugt i64 %.sroa.5543.0.copyload, 15
  br i1 %i.adh, label %bb.dn, label %bb.dq, !prof !97

bb.dn:                                            ; preds = %bb.dm
  %i.adi = getelementptr inbounds i8, ptr %.0609, i64 %.sroa.6529.0
  %.val228 = load <2 x i64>, ptr %.0610, align 1, !tbaa !9
  store <2 x i64> %.val228, ptr %.0609, align 1, !tbaa !9
  %i.adj = icmp slt i64 %.sroa.6529.0, 17
  br i1 %i.adj, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.adk = getelementptr inbounds nuw i8, ptr %.0609, i64 16
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %bb.do
  %.130.i96 = phi ptr [ %i.adk, %bb.do ], [ %i.adn, %bb.dp ] ; 3 uses
  %.pn.i97 = phi ptr [ %.0610, %bb.do ], [ %i.adm, %bb.dp ] ; 2 uses
  %.1.i98 = getelementptr inbounds nuw i8, ptr %.pn.i97, i64 16
  %.1.i98.val = load <2 x i64>, ptr %.1.i98, align 1, !tbaa !9
  store <2 x i64> %.1.i98.val, ptr %.130.i96, align 1, !tbaa !9
  %i.adl = getelementptr inbounds nuw i8, ptr %.130.i96, i64 16
  %i.adm = getelementptr inbounds nuw i8, ptr %.pn.i97, i64 32 ; 2 uses
  %.val227 = load <2 x i64>, ptr %i.adm, align 1, !tbaa !9
  store <2 x i64> %.val227, ptr %i.adl, align 1, !tbaa !9
  %i.adn = getelementptr inbounds nuw i8, ptr %.130.i96, i64 32 ; 2 uses
  %i.ado = icmp ult ptr %i.adn, %i.adi
  br i1 %i.ado, label %bb.dp, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, !llvm.loop !108

bb.dq:                                            ; preds = %bb.dm
  %i.adp = icmp samesign ult i64 %.sroa.5543.0.copyload, 8
  br i1 %i.adp, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5543.0.copyload
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !3
  %i.ads = load i8, ptr %.0610, align 1, !tbaa !9
  store i8 %i.ads, ptr %.0609, align 1, !tbaa !9
  %i.adt = getelementptr inbounds nuw i8, ptr %.0610, i64 1
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !9
  %i.adv = getelementptr inbounds nuw i8, ptr %.0609, i64 1
  store i8 %i.adu, ptr %i.adv, align 1, !tbaa !9
  %i.adw = getelementptr inbounds nuw i8, ptr %.0610, i64 2
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !9
  %i.ady = getelementptr inbounds nuw i8, ptr %.0609, i64 2
  store i8 %i.adx, ptr %i.ady, align 1, !tbaa !9
  %i.adz = getelementptr inbounds nuw i8, ptr %.0610, i64 3
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !9
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0609, i64 3
  store i8 %i.aea, ptr %i.aeb, align 1, !tbaa !9
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5543.0.copyload
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !3
  %i.aee = zext i32 %i.aed to i64
  %i.aef = getelementptr inbounds nuw i8, ptr %.0610, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0609, i64 4
  %.val247 = load i32, ptr %i.aef, align 1
  store i32 %.val247, ptr %i.aeg, align 1
  %i.aeh = sext i32 %i.adr to i64
  %i.aei = sub nsw i64 0, %i.aeh
  %i.aej = getelementptr inbounds i8, ptr %i.aef, i64 %i.aei
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193

bb.ds:                                            ; preds = %bb.dq
  %.val253 = load i64, ptr %.0610, align 1
  store i64 %.val253, ptr %.0609, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193: ; preds = %bb.dr, %bb.ds
  %.1611 = phi ptr [ %i.aej, %bb.dr ], [ %.0610, %bb.ds ] ; 2 uses
  %.1611108 = ptrtoaddr ptr %.1611 to i64
  %i.aek = getelementptr inbounds nuw i8, ptr %.1611, i64 8 ; 7 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.0609, i64 8 ; 6 uses
  %i.aem = icmp ugt i64 %.sroa.6529.0, 8
  br i1 %i.aem, label %bb.dt, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit

bb.dt:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193
  %i.aen = ptrtoint ptr %i.ael to i64
  %i.aeo = ptrtoint ptr %i.aek to i64
  %i.aep = sub i64 %i.aen, %i.aeo
  %i.aeq = getelementptr i8, ptr %.0609, i64 %.sroa.6529.0 ; 2 uses
  %i.aer = icmp slt i64 %i.aep, 16
  br i1 %i.aer, label %.preheader714.preheader, label %bb.du

.preheader714.preheader:                          ; preds = %bb.dt
  %20 = tail call i64 @llvm.umin.i64(i64 %.sroa.5543.0.copyload, i64 %i.acy)
  %umin110 = tail call i64 @llvm.umax.i64(i64 %.sroa.5543.0.copyload, i64 %i.acy) ; 3 uses
  %i.aes = add i64 %.sroa.4542.0.copyload, %i.ah
  %21 = add i64 %i.aes, %20
  %i.aet = add i64 %21, %umin110
  %i.aeu = sub i64 %i.aet, %.sroa.5543.0.copyload
  %i.aev = add i64 %umin110, %invariant.op344
  %umax112 = tail call i64 @llvm.umax.i64(i64 %i.aeu, i64 %i.aev)
  %i.aew = add i64 %umin110, %i.ah
  %22 = sub i64 %umax112, %i.aew
  %23 = add i64 %22, -9                           ; 2 uses
  %i.aex = lshr i64 %23, 3
  %i.aey = add nuw nsw i64 %i.aex, 1              ; 2 uses
  %min.iters.check114 = icmp ult i64 %23, 72
  br i1 %min.iters.check114, label %.preheader714.preheader326, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.preheader714.preheader
  %i.aez = sub i64 %i.wa, %i.ah
  %i.afa = add i64 %i.aez, %.0207.i758106
  %umax107 = tail call i64 @llvm.umax.i64(i64 %.sroa.5543.0.copyload, i64 %i.afa)
  %i.afb = add i64 %umax107, %i.ah
  %i.afc = sub i64 %.1611108, %i.afb
  %diff.check109 = icmp ugt i64 %i.afc, -32
  br i1 %diff.check109, label %.preheader714.preheader326, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck105
  %n.vec117 = and i64 %i.aey, 4611686018427387900 ; 3 uses
  %i.afd = shl i64 %n.vec117, 3                   ; 2 uses
  %i.afe = getelementptr i8, ptr %i.ael, i64 %i.afd
  %i.aff = getelementptr i8, ptr %i.aek, i64 %i.afd
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next124, %vector.body118 ] ; 2 uses
  %i.afg = shl i64 %index119, 3                   ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.ael, i64 %i.afg ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.aek, i64 %i.afg ; 2 uses
  %i.afh = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <2 x i64>, ptr %next.gep121, align 1
  %wide.load123 = load <2 x i64>, ptr %i.afh, align 1
  %i.afi = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %wide.load122, ptr %next.gep120, align 1
  store <2 x i64> %wide.load123, ptr %i.afi, align 1
  %index.next124 = add nuw i64 %index119, 4       ; 2 uses
  %i.afj = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.afj, label %middle.block125, label %vector.body118, !llvm.loop !185

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.aey, %n.vec117
  br i1 %cmp.n126, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, label %.preheader714.preheader326

.preheader714.preheader326:                       ; preds = %vector.memcheck105, %.preheader714.preheader, %middle.block125
  %.029.i106.ph = phi ptr [ %i.ael, %vector.memcheck105 ], [ %i.ael, %.preheader714.preheader ], [ %i.afe, %middle.block125 ]
  %.0.i107.ph = phi ptr [ %i.aek, %vector.memcheck105 ], [ %i.aek, %.preheader714.preheader ], [ %i.aff, %middle.block125 ]
  br label %.preheader714

.preheader714:                                    ; preds = %.preheader714.preheader326, %.preheader714
  %.029.i106 = phi ptr [ %i.afk, %.preheader714 ], [ %.029.i106.ph, %.preheader714.preheader326 ] ; 2 uses
  %.0.i107 = phi ptr [ %i.afl, %.preheader714 ], [ %.0.i107.ph, %.preheader714.preheader326 ] ; 2 uses
  %.0.i107.val = load i64, ptr %.0.i107, align 1
  store i64 %.0.i107.val, ptr %.029.i106, align 1
  %i.afk = getelementptr inbounds nuw i8, ptr %.029.i106, i64 8 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.0.i107, i64 8
  %i.afm = icmp ult ptr %i.afk, %i.aeq
  br i1 %i.afm, label %.preheader714, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, !llvm.loop !186

bb.du:                                            ; preds = %bb.dt
  %.val226 = load <2 x i64>, ptr %i.aek, align 1, !tbaa !9
  store <2 x i64> %.val226, ptr %i.ael, align 1, !tbaa !9
  %i.afn = icmp slt i64 %.sroa.6529.0, 25
  br i1 %i.afn, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.afo = getelementptr inbounds nuw i8, ptr %.0609, i64 24
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %bb.dv
  %.130.i103 = phi ptr [ %i.afo, %bb.dv ], [ %i.afr, %bb.dw ] ; 3 uses
  %.pn.i104 = phi ptr [ %i.aek, %bb.dv ], [ %i.afq, %bb.dw ] ; 2 uses
  %.1.i105 = getelementptr inbounds nuw i8, ptr %.pn.i104, i64 16
  %.1.i105.val = load <2 x i64>, ptr %.1.i105, align 1, !tbaa !9
  store <2 x i64> %.1.i105.val, ptr %.130.i103, align 1, !tbaa !9
  %i.afp = getelementptr inbounds nuw i8, ptr %.130.i103, i64 16
  %i.afq = getelementptr inbounds nuw i8, ptr %.pn.i104, i64 32 ; 2 uses
  %.val225 = load <2 x i64>, ptr %i.afq, align 1, !tbaa !9
  store <2 x i64> %.val225, ptr %i.afp, align 1, !tbaa !9
  %i.afr = getelementptr inbounds nuw i8, ptr %.130.i103, i64 32 ; 2 uses
  %i.afs = icmp ult ptr %i.afr, %i.aeq
  br i1 %i.afs, label %bb.dw, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit: ; preds = %bb.dw, %.preheader714, %bb.dp, %middle.block125, %bb.du, %bb.dn, %bb.de, %bb.di, %bb.dk, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193
  %.0.i37 = phi i64 [ %i.acn, %bb.de ], [ -20, %bb.di ], [ %i.acg, %bb.dk ], [ %i.acg, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit193 ], [ %i.acg, %bb.dp ], [ %i.acg, %bb.dn ], [ %i.acg, %middle.block125 ], [ %i.acg, %bb.du ], [ %i.acg, %.preheader714 ], [ %i.acg, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.er

bb.dx:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14
  %i.aft = and i32 %.1239.i756, 7
  %i.afu = zext nneg i32 %i.aft to i64
  %i.afv = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.afu ; 3 uses
  %.sroa.0418.0.copyload = load i64, ptr %i.afv, align 8, !tbaa !53 ; 7 uses
  %.sroa.4419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %.sroa.4419.0.copyload = load i64, ptr %.sroa.4419.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  %.sroa.5420.0.copyload = load i64, ptr %.sroa.5420.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.afw = getelementptr i8, ptr %.0207.i758, i64 %.sroa.0418.0.copyload ; 7 uses
  %i.afx = add i64 %.sroa.4419.0.copyload, %.sroa.0418.0.copyload ; 9 uses
  %i.afy = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 %.sroa.0418.0.copyload ; 2 uses
  %i.aga = sub i64 0, %.sroa.5420.0.copyload
  %i.agb = getelementptr inbounds i8, ptr %i.afw, i64 %i.aga ; 2 uses
  %i.agc = icmp ugt ptr %i.afz, %.0226.i757
  %i.agd = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 %i.afx
  %i.age = icmp ugt ptr %i.agd, %i.ht
  %or.cond.i17 = select i1 %i.agc, i1 true, i1 %i.age, !prof !112
  br i1 %or.cond.i17, label %bb.dy, label %.critedge.i18, !prof !112

.critedge.i18:                                    ; preds = %bb.dx
  %.val241 = load <2 x i64>, ptr %i.afy, align 1, !tbaa !9
  store <2 x i64> %.val241, ptr %.0207.i758, align 1, !tbaa !9
  %i.agf = icmp ugt i64 %.sroa.0418.0.copyload, 16
  br i1 %i.agf, label %bb.dz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157, !prof !60

bb.dy:                                            ; preds = %bb.dx
  store i64 %.sroa.0418.0.copyload, ptr %10, align 8, !tbaa !53
  store i64 %.sroa.4419.0.copyload, ptr %.sroa.6406.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5420.0.copyload, ptr %.sroa.12413.0..sroa_idx, align 8, !tbaa !53
  %i.agg = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.0207.i758, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %10, ptr noundef nonnull %i.a, ptr noundef %.0226.i757, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22

bb.dz:                                            ; preds = %.critedge.i18
  %i.agh = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 16
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afy, i64 16 ; 2 uses
  %i.agj = add i64 %.sroa.0418.0.copyload, -16
  %.val212 = load <2 x i64>, ptr %i.agi, align 1, !tbaa !9
  store <2 x i64> %.val212, ptr %i.agh, align 1, !tbaa !9
  %i.agk = icmp slt i64 %i.agj, 17
  br i1 %i.agk, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.agl = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %bb.ea
  %.130.i152 = phi ptr [ %i.agl, %bb.ea ], [ %i.ago, %bb.eb ] ; 3 uses
  %.pn.i153 = phi ptr [ %i.agi, %bb.ea ], [ %i.agn, %bb.eb ] ; 2 uses
  %.1.i154 = getelementptr inbounds nuw i8, ptr %.pn.i153, i64 16
  %.1.i154.val = load <2 x i64>, ptr %.1.i154, align 1, !tbaa !9
  store <2 x i64> %.1.i154.val, ptr %.130.i152, align 1, !tbaa !9
  %i.agm = getelementptr inbounds nuw i8, ptr %.130.i152, i64 16
  %i.agn = getelementptr inbounds nuw i8, ptr %.pn.i153, i64 32 ; 2 uses
  %.val211 = load <2 x i64>, ptr %i.agn, align 1, !tbaa !9
  store <2 x i64> %.val211, ptr %i.agm, align 1, !tbaa !9
  %i.ago = getelementptr inbounds nuw i8, ptr %.130.i152, i64 32 ; 2 uses
  %i.agp = icmp ult ptr %i.ago, %i.afw
  br i1 %i.agp, label %bb.eb, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157: ; preds = %bb.eb, %bb.dz, %.critedge.i18
  store ptr %i.afz, ptr %i.a, align 8, !tbaa !46
  %i.agq = ptrtoint ptr %i.afw to i64             ; 2 uses
  %i.agr = sub i64 %i.agq, %i.ah                  ; 3 uses
  %i.ags = icmp ugt i64 %.sroa.5420.0.copyload, %i.agr
  br i1 %i.ags, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157
  %i.agt = sub i64 %i.agq, %i.hu
  %i.agu = icmp ugt i64 %.sroa.5420.0.copyload, %i.agt
  br i1 %i.agu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, label %bb.ed, !prof !60

bb.ed:                                            ; preds = %bb.ec
  %i.agv = ptrtoint ptr %i.agb to i64
  %i.agw = sub i64 %i.agv, %i.ah                  ; 3 uses
  %i.agx = getelementptr inbounds i8, ptr %i.r, i64 %i.agw ; 2 uses
  %i.agy = add nsw i64 %i.agw, %.sroa.4419.0.copyload ; 2 uses
  %.not.i20 = icmp sgt i64 %i.agy, 0
  br i1 %.not.i20, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afw, ptr align 1 %i.agx, i64 %.sroa.4419.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22

bb.ef:                                            ; preds = %bb.ed
  %gepdiff.i21 = sub nsw i64 0, %i.agw            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afw, ptr align 1 %i.agx, i64 %gepdiff.i21, i1 false)
  %i.agz = getelementptr inbounds nuw i8, ptr %i.afw, i64 %gepdiff.i21
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157
  %.sroa.6406.0 = phi i64 [ %i.agy, %bb.ef ], [ %.sroa.4419.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157 ] ; 5 uses
  %.0619 = phi ptr [ %i.n, %bb.ef ], [ %i.agb, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157 ] ; 9 uses
  %.0618 = phi ptr [ %i.agz, %bb.ef ], [ %i.afw, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit157 ] ; 12 uses
  %i.aha = icmp ugt i64 %.sroa.5420.0.copyload, 15
  br i1 %i.aha, label %bb.eh, label %bb.ek, !prof !97

bb.eh:                                            ; preds = %bb.eg
  %i.ahb = getelementptr inbounds i8, ptr %.0618, i64 %.sroa.6406.0
  %.val210 = load <2 x i64>, ptr %.0619, align 1, !tbaa !9
  store <2 x i64> %.val210, ptr %.0618, align 1, !tbaa !9
  %i.ahc = icmp slt i64 %.sroa.6406.0, 17
  br i1 %i.ahc, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0618, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %bb.ei
  %.130.i159 = phi ptr [ %i.ahd, %bb.ei ], [ %i.ahg, %bb.ej ] ; 3 uses
  %.pn.i160 = phi ptr [ %.0619, %bb.ei ], [ %i.ahf, %bb.ej ] ; 2 uses
  %.1.i161 = getelementptr inbounds nuw i8, ptr %.pn.i160, i64 16
  %.1.i161.val = load <2 x i64>, ptr %.1.i161, align 1, !tbaa !9
  store <2 x i64> %.1.i161.val, ptr %.130.i159, align 1, !tbaa !9
  %i.ahe = getelementptr inbounds nuw i8, ptr %.130.i159, i64 16
  %i.ahf = getelementptr inbounds nuw i8, ptr %.pn.i160, i64 32 ; 2 uses
  %.val209 = load <2 x i64>, ptr %i.ahf, align 1, !tbaa !9
  store <2 x i64> %.val209, ptr %i.ahe, align 1, !tbaa !9
  %i.ahg = getelementptr inbounds nuw i8, ptr %.130.i159, i64 32 ; 2 uses
  %i.ahh = icmp ult ptr %i.ahg, %i.ahb
  br i1 %i.ahh, label %bb.ej, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, !llvm.loop !108

bb.ek:                                            ; preds = %bb.eg
  %i.ahi = icmp samesign ult i64 %.sroa.5420.0.copyload, 8
  br i1 %i.ahi, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5420.0.copyload
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !3
  %i.ahl = load i8, ptr %.0619, align 1, !tbaa !9
  store i8 %i.ahl, ptr %.0618, align 1, !tbaa !9
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0619, i64 1
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !9
  %i.aho = getelementptr inbounds nuw i8, ptr %.0618, i64 1
  store i8 %i.ahn, ptr %i.aho, align 1, !tbaa !9
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0619, i64 2
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !9
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0618, i64 2
  store i8 %i.ahq, ptr %i.ahr, align 1, !tbaa !9
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0619, i64 3
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !9
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0618, i64 3
  store i8 %i.aht, ptr %i.ahu, align 1, !tbaa !9
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5420.0.copyload
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !3
  %i.ahx = zext i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0619, i64 %i.ahx ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0618, i64 4
  %.val244 = load i32, ptr %i.ahy, align 1
  store i32 %.val244, ptr %i.ahz, align 1
  %i.aia = sext i32 %i.ahk to i64
  %i.aib = sub nsw i64 0, %i.aia
  %i.aic = getelementptr inbounds i8, ptr %i.ahy, i64 %i.aib
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196

bb.em:                                            ; preds = %bb.ek
  %.val250 = load i64, ptr %.0619, align 1
  store i64 %.val250, ptr %.0618, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196: ; preds = %bb.el, %bb.em
  %.1620 = phi ptr [ %i.aic, %bb.el ], [ %.0619, %bb.em ] ; 2 uses
  %.1620131 = ptrtoaddr ptr %.1620 to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %.1620, i64 8 ; 7 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0618, i64 8 ; 6 uses
  %i.aif = icmp ugt i64 %.sroa.6406.0, 8
  br i1 %i.aif, label %bb.en, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22

bb.en:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196
  %i.aig = ptrtoint ptr %i.aie to i64
  %i.aih = ptrtoint ptr %i.aid to i64
  %i.aii = sub i64 %i.aig, %i.aih
  %i.aij = getelementptr i8, ptr %.0618, i64 %.sroa.6406.0 ; 2 uses
  %i.aik = icmp slt i64 %i.aii, 16
  br i1 %i.aik, label %.preheader717.preheader, label %bb.eo

.preheader717.preheader:                          ; preds = %bb.en
  %24 = tail call i64 @llvm.umin.i64(i64 %.sroa.5420.0.copyload, i64 %i.agr)
  %umin133 = tail call i64 @llvm.umax.i64(i64 %.sroa.5420.0.copyload, i64 %i.agr) ; 3 uses
  %i.ail = add i64 %.sroa.4419.0.copyload, %i.ah
  %25 = add i64 %i.ail, %24
  %i.aim = add i64 %25, %umin133
  %i.ain = sub i64 %i.aim, %.sroa.5420.0.copyload
  %i.aio = add i64 %umin133, %i.hz
  %umax135 = tail call i64 @llvm.umax.i64(i64 %i.ain, i64 %i.aio)
  %i.aip = add i64 %umin133, %i.ah
  %26 = sub i64 %umax135, %i.aip
  %27 = add i64 %26, -9                           ; 2 uses
  %i.aiq = lshr i64 %27, 3
  %i.air = add nuw nsw i64 %i.aiq, 1              ; 2 uses
  %min.iters.check137 = icmp ult i64 %27, 72
  br i1 %min.iters.check137, label %.preheader717.preheader329, label %vector.memcheck129

vector.memcheck129:                               ; preds = %.preheader717.preheader
  %i.ais = sub i64 %.sroa.0418.0.copyload, %i.ah
  %i.ait = add i64 %i.ais, %.0207.i758106
  %umax130 = tail call i64 @llvm.umax.i64(i64 %.sroa.5420.0.copyload, i64 %i.ait)
  %i.aiu = add i64 %umax130, %i.ah
  %i.aiv = sub i64 %.1620131, %i.aiu
  %diff.check132 = icmp ugt i64 %i.aiv, -32
  br i1 %diff.check132, label %.preheader717.preheader329, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck129
  %n.vec140 = and i64 %i.air, 4611686018427387900 ; 3 uses
  %i.aiw = shl i64 %n.vec140, 3                   ; 2 uses
  %i.aix = getelementptr i8, ptr %i.aie, i64 %i.aiw
  %i.aiy = getelementptr i8, ptr %i.aid, i64 %i.aiw
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.aiz = shl i64 %index142, 3                   ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.aie, i64 %i.aiz ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.aid, i64 %i.aiz ; 2 uses
  %i.aja = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load145 = load <2 x i64>, ptr %next.gep144, align 1
  %wide.load146 = load <2 x i64>, ptr %i.aja, align 1
  %i.ajb = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load145, ptr %next.gep143, align 1
  store <2 x i64> %wide.load146, ptr %i.ajb, align 1
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.ajc = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.ajc, label %middle.block148, label %vector.body141, !llvm.loop !187

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.air, %n.vec140
  br i1 %cmp.n149, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, label %.preheader717.preheader329

.preheader717.preheader329:                       ; preds = %vector.memcheck129, %.preheader717.preheader, %middle.block148
  %.029.i169.ph = phi ptr [ %i.aie, %vector.memcheck129 ], [ %i.aie, %.preheader717.preheader ], [ %i.aix, %middle.block148 ]
  %.0.i170.ph = phi ptr [ %i.aid, %vector.memcheck129 ], [ %i.aid, %.preheader717.preheader ], [ %i.aiy, %middle.block148 ]
  br label %.preheader717

.preheader717:                                    ; preds = %.preheader717.preheader329, %.preheader717
  %.029.i169 = phi ptr [ %i.ajd, %.preheader717 ], [ %.029.i169.ph, %.preheader717.preheader329 ] ; 2 uses
  %.0.i170 = phi ptr [ %i.aje, %.preheader717 ], [ %.0.i170.ph, %.preheader717.preheader329 ] ; 2 uses
  %.0.i170.val = load i64, ptr %.0.i170, align 1
  store i64 %.0.i170.val, ptr %.029.i169, align 1
  %i.ajd = getelementptr inbounds nuw i8, ptr %.029.i169, i64 8 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.0.i170, i64 8
  %i.ajf = icmp ult ptr %i.ajd, %i.aij
  br i1 %i.ajf, label %.preheader717, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, !llvm.loop !188

bb.eo:                                            ; preds = %bb.en
  %.val208 = load <2 x i64>, ptr %i.aid, align 1, !tbaa !9
  store <2 x i64> %.val208, ptr %i.aie, align 1, !tbaa !9
  %i.ajg = icmp slt i64 %.sroa.6406.0, 25
  br i1 %i.ajg, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0618, i64 24
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.130.i166 = phi ptr [ %i.ajh, %bb.ep ], [ %i.ajk, %bb.eq ] ; 3 uses
  %.pn.i167 = phi ptr [ %i.aid, %bb.ep ], [ %i.ajj, %bb.eq ] ; 2 uses
  %.1.i168 = getelementptr inbounds nuw i8, ptr %.pn.i167, i64 16
  %.1.i168.val = load <2 x i64>, ptr %.1.i168, align 1, !tbaa !9
  store <2 x i64> %.1.i168.val, ptr %.130.i166, align 1, !tbaa !9
  %i.aji = getelementptr inbounds nuw i8, ptr %.130.i166, i64 16
  %i.ajj = getelementptr inbounds nuw i8, ptr %.pn.i167, i64 32 ; 2 uses
  %.val207 = load <2 x i64>, ptr %i.ajj, align 1, !tbaa !9
  store <2 x i64> %.val207, ptr %i.aji, align 1, !tbaa !9
  %i.ajk = getelementptr inbounds nuw i8, ptr %.130.i166, i64 32 ; 2 uses
  %i.ajl = icmp ult ptr %i.ajk, %i.aij
  br i1 %i.ajl, label %bb.eq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22: ; preds = %bb.eq, %.preheader717, %bb.ej, %middle.block148, %bb.eo, %bb.eh, %bb.dy, %bb.ec, %bb.ee, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196
  %.0.i19 = phi i64 [ %i.agg, %bb.dy ], [ -20, %bb.ec ], [ %i.afx, %bb.ee ], [ %i.afx, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196 ], [ %i.afx, %bb.ej ], [ %i.afx, %bb.eh ], [ %i.afx, %middle.block148 ], [ %i.afx, %bb.eo ], [ %i.afx, %.preheader717 ], [ %i.afx, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.er

bb.er:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit
  %i.ajm = phi i64 [ %.0.i37, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit ], [ %.0.i19, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit22 ] ; 3 uses
  %i.ajn = icmp ult i64 %i.ajm, -119
  br i1 %i.ajn, label %.thread643, label %.thread678

.thread643:                                       ; preds = %bb.er
  %i.ajo = add i64 %.sroa.0.0, %.1242.i755        ; 3 uses
  %i.ajp = icmp ugt i64 %.sink914, %i.ajo
  %i.ajq = select i1 %i.ajp, ptr %i.r, ptr %i.n
  %i.ajr = getelementptr inbounds i8, ptr %i.ajq, i64 %i.ajo
  %i.ajs = sub i64 0, %.sink914
  %i.ajt = getelementptr inbounds i8, ptr %i.ajr, i64 %i.ajs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ajt, i32 0, i32 3, i32 1)
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aju, i32 0, i32 3, i32 1)
  %i.ajv = and i32 %.1239.i756, 7
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.ajw ; 3 uses
  store i64 %.sroa.0.0, ptr %i.ajx, align 8, !tbaa !53
  %.sroa.9.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx320, align 8, !tbaa !53
  %.sroa.12.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %i.ajx, i64 16
  store i64 %.sink914, ptr %.sroa.12.0..sroa_idx326, align 8, !tbaa !53
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0207.i758, i64 %i.ajm
  br label %bb.es

bb.es:                                            ; preds = %.thread643, %bb.dc
  %.pn = phi i64 [ %i.ajo, %.thread643 ], [ %i.abw, %bb.dc ]
  %.3229.i.ph = phi ptr [ %.0226.i757, %.thread643 ], [ %i.hx, %bb.dc ] ; 2 uses
  %.6213.i.ph = phi ptr [ %i.ajy, %.thread643 ], [ %i.acd, %bb.dc ] ; 2 uses
  %.6247.i.ph = add i64 %.pn, %.sroa.9.0
  %i.ajz = add nuw i32 %.1239.i756, 1             ; 2 uses
  %exitcond799.not = icmp eq i32 %i.ajz, %5
  br i1 %exitcond799.not, label %._crit_edge, label %bb.bd, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.es, %.preheader720
  %i.aka = phi i32 [ %i.hh, %.preheader720 ], [ %i.vq, %bb.es ]
  %i.akb = phi ptr [ %i.hi, %.preheader720 ], [ %i.vp, %bb.es ]
  %i.akc = phi i64 [ %i.hj, %.preheader720 ], [ %i.rz, %bb.es ]
  %i.akd = phi i64 [ %i.hk, %.preheader720 ], [ %.sink915, %bb.es ]
  %i.ake = phi i64 [ %i.hl, %.preheader720 ], [ %.sink914, %bb.es ]
  %.1239.i.lcssa = phi i32 [ %.0238.i.lcssa, %.preheader720 ], [ %5, %bb.es ]
  %.0226.i.lcssa = phi ptr [ %i.l, %.preheader720 ], [ %.3229.i.ph, %bb.es ] ; 2 uses
  %.0207.i.lcssa = phi ptr [ %1, %.preheader720 ], [ %.6213.i.ph, %bb.es ] ; 2 uses
  %i.akf = icmp eq ptr %i.akb, %3
  %.not = icmp eq i32 %i.aka, 64
  %or.cond = select i1 %i.akf, i1 %.not, i1 false
  br i1 %or.cond, label %bb.et, label %.thread678

bb.et:                                            ; preds = %._crit_edge
  %i.akg = sub nsw i32 %.1239.i.lcssa, %i.af      ; 2 uses
  %i.akh = icmp slt i32 %i.akg, %5
  br i1 %i.akh, label %.lr.ph774, label %.preheader

.lr.ph774:                                        ; preds = %bb.et
  %i.aki = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.akj = ptrtoint ptr %i.p to i64               ; 3 uses
  %.sroa.6488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.12495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.12577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.akk = ptrtoint ptr %i.h to i64
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.12454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ako = add i64 %i.ah, 16
  %i.akp = add i64 %i.ah, 16
  %i.akq = add i64 %i.ah, 16
  br label %bb.eu

.preheader:                                       ; preds = %bb.hl, %bb.et
  %.4230.i.lcssa = phi ptr [ %.0226.i.lcssa, %bb.et ], [ %.6232.i, %bb.hl ]
  %.7214.i.lcssa = phi ptr [ %.0207.i.lcssa, %bb.et ], [ %.12219.i, %bb.hl ]
  %i.akr = trunc i64 %i.ake to i32
  store i32 %i.akr, ptr %i.t, align 4, !tbaa !3
  %i.aks = trunc i64 %i.akd to i32
  store i32 %i.aks, ptr %i.x, align 8, !tbaa !3
  %i.akt = trunc i64 %i.akc to i32
  store i32 %i.akt, ptr %i.ab, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.pre810 = load i32, ptr %i.b, align 8, !tbaa !43
  %.pre811.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.hm

bb.eu:                                            ; preds = %.lr.ph774, %bb.hl
  %.7214.i769 = phi ptr [ %.0207.i.lcssa, %.lr.ph774 ], [ %.12219.i, %bb.hl ] ; 26 uses
  %.4230.i767 = phi ptr [ %.0226.i.lcssa, %.lr.ph774 ], [ %.6232.i, %bb.hl ] ; 5 uses
  %.2240.i766 = phi i32 [ %i.akg, %.lr.ph774 ], [ %i.ayf, %bb.hl ] ; 2 uses
  %.7214.i769256 = ptrtoaddr ptr %.7214.i769 to i64 ; 2 uses
  %i.aku = and i32 %.2240.i766, 7
  %i.akv = zext nneg i32 %i.aku to i64
  %i.akw = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.akv ; 10 uses
  %i.akx = load i32, ptr %i.b, align 8, !tbaa !43
  %i.aky = icmp eq i32 %i.akx, 2
  br i1 %i.aky, label %bb.ev, label %bb.gq

bb.ev:                                            ; preds = %bb.eu
  %i.akz = load ptr, ptr %i.a, align 8, !tbaa !46 ; 14 uses
  %i.ala = load i64, ptr %i.akw, align 8, !tbaa !102 ; 8 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.ala ; 4 uses
  %i.alc = load ptr, ptr %i.k, align 8, !tbaa !42 ; 3 uses
  %i.ald = icmp ugt ptr %i.alb, %i.alc
  br i1 %i.ald, label %bb.ew, label %bb.fw

bb.ew:                                            ; preds = %bb.ev
  %i.ale = ptrtoint ptr %i.alc to i64             ; 2 uses
  %i.alf = ptrtoint ptr %i.akz to i64             ; 4 uses
  %i.alg = sub i64 %i.ale, %i.alf                 ; 9 uses
  %.not270.i = icmp eq ptr %i.alc, %i.akz
  br i1 %.not270.i, label %thread-pre-split659, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.alh = ptrtoint ptr %.7214.i769 to i64        ; 8 uses
  %i.ali = sub i64 %i.akk, %i.alh
  %i.alj = icmp ugt i64 %i.alg, %i.ali
  br i1 %i.alj, label %.thread678, label %bb.ey
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %.23137.i302.ph = phi ptr [ %.13049.i297, %iter.check238 ], [ %i.amw, %vec.epilog.iter.check240 ], [ %i.anb, %vec.epilog.middle.block251 ]
  br label %.lr.ph.i300

.lr.ph.i300:                                      ; preds = %.lr.ph.i300.preheader, %.lr.ph.i300
  %.238.i301 = phi ptr [ %i.anf, %.lr.ph.i300 ], [ %.238.i301.ph, %.lr.ph.i300.preheader ] ; 2 uses
  %.23137.i302 = phi ptr [ %i.and, %.lr.ph.i300 ], [ %.23137.i302.ph, %.lr.ph.i300.preheader ] ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %.23137.i302, i64 1
  %i.ane = load i8, ptr %.23137.i302, align 1, !tbaa !9
  %i.anf = getelementptr inbounds nuw i8, ptr %.238.i301, i64 1 ; 2 uses
  store i8 %i.ane, ptr %.238.i301, align 1, !tbaa !9
  %exitcond.not.i303 = icmp eq ptr %i.anf, %scevgep.i299
  br i1 %exitcond.not.i303, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316, label %.lr.ph.i300, !llvm.loop !194

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316: ; preds = %.lr.ph.i300, %.lr.ph41.i313, %middle.block233, %vec.epilog.middle.block251, %middle.block193, %vec.epilog.middle.block211, %.preheader.i312
  %i.ang = load i64, ptr %i.akw, align 8, !tbaa !102
  %i.anh = sub i64 %i.ang, %i.alg                 ; 2 uses
  store i64 %i.anh, ptr %i.akw, align 8, !tbaa !102
  br label %thread-pre-split659

thread-pre-split659:                              ; preds = %bb.ew, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316
  %.sroa.0459.0.copyload = phi i64 [ %i.anh, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316 ], [ %i.ala, %bb.ew ] ; 8 uses
  %.8215.i = phi ptr [ %i.all, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit316 ], [ %.7214.i769, %bb.ew ] ; 8 uses
  %.8215.i153 = ptrtoaddr ptr %.8215.i to i64
  store ptr %i.akl, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.b, align 8, !tbaa !43
  %.sroa.4460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  %.sroa.4460.0.copyload = load i64, ptr %.sroa.4460.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %.sroa.5461.0.copyload = load i64, ptr %.sroa.5461.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ani = getelementptr i8, ptr %.8215.i, i64 %.sroa.0459.0.copyload ; 7 uses
  %i.anj = add i64 %.sroa.4460.0.copyload, %.sroa.0459.0.copyload ; 9 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.akl, i64 %.sroa.0459.0.copyload
  %i.anl = sub i64 0, %.sroa.5461.0.copyload
  %i.anm = getelementptr inbounds i8, ptr %i.ani, i64 %i.anl ; 2 uses
  %i.ann = icmp ugt i64 %.sroa.0459.0.copyload, 65536
  %i.ano = getelementptr inbounds nuw i8, ptr %.8215.i, i64 %i.anj
  %i.anp = icmp ugt ptr %i.ano, %i.aki
  %or.cond.i23 = select i1 %i.ann, i1 true, i1 %i.anp, !prof !112
  br i1 %or.cond.i23, label %bb.fd, label %.critedge.i24, !prof !112

.critedge.i24:                                    ; preds = %thread-pre-split659
  %.val240 = load <2 x i64>, ptr %i.akl, align 4, !tbaa !9
  store <2 x i64> %.val240, ptr %.8215.i, align 1, !tbaa !9
  %i.anq = icmp samesign ugt i64 %.sroa.0459.0.copyload, 16
  br i1 %i.anq, label %bb.fe, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, !prof !60

bb.fd:                                            ; preds = %thread-pre-split659
  store i64 %.sroa.0459.0.copyload, ptr %9, align 8, !tbaa !53
  store i64 %.sroa.4460.0.copyload, ptr %.sroa.6447.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5461.0.copyload, ptr %.sroa.12454.0..sroa_idx, align 8, !tbaa !53
  %i.anr = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.8215.i, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.akm, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %.loopexit

bb.fe:                                            ; preds = %.critedge.i24
  %i.ans = getelementptr inbounds nuw i8, ptr %.8215.i, i64 16
  %.val218 = load <2 x i64>, ptr %i.akn, align 4, !tbaa !9
  store <2 x i64> %.val218, ptr %i.ans, align 1, !tbaa !9
  %i.ant = icmp samesign ult i64 %.sroa.0459.0.copyload, 33
  br i1 %i.ant, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.anu = getelementptr inbounds nuw i8, ptr %.8215.i, i64 32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %bb.ff
  %.130.i131 = phi ptr [ %i.anu, %bb.ff ], [ %i.anx, %bb.fg ] ; 3 uses
  %.pn.i132 = phi ptr [ %i.akn, %bb.ff ], [ %i.anw, %bb.fg ] ; 2 uses
  %.1.i133 = getelementptr inbounds nuw i8, ptr %.pn.i132, i64 16
  %.1.i133.val = load <2 x i64>, ptr %.1.i133, align 1, !tbaa !9
  store <2 x i64> %.1.i133.val, ptr %.130.i131, align 1, !tbaa !9
  %i.anv = getelementptr inbounds nuw i8, ptr %.130.i131, i64 16
  %i.anw = getelementptr inbounds nuw i8, ptr %.pn.i132, i64 32 ; 2 uses
  %.val217 = load <2 x i64>, ptr %i.anw, align 1, !tbaa !9
  store <2 x i64> %.val217, ptr %i.anv, align 1, !tbaa !9
  %i.anx = getelementptr inbounds nuw i8, ptr %.130.i131, i64 32 ; 2 uses
  %i.any = icmp ult ptr %i.anx, %i.ani
  br i1 %i.any, label %bb.fg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136: ; preds = %bb.fg, %bb.fe, %.critedge.i24
  store ptr %i.ank, ptr %i.a, align 8, !tbaa !46
  %i.anz = ptrtoint ptr %i.ani to i64             ; 2 uses
  %i.aoa = sub i64 %i.anz, %i.ah                  ; 3 uses
  %i.aob = icmp ugt i64 %.sroa.5461.0.copyload, %i.aoa
  br i1 %i.aob, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136
  %i.aoc = sub i64 %i.anz, %i.akj
  %i.aod = icmp ugt i64 %.sroa.5461.0.copyload, %i.aoc
  br i1 %i.aod, label %.thread665, label %bb.fi, !prof !60

.thread665:                                       ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread678

bb.fi:                                            ; preds = %bb.fh
  %i.aoe = ptrtoint ptr %i.anm to i64
  %i.aof = sub i64 %i.aoe, %i.ah                  ; 3 uses
  %i.aog = getelementptr inbounds i8, ptr %i.r, i64 %i.aof ; 2 uses
  %i.aoh = add nsw i64 %i.aof, %.sroa.4460.0.copyload ; 2 uses
  %.not.i26 = icmp sgt i64 %i.aoh, 0
  br i1 %.not.i26, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ani, ptr align 1 %i.aog, i64 %.sroa.4460.0.copyload, i1 false)
  br label %.loopexit

bb.fk:                                            ; preds = %bb.fi
  %gepdiff.i27 = sub nsw i64 0, %i.aof            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ani, ptr align 1 %i.aog, i64 %gepdiff.i27, i1 false)
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.ani, i64 %gepdiff.i27
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136
  %.sroa.6447.0 = phi i64 [ %i.aoh, %bb.fk ], [ %.sroa.4460.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 5 uses
  %.0616 = phi ptr [ %i.n, %bb.fk ], [ %i.anm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 9 uses
  %.0615 = phi ptr [ %i.aoi, %bb.fk ], [ %i.ani, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 12 uses
  %i.aoj = icmp ugt i64 %.sroa.5461.0.copyload, 15
  br i1 %i.aoj, label %bb.fm, label %bb.fp, !prof !97

bb.fm:                                            ; preds = %bb.fl
  %i.aok = getelementptr inbounds i8, ptr %.0615, i64 %.sroa.6447.0
  %.val216 = load <2 x i64>, ptr %.0616, align 1, !tbaa !9
  store <2 x i64> %.val216, ptr %.0615, align 1, !tbaa !9
  %i.aol = icmp slt i64 %.sroa.6447.0, 17
  br i1 %i.aol, label %.loopexit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aom = getelementptr inbounds nuw i8, ptr %.0615, i64 16
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %bb.fn
  %.130.i138 = phi ptr [ %i.aom, %bb.fn ], [ %i.aop, %bb.fo ] ; 3 uses
  %.pn.i139 = phi ptr [ %.0616, %bb.fn ], [ %i.aoo, %bb.fo ] ; 2 uses
  %.1.i140 = getelementptr inbounds nuw i8, ptr %.pn.i139, i64 16
  %.1.i140.val = load <2 x i64>, ptr %.1.i140, align 1, !tbaa !9
  store <2 x i64> %.1.i140.val, ptr %.130.i138, align 1, !tbaa !9
  %i.aon = getelementptr inbounds nuw i8, ptr %.130.i138, i64 16
  %i.aoo = getelementptr inbounds nuw i8, ptr %.pn.i139, i64 32 ; 2 uses
  %.val215 = load <2 x i64>, ptr %i.aoo, align 1, !tbaa !9
  store <2 x i64> %.val215, ptr %i.aon, align 1, !tbaa !9
  %i.aop = getelementptr inbounds nuw i8, ptr %.130.i138, i64 32 ; 2 uses
  %i.aoq = icmp ult ptr %i.aop, %i.aok
  br i1 %i.aoq, label %bb.fo, label %.loopexit, !llvm.loop !108

bb.fp:                                            ; preds = %bb.fl
  %i.aor = icmp samesign ult i64 %.sroa.5461.0.copyload, 8
  br i1 %i.aor, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5461.0.copyload
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !3
  %i.aou = load i8, ptr %.0616, align 1, !tbaa !9
  store i8 %i.aou, ptr %.0615, align 1, !tbaa !9
  %i.aov = getelementptr inbounds nuw i8, ptr %.0616, i64 1
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !9
  %i.aox = getelementptr inbounds nuw i8, ptr %.0615, i64 1
  store i8 %i.aow, ptr %i.aox, align 1, !tbaa !9
  %i.aoy = getelementptr inbounds nuw i8, ptr %.0616, i64 2
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !9
  %i.apa = getelementptr inbounds nuw i8, ptr %.0615, i64 2
  store i8 %i.aoz, ptr %i.apa, align 1, !tbaa !9
  %i.apb = getelementptr inbounds nuw i8, ptr %.0616, i64 3
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !9
  %i.apd = getelementptr inbounds nuw i8, ptr %.0615, i64 3
  store i8 %i.apc, ptr %i.apd, align 1, !tbaa !9
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5461.0.copyload
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !3
  %i.apg = zext i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw i8, ptr %.0616, i64 %i.apg ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.0615, i64 4
  %.val245 = load i32, ptr %i.aph, align 1
  store i32 %.val245, ptr %i.api, align 1
  %i.apj = sext i32 %i.aot to i64
  %i.apk = sub nsw i64 0, %i.apj
  %i.apl = getelementptr inbounds i8, ptr %i.aph, i64 %i.apk
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195

bb.fr:                                            ; preds = %bb.fp
  %.val251 = load i64, ptr %.0616, align 1
  store i64 %.val251, ptr %.0615, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195: ; preds = %bb.fq, %bb.fr
  %.1617 = phi ptr [ %i.apl, %bb.fq ], [ %.0616, %bb.fr ] ; 2 uses
  %.1617155 = ptrtoaddr ptr %.1617 to i64
  %i.apm = getelementptr inbounds nuw i8, ptr %.1617, i64 8 ; 7 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.0615, i64 8 ; 6 uses
  %i.apo = icmp ugt i64 %.sroa.6447.0, 8
  br i1 %i.apo, label %bb.fs, label %.loopexit

bb.fs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195
  %i.app = ptrtoint ptr %i.apn to i64
  %i.apq = ptrtoint ptr %i.apm to i64
  %i.apr = sub i64 %i.app, %i.apq
  %i.aps = getelementptr i8, ptr %.0615, i64 %.sroa.6447.0 ; 2 uses
  %i.apt = icmp slt i64 %i.apr, 16
  br i1 %i.apt, label %.preheader700.preheader, label %bb.ft

.preheader700.preheader:                          ; preds = %bb.fs
  %28 = tail call i64 @llvm.umin.i64(i64 %.sroa.5461.0.copyload, i64 %i.aoa)
  %umin157 = tail call i64 @llvm.umax.i64(i64 %.sroa.5461.0.copyload, i64 %i.aoa) ; 3 uses
  %i.apu = add i64 %.sroa.4460.0.copyload, %i.ah
  %29 = add i64 %i.apu, %28
  %i.apv = add i64 %29, %umin157
  %i.apw = sub i64 %i.apv, %.sroa.5461.0.copyload
  %i.apx = add i64 %umin157, %i.akq
  %umax159 = tail call i64 @llvm.umax.i64(i64 %i.apw, i64 %i.apx)
  %i.apy = add i64 %umin157, %i.ah
  %30 = sub i64 %umax159, %i.apy
  %31 = add i64 %30, -9                           ; 2 uses
  %i.apz = lshr i64 %31, 3
  %i.aqa = add nuw nsw i64 %i.apz, 1              ; 2 uses
  %min.iters.check161 = icmp ult i64 %31, 72
  br i1 %min.iters.check161, label %.preheader700.preheader312, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.preheader700.preheader
  %i.aqb = sub i64 %.sroa.0459.0.copyload, %i.ah
  %i.aqc = add i64 %i.aqb, %.8215.i153
  %umax154 = tail call i64 @llvm.umax.i64(i64 %.sroa.5461.0.copyload, i64 %i.aqc)
  %i.aqd = add i64 %umax154, %i.ah
  %i.aqe = sub i64 %.1617155, %i.aqd
  %diff.check156 = icmp ugt i64 %i.aqe, -32
  br i1 %diff.check156, label %.preheader700.preheader312, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck152
  %n.vec164 = and i64 %i.aqa, 4611686018427387900 ; 3 uses
  %i.aqf = shl i64 %n.vec164, 3                   ; 2 uses
  %i.aqg = getelementptr i8, ptr %i.apn, i64 %i.aqf
  %i.aqh = getelementptr i8, ptr %i.apm, i64 %i.aqf
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.aqi = shl i64 %index166, 3                   ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.apn, i64 %i.aqi ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.apm, i64 %i.aqi ; 2 uses
  %i.aqj = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 1
  %wide.load170 = load <2 x i64>, ptr %i.aqj, align 1
  %i.aqk = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 1
  store <2 x i64> %wide.load170, ptr %i.aqk, align 1
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.aql = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.aql, label %middle.block172, label %vector.body165, !llvm.loop !195

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.aqa, %n.vec164
  br i1 %cmp.n173, label %.loopexit, label %.preheader700.preheader312

.preheader700.preheader312:                       ; preds = %vector.memcheck152, %.preheader700.preheader, %middle.block172
  %.029.i148.ph = phi ptr [ %i.apn, %vector.memcheck152 ], [ %i.apn, %.preheader700.preheader ], [ %i.aqg, %middle.block172 ]
  %.0.i149.ph = phi ptr [ %i.apm, %vector.memcheck152 ], [ %i.apm, %.preheader700.preheader ], [ %i.aqh, %middle.block172 ]
  br label %.preheader700

.preheader700:                                    ; preds = %.preheader700.preheader312, %.preheader700
  %.029.i148 = phi ptr [ %i.aqm, %.preheader700 ], [ %.029.i148.ph, %.preheader700.preheader312 ] ; 2 uses
  %.0.i149 = phi ptr [ %i.aqn, %.preheader700 ], [ %.0.i149.ph, %.preheader700.preheader312 ] ; 2 uses
  %.0.i149.val = load i64, ptr %.0.i149, align 1
  store i64 %.0.i149.val, ptr %.029.i148, align 1
  %i.aqm = getelementptr inbounds nuw i8, ptr %.029.i148, i64 8 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %.0.i149, i64 8
  %i.aqo = icmp ult ptr %i.aqm, %i.aps
  br i1 %i.aqo, label %.preheader700, label %.loopexit, !llvm.loop !196

bb.ft:                                            ; preds = %bb.fs
  %.val214 = load <2 x i64>, ptr %i.apm, align 1, !tbaa !9
  store <2 x i64> %.val214, ptr %i.apn, align 1, !tbaa !9
  %i.aqp = icmp slt i64 %.sroa.6447.0, 25
  br i1 %i.aqp, label %.loopexit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aqq = getelementptr inbounds nuw i8, ptr %.0615, i64 24
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fv, %bb.fu
  %.130.i145 = phi ptr [ %i.aqq, %bb.fu ], [ %i.aqt, %bb.fv ] ; 3 uses
  %.pn.i146 = phi ptr [ %i.apm, %bb.fu ], [ %i.aqs, %bb.fv ] ; 2 uses
  %.1.i147 = getelementptr inbounds nuw i8, ptr %.pn.i146, i64 16
  %.1.i147.val = load <2 x i64>, ptr %.1.i147, align 1, !tbaa !9
  store <2 x i64> %.1.i147.val, ptr %.130.i145, align 1, !tbaa !9
  %i.aqr = getelementptr inbounds nuw i8, ptr %.130.i145, i64 16
  %i.aqs = getelementptr inbounds nuw i8, ptr %.pn.i146, i64 32 ; 2 uses
  %.val213 = load <2 x i64>, ptr %i.aqs, align 1, !tbaa !9
  store <2 x i64> %.val213, ptr %i.aqr, align 1, !tbaa !9
  %i.aqt = getelementptr inbounds nuw i8, ptr %.130.i145, i64 32 ; 2 uses
  %i.aqu = icmp ult ptr %i.aqt, %i.aps
  br i1 %i.aqu, label %bb.fv, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %bb.fv, %.preheader700, %bb.fo, %middle.block172, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195, %bb.fj, %bb.fd, %bb.fm, %bb.ft
  %.0.i25 = phi i64 [ %i.anr, %bb.fd ], [ %i.anj, %bb.fo ], [ %i.anj, %bb.fj ], [ %i.anj, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195 ], [ %i.anj, %bb.ft ], [ %i.anj, %bb.fm ], [ %i.anj, %middle.block172 ], [ %i.anj, %.preheader700 ], [ %i.anj, %bb.fv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.aqv = icmp ult i64 %.0.i25, -119
  %i.aqw = getelementptr inbounds nuw i8, ptr %.8215.i, i64 %.0.i25
  br i1 %i.aqv, label %bb.hl, label %.thread678

bb.fw:                                            ; preds = %bb.ev
  %i.aqx = getelementptr inbounds i8, ptr %i.alb, i64 -32 ; 2 uses
  %.sroa.4583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  %.sroa.4583.0.copyload = load i64, ptr %.sroa.4583.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %.sroa.5584.0.copyload = load i64, ptr %.sroa.5584.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.aqy = getelementptr i8, ptr %.7214.i769, i64 %i.ala ; 7 uses
  %i.aqz = add i64 %.sroa.4583.0.copyload, %i.ala ; 9 uses
  %i.ara = sub i64 0, %.sroa.5584.0.copyload
  %i.arb = getelementptr inbounds i8, ptr %i.aqy, i64 %i.ara ; 2 uses
  %i.arc = icmp ugt ptr %i.alb, %.4230.i767
  %i.ard = getelementptr inbounds nuw i8, ptr %.7214.i769, i64 %i.aqz
  %i.are = icmp ugt ptr %i.ard, %i.aqx
  %or.cond.i40 = select i1 %i.arc, i1 true, i1 %i.are, !prof !112
  br i1 %or.cond.i40, label %bb.fx, label %.critedge.i41, !prof !112

.critedge.i41:                                    ; preds = %bb.fw
  %.val237 = load <2 x i64>, ptr %i.akz, align 1, !tbaa !9
  store <2 x i64> %.val237, ptr %.7214.i769, align 1, !tbaa !9
  %i.arf = icmp ugt i64 %i.ala, 16
  br i1 %i.arf, label %bb.fy, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !prof !60

bb.fx:                                            ; preds = %bb.fw
  store i64 %i.ala, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.4583.0.copyload, ptr %.sroa.6570.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5584.0.copyload, ptr %.sroa.12577.0..sroa_idx, align 8, !tbaa !53
  %i.arg = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.7214.i769, ptr noundef %i.h, ptr noundef nonnull %i.aqx, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %.4230.i767, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45

bb.fy:                                            ; preds = %.critedge.i41
  %i.arh = getelementptr inbounds nuw i8, ptr %.7214.i769, i64 16
  %i.ari = getelementptr inbounds nuw i8, ptr %i.akz, i64 16 ; 2 uses
  %i.arj = add i64 %i.ala, -16
  %.val236 = load <2 x i64>, ptr %i.ari, align 1, !tbaa !9
  store <2 x i64> %.val236, ptr %i.arh, align 1, !tbaa !9
  %i.ark = icmp slt i64 %i.arj, 17
  br i1 %i.ark, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.arl = getelementptr inbounds nuw i8, ptr %.7214.i769, i64 32
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ga, %bb.fz
  %.130.i = phi ptr [ %i.arl, %bb.fz ], [ %i.aro, %bb.ga ] ; 3 uses
  %.pn.i = phi ptr [ %i.ari, %bb.fz ], [ %i.arn, %bb.ga ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !9
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !9
  %i.arm = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.arn = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val235 = load <2 x i64>, ptr %i.arn, align 1, !tbaa !9
  store <2 x i64> %.val235, ptr %i.arm, align 1, !tbaa !9
  %i.aro = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.arp = icmp ult ptr %i.aro, %i.aqy
  br i1 %i.arp, label %bb.ga, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit: ; preds = %bb.ga, %bb.fy, %.critedge.i41
  store ptr %i.alb, ptr %i.a, align 8, !tbaa !46
  %i.arq = ptrtoint ptr %i.aqy to i64             ; 2 uses
  %i.arr = sub i64 %i.arq, %i.ah                  ; 3 uses
  %i.ars = icmp ugt i64 %.sroa.5584.0.copyload, %i.arr
  br i1 %i.ars, label %bb.gb, label %bb.gf

bb.gb:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  %i.art = sub i64 %i.arq, %i.akj
  %i.aru = icmp ugt i64 %.sroa.5584.0.copyload, %i.art
  br i1 %i.aru, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, label %bb.gc, !prof !60

bb.gc:                                            ; preds = %bb.gb
  %i.arv = ptrtoint ptr %i.arb to i64
  %i.arw = sub i64 %i.arv, %i.ah                  ; 3 uses
  %i.arx = getelementptr inbounds i8, ptr %i.r, i64 %i.arw ; 2 uses
  %i.ary = add nsw i64 %i.arw, %.sroa.4583.0.copyload ; 2 uses
  %.not.i43 = icmp sgt i64 %i.ary, 0
  br i1 %.not.i43, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aqy, ptr align 1 %i.arx, i64 %.sroa.4583.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45

bb.ge:                                            ; preds = %bb.gc
  %gepdiff.i44 = sub nsw i64 0, %i.arw            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aqy, ptr align 1 %i.arx, i64 %gepdiff.i44, i1 false)
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 %gepdiff.i44
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  %.sroa.6570.0 = phi i64 [ %i.ary, %bb.ge ], [ %.sroa.4583.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 5 uses
  %.0608 = phi ptr [ %i.n, %bb.ge ], [ %i.arb, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 9 uses
  %.0 = phi ptr [ %i.arz, %bb.ge ], [ %i.aqy, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 12 uses
  %i.asa = icmp ugt i64 %.sroa.5584.0.copyload, 15
  br i1 %i.asa, label %bb.gg, label %bb.gj, !prof !97

bb.gg:                                            ; preds = %bb.gf
  %i.asb = getelementptr inbounds i8, ptr %.0, i64 %.sroa.6570.0
  %.val234 = load <2 x i64>, ptr %.0608, align 1, !tbaa !9
  store <2 x i64> %.val234, ptr %.0, align 1, !tbaa !9
  %i.asc = icmp slt i64 %.sroa.6570.0, 17
  br i1 %i.asc, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.asd = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gi, %bb.gh
  %.130.i77 = phi ptr [ %i.asd, %bb.gh ], [ %i.asg, %bb.gi ] ; 3 uses
  %.pn.i78 = phi ptr [ %.0608, %bb.gh ], [ %i.asf, %bb.gi ] ; 2 uses
  %.1.i79 = getelementptr inbounds nuw i8, ptr %.pn.i78, i64 16
  %.1.i79.val = load <2 x i64>, ptr %.1.i79, align 1, !tbaa !9
  store <2 x i64> %.1.i79.val, ptr %.130.i77, align 1, !tbaa !9
  %i.ase = getelementptr inbounds nuw i8, ptr %.130.i77, i64 16
  %i.asf = getelementptr inbounds nuw i8, ptr %.pn.i78, i64 32 ; 2 uses
  %.val233 = load <2 x i64>, ptr %i.asf, align 1, !tbaa !9
  store <2 x i64> %.val233, ptr %i.ase, align 1, !tbaa !9
  %i.asg = getelementptr inbounds nuw i8, ptr %.130.i77, i64 32 ; 2 uses
  %i.ash = icmp ult ptr %i.asg, %i.asb
  br i1 %i.ash, label %bb.gi, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, !llvm.loop !108

bb.gj:                                            ; preds = %bb.gf
  %i.asi = icmp samesign ult i64 %.sroa.5584.0.copyload, 8
  br i1 %i.asi, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5584.0.copyload
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !3
  %i.asl = load i8, ptr %.0608, align 1, !tbaa !9
  store i8 %i.asl, ptr %.0, align 1, !tbaa !9
  %i.asm = getelementptr inbounds nuw i8, ptr %.0608, i64 1
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !9
  %i.aso = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.asn, ptr %i.aso, align 1, !tbaa !9
  %i.asp = getelementptr inbounds nuw i8, ptr %.0608, i64 2
  %i.asq = load i8, ptr %i.asp, align 1, !tbaa !9
  %i.asr = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.asq, ptr %i.asr, align 1, !tbaa !9
  %i.ass = getelementptr inbounds nuw i8, ptr %.0608, i64 3
  %i.ast = load i8, ptr %i.ass, align 1, !tbaa !9
  %i.asu = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.ast, ptr %i.asu, align 1, !tbaa !9
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5584.0.copyload
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !3
  %i.asx = zext i32 %i.asw to i64
  %i.asy = getelementptr inbounds nuw i8, ptr %.0608, i64 %i.asx ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.val248 = load i32, ptr %i.asy, align 1
  store i32 %.val248, ptr %i.asz, align 1
  %i.ata = sext i32 %i.ask to i64
  %i.atb = sub nsw i64 0, %i.ata
  %i.atc = getelementptr inbounds i8, ptr %i.asy, i64 %i.atb
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit

bb.gl:                                            ; preds = %bb.gj
  %.val254 = load i64, ptr %.0608, align 1
  store i64 %.val254, ptr %.0, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit: ; preds = %bb.gk, %bb.gl
  %.1 = phi ptr [ %i.atc, %bb.gk ], [ %.0608, %bb.gl ] ; 2 uses
  %.1258 = ptrtoaddr ptr %.1 to i64
  %i.atd = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.atf = icmp ugt i64 %.sroa.6570.0, 8
  br i1 %i.atf, label %bb.gm, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45

bb.gm:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit
  %i.atg = ptrtoint ptr %i.ate to i64
  %i.ath = ptrtoint ptr %i.atd to i64
  %i.ati = sub i64 %i.atg, %i.ath
  %i.atj = getelementptr i8, ptr %.0, i64 %.sroa.6570.0 ; 2 uses
  %i.atk = icmp slt i64 %i.ati, 16
  br i1 %i.atk, label %.preheader704.preheader, label %bb.gn

.preheader704.preheader:                          ; preds = %bb.gm
  %32 = tail call i64 @llvm.umin.i64(i64 %.sroa.5584.0.copyload, i64 %i.arr)
  %umin260 = tail call i64 @llvm.umax.i64(i64 %.sroa.5584.0.copyload, i64 %i.arr) ; 3 uses
  %i.atl = add i64 %.sroa.4583.0.copyload, %i.ah
  %33 = add i64 %i.atl, %32
  %i.atm = add i64 %33, %umin260
  %i.atn = sub i64 %i.atm, %.sroa.5584.0.copyload
  %i.ato = add i64 %umin260, %i.akp
  %umax262 = tail call i64 @llvm.umax.i64(i64 %i.atn, i64 %i.ato)
  %i.atp = add i64 %umin260, %i.ah
  %34 = sub i64 %umax262, %i.atp
  %35 = add i64 %34, -9                           ; 2 uses
  %i.atq = lshr i64 %35, 3
  %i.atr = add nuw nsw i64 %i.atq, 1              ; 2 uses
  %min.iters.check264 = icmp ult i64 %35, 72
  br i1 %min.iters.check264, label %.preheader704.preheader316, label %vector.memcheck255

vector.memcheck255:                               ; preds = %.preheader704.preheader
  %i.ats = sub i64 %i.ala, %i.ah
  %i.att = add i64 %i.ats, %.7214.i769256
  %umax257 = tail call i64 @llvm.umax.i64(i64 %.sroa.5584.0.copyload, i64 %i.att)
  %i.atu = add i64 %umax257, %i.ah
  %i.atv = sub i64 %.1258, %i.atu
  %diff.check259 = icmp ugt i64 %i.atv, -32
  br i1 %diff.check259, label %.preheader704.preheader316, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck255
  %n.vec267 = and i64 %i.atr, 4611686018427387900 ; 3 uses
  %i.atw = shl i64 %n.vec267, 3                   ; 2 uses
  %i.atx = getelementptr i8, ptr %i.ate, i64 %i.atw
  %i.aty = getelementptr i8, ptr %i.atd, i64 %i.atw
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph265
  %index269 = phi i64 [ 0, %vector.ph265 ], [ %index.next274, %vector.body268 ] ; 2 uses
  %i.atz = shl i64 %index269, 3                   ; 2 uses
  %next.gep270 = getelementptr i8, ptr %i.ate, i64 %i.atz ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.atd, i64 %i.atz ; 2 uses
  %i.aua = getelementptr i8, ptr %next.gep271, i64 16
  %wide.load272 = load <2 x i64>, ptr %next.gep271, align 1
  %wide.load273 = load <2 x i64>, ptr %i.aua, align 1
  %i.aub = getelementptr i8, ptr %next.gep270, i64 16
  store <2 x i64> %wide.load272, ptr %next.gep270, align 1
  store <2 x i64> %wide.load273, ptr %i.aub, align 1
  %index.next274 = add nuw i64 %index269, 4       ; 2 uses
  %i.auc = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.auc, label %middle.block275, label %vector.body268, !llvm.loop !197

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %i.atr, %n.vec267
  br i1 %cmp.n276, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, label %.preheader704.preheader316

.preheader704.preheader316:                       ; preds = %vector.memcheck255, %.preheader704.preheader, %middle.block275
  %.029.i.ph = phi ptr [ %i.ate, %vector.memcheck255 ], [ %i.ate, %.preheader704.preheader ], [ %i.atx, %middle.block275 ]
  %.0.i86.ph = phi ptr [ %i.atd, %vector.memcheck255 ], [ %i.atd, %.preheader704.preheader ], [ %i.aty, %middle.block275 ]
  br label %.preheader704

.preheader704:                                    ; preds = %.preheader704.preheader316, %.preheader704
  %.029.i = phi ptr [ %i.aud, %.preheader704 ], [ %.029.i.ph, %.preheader704.preheader316 ] ; 2 uses
  %.0.i86 = phi ptr [ %i.aue, %.preheader704 ], [ %.0.i86.ph, %.preheader704.preheader316 ] ; 2 uses
  %.0.i86.val = load i64, ptr %.0.i86, align 1
  store i64 %.0.i86.val, ptr %.029.i, align 1
  %i.aud = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.0.i86, i64 8
  %i.auf = icmp ult ptr %i.aud, %i.atj
  br i1 %i.auf, label %.preheader704, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, !llvm.loop !198

bb.gn:                                            ; preds = %bb.gm
  %.val232 = load <2 x i64>, ptr %i.atd, align 1, !tbaa !9
  store <2 x i64> %.val232, ptr %i.ate, align 1, !tbaa !9
  %i.aug = icmp slt i64 %.sroa.6570.0, 25
  br i1 %i.aug, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.auh = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gp, %bb.go
  %.130.i83 = phi ptr [ %i.auh, %bb.go ], [ %i.auk, %bb.gp ] ; 3 uses
  %.pn.i84 = phi ptr [ %i.atd, %bb.go ], [ %i.auj, %bb.gp ] ; 2 uses
  %.1.i85 = getelementptr inbounds nuw i8, ptr %.pn.i84, i64 16
  %.1.i85.val = load <2 x i64>, ptr %.1.i85, align 1, !tbaa !9
  store <2 x i64> %.1.i85.val, ptr %.130.i83, align 1, !tbaa !9
  %i.aui = getelementptr inbounds nuw i8, ptr %.130.i83, i64 16
  %i.auj = getelementptr inbounds nuw i8, ptr %.pn.i84, i64 32 ; 2 uses
  %.val231 = load <2 x i64>, ptr %i.auj, align 1, !tbaa !9
  store <2 x i64> %.val231, ptr %i.aui, align 1, !tbaa !9
  %i.auk = getelementptr inbounds nuw i8, ptr %.130.i83, i64 32 ; 2 uses
  %i.aul = icmp ult ptr %i.auk, %i.atj
  br i1 %i.aul, label %bb.gp, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45: ; preds = %bb.gp, %.preheader704, %bb.gi, %middle.block275, %bb.gn, %bb.gg, %bb.fx, %bb.gb, %bb.gd, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit
  %.0.i42 = phi i64 [ %i.arg, %bb.fx ], [ -20, %bb.gb ], [ %i.aqz, %bb.gd ], [ %i.aqz, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit ], [ %i.aqz, %bb.gi ], [ %i.aqz, %bb.gg ], [ %i.aqz, %middle.block275 ], [ %i.aqz, %bb.gn ], [ %i.aqz, %.preheader704 ], [ %i.aqz, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.hk

bb.gq:                                            ; preds = %bb.eu
  %.sroa.0500.0.copyload = load i64, ptr %i.akw, align 8, !tbaa !53 ; 7 uses
  %.sroa.4501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  %.sroa.4501.0.copyload = load i64, ptr %.sroa.4501.0..sroa_idx, align 8, !tbaa !53 ; 6 uses
  %.sroa.5502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %.sroa.5502.0.copyload = load i64, ptr %.sroa.5502.0..sroa_idx, align 8, !tbaa !53 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.aum = getelementptr i8, ptr %.7214.i769, i64 %.sroa.0500.0.copyload ; 7 uses
  %i.aun = add i64 %.sroa.4501.0.copyload, %.sroa.0500.0.copyload ; 9 uses
  %i.auo = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 %.sroa.0500.0.copyload ; 2 uses
  %i.auq = sub i64 0, %.sroa.5502.0.copyload
  %i.aur = getelementptr inbounds i8, ptr %i.aum, i64 %i.auq ; 2 uses
  %i.aus = icmp ugt ptr %i.aup, %.4230.i767
  %i.aut = getelementptr inbounds nuw i8, ptr %.7214.i769, i64 %i.aun
  %i.auu = icmp ugt ptr %i.aut, %i.aki
  %or.cond.i29 = select i1 %i.aus, i1 true, i1 %i.auu, !prof !112
  br i1 %or.cond.i29, label %bb.gr, label %.critedge.i30, !prof !112

.critedge.i30:                                    ; preds = %bb.gq
  %.val239 = load <2 x i64>, ptr %i.auo, align 1, !tbaa !9
  store <2 x i64> %.val239, ptr %.7214.i769, align 1, !tbaa !9
  %i.auv = icmp ugt i64 %.sroa.0500.0.copyload, 16
  br i1 %i.auv, label %bb.gs, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115, !prof !60

bb.gr:                                            ; preds = %bb.gq
  store i64 %.sroa.0500.0.copyload, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.4501.0.copyload, ptr %.sroa.6488.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sroa.5502.0.copyload, ptr %.sroa.12495.0..sroa_idx, align 8, !tbaa !53
  %i.auw = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7214.i769, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef %.4230.i767, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34

bb.gs:                                            ; preds = %.critedge.i30
  %i.aux = getelementptr inbounds nuw i8, ptr %.7214.i769, i64 16
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auo, i64 16 ; 2 uses
  %i.auz = add i64 %.sroa.0500.0.copyload, -16
  %.val224 = load <2 x i64>, ptr %i.auy, align 1, !tbaa !9
  store <2 x i64> %.val224, ptr %i.aux, align 1, !tbaa !9
  %i.ava = icmp slt i64 %i.auz, 17
  br i1 %i.ava, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.avb = getelementptr inbounds nuw i8, ptr %.7214.i769, i64 32
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gu, %bb.gt
  %.130.i110 = phi ptr [ %i.avb, %bb.gt ], [ %i.ave, %bb.gu ] ; 3 uses
  %.pn.i111 = phi ptr [ %i.auy, %bb.gt ], [ %i.avd, %bb.gu ] ; 2 uses
  %.1.i112 = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 16
  %.1.i112.val = load <2 x i64>, ptr %.1.i112, align 1, !tbaa !9
  store <2 x i64> %.1.i112.val, ptr %.130.i110, align 1, !tbaa !9
  %i.avc = getelementptr inbounds nuw i8, ptr %.130.i110, i64 16
  %i.avd = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 32 ; 2 uses
  %.val223 = load <2 x i64>, ptr %i.avd, align 1, !tbaa !9
  store <2 x i64> %.val223, ptr %i.avc, align 1, !tbaa !9
  %i.ave = getelementptr inbounds nuw i8, ptr %.130.i110, i64 32 ; 2 uses
  %i.avf = icmp ult ptr %i.ave, %i.aum
  br i1 %i.avf, label %bb.gu, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115: ; preds = %bb.gu, %bb.gs, %.critedge.i30
  store ptr %i.aup, ptr %i.a, align 8, !tbaa !46
  %i.avg = ptrtoint ptr %i.aum to i64             ; 2 uses
  %i.avh = sub i64 %i.avg, %i.ah                  ; 3 uses
  %i.avi = icmp ugt i64 %.sroa.5502.0.copyload, %i.avh
  br i1 %i.avi, label %bb.gv, label %bb.gz

bb.gv:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115
  %i.avj = sub i64 %i.avg, %i.akj
  %i.avk = icmp ugt i64 %.sroa.5502.0.copyload, %i.avj
  br i1 %i.avk, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, label %bb.gw, !prof !60

bb.gw:                                            ; preds = %bb.gv
  %i.avl = ptrtoint ptr %i.aur to i64
  %i.avm = sub i64 %i.avl, %i.ah                  ; 3 uses
  %i.avn = getelementptr inbounds i8, ptr %i.r, i64 %i.avm ; 2 uses
  %i.avo = add nsw i64 %i.avm, %.sroa.4501.0.copyload ; 2 uses
  %.not.i32 = icmp sgt i64 %i.avo, 0
  br i1 %.not.i32, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aum, ptr align 1 %i.avn, i64 %.sroa.4501.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34

bb.gy:                                            ; preds = %bb.gw
  %gepdiff.i33 = sub nsw i64 0, %i.avm            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aum, ptr align 1 %i.avn, i64 %gepdiff.i33, i1 false)
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aum, i64 %gepdiff.i33
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115
  %.sroa.6488.0 = phi i64 [ %i.avo, %bb.gy ], [ %.sroa.4501.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115 ] ; 5 uses
  %.0613 = phi ptr [ %i.n, %bb.gy ], [ %i.aur, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115 ] ; 9 uses
  %.0612 = phi ptr [ %i.avp, %bb.gy ], [ %i.aum, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit115 ] ; 12 uses
  %i.avq = icmp ugt i64 %.sroa.5502.0.copyload, 15
  br i1 %i.avq, label %bb.ha, label %bb.hd, !prof !97

bb.ha:                                            ; preds = %bb.gz
  %i.avr = getelementptr inbounds i8, ptr %.0612, i64 %.sroa.6488.0
  %.val222 = load <2 x i64>, ptr %.0613, align 1, !tbaa !9
  store <2 x i64> %.val222, ptr %.0612, align 1, !tbaa !9
  %i.avs = icmp slt i64 %.sroa.6488.0, 17
  br i1 %i.avs, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.avt = getelementptr inbounds nuw i8, ptr %.0612, i64 16
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hc, %bb.hb
  %.130.i117 = phi ptr [ %i.avt, %bb.hb ], [ %i.avw, %bb.hc ] ; 3 uses
  %.pn.i118 = phi ptr [ %.0613, %bb.hb ], [ %i.avv, %bb.hc ] ; 2 uses
  %.1.i119 = getelementptr inbounds nuw i8, ptr %.pn.i118, i64 16
  %.1.i119.val = load <2 x i64>, ptr %.1.i119, align 1, !tbaa !9
  store <2 x i64> %.1.i119.val, ptr %.130.i117, align 1, !tbaa !9
  %i.avu = getelementptr inbounds nuw i8, ptr %.130.i117, i64 16
  %i.avv = getelementptr inbounds nuw i8, ptr %.pn.i118, i64 32 ; 2 uses
  %.val221 = load <2 x i64>, ptr %i.avv, align 1, !tbaa !9
  store <2 x i64> %.val221, ptr %i.avu, align 1, !tbaa !9
  %i.avw = getelementptr inbounds nuw i8, ptr %.130.i117, i64 32 ; 2 uses
  %i.avx = icmp ult ptr %i.avw, %i.avr
  br i1 %i.avx, label %bb.hc, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, !llvm.loop !108

bb.hd:                                            ; preds = %bb.gz
  %i.avy = icmp samesign ult i64 %.sroa.5502.0.copyload, 8
  br i1 %i.avy, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5502.0.copyload
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !3
  %i.awb = load i8, ptr %.0613, align 1, !tbaa !9
  store i8 %i.awb, ptr %.0612, align 1, !tbaa !9
  %i.awc = getelementptr inbounds nuw i8, ptr %.0613, i64 1
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !9
  %i.awe = getelementptr inbounds nuw i8, ptr %.0612, i64 1
  store i8 %i.awd, ptr %i.awe, align 1, !tbaa !9
  %i.awf = getelementptr inbounds nuw i8, ptr %.0613, i64 2
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !9
  %i.awh = getelementptr inbounds nuw i8, ptr %.0612, i64 2
  store i8 %i.awg, ptr %i.awh, align 1, !tbaa !9
  %i.awi = getelementptr inbounds nuw i8, ptr %.0613, i64 3
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = getelementptr inbounds nuw i8, ptr %.0612, i64 3
  store i8 %i.awj, ptr %i.awk, align 1, !tbaa !9
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5502.0.copyload
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !3
  %i.awn = zext i32 %i.awm to i64
  %i.awo = getelementptr inbounds nuw i8, ptr %.0613, i64 %i.awn ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %.0612, i64 4
  %.val246 = load i32, ptr %i.awo, align 1
  store i32 %.val246, ptr %i.awp, align 1
  %i.awq = sext i32 %i.awa to i64
  %i.awr = sub nsw i64 0, %i.awq
  %i.aws = getelementptr inbounds i8, ptr %i.awo, i64 %i.awr
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194

bb.hf:                                            ; preds = %bb.hd
  %.val252 = load i64, ptr %.0613, align 1
  store i64 %.val252, ptr %.0612, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194: ; preds = %bb.he, %bb.hf
  %.1614 = phi ptr [ %i.aws, %bb.he ], [ %.0613, %bb.hf ] ; 2 uses
  %.1614281 = ptrtoaddr ptr %.1614 to i64
  %i.awt = getelementptr inbounds nuw i8, ptr %.1614, i64 8 ; 7 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.0612, i64 8 ; 6 uses
  %i.awv = icmp ugt i64 %.sroa.6488.0, 8
  br i1 %i.awv, label %bb.hg, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34

bb.hg:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194
  %i.aww = ptrtoint ptr %i.awu to i64
  %i.awx = ptrtoint ptr %i.awt to i64
  %i.awy = sub i64 %i.aww, %i.awx
  %i.awz = getelementptr i8, ptr %.0612, i64 %.sroa.6488.0 ; 2 uses
  %i.axa = icmp slt i64 %i.awy, 16
  br i1 %i.axa, label %.preheader707.preheader, label %bb.hh

.preheader707.preheader:                          ; preds = %bb.hg
  %36 = tail call i64 @llvm.umin.i64(i64 %.sroa.5502.0.copyload, i64 %i.avh)
  %umin283 = tail call i64 @llvm.umax.i64(i64 %.sroa.5502.0.copyload, i64 %i.avh) ; 3 uses
  %i.axb = add i64 %.sroa.4501.0.copyload, %i.ah
  %37 = add i64 %i.axb, %36
  %i.axc = add i64 %37, %umin283
  %i.axd = sub i64 %i.axc, %.sroa.5502.0.copyload
  %i.axe = add i64 %umin283, %i.ako
  %umax285 = tail call i64 @llvm.umax.i64(i64 %i.axd, i64 %i.axe)
  %i.axf = add i64 %umin283, %i.ah
  %38 = sub i64 %umax285, %i.axf
  %39 = add i64 %38, -9                           ; 2 uses
  %i.axg = lshr i64 %39, 3
  %i.axh = add nuw nsw i64 %i.axg, 1              ; 2 uses
  %min.iters.check287 = icmp ult i64 %39, 72
  br i1 %min.iters.check287, label %.preheader707.preheader319, label %vector.memcheck279

vector.memcheck279:                               ; preds = %.preheader707.preheader
  %i.axi = sub i64 %.sroa.0500.0.copyload, %i.ah
  %i.axj = add i64 %i.axi, %.7214.i769256
  %umax280 = tail call i64 @llvm.umax.i64(i64 %.sroa.5502.0.copyload, i64 %i.axj)
  %i.axk = add i64 %umax280, %i.ah
  %i.axl = sub i64 %.1614281, %i.axk
  %diff.check282 = icmp ugt i64 %i.axl, -32
  br i1 %diff.check282, label %.preheader707.preheader319, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck279
  %n.vec290 = and i64 %i.axh, 4611686018427387900 ; 3 uses
  %i.axm = shl i64 %n.vec290, 3                   ; 2 uses
  %i.axn = getelementptr i8, ptr %i.awu, i64 %i.axm
  %i.axo = getelementptr i8, ptr %i.awt, i64 %i.axm
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph288
  %index292 = phi i64 [ 0, %vector.ph288 ], [ %index.next297, %vector.body291 ] ; 2 uses
  %i.axp = shl i64 %index292, 3                   ; 2 uses
  %next.gep293 = getelementptr i8, ptr %i.awu, i64 %i.axp ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.awt, i64 %i.axp ; 2 uses
  %i.axq = getelementptr i8, ptr %next.gep294, i64 16
  %wide.load295 = load <2 x i64>, ptr %next.gep294, align 1
  %wide.load296 = load <2 x i64>, ptr %i.axq, align 1
  %i.axr = getelementptr i8, ptr %next.gep293, i64 16
  store <2 x i64> %wide.load295, ptr %next.gep293, align 1
  store <2 x i64> %wide.load296, ptr %i.axr, align 1
  %index.next297 = add nuw i64 %index292, 4       ; 2 uses
  %i.axs = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.axs, label %middle.block298, label %vector.body291, !llvm.loop !199

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.axh, %n.vec290
  br i1 %cmp.n299, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, label %.preheader707.preheader319

.preheader707.preheader319:                       ; preds = %vector.memcheck279, %.preheader707.preheader, %middle.block298
  %.029.i127.ph = phi ptr [ %i.awu, %vector.memcheck279 ], [ %i.awu, %.preheader707.preheader ], [ %i.axn, %middle.block298 ]
  %.0.i128.ph = phi ptr [ %i.awt, %vector.memcheck279 ], [ %i.awt, %.preheader707.preheader ], [ %i.axo, %middle.block298 ]
  br label %.preheader707

.preheader707:                                    ; preds = %.preheader707.preheader319, %.preheader707
  %.029.i127 = phi ptr [ %i.axt, %.preheader707 ], [ %.029.i127.ph, %.preheader707.preheader319 ] ; 2 uses
  %.0.i128 = phi ptr [ %i.axu, %.preheader707 ], [ %.0.i128.ph, %.preheader707.preheader319 ] ; 2 uses
  %.0.i128.val = load i64, ptr %.0.i128, align 1
  store i64 %.0.i128.val, ptr %.029.i127, align 1
  %i.axt = getelementptr inbounds nuw i8, ptr %.029.i127, i64 8 ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %.0.i128, i64 8
  %i.axv = icmp ult ptr %i.axt, %i.awz
  br i1 %i.axv, label %.preheader707, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, !llvm.loop !200

bb.hh:                                            ; preds = %bb.hg
  %.val220 = load <2 x i64>, ptr %i.awt, align 1, !tbaa !9
  store <2 x i64> %.val220, ptr %i.awu, align 1, !tbaa !9
  %i.axw = icmp slt i64 %.sroa.6488.0, 25
  br i1 %i.axw, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.axx = getelementptr inbounds nuw i8, ptr %.0612, i64 24
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hj, %bb.hi
  %.130.i124 = phi ptr [ %i.axx, %bb.hi ], [ %i.aya, %bb.hj ] ; 3 uses
  %.pn.i125 = phi ptr [ %i.awt, %bb.hi ], [ %i.axz, %bb.hj ] ; 2 uses
  %.1.i126 = getelementptr inbounds nuw i8, ptr %.pn.i125, i64 16
  %.1.i126.val = load <2 x i64>, ptr %.1.i126, align 1, !tbaa !9
  store <2 x i64> %.1.i126.val, ptr %.130.i124, align 1, !tbaa !9
  %i.axy = getelementptr inbounds nuw i8, ptr %.130.i124, i64 16
  %i.axz = getelementptr inbounds nuw i8, ptr %.pn.i125, i64 32 ; 2 uses
  %.val219 = load <2 x i64>, ptr %i.axz, align 1, !tbaa !9
  store <2 x i64> %.val219, ptr %i.axy, align 1, !tbaa !9
  %i.aya = getelementptr inbounds nuw i8, ptr %.130.i124, i64 32 ; 2 uses
  %i.ayb = icmp ult ptr %i.aya, %i.awz
  br i1 %i.ayb, label %bb.hj, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34: ; preds = %bb.hj, %.preheader707, %bb.hc, %middle.block298, %bb.hh, %bb.ha, %bb.gr, %bb.gv, %bb.gx, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194
  %.0.i31 = phi i64 [ %i.auw, %bb.gr ], [ -20, %bb.gv ], [ %i.aun, %bb.gx ], [ %i.aun, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit194 ], [ %i.aun, %bb.hc ], [ %i.aun, %bb.ha ], [ %i.aun, %middle.block298 ], [ %i.aun, %bb.hh ], [ %i.aun, %.preheader707 ], [ %i.aun, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.hk

bb.hk:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45
  %i.ayc = phi i64 [ %.0.i42, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit45 ], [ %.0.i31, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit34 ] ; 3 uses
  %i.ayd = icmp ult i64 %i.ayc, -119
  %i.aye = getelementptr inbounds nuw i8, ptr %.7214.i769, i64 %i.ayc
  br i1 %i.ayd, label %bb.hl, label %.thread678

bb.hl:                                            ; preds = %bb.hk, %.loopexit
  %.6232.i = phi ptr [ %i.akm, %.loopexit ], [ %.4230.i767, %bb.hk ] ; 2 uses
  %.12219.i = phi ptr [ %i.aqw, %.loopexit ], [ %i.aye, %bb.hk ] ; 2 uses
  %i.ayf = add i32 %.2240.i766, 1                 ; 2 uses
  %exitcond800.not = icmp eq i32 %i.ayf, %5
  br i1 %exitcond800.not, label %.preheader, label %bb.eu, !llvm.loop !132

.thread678:                                       ; preds = %bb.er, %bb.cd, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, %.loopexit, %bb.hk, %bb.ex, %bb.o, %bb.g, %bb.e, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread, %._crit_edge, %.thread665
  %.12.i.ph = phi i64 [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread ], [ -20, %bb.e ], [ -20, %bb.o ], [ -20, %.thread665 ], [ -20, %._crit_edge ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ], [ -70, %bb.ex ], [ -20, %bb.g ], [ %i.ayc, %bb.hk ], [ %.0.i25, %.loopexit ], [ %.0.i15, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit ], [ %i.ajm, %bb.er ], [ -70, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.hm:                                            ; preds = %.preheader, %bb.d
  %.pre811 = phi ptr [ %.pre811.pre, %.preheader ], [ %i.j, %bb.d ] ; 3 uses
  %i.ayg = phi i32 [ %.pre810, %.preheader ], [ %i.c, %bb.d ]
  %.9235.i = phi ptr [ %.4230.i.lcssa, %.preheader ], [ %i.l, %bb.d ] ; 2 uses
  %.15222.i = phi ptr [ %.7214.i.lcssa, %.preheader ], [ %1, %bb.d ] ; 5 uses
  %i.ayh = icmp eq i32 %i.ayg, 2
  br i1 %i.ayh, label %bb.hn, label %._crit_edge813

._crit_edge813:                                   ; preds = %bb.hm
  %.pre814 = ptrtoint ptr %i.h to i64
  br label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  %i.ayi = ptrtoint ptr %.9235.i to i64
  %i.ayj = ptrtoint ptr %.pre811 to i64
  %i.ayk = sub i64 %i.ayi, %i.ayj                 ; 3 uses
  %i.ayl = ptrtoint ptr %i.h to i64               ; 2 uses
  %i.aym = ptrtoint ptr %.15222.i to i64
  %i.ayn = sub i64 %i.ayl, %i.aym
  %.not276.i = icmp ugt i64 %i.ayk, %i.ayn
  br i1 %.not276.i, label %_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.not275.i = icmp eq ptr %.15222.i, null
  br i1 %.not275.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.15222.i, ptr align 1 %.pre811, i64 %i.ayk, i1 false)
  %i.ayo = getelementptr inbounds nuw i8, ptr %.15222.i, i64 %i.ayk
  br label %bb.hq

bb.hq:                                            ; preds = %bb.ho, %bb.hp
  %.16223.i = phi ptr [ %i.ayo, %bb.hp ], [ null, %bb.ho ]
  %i.ayp = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.ayq = getelementptr inbounds nuw i8, ptr %0, i64 95908
  br label %bb.hr

bb.hr:                                            ; preds = %._crit_edge813, %bb.hq
  %.pre-phi = phi i64 [ %.pre814, %._crit_edge813 ], [ %i.ayl, %bb.hq ]
  %i.ayr = phi ptr [ %.pre811, %._crit_edge813 ], [ %i.ayp, %bb.hq ] ; 2 uses
  %.11237.i = phi ptr [ %.9235.i, %._crit_edge813 ], [ %i.ayq, %bb.hq ]
  %.18.i = phi ptr [ %.15222.i, %._crit_edge813 ], [ %.16223.i, %bb.hq ] ; 4 uses
  %i.ays = ptrtoint ptr %.11237.i to i64
  %i.ayt = ptrtoint ptr %i.ayr to i64
  %i.ayu = sub i64 %i.ays, %i.ayt                 ; 3 uses
  %i.ayv = ptrtoint ptr %.18.i to i64
  %i.ayw = sub i64 %.pre-phi, %i.ayv
  %.not278.i = icmp ugt i64 %i.ayu, %i.ayw
  br i1 %.not278.i, label %_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.not277.i = icmp eq ptr %.18.i, null
  br i1 %.not277.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.18.i, ptr align 1 %i.ayr, i64 %i.ayu, i1 false)
  %i.ayx = getelementptr inbounds nuw i8, ptr %.18.i, i64 %i.ayu
  %i.ayy = ptrtoint ptr %i.ayx to i64
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.20.i.ph = phi i64 [ 0, %bb.hs ], [ %i.ayy, %bb.ht ]
  %i.ayz = ptrtoint ptr %1 to i64
  %i.aza = sub i64 %.20.i.ph, %i.ayz
  br label %_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %bb.hn, %bb.hr, %.thread678, %bb.hu
  %.17.i = phi i64 [ %i.aza, %bb.hu ], [ %.12.i.ph, %.thread678 ], [ -70, %bb.hr ], [ -70, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.17.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::seq_t") align 8 captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #12 {
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
  br i1 %i.p, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = ptrtoint ptr %4 to i64
  %i.r = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ugt i64 %i.a, %i.s
  br i1 %i.t, label %bb.r, label %bb.c

end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 21 uses
  br i1 %i.cw, label %bb.n, label %bb.o, !prof !60

bb.n:                                             ; preds = %bb.m
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i38 = icmp slt i64 %.idx, 8
  br i1 %.not.i.i38, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = lshr i32 %i.co, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = sub nsw i64 0, %i.cz
  %i.db = getelementptr inbounds i8, ptr %.ptr, i64 %i.da ; 4 uses
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !86
  %i.dc = and i32 %i.co, 7                        ; 2 uses
  store i32 %i.dc, ptr %i.cn, align 8, !tbaa !91
  %.val.i.i = load i64, ptr %i.db, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i.i, ptr %9, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit

bb.q:                                             ; preds = %bb.o
  %i.dd = icmp eq i64 %.idx, 0
  br i1 %i.dd, label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = lshr i32 %i.co, 3
  %i.df = zext nneg i32 %i.de to i64
  %.021.i.i40412 = tail call i64 @llvm.smin.i64(i64 %.idx, i64 %i.df) ; 2 uses
  %.021.i.i40 = trunc i64 %.021.i.i40412 to i32
  %i.dg = and i64 %.021.i.i40412, 4294967295
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %.ptr, i64 %i.dh ; 4 uses
  store ptr %i.di, ptr %i.cx, align 8, !tbaa !86
  %i.dj = shl i32 %.021.i.i40, 3
  %i.dk = sub i32 %i.co, %i.dj                    ; 2 uses
  store i32 %i.dk, ptr %i.cn, align 8, !tbaa !91
  %.val.i41 = load i64, ptr %i.di, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i41, ptr %9, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit: ; preds = %bb.n, %bb.p, %bb.q, %bb.r
  %i.dl = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.n ], [ %i.db, %bb.p ], [ %i.cg, %bb.q ], [ %i.di, %bb.r ]
  %i.dm = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.n ], [ %i.db, %bb.p ], [ %3, %bb.q ], [ %i.di, %bb.r ] ; 7 uses
  %i.dn = phi i32 [ %i.co, %bb.n ], [ %i.dc, %bb.p ], [ %i.co, %bb.q ], [ %i.dk, %bb.r ]
  %i.do = phi i64 [ %i.ci, %bb.n ], [ %.val.i.i, %bb.p ], [ %i.ci, %bb.q ], [ %.val.i41, %bb.r ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !92
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !79 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !71 ; 2 uses
  %i.dw = add i32 %i.dn, %i.dv                    ; 8 uses
  %i.dx = sub i32 0, %i.dw
  %i.dy = and i32 %i.dx, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = lshr i64 %i.do, %i.dz
  %i.eb = zext nneg i32 %i.dv to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.eb
  %i.ec = xor i64 %notmask.i.i42, -1
  %i.ed = and i64 %i.ea, %i.ec                    ; 2 uses
  store i64 %i.ed, ptr %i.dr, align 8, !tbaa !89
  %i.ee = icmp ugt i32 %i.dw, 64
  br i1 %i.ee, label %bb.s, label %bb.t, !prof !60

bb.s:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit48

bb.t:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit
  %.not.i.i43 = icmp ult ptr %i.dm, %i.ab
  br i1 %.not.i.i43, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = lshr i32 %i.dw, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.dm, i64 %i.eh ; 4 uses
  store ptr %i.ei, ptr %i.cx, align 8, !tbaa !86
  %i.ej = and i32 %i.dw, 7
  %.val.i.i44 = load i64, ptr %i.ei, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i.i44, ptr %9, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit48

bb.v:                                             ; preds = %bb.t
  %i.ek = icmp eq ptr %i.dm, %3
  br i1 %i.ek, label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit48, label %bb.w

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
  store ptr %i.ew, ptr %i.cx, align 8, !tbaa !86
  %i.ex = shl i32 %.021.i.i46, 3
  %i.ey = sub i32 %i.dw, %i.ex
  %.val.i47 = load i64, ptr %i.ew, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i47, ptr %9, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit48

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit48: ; preds = %bb.s, %bb.u, %bb.v, %bb.w
  %i.ez = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.s ], [ %i.ei, %bb.u ], [ %i.dl, %bb.v ], [ %i.ew, %bb.w ]
  %i.fa = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.s ], [ %i.ei, %bb.u ], [ %i.dm, %bb.v ], [ %i.ew, %bb.w ] ; 6 uses
  %i.fb = phi i32 [ %i.dw, %bb.s ], [ %i.ej, %bb.u ], [ %i.dw, %bb.v ], [ %i.ey, %bb.w ]
  %i.fc = phi i64 [ %i.do, %bb.s ], [ %.val.i.i44, %bb.u ], [ %i.do, %bb.v ], [ %.val.i47, %bb.w ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !92
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !93 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !71 ; 2 uses
  %i.fk = add i32 %i.fb, %i.fj                    ; 9 uses
  %i.fl = sub i32 0, %i.fk
  %i.fm = and i32 %i.fl, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = lshr i64 %i.fc, %i.fn
  %i.fp = zext nneg i32 %i.fj to i64
  %notmask.i.i49 = shl nsw i64 -1, %i.fp
  %i.fq = xor i64 %notmask.i.i49, -1
  %i.fr = and i64 %i.fo, %i.fq                    ; 2 uses
  store i32 %i.fk, ptr %i.cn, align 8, !tbaa !91
  store i64 %i.fr, ptr %i.ff, align 8, !tbaa !89
  %i.fs = icmp ugt i32 %i.fk, 64
  br i1 %i.fs, label %bb.x, label %bb.y, !prof !60

bb.x:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit48
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55

bb.y:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit48
  %.not.i.i50 = icmp ult ptr %i.fa, %i.ab
  br i1 %.not.i.i50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = lshr i32 %i.fk, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds i8, ptr %i.fa, i64 %i.fv ; 3 uses
  store ptr %i.fw, ptr %i.cx, align 8, !tbaa !86
  %i.fx = and i32 %i.fk, 7                        ; 2 uses
  store i32 %i.fx, ptr %i.cn, align 8, !tbaa !91
  %.val.i.i51 = load i64, ptr %i.fw, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i.i51, ptr %9, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55

bb.aa:                                            ; preds = %bb.y
  %i.fy = icmp eq ptr %i.fa, %3
  br i1 %i.fy, label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55, label %bb.ab

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
  store ptr %i.gk, ptr %i.cx, align 8, !tbaa !86
  %i.gl = shl i32 %.021.i.i53, 3
  %i.gm = sub i32 %i.fk, %i.gl                    ; 2 uses
  store i32 %i.gm, ptr %i.cn, align 8, !tbaa !91
  %.val.i54 = load i64, ptr %i.gk, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i54, ptr %9, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55: ; preds = %bb.x, %bb.z, %bb.aa, %bb.ab
  %i.gn = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.x ], [ %i.fw, %bb.z ], [ %i.ez, %bb.aa ], [ %i.gk, %bb.ab ]
  %i.go = phi i32 [ %i.fk, %bb.x ], [ %i.fx, %bb.z ], [ %i.fk, %bb.aa ], [ %i.gm, %bb.ab ]
  %i.gp = phi i64 [ %i.fc, %bb.x ], [ %.val.i.i51, %bb.z ], [ %i.fc, %bb.aa ], [ %.val.i54, %bb.ab ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !92
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !133
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 4 uses
  %i.gu = ptrtoint ptr %i.h to i64                ; 21 uses
  %i.gv = ptrtoint ptr %i.j to i64                ; 3 uses
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %10 = ptrtoint ptr %3 to i64
  %i.gw = ptrtoint ptr %3 to i64
  %invariant.op = add i64 %i.gu, 16
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55, %bb.bu
  %i.gx = phi ptr [ %i.gn, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.nw, %bb.bu ] ; 8 uses
  %i.gy = phi i32 [ %i.go, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.nx, %bb.bu ] ; 5 uses
  %i.gz = phi i64 [ %i.gp, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.ny, %bb.bu ] ; 6 uses
  %i.ha = phi i64 [ %i.x, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.ju, %bb.bu ] ; 2 uses
  %i.hb = phi i64 [ %i.t, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %.sink492, %bb.bu ] ; 6 uses
  %i.hc = phi i64 [ %i.q, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %.sink, %bb.bu ] ; 6 uses
  %i.hd = phi i64 [ %i.fr, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.od, %bb.bu ] ; 3 uses
  %i.he = phi i64 [ %i.ed, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.oc, %bb.bu ] ; 3 uses
  %i.hf = phi i64 [ %i.cv, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.ob, %bb.bu ] ; 3 uses
  %.0135.i316 = phi i32 [ %5, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.rv, %bb.bu ] ; 4 uses
  %.0142.i314 = phi ptr [ %1, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit55 ], [ %i.ru, %bb.bu ] ; 20 uses
  %.0142.i31476 = ptrtoaddr ptr %.0142.i314 to i64
  %.not = icmp eq i32 %.0135.i316, 1
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.hf ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.hd ; 4 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.he ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !49, !noalias !225
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !49, !noalias !225 ; 2 uses
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !49, !noalias !225 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !66, !noalias !225 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hu = load i8, ptr %i.ht, align 2, !tbaa !66, !noalias !225 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hw = load i8, ptr %i.hv, align 2, !tbaa !66, !noalias !225 ; 4 uses
  %i.hx = zext i8 %i.hs to i32                    ; 2 uses
  %i.hy = zext i8 %i.hu to i32                    ; 2 uses
  %i.hz = add i8 %i.hu, %i.hs
  %i.ia = add i8 %i.hz, %i.hw
  %i.ib = load i16, ptr %i.hg, align 4, !tbaa !65, !noalias !225
  %i.ic = load i16, ptr %i.hh, align 4, !tbaa !65, !noalias !225
  %i.id = load i16, ptr %i.hi, align 4, !tbaa !65, !noalias !225
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !64, !noalias !225 ; 2 uses
  %i.ig = zext i8 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hh, i64 3
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !64, !noalias !225 ; 2 uses
  %i.ij = zext i8 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !64, !noalias !225 ; 2 uses
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
  store i32 %i.iw, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.ix = zext i32 %i.hq to i64
  %i.iy = add i64 %i.iv, %i.ix
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !53, !noalias !225
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.iz = icmp eq i32 %i.hn, 0                    ; 3 uses
  %i.ja = icmp eq i8 %i.hw, 0
  br i1 %i.ja, label %bb.af, label %bb.ag, !prof !97

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
  store i32 %i.jk, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.jl = add nuw nsw i64 %i.jj, %i.jf            ; 3 uses
  %i.jm = icmp eq i64 %i.jl, 3
  br i1 %i.jm, label %.thread, label %bb.ah

.thread:                                          ; preds = %bb.ag
  %i.jn = add i64 %i.hc, -1                       ; 2 uses
  %.not.i193.i210 = icmp eq i64 %i.jn, 0
  %i.jo = select i1 %.not.i193.i210, i64 -1, i64 %i.jn
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jl
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !53, !noalias !225 ; 2 uses
  %.not.i193.i = icmp eq i64 %i.jq, 0
  %i.jr = select i1 %.not.i193.i, i64 -1, i64 %i.jq ; 2 uses
  %.not101.i194.i = icmp eq i64 %i.jl, 1
  br i1 %.not101.i194.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread, %bb.ah
  %i.js = phi i64 [ %i.jo, %.thread ], [ %i.jr, %bb.ah ]
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !53, !noalias !225
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.af, %bb.ad
  %i.jt = phi i32 [ %i.iw, %bb.ad ], [ %i.gy, %bb.af ], [ %i.jk, %bb.ai ], [ %i.jk, %bb.ah ] ; 3 uses
  %.sink492 = phi i64 [ %i.hc, %bb.ad ], [ %i.jc, %bb.af ], [ %i.hc, %bb.ai ], [ %i.hc, %bb.ah ] ; 5 uses
  %.sink = phi i64 [ %i.iy, %bb.ad ], [ %i.jb, %bb.af ], [ %i.js, %bb.ai ], [ %i.jr, %bb.ah ] ; 29 uses
  %i.ju = phi i64 [ %i.hb, %bb.ad ], [ %i.ha, %bb.af ], [ %i.hb, %bb.ai ], [ %i.ha, %bb.ah ] ; 4 uses
  store i64 %.sink492, ptr %i.gs, align 8, !tbaa !53, !noalias !225
  store i64 %.sink, ptr %i.o, align 8, !tbaa !53, !noalias !225
  %.not102.i196.i = icmp eq i8 %i.hu, 0
  br i1 %.not102.i196.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jv = and i32 %i.jt, 63
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = shl i64 %i.gz, %i.jw
  %i.jy = sub nsw i32 0, %i.hy
  %i.jz = and i32 %i.jy, 63
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = lshr i64 %i.jx, %i.ka
  %i.kc = add i32 %i.jt, %i.hy                    ; 2 uses
  store i32 %i.kc, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.kd = add i64 %i.kb, %i.hl
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ke = phi i32 [ %i.jt, %bb.aj ], [ %i.kc, %bb.ak ] ; 8 uses
  %.sroa.687.0 = phi i64 [ %i.hl, %bb.aj ], [ %i.kd, %bb.ak ] ; 12 uses
  %i.kf = icmp ugt i8 %i.ia, 30
  br i1 %i.kf, label %bb.am, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, !prof !60

bb.am:                                            ; preds = %bb.al
  %i.kg = icmp ugt i32 %i.ke, 64
  br i1 %i.kg, label %bb.an, label %bb.ao, !prof !60

bb.an:                                            ; preds = %bb.am
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.ao:                                            ; preds = %bb.am
  %.not.i212.i = icmp ult ptr %i.gx, %i.ab
  br i1 %.not.i212.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kh = lshr i32 %i.ke, 3
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = sub nsw i64 0, %i.ki
  %i.kk = getelementptr inbounds i8, ptr %i.gx, i64 %i.kj ; 3 uses
  store ptr %i.kk, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  %i.kl = and i32 %i.ke, 7                        ; 2 uses
  store i32 %i.kl, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %.val.i61 = load i64, ptr %i.kk, align 1, !tbaa !53, !noalias !225 ; 2 uses
  store i64 %.val.i61, ptr %9, align 8, !tbaa !87, !noalias !225
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.km = icmp eq ptr %i.gx, %3
  br i1 %i.km, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.ar

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
  store ptr %i.kx, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  %i.ky = shl i32 %.021.i.i, 3
  %i.kz = sub i32 %i.ke, %i.ky                    ; 2 uses
  store i32 %i.kz, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %.val = load i64, ptr %i.kx, align 1, !tbaa !53 ; 2 uses
  store i64 %.val, ptr %9, align 8, !tbaa !87, !noalias !225
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.aq, %bb.an, %bb.ap, %bb.ar, %bb.al
  %i.la = phi ptr [ %i.gx, %bb.aq ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.an ], [ %i.kk, %bb.ap ], [ %i.kx, %bb.ar ], [ %i.gx, %bb.al ] ; 9 uses
  %i.lb = phi i32 [ %i.ke, %bb.aq ], [ %i.ke, %bb.an ], [ %i.kl, %bb.ap ], [ %i.kz, %bb.ar ], [ %i.ke, %bb.al ] ; 3 uses
  %i.lc = phi i64 [ %i.gz, %bb.aq ], [ %i.gz, %bb.an ], [ %.val.i61, %bb.ap ], [ %.val, %bb.ar ], [ %i.gz, %bb.al ] ; 8 uses
  %.not103.i197.i = icmp eq i8 %i.hs, 0
  br i1 %.not103.i197.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.ld = and i32 %i.lb, 63
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl i64 %i.lc, %i.le
  %i.lg = sub nsw i32 0, %i.hx
  %i.lh = and i32 %i.lg, 63
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = lshr i64 %i.lf, %i.li
  %i.lk = add i32 %i.lb, %i.hx                    ; 2 uses
  store i32 %i.lk, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.ll = add i64 %i.lj, %i.ho
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.lm = phi i32 [ %i.lb, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.lk, %bb.as ] ; 3 uses
  %.sroa.085.0 = phi i64 [ %i.ho, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.ll, %bb.as ] ; 10 uses
  br i1 %.not, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ln = add i32 %i.lm, %i.ig                    ; 2 uses
  %i.lo = sub i32 0, %i.ln
  %i.lp = and i32 %i.lo, 63
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = lshr i64 %i.lc, %i.lq
  %i.ls = zext nneg i8 %i.if to i64
  %notmask.i.i236.i = shl nsw i64 -1, %i.ls
  %i.lt = xor i64 %notmask.i.i236.i, -1
  %i.lu = and i64 %i.lr, %i.lt
  %i.lv = zext i16 %i.ib to i64
  %i.lw = add nuw i64 %i.lu, %i.lv                ; 3 uses
  store i64 %i.lw, ptr %i.cj, align 8, !tbaa !89, !noalias !225
  %i.lx = add i32 %i.ln, %i.ij                    ; 2 uses
  %i.ly = sub i32 0, %i.lx
  %i.lz = and i32 %i.ly, 63
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = lshr i64 %i.lc, %i.ma
  %i.mc = zext nneg i8 %i.ii to i64
  %notmask.i.i235.i = shl nsw i64 -1, %i.mc
  %i.md = xor i64 %notmask.i.i235.i, -1
  %i.me = and i64 %i.mb, %i.md
  %i.mf = zext i16 %i.ic to i64
  %i.mg = add nuw i64 %i.me, %i.mf                ; 3 uses
  store i64 %i.mg, ptr %i.ff, align 8, !tbaa !89, !noalias !225
  %i.mh = add i32 %i.lx, %i.im                    ; 9 uses
  %i.mi = sub i32 0, %i.mh
  %i.mj = and i32 %i.mi, 63
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = lshr i64 %i.lc, %i.mk
  %i.mm = zext nneg i8 %i.il to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.mm
  %i.mn = xor i64 %notmask.i.i.i, -1
  %i.mo = and i64 %i.ml, %i.mn
  store i32 %i.mh, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.mp = zext i16 %i.id to i64
  %i.mq = add nuw i64 %i.mo, %i.mp                ; 3 uses
  store i64 %i.mq, ptr %i.dr, align 8, !tbaa !89, !noalias !225
  %i.mr = icmp ugt i32 %i.mh, 64
  br i1 %i.mr, label %bb.av, label %bb.aw, !prof !60

bb.av:                                            ; preds = %bb.au
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i

bb.aw:                                            ; preds = %bb.au
  %.not.i214.i = icmp ult ptr %i.la, %i.ab
  br i1 %.not.i214.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ms = lshr i32 %i.mh, 3
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = sub nsw i64 0, %i.mt
  %i.mv = getelementptr inbounds i8, ptr %i.la, i64 %i.mu ; 3 uses
  store ptr %i.mv, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  %i.mw = and i32 %i.mh, 7                        ; 2 uses
  store i32 %i.mw, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %.val.i64 = load i64, ptr %i.mv, align 1, !tbaa !53, !noalias !225 ; 2 uses
  store i64 %.val.i64, ptr %9, align 8, !tbaa !87, !noalias !225
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i

bb.ay:                                            ; preds = %bb.aw
  %i.mx = icmp eq ptr %i.la, %3
  br i1 %i.mx, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.my = lshr i32 %i.mh, 3                       ; 2 uses
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = sub nsw i64 0, %i.mz
  %i.nb = getelementptr inbounds i8, ptr %i.la, i64 %i.na
  %i.nc = icmp ult ptr %i.nb, %3
  %i.nd = ptrtoint ptr %i.la to i64
  %i.ne = sub i64 %i.nd, %i.gw
  %i.nf = trunc i64 %i.ne to i32
  %.021.i216.i = select i1 %i.nc, i32 %i.nf, i32 %i.my ; 2 uses
  %i.ng = zext i32 %.021.i216.i to i64
  %i.nh = sub nsw i64 0, %i.ng
  %i.ni = getelementptr inbounds i8, ptr %i.la, i64 %i.nh ; 3 uses
  store ptr %i.ni, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  %i.nj = shl i32 %.021.i216.i, 3
  %i.nk = sub i32 %i.mh, %i.nj                    ; 2 uses
  store i32 %i.nk, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %.val6 = load i64, ptr %i.ni, align 1, !tbaa !53 ; 2 uses
  store i64 %.val6, ptr %9, align 8, !tbaa !87, !noalias !225
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i: ; preds = %bb.ay, %bb.av, %bb.ax, %bb.az
  %i.nl = phi ptr [ %i.la, %bb.ay ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.av ], [ %i.mv, %bb.ax ], [ %i.ni, %bb.az ] ; 2 uses
  %i.nm = phi i32 [ %i.mh, %bb.ay ], [ %i.mh, %bb.av ], [ %i.mw, %bb.ax ], [ %i.nk, %bb.az ] ; 2 uses
  %i.nn = phi i64 [ %i.lc, %bb.ay ], [ %i.lc, %bb.av ], [ %.val.i64, %bb.ax ], [ %.val6, %bb.az ] ; 2 uses
  %i.no = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sroa.085.0 ; 2 uses
  %i.nq = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.nr = icmp ugt ptr %i.np, %i.nq
  br i1 %i.nr, label %bb.bv, label %bb.ba

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread: ; preds = %bb.at
  %i.ns = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %.sroa.085.0 ; 2 uses
  %i.nu = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.nv = icmp ugt ptr %i.nt, %i.nu
  br i1 %i.nv, label %.thread413, label %bb.ba

bb.ba:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i
  %i.nw = phi ptr [ %i.la, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nl, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.nx = phi i32 [ %i.lm, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nm, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.ny = phi i64 [ %i.lc, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nn, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.nz = phi ptr [ %i.nt, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.np, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 3 uses
  %i.oa = phi ptr [ %i.ns, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.no, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.ob = phi i64 [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.lw, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.oc = phi i64 [ %i.he, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.mq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.od = phi i64 [ %i.hd, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.mg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.oe = getelementptr inbounds i8, ptr %i.nz, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.of = getelementptr i8, ptr %.0142.i314, i64 %.sroa.085.0 ; 7 uses
  %i.og = add i64 %.sroa.085.0, %.sroa.687.0      ; 9 uses
  %i.oh = sub i64 0, %.sink
  %i.oi = getelementptr inbounds i8, ptr %i.of, i64 %i.oh ; 2 uses
  %i.oj = icmp ugt ptr %i.nz, %i.f
  %i.ok = getelementptr inbounds nuw i8, ptr %.0142.i314, i64 %i.og
  %i.ol = icmp ugt ptr %i.ok, %i.oe
  %or.cond.i207.i = select i1 %i.oj, i1 true, i1 %i.ol, !prof !112
  br i1 %or.cond.i207.i, label %bb.bb, label %.critedge.i208.i, !prof !112

.critedge.i208.i:                                 ; preds = %bb.ba
  %.val29 = load <2 x i64>, ptr %i.oa, align 1, !tbaa !9
  store <2 x i64> %.val29, ptr %.0142.i314, align 1, !tbaa !9
  %i.om = icmp ugt i64 %.sroa.085.0, 16
  br i1 %i.om, label %bb.bc, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !prof !60

bb.bb:                                            ; preds = %bb.ba
  store i64 %.sroa.085.0, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.687.0, ptr %.sroa.6167.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink, ptr %.sroa.13172.0..sroa_idx, align 8, !tbaa !53
  %i.on = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0142.i314, ptr noundef %i.b, ptr noundef nonnull %i.oe, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bc:                                            ; preds = %.critedge.i208.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.0142.i314, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 2 uses
  %i.oq = add i64 %.sroa.085.0, -16
  %.val17 = load <2 x i64>, ptr %i.op, align 1, !tbaa !9
  store <2 x i64> %.val17, ptr %i.oo, align 1, !tbaa !9
  %i.or = icmp slt i64 %i.oq, 17
  br i1 %i.or, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.os = getelementptr inbounds nuw i8, ptr %.0142.i314, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.130.i.i = phi ptr [ %i.os, %bb.bd ], [ %i.ov, %bb.be ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.op, %bb.bd ], [ %i.ou, %bb.be ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.i.val = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i.i.val, ptr %.130.i.i, align 1, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val16 = load <2 x i64>, ptr %i.ou, align 1, !tbaa !9
  store <2 x i64> %.val16, ptr %i.ot, align 1, !tbaa !9
  %i.ov = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.ow = icmp ult ptr %i.ov, %i.of
  br i1 %i.ow, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.be, %bb.bc, %.critedge.i208.i
  store ptr %i.nz, ptr %i.a, align 8, !tbaa !46
  %i.ox = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.oy = sub i64 %i.ox, %i.gu                    ; 3 uses
  %i.oz = icmp ugt i64 %.sink, %i.oy
  br i1 %i.oz, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.pa = sub i64 %i.ox, %i.gv
  %i.pb = icmp ugt i64 %.sink, %i.pa
  br i1 %i.pb, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread, label %bb.bg, !prof !60

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread264

bb.bg:                                            ; preds = %bb.bf
  %i.pc = ptrtoint ptr %i.oi to i64
  %i.pd = sub i64 %i.pc, %i.gu                    ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %i.l, i64 %i.pd ; 2 uses
  %i.pf = add nsw i64 %i.pd, %.sroa.687.0         ; 2 uses
  %.not.i210.i = icmp sgt i64 %i.pf, 0
  br i1 %.not.i210.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pe, i64 %.sroa.687.0, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i211.i = sub nsw i64 0, %i.pd          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pe, i64 %gepdiff.i211.i, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.of, i64 %gepdiff.i211.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.sroa.6167.0 = phi i64 [ %i.pf, %bb.bi ], [ %.sroa.687.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %.0198 = phi ptr [ %i.h, %bb.bi ], [ %i.oi, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pg, %bb.bi ], [ %i.of, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %i.ph = icmp ugt i64 %.sink, 15
  br i1 %i.ph, label %bb.bk, label %bb.bn, !prof !97

bb.bk:                                            ; preds = %bb.bj
  %i.pi = getelementptr inbounds i8, ptr %.0, i64 %.sroa.6167.0
  %.val19 = load <2 x i64>, ptr %.0198, align 1, !tbaa !9
  store <2 x i64> %.val19, ptr %.0, align 1, !tbaa !9
  %i.pj = icmp slt i64 %.sroa.6167.0, 17
  br i1 %i.pj, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pk = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.130.i243.i = phi ptr [ %i.pk, %bb.bl ], [ %i.pn, %bb.bm ] ; 3 uses
  %.pn.i244.i = phi ptr [ %.0198, %bb.bl ], [ %i.pm, %bb.bm ] ; 2 uses
  %.1.i245.i = getelementptr inbounds nuw i8, ptr %.pn.i244.i, i64 16
  %.1.i245.i.val = load <2 x i64>, ptr %.1.i245.i, align 1, !tbaa !9
  store <2 x i64> %.1.i245.i.val, ptr %.130.i243.i, align 1, !tbaa !9
  %i.pl = getelementptr inbounds nuw i8, ptr %.130.i243.i, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %.pn.i244.i, i64 32 ; 2 uses
  %.val18 = load <2 x i64>, ptr %i.pm, align 1, !tbaa !9
  store <2 x i64> %.val18, ptr %i.pl, align 1, !tbaa !9
  %i.pn = getelementptr inbounds nuw i8, ptr %.130.i243.i, i64 32 ; 2 uses
  %i.po = icmp ult ptr %i.pn, %i.pi
  br i1 %i.po, label %bb.bm, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

bb.bn:                                            ; preds = %bb.bj
  %i.pp = icmp samesign ult i64 %.sink, 8
  br i1 %i.pp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !3
  %i.ps = load i8, ptr %.0198, align 1, !tbaa !9
  store i8 %i.ps, ptr %.0, align 1, !tbaa !9
  %i.pt = getelementptr inbounds nuw i8, ptr %.0198, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !9
  %i.pv = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %.0198, i64 2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !9
  %i.py = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.px, ptr %i.py, align 1, !tbaa !9
  %i.pz = getelementptr inbounds nuw i8, ptr %.0198, i64 3
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !9
  %i.qb = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !9
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %.0198, i64 %i.qe ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.val31 = load i32, ptr %i.qf, align 1
  store i32 %.val31, ptr %i.qg, align 1
  %i.qh = sext i32 %i.pr to i64
  %i.qi = sub nsw i64 0, %i.qh
  %i.qj = getelementptr inbounds i8, ptr %i.qf, i64 %i.qi
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.bp:                                            ; preds = %bb.bn
  %.val35 = load i64, ptr %.0198, align 1
  store i64 %.val35, ptr %.0, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.bp, %bb.bo
  %.1 = phi ptr [ %i.qj, %bb.bo ], [ %.0198, %bb.bp ] ; 2 uses
  %.177 = ptrtoaddr ptr %.1 to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qm = icmp ugt i64 %.sroa.6167.0, 8
  br i1 %i.qm, label %bb.bq, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bq:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = getelementptr i8, ptr %.0, i64 %.sroa.6167.0 ; 2 uses
  %i.qr = icmp slt i64 %i.qp, 16
  br i1 %i.qr, label %.preheader294.preheader, label %bb.br

.preheader294.preheader:                          ; preds = %bb.bq
  %11 = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.oy)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.oy) ; 3 uses
  %i.qs = add i64 %.sroa.687.0, %i.gu
  %12 = add i64 %i.qs, %11
  %i.qt = add i64 %12, %umin
  %i.qu = sub i64 %i.qt, %.sink
  %i.qv = add i64 %umin, %invariant.op
  %umax79 = tail call i64 @llvm.umax.i64(i64 %i.qu, i64 %i.qv)
  %i.qw = add i64 %umin, %i.gu
  %13 = sub i64 %umax79, %i.qw
  %14 = add i64 %13, -9                           ; 2 uses
  %i.qx = lshr i64 %14, 3
  %i.qy = add nuw nsw i64 %i.qx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 72
  br i1 %min.iters.check, label %.preheader294.preheader220, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader294.preheader
  %i.qz = sub i64 %.sroa.085.0, %i.gu
  %i.ra = add i64 %i.qz, %.0142.i31476
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.ra)
  %i.rb = add i64 %umax, %i.gu
  %i.rc = sub i64 %.177, %i.rb
  %diff.check = icmp ugt i64 %i.rc, -32
  br i1 %diff.check, label %.preheader294.preheader220, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qy, 4611686018427387900     ; 3 uses
  %i.rd = shl i64 %n.vec, 3                       ; 2 uses
  %i.re = getelementptr i8, ptr %i.ql, i64 %i.rd
  %i.rf = getelementptr i8, ptr %i.qk, i64 %i.rd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ql, i64 %i.rg ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.qk, i64 %i.rg ; 2 uses
  %i.rh = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 1
  %wide.load81 = load <2 x i64>, ptr %i.rh, align 1
  %i.ri = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load81, ptr %i.ri, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rj = icmp eq i64 %index.next, %n.vec
  br i1 %i.rj, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qy, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %.preheader294.preheader220

.preheader294.preheader220:                       ; preds = %vector.memcheck, %.preheader294.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.ql, %vector.memcheck ], [ %i.ql, %.preheader294.preheader ], [ %i.re, %middle.block ]
  %.0.i252.i.ph = phi ptr [ %i.qk, %vector.memcheck ], [ %i.qk, %.preheader294.preheader ], [ %i.rf, %middle.block ]
  br label %.preheader294

.preheader294:                                    ; preds = %.preheader294.preheader220, %.preheader294
  %.029.i.i = phi ptr [ %i.rk, %.preheader294 ], [ %.029.i.i.ph, %.preheader294.preheader220 ] ; 2 uses
  %.0.i252.i = phi ptr [ %i.rl, %.preheader294 ], [ %.0.i252.i.ph, %.preheader294.preheader220 ] ; 2 uses
  %.0.i252.i.val = load i64, ptr %.0.i252.i, align 1
  store i64 %.0.i252.i.val, ptr %.029.i.i, align 1
  %i.rk = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.i252.i, i64 8
  %i.rm = icmp ult ptr %i.rk, %i.qq
  br i1 %i.rm, label %.preheader294, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !229

bb.br:                                            ; preds = %bb.bq
  %.val21 = load <2 x i64>, ptr %i.qk, align 1, !tbaa !9
  store <2 x i64> %.val21, ptr %i.ql, align 1, !tbaa !9
  %i.rn = icmp slt i64 %.sroa.6167.0, 25
  br i1 %i.rn, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ro = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.130.i249.i = phi ptr [ %i.ro, %bb.bs ], [ %i.rr, %bb.bt ] ; 3 uses
  %.pn.i250.i = phi ptr [ %i.qk, %bb.bs ], [ %i.rq, %bb.bt ] ; 2 uses
  %.1.i251.i = getelementptr inbounds nuw i8, ptr %.pn.i250.i, i64 16
  %.1.i251.i.val = load <2 x i64>, ptr %.1.i251.i, align 1, !tbaa !9
  store <2 x i64> %.1.i251.i.val, ptr %.130.i249.i, align 1, !tbaa !9
  %i.rp = getelementptr inbounds nuw i8, ptr %.130.i249.i, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %.pn.i250.i, i64 32 ; 2 uses
  %.val20 = load <2 x i64>, ptr %i.rq, align 1, !tbaa !9
  store <2 x i64> %.val20, ptr %i.rp, align 1, !tbaa !9
  %i.rr = getelementptr inbounds nuw i8, ptr %.130.i249.i, i64 32 ; 2 uses
  %i.rs = icmp ult ptr %i.rr, %i.qq
  br i1 %i.rs, label %bb.bt, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i: ; preds = %bb.bt, %.preheader294, %bb.bm, %middle.block, %bb.br, %bb.bk, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i, %bb.bh, %bb.bb
  %.0.i209.i = phi i64 [ %i.on, %bb.bb ], [ %i.og, %middle.block ], [ %i.og, %bb.bh ], [ %i.og, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i ], [ %i.og, %bb.bk ], [ %i.og, %bb.br ], [ %i.og, %bb.bm ], [ %i.og, %.preheader294 ], [ %i.og, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rt = icmp ult i64 %.0.i209.i, -119
  br i1 %i.rt, label %bb.bu, label %.thread264

bb.bu:                                            ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i
  %i.ru = getelementptr inbounds nuw i8, ptr %.0142.i314, i64 %.0.i209.i ; 2 uses
  %i.rv = add nsw i32 %.0135.i316, -1             ; 2 uses
  %.not179.i = icmp eq i32 %i.rv, 0
  br i1 %.not179.i, label %.thread260, label %bb.ac, !llvm.loop !139

bb.bv:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i
  %i.rw = icmp sgt i32 %.0135.i316, 0
  br i1 %i.rw, label %.thread413, label %.thread264

.thread413:                                       ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread, %bb.bv
  %i.rx = phi ptr [ %i.nl, %bb.bv ], [ %i.la, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.ry = phi i32 [ %i.nm, %bb.bv ], [ %i.lm, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.rz = phi i64 [ %i.nn, %bb.bv ], [ %i.lc, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.sa = phi i64 [ %i.mg, %bb.bv ], [ %i.hd, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.sb = phi i64 [ %i.mq, %bb.bv ], [ %i.he, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.sc = phi i64 [ %i.lw, %bb.bv ], [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.sd = phi ptr [ %i.no, %bb.bv ], [ %i.ns, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 11 uses
  %i.se = phi ptr [ %i.nq, %bb.bv ], [ %i.nu, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.sf = ptrtoint ptr %i.se to i64               ; 2 uses
  %i.sg = ptrtoint ptr %i.sd to i64               ; 4 uses
  %i.sh = sub i64 %i.sf, %i.sg                    ; 9 uses
  %.not181.i = icmp eq ptr %i.se, %i.sd
  br i1 %.not181.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.thread413
  %i.si = ptrtoint ptr %i.b to i64
  %i.sj = ptrtoint ptr %.0142.i314 to i64         ; 8 uses
  %i.sk = sub i64 %i.si, %i.sj
  %i.sl = icmp ugt i64 %i.sh, %i.sk
  br i1 %i.sl, label %.thread264, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sm = sub i64 %i.sj, %i.sg                    ; 2 uses
  %i.sn = getelementptr inbounds i8, ptr %.0142.i314, i64 %i.sh ; 3 uses
  %i.so = icmp slt i64 %i.sh, 8
  %i.sp = icmp sgt i64 %i.sm, -8
  %or.cond.i = or i1 %i.so, %i.sp
  br i1 %or.cond.i, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.bx
  %i.sq = icmp sgt i64 %i.sh, 0
  br i1 %i.sq, label %iter.check136, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit

iter.check136:                                    ; preds = %.preheader.i
  %i.sr = add i64 %i.sj, %i.sf
  %i.ss = sub i64 %i.sr, %i.sg
  %i.st = add i64 %i.sj, 1
  %umax116 = tail call i64 @llvm.umax.i64(i64 %i.ss, i64 %i.st)
  %i.su = sub i64 %umax116, %i.sj                 ; 7 uses
  %min.iters.check118.a = icmp ult i64 %i.su, 4
  %i.sv = sub i64 %i.sg, %i.sj
  %diff.check115 = icmp ugt i64 %i.sv, -32
  %or.cond203 = or i1 %min.iters.check118.a, %diff.check115
  br i1 %or.cond203, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %iter.check136
  %min.iters.check120 = icmp ult i64 %i.su, 32
  br i1 %min.iters.check120, label %vec.epilog.ph140, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %n.mod.vf122 = and i64 %i.su, 28
  %n.vec123 = and i64 %i.su, -32                  ; 5 uses
  %i.sw = getelementptr i8, ptr %.0142.i314, i64 %n.vec123
  %i.sx = getelementptr i8, ptr %i.sd, i64 %n.vec123
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph121
  %index125 = phi i64 [ 0, %vector.ph121 ], [ %index.next130, %vector.body124 ] ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.0142.i314, i64 %index125 ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.sd, i64 %index125 ; 2 uses
  %i.sy = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load128 = load <16 x i8>, ptr %next.gep127, align 1, !tbaa !9
  %wide.load129 = load <16 x i8>, ptr %i.sy, align 1, !tbaa !9
  %i.sz = getelementptr i8, ptr %next.gep126, i64 16
  store <16 x i8> %wide.load128, ptr %next.gep126, align 1, !tbaa !9
  store <16 x i8> %wide.load129, ptr %i.sz, align 1, !tbaa !9
  %index.next130 = add nuw i64 %index125, 32      ; 2 uses
  %i.ta = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.ta, label %middle.block131, label %vector.body124, !llvm.loop !230

middle.block131:                                  ; preds = %vector.body124
  %cmp.n132 = icmp eq i64 %i.su, %n.vec123
  br i1 %cmp.n132, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %vec.epilog.iter.check138

vec.epilog.iter.check138:                         ; preds = %middle.block131
  %min.epilog.iters.check139 = icmp eq i64 %n.mod.vf122, 0
  br i1 %min.epilog.iters.check139, label %.lr.ph41.i.preheader, label %vec.epilog.ph140, !prof !105

vec.epilog.ph140:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check138
  %vec.epilog.resume.val133 = phi i64 [ %n.vec123, %vec.epilog.iter.check138 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec142 = and i64 %i.su, -4                   ; 4 uses
  %i.tb = getelementptr i8, ptr %.0142.i314, i64 %n.vec142
  %i.tc = getelementptr i8, ptr %i.sd, i64 %n.vec142
  br label %vec.epilog.vector.body143

vec.epilog.vector.body143:                        ; preds = %vec.epilog.vector.body143, %vec.epilog.ph140
  %index144 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph140 ], [ %index.next148, %vec.epilog.vector.body143 ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %.0142.i314, i64 %index144
  %next.gep146 = getelementptr i8, ptr %i.sd, i64 %index144
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !9
  store <4 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !9
  %index.next148 = add nuw i64 %index144, 4       ; 2 uses
  %i.td = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.td, label %vec.epilog.middle.block149, label %vec.epilog.vector.body143, !llvm.loop !231

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body143
  %cmp.n150 = icmp eq i64 %i.su, %n.vec142
  br i1 %cmp.n150, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check136, %vec.epilog.iter.check138, %vec.epilog.middle.block149
  %.040.i.ph = phi ptr [ %.0142.i314, %iter.check136 ], [ %i.sw, %vec.epilog.iter.check138 ], [ %i.tb, %vec.epilog.middle.block149 ]
  %.02939.i.ph = phi ptr [ %i.sd, %iter.check136 ], [ %i.sx, %vec.epilog.iter.check138 ], [ %i.tc, %vec.epilog.middle.block149 ]
  br label %.lr.ph41.i

end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.238.i = phi ptr [ %i.uh, %.lr.ph.i ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23137.i = phi ptr [ %i.uf, %.lr.ph.i ], [ %.23137.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.23137.i, i64 1
  %i.ug = load i8, ptr %.23137.i, align 1, !tbaa !9
  %i.uh = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  store i8 %i.ug, ptr %.238.i, align 1, !tbaa !9
  %exitcond.not.i = icmp eq ptr %i.uh, %scevgep.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph.i, !llvm.loop !235

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit: ; preds = %.lr.ph.i, %.lr.ph41.i, %middle.block100, %vec.epilog.middle.block, %middle.block131, %vec.epilog.middle.block149, %.preheader.i
  %i.ui = sub i64 %.sroa.085.0, %i.sh
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, %.thread413
  %.sroa.0.2.i = phi i64 [ %i.ui, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.sroa.085.0, %.thread413 ] ; 8 uses
  %.2144.i = phi ptr [ %i.sn, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.0142.i314, %.thread413 ] ; 8 uses
  %.2144.i154 = ptrtoaddr ptr %.2144.i to i64
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.uj, ptr %i.a, align 8, !tbaa !46
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.ul, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.um = getelementptr i8, ptr %.2144.i, i64 %.sroa.0.2.i ; 7 uses
  %i.un = add i64 %.sroa.0.2.i, %.sroa.687.0      ; 9 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 %.sroa.0.2.i
  %i.up = sub i64 0, %.sink
  %i.uq = getelementptr inbounds i8, ptr %i.um, i64 %i.up ; 2 uses
  %i.ur = icmp ugt i64 %.sroa.0.2.i, 65536
  %i.us = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.2144.i, i64 %i.un
  %i.uu = icmp ugt ptr %i.ut, %i.us
  %or.cond.i201.i = select i1 %i.ur, i1 true, i1 %i.uu, !prof !112
  br i1 %or.cond.i201.i, label %bb.cd, label %.critedge.i202.i, !prof !112

.critedge.i202.i:                                 ; preds = %bb.cc
  %.val15 = load <2 x i64>, ptr %i.uj, align 4, !tbaa !9
  store <2 x i64> %.val15, ptr %.2144.i, align 1, !tbaa !9
  %i.uv = icmp samesign ugt i64 %.sroa.0.2.i, 16
  br i1 %i.uv, label %bb.ce, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, !prof !60

bb.cd:                                            ; preds = %bb.cc
  store i64 %.sroa.0.2.i, ptr %7, align 8, !tbaa !53
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.687.0, ptr %.sroa.6134.0..sroa_idx, align 8, !tbaa !53
  %.sroa.13139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink, ptr %.sroa.13139.0..sroa_idx, align 8, !tbaa !53
  %i.uw = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.2144.i, ptr noundef %i.b, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.uk, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %.loopexit

bb.ce:                                            ; preds = %.critedge.i202.i
  %i.ux = getelementptr inbounds nuw i8, ptr %.2144.i, i64 16
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10 = load <2 x i64>, ptr %i.uy, align 4, !tbaa !9
  store <2 x i64> %.val10, ptr %i.ux, align 1, !tbaa !9
  %i.uz = icmp samesign ult i64 %.sroa.0.2.i, 33
  br i1 %i.uz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.va = getelementptr inbounds nuw i8, ptr %.2144.i, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.130.i255.i = phi ptr [ %i.va, %bb.cf ], [ %i.vd, %bb.cg ] ; 3 uses
  %.pn.i256.i = phi ptr [ %i.uy, %bb.cf ], [ %i.vc, %bb.cg ] ; 2 uses
  %.1.i257.i = getelementptr inbounds nuw i8, ptr %.pn.i256.i, i64 16
  %.1.i257.i.val = load <2 x i64>, ptr %.1.i257.i, align 1, !tbaa !9
  store <2 x i64> %.1.i257.i.val, ptr %.130.i255.i, align 1, !tbaa !9
  %i.vb = getelementptr inbounds nuw i8, ptr %.130.i255.i, i64 16
  %i.vc = getelementptr inbounds nuw i8, ptr %.pn.i256.i, i64 32 ; 2 uses
  %.val9 = load <2 x i64>, ptr %i.vc, align 1, !tbaa !9
  store <2 x i64> %.val9, ptr %i.vb, align 1, !tbaa !9
  %i.vd = getelementptr inbounds nuw i8, ptr %.130.i255.i, i64 32 ; 2 uses
  %i.ve = icmp ult ptr %i.vd, %i.um
  br i1 %i.ve, label %bb.cg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i: ; preds = %bb.cg, %bb.ce, %.critedge.i202.i
  store ptr %i.uo, ptr %i.a, align 8, !tbaa !46
  %i.vf = ptrtoint ptr %i.um to i64               ; 2 uses
  %i.vg = sub i64 %i.vf, %i.gu                    ; 3 uses
  %i.vh = icmp ugt i64 %.sink, %i.vg
  br i1 %i.vh, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i
  %i.vi = sub i64 %i.vf, %i.gv
  %i.vj = icmp ugt i64 %.sink, %i.vi
  br i1 %i.vj, label %.loopexit.thread, label %bb.ci, !prof !60

.loopexit.thread:                                 ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread264

bb.ci:                                            ; preds = %bb.ch
  %i.vk = ptrtoint ptr %i.uq to i64
  %i.vl = sub i64 %i.vk, %i.gu                    ; 3 uses
  %i.vm = getelementptr inbounds i8, ptr %i.l, i64 %i.vl ; 2 uses
  %i.vn = add nsw i64 %i.vl, %.sroa.687.0         ; 2 uses
  %.not.i204.i = icmp sgt i64 %i.vn, 0
  br i1 %.not.i204.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.um, ptr align 1 %i.vm, i64 %.sroa.687.0, i1 false)
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %gepdiff.i205.i = sub nsw i64 0, %i.vl          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.um, ptr align 1 %i.vm, i64 %gepdiff.i205.i, i1 false)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.um, i64 %gepdiff.i205.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i
  %.sroa.6134.0 = phi i64 [ %i.vn, %bb.ck ], [ %.sroa.687.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 5 uses
  %.0200 = phi ptr [ %i.h, %bb.ck ], [ %i.uq, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 9 uses
  %.0199 = phi ptr [ %i.vo, %bb.ck ], [ %i.um, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 12 uses
  %i.vp = icmp ugt i64 %.sink, 15
  br i1 %i.vp, label %bb.cm, label %bb.cp, !prof !97

bb.cm:                                            ; preds = %bb.cl
  %i.vq = getelementptr inbounds i8, ptr %.0199, i64 %.sroa.6134.0
  %.val12 = load <2 x i64>, ptr %.0200, align 1, !tbaa !9
  store <2 x i64> %.val12, ptr %.0199, align 1, !tbaa !9
  %i.vr = icmp slt i64 %.sroa.6134.0, 17
  br i1 %i.vr, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vs = getelementptr inbounds nuw i8, ptr %.0199, i64 16
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.130.i262.i = phi ptr [ %i.vs, %bb.cn ], [ %i.vv, %bb.co ] ; 3 uses
  %.pn.i263.i = phi ptr [ %.0200, %bb.cn ], [ %i.vu, %bb.co ] ; 2 uses
  %.1.i264.i = getelementptr inbounds nuw i8, ptr %.pn.i263.i, i64 16
  %.1.i264.i.val = load <2 x i64>, ptr %.1.i264.i, align 1, !tbaa !9
  store <2 x i64> %.1.i264.i.val, ptr %.130.i262.i, align 1, !tbaa !9
  %i.vt = getelementptr inbounds nuw i8, ptr %.130.i262.i, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %.pn.i263.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.vu, align 1, !tbaa !9
  store <2 x i64> %.val11, ptr %i.vt, align 1, !tbaa !9
  %i.vv = getelementptr inbounds nuw i8, ptr %.130.i262.i, i64 32 ; 2 uses
  %i.vw = icmp ult ptr %i.vv, %i.vq
  br i1 %i.vw, label %bb.co, label %.loopexit, !llvm.loop !108

bb.cp:                                            ; preds = %bb.cl
  %i.vx = icmp samesign ult i64 %.sink, 8
  br i1 %i.vx, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !3
  %i.wa = load i8, ptr %.0200, align 1, !tbaa !9
  store i8 %i.wa, ptr %.0199, align 1, !tbaa !9
  %i.wb = getelementptr inbounds nuw i8, ptr %.0200, i64 1
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !9
  %i.wd = getelementptr inbounds nuw i8, ptr %.0199, i64 1
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !9
  %i.we = getelementptr inbounds nuw i8, ptr %.0200, i64 2
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !9
  %i.wg = getelementptr inbounds nuw i8, ptr %.0199, i64 2
  store i8 %i.wf, ptr %i.wg, align 1, !tbaa !9
  %i.wh = getelementptr inbounds nuw i8, ptr %.0200, i64 3
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !9
  %i.wj = getelementptr inbounds nuw i8, ptr %.0199, i64 3
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !9
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !3
  %i.wm = zext i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %.0200, i64 %i.wm ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.0199, i64 4
  %.val30 = load i32, ptr %i.wn, align 1
  store i32 %.val30, ptr %i.wo, align 1
  %i.wp = sext i32 %i.vz to i64
  %i.wq = sub nsw i64 0, %i.wp
  %i.wr = getelementptr inbounds i8, ptr %i.wn, i64 %i.wq
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i

bb.cr:                                            ; preds = %bb.cp
  %.val33 = load i64, ptr %.0200, align 1
  store i64 %.val33, ptr %.0199, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i: ; preds = %bb.cr, %bb.cq
  %.1201 = phi ptr [ %i.wr, %bb.cq ], [ %.0200, %bb.cr ] ; 2 uses
  %.1201156 = ptrtoaddr ptr %.1201 to i64
  %i.ws = getelementptr inbounds nuw i8, ptr %.1201, i64 8 ; 7 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.0199, i64 8 ; 6 uses
  %i.wu = icmp ugt i64 %.sroa.6134.0, 8
  br i1 %i.wu, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = ptrtoint ptr %i.ws to i64
  %i.wx = sub i64 %i.wv, %i.ww
  %i.wy = getelementptr i8, ptr %.0199, i64 %.sroa.6134.0 ; 2 uses
  %i.wz = icmp slt i64 %i.wx, 16
  br i1 %i.wz, label %.preheader290.preheader, label %bb.ct

.preheader290.preheader:                          ; preds = %bb.cs
  %15 = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.vg)
  %umin158 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.vg) ; 3 uses
  %i.xa = add i64 %.sroa.687.0, %i.gu
  %16 = add i64 %i.xa, %15
  %i.xb = add i64 %16, %umin158
  %i.xc = sub i64 %i.xb, %.sink
  %i.xd = add i64 %umin158, %i.gu
  %i.xe = add i64 %i.xd, 16
  %umax160 = tail call i64 @llvm.umax.i64(i64 %i.xc, i64 %i.xe)
  %i.xf = add i64 %umin158, %i.gu
  %17 = sub i64 %umax160, %i.xf
  %18 = add i64 %17, -9                           ; 2 uses
  %i.xg = lshr i64 %18, 3
  %i.xh = add nuw nsw i64 %i.xg, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %18, 184
  br i1 %min.iters.check162, label %.preheader290.preheader216, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.preheader290.preheader
  %i.xi = add i64 %.sroa.0.2.i, %.2144.i154
  %i.xj = sub i64 %i.xi, %i.gu
  %umax155 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.xj)
  %i.xk = add i64 %umax155, %i.gu
  %i.xl = sub i64 %.1201156, %i.xk
  %diff.check157 = icmp ugt i64 %i.xl, -32
  br i1 %diff.check157, label %.preheader290.preheader216, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck153
  %n.vec165 = and i64 %i.xh, 4611686018427387900  ; 3 uses
  %i.xm = shl i64 %n.vec165, 3                    ; 2 uses
  %i.xn = getelementptr i8, ptr %i.wt, i64 %i.xm
  %i.xo = getelementptr i8, ptr %i.ws, i64 %i.xm
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next172, %vector.body166 ] ; 2 uses
  %i.xp = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.wt, i64 %i.xp ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.ws, i64 %i.xp ; 2 uses
  %i.xq = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load170 = load <2 x i64>, ptr %next.gep169, align 1
  %wide.load171 = load <2 x i64>, ptr %i.xq, align 1
  %i.xr = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x i64> %wide.load170, ptr %next.gep168, align 1
  store <2 x i64> %wide.load171, ptr %i.xr, align 1
  %index.next172 = add nuw i64 %index167, 4       ; 2 uses
  %i.xs = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.xs, label %middle.block173, label %vector.body166, !llvm.loop !236

middle.block173:                                  ; preds = %vector.body166
  %cmp.n174 = icmp eq i64 %i.xh, %n.vec165
  br i1 %cmp.n174, label %.loopexit, label %.preheader290.preheader216

.preheader290.preheader216:                       ; preds = %vector.memcheck153, %.preheader290.preheader, %middle.block173
  %.029.i272.i.ph = phi ptr [ %i.wt, %vector.memcheck153 ], [ %i.wt, %.preheader290.preheader ], [ %i.xn, %middle.block173 ]
  %.0.i273.i.ph = phi ptr [ %i.ws, %vector.memcheck153 ], [ %i.ws, %.preheader290.preheader ], [ %i.xo, %middle.block173 ]
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.preheader216, %.preheader290
  %.029.i272.i = phi ptr [ %i.xt, %.preheader290 ], [ %.029.i272.i.ph, %.preheader290.preheader216 ] ; 2 uses
  %.0.i273.i = phi ptr [ %i.xu, %.preheader290 ], [ %.0.i273.i.ph, %.preheader290.preheader216 ] ; 2 uses
  %.0.i273.i.val = load i64, ptr %.0.i273.i, align 1
  store i64 %.0.i273.i.val, ptr %.029.i272.i, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %.029.i272.i, i64 8 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.0.i273.i, i64 8
  %i.xv = icmp ult ptr %i.xt, %i.wy
  br i1 %i.xv, label %.preheader290, label %.loopexit, !llvm.loop !237

bb.ct:                                            ; preds = %bb.cs
  %.val14 = load <2 x i64>, ptr %i.ws, align 1, !tbaa !9
  store <2 x i64> %.val14, ptr %i.wt, align 1, !tbaa !9
  %i.xw = icmp slt i64 %.sroa.6134.0, 25
  br i1 %i.xw, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xx = getelementptr inbounds nuw i8, ptr %.0199, i64 24
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.130.i269.i = phi ptr [ %i.xx, %bb.cu ], [ %i.ya, %bb.cv ] ; 3 uses
  %.pn.i270.i = phi ptr [ %i.ws, %bb.cu ], [ %i.xz, %bb.cv ] ; 2 uses
  %.1.i271.i = getelementptr inbounds nuw i8, ptr %.pn.i270.i, i64 16
  %.1.i271.i.val = load <2 x i64>, ptr %.1.i271.i, align 1, !tbaa !9
  store <2 x i64> %.1.i271.i.val, ptr %.130.i269.i, align 1, !tbaa !9
  %i.xy = getelementptr inbounds nuw i8, ptr %.130.i269.i, i64 16
  %i.xz = getelementptr inbounds nuw i8, ptr %.pn.i270.i, i64 32 ; 2 uses
  %.val13 = load <2 x i64>, ptr %i.xz, align 1, !tbaa !9
  store <2 x i64> %.val13, ptr %i.xy, align 1, !tbaa !9
  %i.ya = getelementptr inbounds nuw i8, ptr %.130.i269.i, i64 32 ; 2 uses
  %i.yb = icmp ult ptr %i.ya, %i.wy
  br i1 %i.yb, label %bb.cv, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %bb.cv, %.preheader290, %bb.co, %middle.block173, %bb.cd, %bb.cj, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i, %bb.cm, %bb.ct
  %.0.i203.i = phi i64 [ %i.uw, %bb.cd ], [ %i.un, %bb.co ], [ %i.un, %bb.cj ], [ %i.un, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i ], [ %i.un, %bb.cm ], [ %i.un, %middle.block173 ], [ %i.un, %bb.ct ], [ %i.un, %.preheader290 ], [ %i.un, %bb.cv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.yc = icmp ult i64 %.0.i203.i, -119
  %i.yd = getelementptr inbounds nuw i8, ptr %.2144.i, i64 %.0.i203.i ; 2 uses
  %i.ye = add nsw i32 %.0135.i316, -1             ; 2 uses
  br i1 %i.yc, label %bb.cw, label %.thread264

bb.cw:                                            ; preds = %.loopexit
  %.not281 = icmp eq i32 %i.ye, 0
  br i1 %.not281, label %.thread260, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !148
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !149
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !151
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !152
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %19 = ptrtoint ptr %3 to i64
  %i.yf = ptrtoint ptr %3 to i64
  %invariant.op369 = add i64 %i.gu, 16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ep
  %i.yg = phi ptr [ %i.rx, %bb.cx ], [ %i.aeu, %bb.ep ] ; 8 uses
  %i.yh = phi i32 [ %i.ry, %bb.cx ], [ %i.aev, %bb.ep ] ; 5 uses
  %i.yi = phi i64 [ %i.rz, %bb.cx ], [ %i.aew, %bb.ep ] ; 6 uses
  %i.yj = phi i64 [ %i.ju, %bb.cx ], [ %i.abd, %bb.ep ] ; 2 uses
  %i.yk = phi i64 [ %.sink492, %bb.cx ], [ %.sink494, %bb.ep ] ; 6 uses
  %i.yl = phi i64 [ %.sink, %bb.cx ], [ %.sink493, %bb.ep ] ; 6 uses
  %i.ym = phi i64 [ %i.sa, %bb.cx ], [ %i.aex, %bb.ep ] ; 2 uses
  %i.yn = phi i64 [ %i.sb, %bb.cx ], [ %i.aey, %bb.ep ] ; 2 uses
  %i.yo = phi i64 [ %i.sc, %bb.cx ], [ %i.aez, %bb.ep ] ; 2 uses
  %.4139.i319 = phi i32 [ %i.ye, %bb.cx ], [ %i.ais, %bb.ep ] ; 2 uses
  %.7149.i317 = phi ptr [ %i.yd, %bb.cx ], [ %i.air, %bb.ep ] ; 8 uses
  %.7149.i317178 = ptrtoaddr ptr %.7149.i317 to i64
  %.not285 = icmp eq i32 %.4139.i319, 1
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.yo ; 4 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.ym ; 4 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.yn ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !49, !noalias !238
  %i.yu = zext i32 %i.yt to i64                   ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !49, !noalias !238 ; 2 uses
  %i.yx = zext i32 %i.yw to i64                   ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !49, !noalias !238 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yp, i64 2
  %i.zb = load i8, ptr %i.za, align 2, !tbaa !66, !noalias !238 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yq, i64 2
  %i.zd = load i8, ptr %i.zc, align 2, !tbaa !66, !noalias !238 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yr, i64 2
  %i.zf = load i8, ptr %i.ze, align 2, !tbaa !66, !noalias !238 ; 4 uses
  %i.zg = zext i8 %i.zb to i32                    ; 2 uses
  %i.zh = zext i8 %i.zd to i32                    ; 2 uses
  %i.zi = add i8 %i.zd, %i.zb
  %i.zj = add i8 %i.zi, %i.zf
  %i.zk = load i16, ptr %i.yp, align 4, !tbaa !65, !noalias !238
  %i.zl = load i16, ptr %i.yq, align 4, !tbaa !65, !noalias !238
  %i.zm = load i16, ptr %i.yr, align 4, !tbaa !65, !noalias !238
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yp, i64 3
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.zp = zext i8 %i.zo to i32
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yq, i64 3
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.zs = zext i8 %i.zr to i32
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yr, i64 3
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.zv = zext i8 %i.zu to i32
  %i.zw = icmp ugt i8 %i.zf, 1
  br i1 %i.zw, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.zx = zext i8 %i.zf to i32                    ; 2 uses
  %i.zy = and i32 %i.yh, 63
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = shl i64 %i.yi, %i.zz
  %i.aab = sub nsw i32 0, %i.zx
  %i.aac = and i32 %i.aab, 63
  %i.aad = zext nneg i32 %i.aac to i64
  %i.aae = lshr i64 %i.aaa, %i.aad
  %i.aaf = add i32 %i.yh, %i.zx                   ; 2 uses
  store i32 %i.aaf, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.aag = zext i32 %i.yz to i64
  %i.aah = add i64 %i.aae, %i.aag
  store i64 %i.yk, ptr %i.gt, align 8, !tbaa !53, !noalias !238
  br label %bb.df

bb.da:                                            ; preds = %bb.cy
  %i.aai = icmp eq i32 %i.yw, 0                   ; 3 uses
  %i.aaj = icmp eq i8 %i.zf, 0
  br i1 %i.aaj, label %bb.db, label %bb.dc, !prof !97

bb.db:                                            ; preds = %bb.da
  %i.aak = select i1 %i.aai, i64 %i.yk, i64 %i.yl
  %i.aal = select i1 %i.aai, i64 %i.yl, i64 %i.yk
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.aam = zext i1 %i.aai to i32
  %i.aan = add i32 %i.yz, %i.aam
  %i.aao = zext i32 %i.aan to i64
  %i.aap = and i32 %i.yh, 63
  %i.aaq = zext nneg i32 %i.aap to i64
  %i.aar = shl i64 %i.yi, %i.aaq
  %i.aas = lshr i64 %i.aar, 63
  %i.aat = add i32 %i.yh, 1                       ; 3 uses
  store i32 %i.aat, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.aau = add nuw nsw i64 %i.aas, %i.aao         ; 3 uses
  %i.aav = icmp eq i64 %i.aau, 3
  br i1 %i.aav, label %.thread243, label %bb.dd

.thread243:                                       ; preds = %bb.dc
  %i.aaw = add i64 %i.yl, -1                      ; 2 uses
  %.not.i.i244 = icmp eq i64 %i.aaw, 0
  %i.aax = select i1 %.not.i.i244, i64 -1, i64 %i.aaw
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aau
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !53, !noalias !238 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aaz, 0
  %i.aba = select i1 %.not.i.i, i64 -1, i64 %i.aaz ; 2 uses
  %.not101.i.i = icmp eq i64 %i.aau, 1
  br i1 %.not101.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.thread243, %bb.dd
  %i.abb = phi i64 [ %i.aax, %.thread243 ], [ %i.aba, %bb.dd ]
  store i64 %i.yk, ptr %i.gt, align 8, !tbaa !53, !noalias !238
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de, %bb.db, %bb.cz
  %i.abc = phi i32 [ %i.aaf, %bb.cz ], [ %i.yh, %bb.db ], [ %i.aat, %bb.de ], [ %i.aat, %bb.dd ] ; 3 uses
  %.sink494 = phi i64 [ %i.yl, %bb.cz ], [ %i.aal, %bb.db ], [ %i.yl, %bb.de ], [ %i.yl, %bb.dd ] ; 3 uses
  %.sink493 = phi i64 [ %i.aah, %bb.cz ], [ %i.aak, %bb.db ], [ %i.abb, %bb.de ], [ %i.aba, %bb.dd ] ; 15 uses
  %i.abd = phi i64 [ %i.yk, %bb.cz ], [ %i.yj, %bb.db ], [ %i.yk, %bb.de ], [ %i.yj, %bb.dd ] ; 2 uses
  store i64 %.sink494, ptr %i.gs, align 8, !tbaa !53, !noalias !238
  store i64 %.sink493, ptr %i.o, align 8, !tbaa !53, !noalias !238
  %.not102.i.i = icmp eq i8 %i.zd, 0
  br i1 %.not102.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.abe = and i32 %i.abc, 63
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = shl i64 %i.yi, %i.abf
  %i.abh = sub nsw i32 0, %i.zh
  %i.abi = and i32 %i.abh, 63
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = lshr i64 %i.abg, %i.abj
  %i.abl = add i32 %i.abc, %i.zh                  ; 2 uses
  store i32 %i.abl, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.abm = add i64 %i.abk, %i.yu
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.abn = phi i32 [ %i.abc, %bb.df ], [ %i.abl, %bb.dg ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.yu, %bb.df ], [ %i.abm, %bb.dg ] ; 6 uses
  %i.abo = icmp ugt i8 %i.zj, 30
  br i1 %i.abo, label %bb.di, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i, !prof !60

bb.di:                                            ; preds = %bb.dh
  %i.abp = icmp ugt i32 %i.abn, 64
  br i1 %i.abp, label %bb.dj, label %bb.dk, !prof !60

bb.dj:                                            ; preds = %bb.di
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i

bb.dk:                                            ; preds = %bb.di
  %.not.i221.i = icmp ult ptr %i.yg, %i.ab
  br i1 %.not.i221.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.abq = lshr i32 %i.abn, 3
  %i.abr = zext nneg i32 %i.abq to i64
  %i.abs = sub nsw i64 0, %i.abr
  %i.abt = getelementptr inbounds i8, ptr %i.yg, i64 %i.abs ; 3 uses
  store ptr %i.abt, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.abu = and i32 %i.abn, 7                      ; 2 uses
  store i32 %i.abu, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val.i76 = load i64, ptr %i.abt, align 1, !tbaa !53, !noalias !238 ; 2 uses
  store i64 %.val.i76, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i

bb.dm:                                            ; preds = %bb.dk
  %i.abv = icmp eq ptr %i.yg, %3
  br i1 %i.abv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.abw = lshr i32 %i.abn, 3                     ; 2 uses
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = sub nsw i64 0, %i.abx
  %i.abz = getelementptr inbounds i8, ptr %i.yg, i64 %i.aby
  %i.aca = icmp ult ptr %i.abz, %3
  %i.acb = ptrtoint ptr %i.yg to i64
  %i.acc = sub i64 %i.acb, %19
  %i.acd = trunc i64 %i.acc to i32
  %.021.i223.i = select i1 %i.aca, i32 %i.acd, i32 %i.abw ; 2 uses
  %i.ace = zext i32 %.021.i223.i to i64
  %i.acf = sub nsw i64 0, %i.ace
  %i.acg = getelementptr inbounds i8, ptr %i.yg, i64 %i.acf ; 3 uses
  store ptr %i.acg, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.ach = shl i32 %.021.i223.i, 3
  %i.aci = sub i32 %i.abn, %i.ach                 ; 2 uses
  store i32 %i.aci, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val7 = load i64, ptr %i.acg, align 1, !tbaa !53 ; 2 uses
  store i64 %.val7, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i: ; preds = %bb.dm, %bb.dj, %bb.dl, %bb.dn, %bb.dh
  %i.acj = phi ptr [ %i.yg, %bb.dm ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dj ], [ %i.abt, %bb.dl ], [ %i.acg, %bb.dn ], [ %i.yg, %bb.dh ] ; 8 uses
  %i.ack = phi i32 [ %i.abn, %bb.dm ], [ %i.abn, %bb.dj ], [ %i.abu, %bb.dl ], [ %i.aci, %bb.dn ], [ %i.abn, %bb.dh ] ; 3 uses
  %i.acl = phi i64 [ %i.yi, %bb.dm ], [ %i.yi, %bb.dj ], [ %.val.i76, %bb.dl ], [ %.val7, %bb.dn ], [ %i.yi, %bb.dh ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.zb, 0
  br i1 %.not103.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i
  %i.acm = and i32 %i.ack, 63
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = shl i64 %i.acl, %i.acn
  %i.acp = sub nsw i32 0, %i.zg
  %i.acq = and i32 %i.acp, 63
  %i.acr = zext nneg i32 %i.acq to i64
  %i.acs = lshr i64 %i.aco, %i.acr
  %i.act = add i32 %i.ack, %i.zg                  ; 2 uses
  store i32 %i.act, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.acu = add i64 %i.acs, %i.yx
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i
  %i.acv = phi i32 [ %i.ack, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i ], [ %i.act, %bb.do ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.yx, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i ], [ %i.acu, %bb.do ] ; 7 uses
  br i1 %.not285, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.acw = add i32 %i.acv, %i.zp                  ; 2 uses
  %i.acx = sub i32 0, %i.acw
  %i.acy = and i32 %i.acx, 63
  %i.acz = zext nneg i32 %i.acy to i64
  %i.ada = lshr i64 %i.acl, %i.acz
  %i.adb = zext nneg i8 %i.zo to i64
  %notmask.i.i239.i = shl nsw i64 -1, %i.adb
  %i.adc = xor i64 %notmask.i.i239.i, -1
  %i.add = and i64 %i.ada, %i.adc
  %i.ade = zext i16 %i.zk to i64
  %i.adf = add nuw i64 %i.add, %i.ade             ; 5 uses
  store i64 %i.adf, ptr %i.cj, align 8, !tbaa !89, !noalias !238
  %i.adg = add i32 %i.acw, %i.zs                  ; 2 uses
  %i.adh = sub i32 0, %i.adg
  %i.adi = and i32 %i.adh, 63
  %i.adj = zext nneg i32 %i.adi to i64
  %i.adk = lshr i64 %i.acl, %i.adj
  %i.adl = zext nneg i8 %i.zr to i64
  %notmask.i.i238.i = shl nsw i64 -1, %i.adl
  %i.adm = xor i64 %notmask.i.i238.i, -1
  %i.adn = and i64 %i.adk, %i.adm
  %i.ado = zext i16 %i.zl to i64
  %i.adp = add nuw i64 %i.adn, %i.ado             ; 5 uses
  store i64 %i.adp, ptr %i.ff, align 8, !tbaa !89, !noalias !238
  %i.adq = add i32 %i.adg, %i.zv                  ; 9 uses
  %i.adr = sub i32 0, %i.adq
  %i.ads = and i32 %i.adr, 63
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = lshr i64 %i.acl, %i.adt
  %i.adv = zext nneg i8 %i.zu to i64
  %notmask.i.i237.i = shl nsw i64 -1, %i.adv
  %i.adw = xor i64 %notmask.i.i237.i, -1
  %i.adx = and i64 %i.adu, %i.adw
  store i32 %i.adq, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.ady = zext i16 %i.zm to i64
  %i.adz = add nuw i64 %i.adx, %i.ady             ; 5 uses
  store i64 %i.adz, ptr %i.dr, align 8, !tbaa !89, !noalias !238
  %i.aea = icmp ugt i32 %i.adq, 64
  br i1 %i.aea, label %bb.dr, label %bb.ds, !prof !60

bb.dr:                                            ; preds = %bb.dq
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.ds:                                            ; preds = %bb.dq
  %.not.i228.i = icmp ult ptr %i.acj, %i.ab
  br i1 %.not.i228.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aeb = lshr i32 %i.adq, 3
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = sub nsw i64 0, %i.aec
  %i.aee = getelementptr inbounds i8, ptr %i.acj, i64 %i.aed ; 3 uses
  store ptr %i.aee, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.aef = and i32 %i.adq, 7                      ; 2 uses
  store i32 %i.aef, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val.i79 = load i64, ptr %i.aee, align 1, !tbaa !53, !noalias !238 ; 2 uses
  store i64 %.val.i79, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.aeg = icmp eq ptr %i.acj, %3
  br i1 %i.aeg, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aeh = lshr i32 %i.adq, 3                     ; 2 uses
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = sub nsw i64 0, %i.aei
  %i.aek = getelementptr inbounds i8, ptr %i.acj, i64 %i.aej
  %i.ael = icmp ult ptr %i.aek, %3
  %i.aem = ptrtoint ptr %i.acj to i64
  %i.aen = sub i64 %i.aem, %i.yf
  %i.aeo = trunc i64 %i.aen to i32
  %.021.i230.i = select i1 %i.ael, i32 %i.aeo, i32 %i.aeh ; 2 uses
  %i.aep = zext i32 %.021.i230.i to i64
  %i.aeq = sub nsw i64 0, %i.aep
  %i.aer = getelementptr inbounds i8, ptr %i.acj, i64 %i.aeq ; 3 uses
  store ptr %i.aer, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.aes = shl i32 %.021.i230.i, 3
  %i.aet = sub i32 %i.adq, %i.aes                 ; 2 uses
  store i32 %i.aet, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val8 = load i64, ptr %i.aer, align 1, !tbaa !53 ; 2 uses
  store i64 %.val8, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i: ; preds = %bb.du, %bb.dr, %bb.dt, %bb.dv, %bb.dp
  %i.aeu = phi ptr [ %i.acj, %bb.du ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dr ], [ %i.aee, %bb.dt ], [ %i.aer, %bb.dv ], [ %i.acj, %bb.dp ] ; 2 uses
  %i.aev = phi i32 [ %i.adq, %bb.du ], [ %i.adq, %bb.dr ], [ %i.aef, %bb.dt ], [ %i.aet, %bb.dv ], [ %i.acv, %bb.dp ] ; 2 uses
  %i.aew = phi i64 [ %i.acl, %bb.du ], [ %i.acl, %bb.dr ], [ %.val.i79, %bb.dt ], [ %.val8, %bb.dv ], [ %i.acl, %bb.dp ]
  %i.aex = phi i64 [ %i.adp, %bb.du ], [ %i.adp, %bb.dr ], [ %i.adp, %bb.dt ], [ %i.adp, %bb.dv ], [ %i.ym, %bb.dp ]
  %i.aey = phi i64 [ %i.adz, %bb.du ], [ %i.adz, %bb.dr ], [ %i.adz, %bb.dt ], [ %i.adz, %bb.dv ], [ %i.yn, %bb.dp ]
  %i.aez = phi i64 [ %i.adf, %bb.du ], [ %i.adf, %bb.dr ], [ %i.adf, %bb.dt ], [ %i.adf, %bb.dv ], [ %i.yo, %bb.dp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.afa = getelementptr i8, ptr %.7149.i317, i64 %.sroa.0.0 ; 7 uses
  %i.afb = add i64 %.sroa.0.0, %.sroa.6.0         ; 9 uses
  %i.afc = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 %.sroa.0.0 ; 2 uses
  %i.afe = sub i64 0, %.sink493
  %i.aff = getelementptr inbounds i8, ptr %i.afa, i64 %i.afe ; 2 uses
  %i.afg = icmp ugt ptr %i.afd, %i.uk
  %i.afh = getelementptr inbounds nuw i8, ptr %.7149.i317, i64 %i.afb
  %i.afi = icmp ugt ptr %i.afh, %i.us
  %or.cond.i.i = select i1 %i.afg, i1 true, i1 %i.afi, !prof !112
  br i1 %or.cond.i.i, label %bb.dw, label %.critedge.i.i, !prof !112

.critedge.i.i:                                    ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  %.val28 = load <2 x i64>, ptr %i.afc, align 1, !tbaa !9
  store <2 x i64> %.val28, ptr %.7149.i317, align 1, !tbaa !9
  %i.afj = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.afj, label %bb.dx, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, !prof !60

bb.dw:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  store i64 %.sroa.0.0, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.6.0, ptr %.sroa.6103.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink493, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !53
  %i.afk = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7149.i317, ptr noundef %i.b, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.uk, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.dx:                                            ; preds = %.critedge.i.i
  %i.afl = getelementptr inbounds nuw i8, ptr %.7149.i317, i64 16
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afc, i64 16 ; 2 uses
  %i.afn = add i64 %.sroa.0.0, -16
  %.val23 = load <2 x i64>, ptr %i.afm, align 1, !tbaa !9
  store <2 x i64> %.val23, ptr %i.afl, align 1, !tbaa !9
  %i.afo = icmp slt i64 %i.afn, 17
  br i1 %i.afo, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.afp = getelementptr inbounds nuw i8, ptr %.7149.i317, i64 32
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %bb.dy
  %.130.i276.i = phi ptr [ %i.afp, %bb.dy ], [ %i.afs, %bb.dz ] ; 3 uses
  %.pn.i277.i = phi ptr [ %i.afm, %bb.dy ], [ %i.afr, %bb.dz ] ; 2 uses
  %.1.i278.i = getelementptr inbounds nuw i8, ptr %.pn.i277.i, i64 16
  %.1.i278.i.val = load <2 x i64>, ptr %.1.i278.i, align 1, !tbaa !9
  store <2 x i64> %.1.i278.i.val, ptr %.130.i276.i, align 1, !tbaa !9
  %i.afq = getelementptr inbounds nuw i8, ptr %.130.i276.i, i64 16
  %i.afr = getelementptr inbounds nuw i8, ptr %.pn.i277.i, i64 32 ; 2 uses
  %.val22 = load <2 x i64>, ptr %i.afr, align 1, !tbaa !9
  store <2 x i64> %.val22, ptr %i.afq, align 1, !tbaa !9
  %i.afs = getelementptr inbounds nuw i8, ptr %.130.i276.i, i64 32 ; 2 uses
  %i.aft = icmp ult ptr %i.afs, %i.afa
  br i1 %i.aft, label %bb.dz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i: ; preds = %bb.dz, %bb.dx, %.critedge.i.i
  store ptr %i.afd, ptr %i.a, align 8, !tbaa !46
  %i.afu = ptrtoint ptr %i.afa to i64             ; 2 uses
  %i.afv = sub i64 %i.afu, %i.gu                  ; 3 uses
  %i.afw = icmp ugt i64 %.sink493, %i.afv
  br i1 %i.afw, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i
  %i.afx = sub i64 %i.afu, %i.gv
  %i.afy = icmp ugt i64 %.sink493, %i.afx
  br i1 %i.afy, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, label %bb.eb, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread: ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread264

bb.eb:                                            ; preds = %bb.ea
  %i.afz = ptrtoint ptr %i.aff to i64
  %i.aga = sub i64 %i.afz, %i.gu                  ; 3 uses
  %i.agb = getelementptr inbounds i8, ptr %i.l, i64 %i.aga ; 2 uses
  %i.agc = add nsw i64 %i.aga, %.sroa.6.0         ; 2 uses
  %.not.i200.i = icmp sgt i64 %i.agc, 0
  br i1 %.not.i200.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afa, ptr align 1 %i.agb, i64 %.sroa.6.0, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.ed:                                            ; preds = %bb.eb
  %gepdiff.i.i = sub nsw i64 0, %i.aga            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.afa, ptr align 1 %i.agb, i64 %gepdiff.i.i, i1 false)
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afa, i64 %gepdiff.i.i
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i
  %.sroa.6103.0 = phi i64 [ %i.agc, %bb.ed ], [ %.sroa.6.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 5 uses
  %.0203 = phi ptr [ %i.h, %bb.ed ], [ %i.aff, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 9 uses
  %.0202 = phi ptr [ %i.agd, %bb.ed ], [ %i.afa, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 12 uses
  %i.age = icmp ugt i64 %.sink493, 15
  br i1 %i.age, label %bb.ef, label %bb.ei, !prof !97

bb.ef:                                            ; preds = %bb.ee
  %i.agf = getelementptr inbounds i8, ptr %.0202, i64 %.sroa.6103.0
  %.val25 = load <2 x i64>, ptr %.0203, align 1, !tbaa !9
  store <2 x i64> %.val25, ptr %.0202, align 1, !tbaa !9
  %i.agg = icmp slt i64 %.sroa.6103.0, 17
  br i1 %i.agg, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.agh = getelementptr inbounds nuw i8, ptr %.0202, i64 16
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %bb.eg
  %.130.i283.i = phi ptr [ %i.agh, %bb.eg ], [ %i.agk, %bb.eh ] ; 3 uses
  %.pn.i284.i = phi ptr [ %.0203, %bb.eg ], [ %i.agj, %bb.eh ] ; 2 uses
  %.1.i285.i = getelementptr inbounds nuw i8, ptr %.pn.i284.i, i64 16
  %.1.i285.i.val = load <2 x i64>, ptr %.1.i285.i, align 1, !tbaa !9
  store <2 x i64> %.1.i285.i.val, ptr %.130.i283.i, align 1, !tbaa !9
  %i.agi = getelementptr inbounds nuw i8, ptr %.130.i283.i, i64 16
  %i.agj = getelementptr inbounds nuw i8, ptr %.pn.i284.i, i64 32 ; 2 uses
  %.val24 = load <2 x i64>, ptr %i.agj, align 1, !tbaa !9
  store <2 x i64> %.val24, ptr %i.agi, align 1, !tbaa !9
  %i.agk = getelementptr inbounds nuw i8, ptr %.130.i283.i, i64 32 ; 2 uses
  %i.agl = icmp ult ptr %i.agk, %i.agf
  br i1 %i.agl, label %bb.eh, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

bb.ei:                                            ; preds = %bb.ee
  %i.agm = icmp samesign ult i64 %.sink493, 8
  br i1 %i.agm, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink493
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !3
  %i.agp = load i8, ptr %.0203, align 1, !tbaa !9
  store i8 %i.agp, ptr %.0202, align 1, !tbaa !9
  %i.agq = getelementptr inbounds nuw i8, ptr %.0203, i64 1
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !9
  %i.ags = getelementptr inbounds nuw i8, ptr %.0202, i64 1
  store i8 %i.agr, ptr %i.ags, align 1, !tbaa !9
  %i.agt = getelementptr inbounds nuw i8, ptr %.0203, i64 2
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !9
  %i.agv = getelementptr inbounds nuw i8, ptr %.0202, i64 2
  store i8 %i.agu, ptr %i.agv, align 1, !tbaa !9
  %i.agw = getelementptr inbounds nuw i8, ptr %.0203, i64 3
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !9
  %i.agy = getelementptr inbounds nuw i8, ptr %.0202, i64 3
  store i8 %i.agx, ptr %i.agy, align 1, !tbaa !9
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink493
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !3
  %i.ahb = zext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0203, i64 %i.ahb ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0202, i64 4
  %.val32 = load i32, ptr %i.ahc, align 1
  store i32 %.val32, ptr %i.ahd, align 1
  %i.ahe = sext i32 %i.ago to i64
  %i.ahf = sub nsw i64 0, %i.ahe
  %i.ahg = getelementptr inbounds i8, ptr %i.ahc, i64 %i.ahf
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i

bb.ek:                                            ; preds = %bb.ei
  %.val34 = load i64, ptr %.0203, align 1
  store i64 %.val34, ptr %.0202, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i: ; preds = %bb.ek, %bb.ej
  %.1204 = phi ptr [ %i.ahg, %bb.ej ], [ %.0203, %bb.ek ] ; 2 uses
  %.1204180 = ptrtoaddr ptr %.1204 to i64
  %i.ahh = getelementptr inbounds nuw i8, ptr %.1204, i64 8 ; 7 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0202, i64 8 ; 6 uses
  %i.ahj = icmp ugt i64 %.sroa.6103.0, 8
  br i1 %i.ahj, label %bb.el, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.el:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i
  %i.ahk = ptrtoint ptr %i.ahi to i64
  %i.ahl = ptrtoint ptr %i.ahh to i64
  %i.ahm = sub i64 %i.ahk, %i.ahl
  %i.ahn = getelementptr i8, ptr %.0202, i64 %.sroa.6103.0 ; 2 uses
  %i.aho = icmp slt i64 %i.ahm, 16
  br i1 %i.aho, label %.preheader287.preheader, label %bb.em

.preheader287.preheader:                          ; preds = %bb.el
  %20 = tail call i64 @llvm.umin.i64(i64 %.sink493, i64 %i.afv)
  %umin182 = tail call i64 @llvm.umax.i64(i64 %.sink493, i64 %i.afv) ; 3 uses
  %i.ahp = add i64 %.sroa.6.0, %i.gu
  %21 = add i64 %i.ahp, %20
  %i.ahq = add i64 %21, %umin182
  %i.ahr = sub i64 %i.ahq, %.sink493
  %i.ahs = add i64 %umin182, %invariant.op369
  %umax184 = tail call i64 @llvm.umax.i64(i64 %i.ahr, i64 %i.ahs)
  %i.aht = add i64 %umin182, %i.gu
  %22 = sub i64 %umax184, %i.aht
  %23 = add i64 %22, -9                           ; 2 uses
  %i.ahu = lshr i64 %23, 3
  %i.ahv = add nuw nsw i64 %i.ahu, 1              ; 2 uses
  %min.iters.check186 = icmp ult i64 %23, 72
  br i1 %min.iters.check186, label %.preheader287.preheader205, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.preheader287.preheader
  %i.ahw = sub i64 %.sroa.0.0, %i.gu
  %i.ahx = add i64 %i.ahw, %.7149.i317178
  %umax179 = tail call i64 @llvm.umax.i64(i64 %.sink493, i64 %i.ahx)
  %i.ahy = add i64 %umax179, %i.gu
  %i.ahz = sub i64 %.1204180, %i.ahy
  %diff.check181 = icmp ugt i64 %i.ahz, -32
  br i1 %diff.check181, label %.preheader287.preheader205, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck177
  %n.vec189 = and i64 %i.ahv, 4611686018427387900 ; 3 uses
  %i.aia = shl i64 %n.vec189, 3                   ; 2 uses
  %i.aib = getelementptr i8, ptr %i.ahi, i64 %i.aia
  %i.aic = getelementptr i8, ptr %i.ahh, i64 %i.aia
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph187
  %index191 = phi i64 [ 0, %vector.ph187 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %i.aid = shl i64 %index191, 3                   ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.ahi, i64 %i.aid ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.ahh, i64 %i.aid ; 2 uses
  %i.aie = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <2 x i64>, ptr %next.gep193, align 1
  %wide.load195 = load <2 x i64>, ptr %i.aie, align 1
  %i.aif = getelementptr i8, ptr %next.gep192, i64 16
  store <2 x i64> %wide.load194, ptr %next.gep192, align 1
  store <2 x i64> %wide.load195, ptr %i.aif, align 1
  %index.next196 = add nuw i64 %index191, 4       ; 2 uses
  %i.aig = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.aig, label %middle.block197, label %vector.body190, !llvm.loop !241

middle.block197:                                  ; preds = %vector.body190
  %cmp.n198 = icmp eq i64 %i.ahv, %n.vec189
  br i1 %cmp.n198, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %.preheader287.preheader205

.preheader287.preheader205:                       ; preds = %vector.memcheck177, %.preheader287.preheader, %middle.block197
  %.029.i293.i.ph = phi ptr [ %i.ahi, %vector.memcheck177 ], [ %i.ahi, %.preheader287.preheader ], [ %i.aib, %middle.block197 ]
  %.0.i294.i.ph = phi ptr [ %i.ahh, %vector.memcheck177 ], [ %i.ahh, %.preheader287.preheader ], [ %i.aic, %middle.block197 ]
  br label %.preheader287

.preheader287:                                    ; preds = %.preheader287.preheader205, %.preheader287
  %.029.i293.i = phi ptr [ %i.aih, %.preheader287 ], [ %.029.i293.i.ph, %.preheader287.preheader205 ] ; 2 uses
  %.0.i294.i = phi ptr [ %i.aii, %.preheader287 ], [ %.0.i294.i.ph, %.preheader287.preheader205 ] ; 2 uses
  %.0.i294.i.val = load i64, ptr %.0.i294.i, align 1
  store i64 %.0.i294.i.val, ptr %.029.i293.i, align 1
  %i.aih = getelementptr inbounds nuw i8, ptr %.029.i293.i, i64 8 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.0.i294.i, i64 8
  %i.aij = icmp ult ptr %i.aih, %i.ahn
  br i1 %i.aij, label %.preheader287, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !242

bb.em:                                            ; preds = %bb.el
  %.val27 = load <2 x i64>, ptr %i.ahh, align 1, !tbaa !9
  store <2 x i64> %.val27, ptr %i.ahi, align 1, !tbaa !9
  %i.aik = icmp slt i64 %.sroa.6103.0, 25
  br i1 %i.aik, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ail = getelementptr inbounds nuw i8, ptr %.0202, i64 24
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %bb.en
  %.130.i290.i = phi ptr [ %i.ail, %bb.en ], [ %i.aio, %bb.eo ] ; 3 uses
  %.pn.i291.i = phi ptr [ %i.ahh, %bb.en ], [ %i.ain, %bb.eo ] ; 2 uses
  %.1.i292.i = getelementptr inbounds nuw i8, ptr %.pn.i291.i, i64 16
  %.1.i292.i.val = load <2 x i64>, ptr %.1.i292.i, align 1, !tbaa !9
  store <2 x i64> %.1.i292.i.val, ptr %.130.i290.i, align 1, !tbaa !9
  %i.aim = getelementptr inbounds nuw i8, ptr %.130.i290.i, i64 16
  %i.ain = getelementptr inbounds nuw i8, ptr %.pn.i291.i, i64 32 ; 2 uses
  %.val26 = load <2 x i64>, ptr %i.ain, align 1, !tbaa !9
  store <2 x i64> %.val26, ptr %i.aim, align 1, !tbaa !9
  %i.aio = getelementptr inbounds nuw i8, ptr %.130.i290.i, i64 32 ; 2 uses
  %i.aip = icmp ult ptr %i.aio, %i.ahn
  br i1 %i.aip, label %bb.eo, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i: ; preds = %bb.eo, %.preheader287, %bb.eh, %middle.block197, %bb.em, %bb.ef, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i, %bb.ec, %bb.dw
  %.0.i.i = phi i64 [ %i.afk, %bb.dw ], [ %i.afb, %middle.block197 ], [ %i.afb, %bb.ec ], [ %i.afb, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i ], [ %i.afb, %bb.ef ], [ %i.afb, %bb.em ], [ %i.afb, %bb.eh ], [ %i.afb, %.preheader287 ], [ %i.afb, %bb.eo ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.aiq = icmp ult i64 %.0.i.i, -119
  br i1 %i.aiq, label %bb.ep, label %.thread264

bb.ep:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i
  %i.air = getelementptr inbounds nuw i8, ptr %.7149.i317, i64 %.0.i.i ; 2 uses
  %i.ais = add nsw i32 %.4139.i319, -1            ; 2 uses
  %.not183.i = icmp eq i32 %i.ais, 0
  br i1 %.not183.i, label %.thread260, label %bb.cy, !llvm.loop !158

.thread260:                                       ; preds = %bb.bu, %bb.ep, %bb.cw
  %i.ait = phi ptr [ %i.aeu, %bb.ep ], [ %i.rx, %bb.cw ], [ %i.nw, %bb.bu ]
  %i.aiu = phi i32 [ %i.aev, %bb.ep ], [ %i.ry, %bb.cw ], [ %i.nx, %bb.bu ]
  %i.aiv = phi i64 [ %i.abd, %bb.ep ], [ %i.ju, %bb.cw ], [ %i.ju, %bb.bu ]
  %i.aiw = phi i64 [ %.sink494, %bb.ep ], [ %.sink492, %bb.cw ], [ %.sink492, %bb.bu ]
  %i.aix = phi i64 [ %.sink493, %bb.ep ], [ %.sink, %bb.cw ], [ %.sink, %bb.bu ]
  %.9151.i258 = phi ptr [ %i.air, %bb.ep ], [ %i.yd, %bb.cw ], [ %i.ru, %bb.bu ]
  %.2159.i233242257 = phi ptr [ %i.uk, %bb.ep ], [ %i.uk, %bb.cw ], [ %i.f, %bb.bu ]
  %i.aiy = icmp eq ptr %i.ait, %3
  %.not286 = icmp eq i32 %i.aiu, 64
  %or.cond = select i1 %i.aiy, i1 %.not286, i1 false
  br i1 %or.cond, label %.preheader, label %.thread264

.preheader:                                       ; preds = %.thread260
  %i.aiz = trunc i64 %i.aix to i32
  store i32 %i.aiz, ptr %i.n, align 4, !tbaa !3
  %i.aja = trunc i64 %i.aiw to i32
  store i32 %i.aja, ptr %i.r, align 8, !tbaa !3
  %i.ajb = trunc i64 %i.aiv to i32
  store i32 %i.ajb, ptr %i.v, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.eq

.thread264:                                       ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, %bb.l, %bb.d, %bb.b, %.loopexit.thread, %.loopexit, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, %bb.bv, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread, %bb.bw, %.thread260
  %.9.i.ph = phi i64 [ -20, %.loopexit.thread ], [ -20, %bb.bv ], [ -20, %bb.b ], [ %.0.i203.i, %.loopexit ], [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread ], [ -20, %.thread260 ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ], [ -20, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread ], [ %.0.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i ], [ -20, %bb.d ], [ -70, %bb.bw ], [ -20, %bb.l ], [ %.0.i209.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.eq:                                            ; preds = %.preheader, %bb.a
  %.pre = phi ptr [ %.pre.pre, %.preheader ], [ %i.d, %bb.a ] ; 3 uses
  %.4161.i = phi ptr [ %.2159.i233242257, %.preheader ], [ %i.f, %bb.a ] ; 2 uses
  %.11153.i = phi ptr [ %.9151.i258, %.preheader ], [ %1, %bb.a ] ; 5 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 8, !tbaa !43
  %i.aje = icmp eq i32 %i.ajd, 2
  br i1 %i.aje, label %bb.er, label %._crit_edge

._crit_edge:                                      ; preds = %bb.eq
  %.pre356 = ptrtoint ptr %i.b to i64
  br label %bb.ev

bb.er:                                            ; preds = %bb.eq
  %i.ajf = ptrtoint ptr %.4161.i to i64
  %i.ajg = ptrtoint ptr %.pre to i64
  %i.ajh = sub i64 %i.ajf, %i.ajg                 ; 3 uses
  %i.aji = ptrtoint ptr %i.b to i64               ; 2 uses
  %i.ajj = ptrtoint ptr %.11153.i to i64
  %i.ajk = sub i64 %i.aji, %i.ajj
  %.not188.i = icmp ugt i64 %i.ajh, %i.ajk
  br i1 %.not188.i, label %_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.not187.i = icmp eq ptr %.11153.i, null
  br i1 %.not187.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.11153.i, ptr align 1 %.pre, i64 %i.ajh, i1 false)
  %i.ajl = getelementptr inbounds nuw i8, ptr %.11153.i, i64 %i.ajh
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et
  %.12154.i = phi ptr [ %i.ajl, %bb.et ], [ null, %bb.es ]
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 30372
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 95908
  store i32 0, ptr %i.ajc, align 8, !tbaa !43
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge, %bb.eu
  %.pre-phi = phi i64 [ %.pre356, %._crit_edge ], [ %i.aji, %bb.eu ]
  %i.ajo = phi ptr [ %.pre, %._crit_edge ], [ %i.ajm, %bb.eu ] ; 2 uses
  %.6163.i = phi ptr [ %.4161.i, %._crit_edge ], [ %i.ajn, %bb.eu ]
  %.14156.i = phi ptr [ %.11153.i, %._crit_edge ], [ %.12154.i, %bb.eu ] ; 4 uses
  %i.ajp = ptrtoint ptr %.6163.i to i64
  %i.ajq = ptrtoint ptr %i.ajo to i64
  %i.ajr = sub i64 %i.ajp, %i.ajq                 ; 3 uses
  %i.ajs = ptrtoint ptr %.14156.i to i64
  %i.ajt = sub i64 %.pre-phi, %i.ajs
  %.not190.i = icmp ugt i64 %i.ajr, %i.ajt
  br i1 %.not190.i, label %_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.not189.i = icmp eq ptr %.14156.i, null
  br i1 %.not189.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14156.i, ptr align 1 %i.ajo, i64 %i.ajr, i1 false)
  %i.aju = getelementptr inbounds nuw i8, ptr %.14156.i, i64 %i.ajr
  %i.ajv = ptrtoint ptr %i.aju to i64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.16.i.ph = phi i64 [ 0, %bb.ew ], [ %i.ajv, %bb.ex ]
  %i.ajw = ptrtoint ptr %1 to i64
  %i.ajx = sub i64 %.16.i.ph, %i.ajw
  br label %_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL43ZSTD_decompressSequences_bodySplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %bb.er, %bb.ev, %.thread264, %bb.ey
  %.14.i = phi i64 [ %i.ajx, %bb.ey ], [ %.9.i.ph, %.thread264 ], [ -70, %bb.ev ], [ -70, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.14.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL29ZSTD_decompressSequences_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #14 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::seq_t", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %"struct.duckdb_zstd::seqState_t", align 8 ; 33 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43
  %i.d = icmp eq i32 %i.c, 0
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstdL29ZSTD_decompressSequences_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit

bb.r:                                             ; preds = %bb.p
  %.not.i.i18 = icmp slt i64 %.idx, 8
  br i1 %.not.i.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = lshr i32 %i.cv, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %.ptr, i64 %i.dh ; 4 uses
  store ptr %i.di, ptr %i.de, align 8, !tbaa !86
  %i.dj = and i32 %i.cv, 7                        ; 2 uses
  store i32 %i.dj, ptr %i.cu, align 8, !tbaa !91
  %.val.i.i = load i64, ptr %i.di, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i.i, ptr %7, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = icmp eq i64 %.idx, 0
  br i1 %i.dk, label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = lshr i32 %i.cv, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %.021.i.i20157 = tail call i64 @llvm.smin.i64(i64 %.idx, i64 %i.dm) ; 2 uses
  %.021.i.i20 = trunc i64 %.021.i.i20157 to i32
  %i.dn = and i64 %.021.i.i20157, 4294967295
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.ptr, i64 %i.do ; 4 uses
  store ptr %i.dp, ptr %i.de, align 8, !tbaa !86
  %i.dq = shl i32 %.021.i.i20, 3
  %i.dr = sub i32 %i.cv, %i.dq                    ; 2 uses
  store i32 %i.dr, ptr %i.cu, align 8, !tbaa !91
  %.val.i21 = load i64, ptr %i.dp, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i21, ptr %7, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %i.ds = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.q ], [ %i.di, %bb.s ], [ %i.cn, %bb.t ], [ %i.dp, %bb.u ]
  %i.dt = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.q ], [ %i.di, %bb.s ], [ %3, %bb.t ], [ %i.dp, %bb.u ] ; 7 uses
  %i.du = phi i32 [ %i.cv, %bb.q ], [ %i.dj, %bb.s ], [ %i.cv, %bb.t ], [ %i.dr, %bb.u ]
  %i.dv = phi i64 [ %i.cp, %bb.q ], [ %.val.i.i, %bb.s ], [ %i.cp, %bb.t ], [ %.val.i21, %bb.u ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !92
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !79 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !71 ; 2 uses
  %i.ed = add i32 %i.du, %i.ec                    ; 8 uses
  %i.ee = sub i32 0, %i.ed
  %i.ef = and i32 %i.ee, 63
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = lshr i64 %i.dv, %i.eg
  %i.ei = zext nneg i32 %i.ec to i64
  %notmask.i.i22 = shl nsw i64 -1, %i.ei
  %i.ej = xor i64 %notmask.i.i22, -1
  %i.ek = and i64 %i.eh, %i.ej                    ; 2 uses
  store i64 %i.ek, ptr %i.dy, align 8, !tbaa !89
  %i.el = icmp ugt i32 %i.ed, 64
  br i1 %i.el, label %bb.v, label %bb.w, !prof !60

bb.v:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.de, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit28

bb.w:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit
  %.not.i.i23 = icmp ult ptr %i.dt, %i.ai
  br i1 %.not.i.i23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = lshr i32 %i.ed, 3
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.dt, i64 %i.eo ; 4 uses
  store ptr %i.ep, ptr %i.de, align 8, !tbaa !86
  %i.eq = and i32 %i.ed, 7
  %.val.i.i24 = load i64, ptr %i.ep, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i.i24, ptr %7, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit28

bb.y:                                             ; preds = %bb.w
  %i.er = icmp eq ptr %i.dt, %3
  br i1 %i.er, label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit28, label %bb.z

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
  store ptr %i.fd, ptr %i.de, align 8, !tbaa !86
  %i.fe = shl i32 %.021.i.i26, 3
  %i.ff = sub i32 %i.ed, %i.fe
  %.val.i27 = load i64, ptr %i.fd, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i27, ptr %7, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit28

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit28: ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  %i.fg = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.v ], [ %i.ep, %bb.x ], [ %i.ds, %bb.y ], [ %i.fd, %bb.z ]
  %i.fh = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.v ], [ %i.ep, %bb.x ], [ %i.dt, %bb.y ], [ %i.fd, %bb.z ] ; 6 uses
  %i.fi = phi i32 [ %i.ed, %bb.v ], [ %i.eq, %bb.x ], [ %i.ed, %bb.y ], [ %i.ff, %bb.z ]
  %i.fj = phi i64 [ %i.dv, %bb.v ], [ %.val.i.i24, %bb.x ], [ %i.dv, %bb.y ], [ %.val.i27, %bb.z ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !92
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !93 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !71 ; 2 uses
  %i.fr = add i32 %i.fi, %i.fq                    ; 9 uses
  %i.fs = sub i32 0, %i.fr
  %i.ft = and i32 %i.fs, 63
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i64 %i.fj, %i.fu
  %i.fw = zext nneg i32 %i.fq to i64
  %notmask.i.i29 = shl nsw i64 -1, %i.fw
  %i.fx = xor i64 %notmask.i.i29, -1
  %i.fy = and i64 %i.fv, %i.fx                    ; 2 uses
  store i32 %i.fr, ptr %i.cu, align 8, !tbaa !91
  store i64 %i.fy, ptr %i.fm, align 8, !tbaa !89
  %i.fz = icmp ugt i32 %i.fr, 64
  br i1 %i.fz, label %bb.aa, label %bb.ab, !prof !60

bb.aa:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit28
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.de, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit28
  %.not.i.i30 = icmp ult ptr %i.fh, %i.ai
  br i1 %.not.i.i30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = lshr i32 %i.fr, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = sub nsw i64 0, %i.gb
  %i.gd = getelementptr inbounds i8, ptr %i.fh, i64 %i.gc ; 3 uses
  store ptr %i.gd, ptr %i.de, align 8, !tbaa !86
  %i.ge = and i32 %i.fr, 7                        ; 2 uses
  store i32 %i.ge, ptr %i.cu, align 8, !tbaa !91
  %.val.i.i31 = load i64, ptr %i.gd, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i.i31, ptr %7, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35

bb.ad:                                            ; preds = %bb.ab
  %i.gf = icmp eq ptr %i.fh, %3
  br i1 %i.gf, label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35, label %bb.ae

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
  store ptr %i.gr, ptr %i.de, align 8, !tbaa !86
  %i.gs = shl i32 %.021.i.i33, 3
  %i.gt = sub i32 %i.fr, %i.gs                    ; 2 uses
  store i32 %i.gt, ptr %i.cu, align 8, !tbaa !91
  %.val.i34 = load i64, ptr %i.gr, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i34, ptr %7, align 8, !tbaa !87
  br label %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35: ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %i.gu = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aa ], [ %i.gd, %bb.ac ], [ %i.fg, %bb.ad ], [ %i.gr, %bb.ae ]
  %i.gv = phi i32 [ %i.fr, %bb.aa ], [ %i.ge, %bb.ac ], [ %i.fr, %bb.ad ], [ %i.gt, %bb.ae ]
  %i.gw = phi i64 [ %i.fj, %bb.aa ], [ %.val.i.i31, %bb.ac ], [ %i.fj, %bb.ad ], [ %.val.i34, %bb.ae ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !92
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !159
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !160
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !161
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !162
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !163
  %i.gz = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.hc = ptrtoint ptr %i.o to i64                ; 7 uses
  %i.hd = ptrtoint ptr %i.q to i64
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %8 = ptrtoint ptr %3 to i64
  %i.he = ptrtoint ptr %3 to i64
  %invariant.op = add i64 %i.hc, 16
  br label %bb.af

bb.af:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35, %bb.bw
  %i.hf = phi ptr [ %i.gu, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.nt, %bb.bw ] ; 8 uses
  %i.hg = phi i32 [ %i.gv, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.nu, %bb.bw ] ; 5 uses
  %i.hh = phi i64 [ %i.gw, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.nv, %bb.bw ] ; 6 uses
  %i.hi = phi i64 [ %i.ae, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.kc, %bb.bw ] ; 2 uses
  %i.hj = phi i64 [ %i.aa, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %.sink169, %bb.bw ] ; 6 uses
  %i.hk = phi i64 [ %i.x, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %.sink, %bb.bw ] ; 6 uses
  %i.hl = phi i64 [ %i.fy, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.nw, %bb.bw ] ; 2 uses
  %i.hm = phi i64 [ %i.ek, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.nx, %bb.bw ] ; 2 uses
  %i.hn = phi i64 [ %i.dc, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.ny, %bb.bw ] ; 2 uses
  %.063.i115 = phi i32 [ %5, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.rr, %bb.bw ] ; 2 uses
  %.068.i113 = phi ptr [ %1, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit35 ], [ %i.rq, %bb.bw ] ; 8 uses
  %.068.i11311 = ptrtoaddr ptr %.068.i113 to i64
  %.not = icmp eq i32 %.063.i115, 1
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.hn ; 4 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hl ; 4 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.hm ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !49, !noalias !243
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !49, !noalias !243 ; 2 uses
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !49, !noalias !243 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !66, !noalias !243 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.ic = load i8, ptr %i.ib, align 2, !tbaa !66, !noalias !243 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.ie = load i8, ptr %i.id, align 2, !tbaa !66, !noalias !243 ; 4 uses
  %i.if = zext i8 %i.ia to i32                    ; 2 uses
  %i.ig = zext i8 %i.ic to i32                    ; 2 uses
  %i.ih = add i8 %i.ic, %i.ia
  %i.ii = add i8 %i.ih, %i.ie
  %i.ij = load i16, ptr %i.ho, align 4, !tbaa !65, !noalias !243
  %i.ik = load i16, ptr %i.hp, align 4, !tbaa !65, !noalias !243
  %i.il = load i16, ptr %i.hq, align 4, !tbaa !65, !noalias !243
  %i.im = getelementptr inbounds nuw i8, ptr %i.ho, i64 3
  %i.in = load i8, ptr %i.im, align 1, !tbaa !64, !noalias !243 ; 2 uses
  %i.io = zext i8 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !64, !noalias !243 ; 2 uses
  %i.ir = zext i8 %i.iq to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.it = load i8, ptr %i.is, align 1, !tbaa !64, !noalias !243 ; 2 uses
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
  store i32 %i.je, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.jf = zext i32 %i.hy to i64
  %i.jg = add i64 %i.jd, %i.jf
  store i64 %i.hj, ptr %i.hb, align 8, !tbaa !53, !noalias !243
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.jh = icmp eq i32 %i.hv, 0                    ; 3 uses
  %i.ji = icmp eq i8 %i.ie, 0
  br i1 %i.ji, label %bb.ai, label %bb.aj, !prof !97

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
  store i32 %i.js, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.jt = add nuw nsw i64 %i.jr, %i.jn            ; 3 uses
  %i.ju = icmp eq i64 %i.jt, 3
  br i1 %i.ju, label %.thread, label %bb.ak

.thread:                                          ; preds = %bb.aj
  %i.jv = add i64 %i.hk, -1                       ; 2 uses
  %.not.i.i87 = icmp eq i64 %i.jv, 0
  %i.jw = select i1 %.not.i.i87, i64 -1, i64 %i.jv
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.jt
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !53, !noalias !243 ; 2 uses
  %.not.i.i = icmp eq i64 %i.jy, 0
  %i.jz = select i1 %.not.i.i, i64 -1, i64 %i.jy  ; 2 uses
  %.not101.i.i = icmp eq i64 %i.jt, 1
  br i1 %.not101.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.ka = phi i64 [ %i.jw, %.thread ], [ %i.jz, %bb.ak ]
  store i64 %i.hj, ptr %i.hb, align 8, !tbaa !53, !noalias !243
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai, %bb.ag
  %i.kb = phi i32 [ %i.je, %bb.ag ], [ %i.hg, %bb.ai ], [ %i.js, %bb.al ], [ %i.js, %bb.ak ] ; 3 uses
  %.sink169 = phi i64 [ %i.hk, %bb.ag ], [ %i.jk, %bb.ai ], [ %i.hk, %bb.al ], [ %i.hk, %bb.ak ] ; 3 uses
  %.sink = phi i64 [ %i.jg, %bb.ag ], [ %i.jj, %bb.ai ], [ %i.ka, %bb.al ], [ %i.jz, %bb.ak ] ; 15 uses
  %i.kc = phi i64 [ %i.hj, %bb.ag ], [ %i.hi, %bb.ai ], [ %i.hj, %bb.al ], [ %i.hi, %bb.ak ] ; 2 uses
  store i64 %.sink169, ptr %i.ha, align 8, !tbaa !53, !noalias !243
  store i64 %.sink, ptr %i.v, align 8, !tbaa !53, !noalias !243
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
  store i32 %i.kk, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.kl = add i64 %i.kj, %i.ht
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.km = phi i32 [ %i.kb, %bb.am ], [ %i.kk, %bb.an ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.ht, %bb.am ], [ %i.kl, %bb.an ] ; 6 uses
  %i.kn = icmp ugt i8 %i.ii, 30
  br i1 %i.kn, label %bb.ap, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, !prof !60

bb.ap:                                            ; preds = %bb.ao
  %i.ko = icmp ugt i32 %i.km, 64
  br i1 %i.ko, label %bb.aq, label %bb.ar, !prof !60

bb.aq:                                            ; preds = %bb.ap
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.de, align 8, !tbaa !86, !noalias !243
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.ar:                                            ; preds = %bb.ap
  %.not.i83.i = icmp ult ptr %i.hf, %i.ai
  br i1 %.not.i83.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kp = lshr i32 %i.km, 3
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = sub nsw i64 0, %i.kq
  %i.ks = getelementptr inbounds i8, ptr %i.hf, i64 %i.kr ; 3 uses
  store ptr %i.ks, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.kt = and i32 %i.km, 7                        ; 2 uses
  store i32 %i.kt, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val.i41 = load i64, ptr %i.ks, align 1, !tbaa !53, !noalias !243 ; 2 uses
  store i64 %.val.i41, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.ku = icmp eq ptr %i.hf, %3
  br i1 %i.ku, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.au

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
  store ptr %i.lf, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.lg = shl i32 %.021.i.i, 3
  %i.lh = sub i32 %i.km, %i.lg                    ; 2 uses
  store i32 %i.lh, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val = load i64, ptr %i.lf, align 1, !tbaa !53 ; 2 uses
  store i64 %.val, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.at, %bb.aq, %bb.as, %bb.au, %bb.ao
  %i.li = phi ptr [ %i.hf, %bb.at ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aq ], [ %i.ks, %bb.as ], [ %i.lf, %bb.au ], [ %i.hf, %bb.ao ] ; 8 uses
  %i.lj = phi i32 [ %i.km, %bb.at ], [ %i.km, %bb.aq ], [ %i.kt, %bb.as ], [ %i.lh, %bb.au ], [ %i.km, %bb.ao ] ; 3 uses
  %i.lk = phi i64 [ %i.hh, %bb.at ], [ %i.hh, %bb.aq ], [ %.val.i41, %bb.as ], [ %.val, %bb.au ], [ %i.hh, %bb.ao ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not103.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.ll = and i32 %i.lj, 63
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = shl i64 %i.lk, %i.lm
  %i.lo = sub nsw i32 0, %i.if
  %i.lp = and i32 %i.lo, 63
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = lshr i64 %i.ln, %i.lq
  %i.ls = add i32 %i.lj, %i.if                    ; 2 uses
  store i32 %i.ls, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.lt = add i64 %i.lr, %i.hw
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.lu = phi i32 [ %i.lj, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.ls, %bb.av ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.hw, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.lt, %bb.av ] ; 7 uses
  br i1 %.not, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.ax

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
  store i64 %i.me, ptr %i.cq, align 8, !tbaa !89, !noalias !243
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
  store i64 %i.mo, ptr %i.fm, align 8, !tbaa !89, !noalias !243
  %i.mp = add i32 %i.mf, %i.iu                    ; 9 uses
  %i.mq = sub i32 0, %i.mp
  %i.mr = and i32 %i.mq, 63
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = lshr i64 %i.lk, %i.ms
  %i.mu = zext nneg i8 %i.it to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.mu
  %i.mv = xor i64 %notmask.i.i.i, -1
  %i.mw = and i64 %i.mt, %i.mv
  store i32 %i.mp, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.mx = zext i16 %i.il to i64
  %i.my = add nuw i64 %i.mw, %i.mx                ; 5 uses
  store i64 %i.my, ptr %i.dy, align 8, !tbaa !89, !noalias !243
  %i.mz = icmp ugt i32 %i.mp, 64
  br i1 %i.mz, label %bb.ay, label %bb.az, !prof !60

bb.ay:                                            ; preds = %bb.ax
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.de, align 8, !tbaa !86, !noalias !243
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.az:                                            ; preds = %bb.ax
  %.not.i85.i = icmp ult ptr %i.li, %i.ai
  br i1 %.not.i85.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.na = lshr i32 %i.mp, 3
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = sub nsw i64 0, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.li, i64 %i.nc ; 3 uses
  store ptr %i.nd, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.ne = and i32 %i.mp, 7                        ; 2 uses
  store i32 %i.ne, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val.i44 = load i64, ptr %i.nd, align 1, !tbaa !53, !noalias !243 ; 2 uses
  store i64 %.val.i44, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.nf = icmp eq ptr %i.li, %3
  br i1 %i.nf, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.bc

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
  store ptr %i.nq, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.nr = shl i32 %.021.i87.i, 3
  %i.ns = sub i32 %i.mp, %i.nr                    ; 2 uses
  store i32 %i.ns, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val6 = load i64, ptr %i.nq, align 1, !tbaa !53 ; 2 uses
  store i64 %.val6, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i: ; preds = %bb.bb, %bb.ay, %bb.ba, %bb.bc, %bb.aw
  %i.nt = phi ptr [ %i.li, %bb.bb ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ay ], [ %i.nd, %bb.ba ], [ %i.nq, %bb.bc ], [ %i.li, %bb.aw ] ; 2 uses
  %i.nu = phi i32 [ %i.mp, %bb.bb ], [ %i.mp, %bb.ay ], [ %i.ne, %bb.ba ], [ %i.ns, %bb.bc ], [ %i.lu, %bb.aw ] ; 2 uses
  %i.nv = phi i64 [ %i.lk, %bb.bb ], [ %i.lk, %bb.ay ], [ %.val.i44, %bb.ba ], [ %.val6, %bb.bc ], [ %i.lk, %bb.aw ]
  %i.nw = phi i64 [ %i.mo, %bb.bb ], [ %i.mo, %bb.ay ], [ %i.mo, %bb.ba ], [ %i.mo, %bb.bc ], [ %i.hl, %bb.aw ]
  %i.nx = phi i64 [ %i.my, %bb.bb ], [ %i.my, %bb.ay ], [ %i.my, %bb.ba ], [ %i.my, %bb.bc ], [ %i.hm, %bb.aw ]
  %i.ny = phi i64 [ %i.me, %bb.bb ], [ %i.me, %bb.ay ], [ %i.me, %bb.ba ], [ %i.me, %bb.bc ], [ %i.hn, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.nz = getelementptr i8, ptr %.068.i113, i64 %.sroa.0.0 ; 7 uses
  %i.oa = add i64 %.sroa.0.0, %.sroa.6.0          ; 9 uses
  %i.ob = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.sroa.0.0 ; 2 uses
  %i.od = sub i64 0, %.sink
  %i.oe = getelementptr inbounds i8, ptr %i.nz, i64 %i.od ; 2 uses
  %i.of = icmp ugt ptr %i.oc, %i.m
  %i.og = getelementptr inbounds nuw i8, ptr %.068.i113, i64 %i.oa
  %i.oh = icmp ugt ptr %i.og, %i.gz
  %or.cond.i.i = select i1 %i.of, i1 true, i1 %i.oh, !prof !112
  br i1 %or.cond.i.i, label %bb.bd, label %.critedge.i.i, !prof !112

.critedge.i.i:                                    ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  %.val13 = load <2 x i64>, ptr %i.ob, align 1, !tbaa !9
  store <2 x i64> %.val13, ptr %.068.i113, align 1, !tbaa !9
  %i.oi = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.oi, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !prof !60

bb.bd:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  store i64 %.sroa.0.0, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.6.0, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !53
  %i.oj = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.068.i113, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.be:                                            ; preds = %.critedge.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %.068.i113, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.om = add i64 %.sroa.0.0, -16
  %.val8 = load <2 x i64>, ptr %i.ol, align 1, !tbaa !9
  store <2 x i64> %.val8, ptr %i.ok, align 1, !tbaa !9
  %i.on = icmp slt i64 %i.om, 17
  br i1 %i.on, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oo = getelementptr inbounds nuw i8, ptr %.068.i113, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i = phi ptr [ %i.oo, %bb.bf ], [ %i.or, %bb.bg ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.ol, %bb.bf ], [ %i.oq, %bb.bg ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.i.val = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %.1.i.i.val, ptr %.130.i.i, align 1, !tbaa !9
  %i.op = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val7 = load <2 x i64>, ptr %i.oq, align 1, !tbaa !9
  store <2 x i64> %.val7, ptr %i.op, align 1, !tbaa !9
  %i.or = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.os = icmp ult ptr %i.or, %i.nz
  br i1 %i.os, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.bg, %bb.be, %.critedge.i.i
  store ptr %i.oc, ptr %i.a, align 8, !tbaa !46
  %i.ot = ptrtoint ptr %i.nz to i64               ; 2 uses
  %i.ou = sub i64 %i.ot, %i.hc                    ; 3 uses
  %i.ov = icmp ugt i64 %.sink, %i.ou
  br i1 %i.ov, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.ow = sub i64 %i.ot, %i.hd
  %i.ox = icmp ugt i64 %.sink, %i.ow
  br i1 %i.ox, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, label %bb.bi, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread94

bb.bi:                                            ; preds = %bb.bh
  %i.oy = ptrtoint ptr %i.oe to i64
  %i.oz = sub i64 %i.oy, %i.hc                    ; 3 uses
  %i.pa = getelementptr inbounds i8, ptr %i.s, i64 %i.oz ; 2 uses
  %i.pb = add nsw i64 %i.oz, %.sroa.6.0           ; 2 uses
  %.not.i82.i = icmp sgt i64 %i.pb, 0
  br i1 %.not.i82.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nz, ptr align 1 %i.pa, i64 %.sroa.6.0, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i.i = sub nsw i64 0, %i.oz             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nz, ptr align 1 %i.pa, i64 %gepdiff.i.i, i1 false)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nz, i64 %gepdiff.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.sroa.652.0 = phi i64 [ %i.pb, %bb.bk ], [ %.sroa.6.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %.081 = phi ptr [ %i.o, %bb.bk ], [ %i.oe, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pc, %bb.bk ], [ %i.nz, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %i.pd = icmp ugt i64 %.sink, 15
  br i1 %i.pd, label %bb.bm, label %bb.bp, !prof !97

bb.bm:                                            ; preds = %bb.bl
  %i.pe = getelementptr inbounds i8, ptr %.0, i64 %.sroa.652.0
  %.val10 = load <2 x i64>, ptr %.081, align 1, !tbaa !9
  store <2 x i64> %.val10, ptr %.0, align 1, !tbaa !9
  %i.pf = icmp slt i64 %.sroa.652.0, 17
  br i1 %i.pf, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i97.i = phi ptr [ %i.pg, %bb.bn ], [ %i.pj, %bb.bo ] ; 3 uses
  %.pn.i98.i = phi ptr [ %.081, %bb.bn ], [ %i.pi, %bb.bo ] ; 2 uses
  %.1.i99.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 16
  %.1.i99.i.val = load <2 x i64>, ptr %.1.i99.i, align 1, !tbaa !9
  store <2 x i64> %.1.i99.i.val, ptr %.130.i97.i, align 1, !tbaa !9
  %i.ph = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 32 ; 2 uses
  %.val9 = load <2 x i64>, ptr %i.pi, align 1, !tbaa !9
  store <2 x i64> %.val9, ptr %i.ph, align 1, !tbaa !9
  %i.pj = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 32 ; 2 uses
  %i.pk = icmp ult ptr %i.pj, %i.pe
  br i1 %i.pk, label %bb.bo, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

bb.bp:                                            ; preds = %bb.bl
  %i.pl = icmp samesign ult i64 %.sink, 8
  br i1 %i.pl, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !3
  %i.po = load i8, ptr %.081, align 1, !tbaa !9
  store i8 %i.po, ptr %.0, align 1, !tbaa !9
  %i.pp = getelementptr inbounds nuw i8, ptr %.081, i64 1
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !9
  %i.ps = getelementptr inbounds nuw i8, ptr %.081, i64 2
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !9
  %i.pu = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !9
  %i.pv = getelementptr inbounds nuw i8, ptr %.081, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !9
  %i.px = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !9
  %i.py = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %.081, i64 %i.qa ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.val14 = load i32, ptr %i.qb, align 1
  store i32 %.val14, ptr %i.qc, align 1
  %i.qd = sext i32 %i.pn to i64
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr inbounds i8, ptr %i.qb, i64 %i.qe
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.br:                                            ; preds = %bb.bp
  %.val15 = load i64, ptr %.081, align 1
  store i64 %.val15, ptr %.0, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.br, %bb.bq
  %.1 = phi ptr [ %i.qf, %bb.bq ], [ %.081, %bb.br ] ; 2 uses
  %.112 = ptrtoaddr ptr %.1 to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qi = icmp ugt i64 %.sroa.652.0, 8
  br i1 %i.qi, label %bb.bs, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.bs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = ptrtoint ptr %i.qg to i64
  %i.ql = sub i64 %i.qj, %i.qk
  %i.qm = getelementptr i8, ptr %.0, i64 %.sroa.652.0 ; 2 uses
  %i.qn = icmp slt i64 %i.ql, 16
  br i1 %i.qn, label %.preheader107.preheader, label %bb.bt

.preheader107.preheader:                          ; preds = %bb.bs
  %9 = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.ou)
  %umin = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.ou) ; 3 uses
  %i.qo = add i64 %.sroa.6.0, %i.hc
  %10 = add i64 %i.qo, %9
  %i.qp = add i64 %10, %umin
  %i.qq = sub i64 %i.qp, %.sink
  %i.qr = add i64 %umin, %invariant.op
  %umax14 = tail call i64 @llvm.umax.i64(i64 %i.qq, i64 %i.qr)
  %i.qs = add i64 %umin, %i.hc
  %11 = sub i64 %umax14, %i.qs
  %12 = add i64 %11, -9                           ; 2 uses
  %i.qt = lshr i64 %12, 3
  %i.qu = add nuw nsw i64 %i.qt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 72
  br i1 %min.iters.check, label %.preheader107.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader107.preheader
  %i.qv = sub i64 %.sroa.0.0, %i.hc
  %i.qw = add i64 %i.qv, %.068.i11311
  %umax = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.qw)
  %i.qx = add i64 %umax, %i.hc
  %i.qy = sub i64 %.112, %i.qx
  %diff.check = icmp ugt i64 %i.qy, -32
  br i1 %diff.check, label %.preheader107.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qu, 4611686018427387900     ; 3 uses
  %i.qz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ra = getelementptr i8, ptr %i.qh, i64 %i.qz
  %i.rb = getelementptr i8, ptr %i.qg, i64 %i.qz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qh, i64 %i.rc ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.qg, i64 %i.rc ; 2 uses
  %i.rd = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 1
  %wide.load16 = load <2 x i64>, ptr %i.rd, align 1
  %i.re = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1
  store <2 x i64> %wide.load16, ptr %i.re, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rf = icmp eq i64 %index.next, %n.vec
  br i1 %i.rf, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qu, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %.preheader107.preheader19

.preheader107.preheader19:                        ; preds = %vector.memcheck, %.preheader107.preheader, %middle.block
  %.029.i.i.ph = phi ptr [ %i.qh, %vector.memcheck ], [ %i.qh, %.preheader107.preheader ], [ %i.ra, %middle.block ]
  %.0.i106.i.ph = phi ptr [ %i.qg, %vector.memcheck ], [ %i.qg, %.preheader107.preheader ], [ %i.rb, %middle.block ]
  br label %.preheader107

.preheader107:                                    ; preds = %.preheader107.preheader19, %.preheader107
  %.029.i.i = phi ptr [ %i.rg, %.preheader107 ], [ %.029.i.i.ph, %.preheader107.preheader19 ] ; 2 uses
  %.0.i106.i = phi ptr [ %i.rh, %.preheader107 ], [ %.0.i106.i.ph, %.preheader107.preheader19 ] ; 2 uses
  %.0.i106.i.val = load i64, ptr %.0.i106.i, align 1
  store i64 %.0.i106.i.val, ptr %.029.i.i, align 1
  %i.rg = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0.i106.i, i64 8
  %i.ri = icmp ult ptr %i.rg, %i.qm
  br i1 %i.ri, label %.preheader107, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !247

bb.bt:                                            ; preds = %bb.bs
  %.val12 = load <2 x i64>, ptr %i.qg, align 1, !tbaa !9
  store <2 x i64> %.val12, ptr %i.qh, align 1, !tbaa !9
  %i.rj = icmp slt i64 %.sroa.652.0, 25
  br i1 %i.rj, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rk = getelementptr inbounds nuw i8, ptr %.0, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.130.i103.i = phi ptr [ %i.rk, %bb.bu ], [ %i.rn, %bb.bv ] ; 3 uses
  %.pn.i104.i = phi ptr [ %i.qg, %bb.bu ], [ %i.rm, %bb.bv ] ; 2 uses
  %.1.i105.i = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 16
  %.1.i105.i.val = load <2 x i64>, ptr %.1.i105.i, align 1, !tbaa !9
  store <2 x i64> %.1.i105.i.val, ptr %.130.i103.i, align 1, !tbaa !9
  %i.rl = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 16
  %i.rm = getelementptr inbounds nuw i8, ptr %.pn.i104.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.rm, align 1, !tbaa !9
  store <2 x i64> %.val11, ptr %i.rl, align 1, !tbaa !9
  %i.rn = getelementptr inbounds nuw i8, ptr %.130.i103.i, i64 32 ; 2 uses
  %i.ro = icmp ult ptr %i.rn, %i.qm
  br i1 %i.ro, label %bb.bv, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i: ; preds = %bb.bv, %.preheader107, %bb.bo, %middle.block, %bb.bt, %bb.bm, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i, %bb.bj, %bb.bd
  %.0.i.i = phi i64 [ %i.oj, %bb.bd ], [ %i.oa, %middle.block ], [ %i.oa, %bb.bj ], [ %i.oa, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i ], [ %i.oa, %bb.bm ], [ %i.oa, %bb.bt ], [ %i.oa, %bb.bo ], [ %i.oa, %.preheader107 ], [ %i.oa, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rp = icmp ult i64 %.0.i.i, -119
  br i1 %i.rp, label %bb.bw, label %.thread94

bb.bw:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i
  %i.rq = getelementptr inbounds nuw i8, ptr %.068.i113, i64 %.0.i.i ; 2 uses
  %i.rr = add nsw i32 %.063.i115, -1              ; 2 uses
  %.not77.i = icmp eq i32 %i.rr, 0
  br i1 %.not77.i, label %bb.bx, label %bb.af, !llvm.loop !169

bb.bx:                                            ; preds = %bb.bw
  %i.rs = icmp eq ptr %i.nt, %3
  %.not106 = icmp eq i32 %i.nu, 64
  %or.cond = select i1 %i.rs, i1 %.not106, i1 false
  br i1 %or.cond, label %.preheader, label %.thread94

.preheader:                                       ; preds = %bb.bx
  %i.rt = trunc i64 %.sink to i32
  store i32 %i.rt, ptr %i.u, align 4, !tbaa !3
  %i.ru = trunc i64 %.sink169 to i32
  store i32 %i.ru, ptr %i.y, align 8, !tbaa !3
  %i.rv = trunc i64 %i.kc to i32
  store i32 %i.rv, ptr %i.ac, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.by

.thread94:                                        ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, %bb.o, %bb.g, %bb.e, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, %bb.bx
  %.2.i.ph = phi i64 [ -20, %bb.e ], [ -20, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread ], [ -20, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ], [ -20, %bb.bx ], [ -20, %bb.g ], [ -20, %bb.o ], [ %.0.i.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN11duckdb_zstdL29ZSTD_decompressSequences_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

bb.by:                                            ; preds = %.preheader, %bb.d
  %i.rw = phi ptr [ %.pre, %.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %.371.i = phi ptr [ %i.rq, %.preheader ], [ %1, %bb.d ] ; 4 uses
  %i.rx = ptrtoint ptr %i.m to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry                    ; 3 uses
  %i.sa = ptrtoint ptr %i.h to i64
  %i.sb = ptrtoint ptr %.371.i to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %.not81.i = icmp ugt i64 %i.rz, %i.sc
  br i1 %.not81.i, label %_ZN11duckdb_zstdL29ZSTD_decompressSequences_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not80.i = icmp eq ptr %.371.i, null
  br i1 %.not80.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.371.i, ptr align 1 %i.rw, i64 %i.rz, i1 false)
  %i.sd = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.rz
  %i.se = ptrtoint ptr %i.sd to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.573.i.ph = phi i64 [ 0, %bb.bz ], [ %i.se, %bb.ca ]
  %i.sf = ptrtoint ptr %1 to i64
  %i.sg = sub i64 %.573.i.ph, %i.sf
  br label %_ZN11duckdb_zstdL29ZSTD_decompressSequences_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit

_ZN11duckdb_zstdL29ZSTD_decompressSequences_bodyEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE.exit: ; preds = %bb.by, %.thread94, %bb.cb
  %.5.i = phi i64 [ %i.sg, %bb.cb ], [ %.2.i.ph, %.thread94 ], [ -70, %bb.by ]
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
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !4, i64 4}
!11 = !{!"_ZTSN11duckdb_zstd17blockProperties_tE", !12, i64 0, !4, i64 4, !4, i64 8}
end_hunk_12
