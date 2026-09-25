Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/packed_image_convert?download=true
inline.NumInlined: 3820
inline.NumDeleted: 1734
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3jxlL18MaybeCreateProfileERK16JxlColorEncodingPNSt3__16vectorIhNS3_9allocatorIhEEEE:bb.a

vector.memcheck454:                               ; preds = %iter.check474
  %i.bam = add i64 %i.azx, %.pre.i108.2.i455
  %i.ban = add i64 %i.bah, %i.azw
  %i.bao = sub i64 %i.ban, %i.bam
  %diff.check456 = icmp ugt i64 %i.bao, -32
  br i1 %diff.check456, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader, label %vector.main.loop.iter.check459

vector.main.loop.iter.check459:                   ; preds = %vector.memcheck454
  %min.iters.check460 = icmp ult i64 %i.bal, 32
  br i1 %min.iters.check460, label %vec.epilog.ph478, label %vector.ph461

vector.ph461:                                     ; preds = %vector.main.loop.iter.check459
  %i.bap = and i64 %i.bal, 24
  %n.vec462 = and i64 %i.bal, -32                 ; 4 uses
  %i.baq = sub i64 0, %n.vec462                   ; 2 uses
  %i.bar = getelementptr i8, ptr %i.bai, i64 %i.baq ; 2 uses
  %i.bas = getelementptr i8, ptr %.pre.i108.2.i, i64 %i.baq
  br label %vector.body463

vector.body463:                                   ; preds = %vector.ph461, %vector.body463
  %index464 = phi i64 [ 0, %vector.ph461 ], [ %index.next469, %vector.body463 ] ; 2 uses
  %i.bat = sub i64 0, %index464                   ; 2 uses
  %next.gep465 = getelementptr i8, ptr %i.bai, i64 %i.bat ; 2 uses
  %next.gep466 = getelementptr i8, ptr %.pre.i108.2.i, i64 %i.bat ; 2 uses
  %i.bau = getelementptr inbounds i8, ptr %next.gep466, i64 -16
  %i.bav = getelementptr inbounds i8, ptr %next.gep466, i64 -32
  %wide.load467 = load <16 x i8>, ptr %i.bau, align 1, !tbaa !178, !noalias !594
  %wide.load468 = load <16 x i8>, ptr %i.bav, align 1, !tbaa !178, !noalias !594
  %i.baw = getelementptr inbounds i8, ptr %next.gep465, i64 -16
  %i.bax = getelementptr inbounds i8, ptr %next.gep465, i64 -32
  store <16 x i8> %wide.load467, ptr %i.baw, align 1, !tbaa !178, !noalias !594
  store <16 x i8> %wide.load468, ptr %i.bax, align 1, !tbaa !178, !noalias !594
  %index.next469 = add nuw i64 %index464, 32      ; 2 uses
  %i.bay = icmp eq i64 %index.next469, %n.vec462
  br i1 %i.bay, label %middle.block470, label %vector.body463, !llvm.loop !502

middle.block470:                                  ; preds = %vector.body463
  %cmp.n471 = icmp eq i64 %i.bal, %n.vec462
  br i1 %cmp.n471, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.2.i, label %vec.epilog.iter.check476

vec.epilog.iter.check476:                         ; preds = %middle.block470
  %min.epilog.iters.check477 = icmp eq i64 %i.bap, 0
  br i1 %min.epilog.iters.check477, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader, label %vec.epilog.ph478, !prof !254

vec.epilog.ph478:                                 ; preds = %vector.main.loop.iter.check459, %vec.epilog.iter.check476
  %vec.epilog.resume.val472 = phi i64 [ %n.vec462, %vec.epilog.iter.check476 ], [ 0, %vector.main.loop.iter.check459 ]
  %n.vec479 = and i64 %i.bal, -8                  ; 3 uses
  %i.baz = sub i64 0, %n.vec479                   ; 2 uses
  %i.bba = getelementptr i8, ptr %i.bai, i64 %i.baz ; 2 uses
  %i.bbb = getelementptr i8, ptr %.pre.i108.2.i, i64 %i.baz
  br label %vec.epilog.vector.body480

vec.epilog.vector.body480:                        ; preds = %vec.epilog.vector.body480, %vec.epilog.ph478
  %index481 = phi i64 [ %vec.epilog.resume.val472, %vec.epilog.ph478 ], [ %index.next485, %vec.epilog.vector.body480 ] ; 2 uses
  %i.bbc = sub i64 0, %index481                   ; 2 uses
  %next.gep482 = getelementptr i8, ptr %i.bai, i64 %i.bbc
  %next.gep483 = getelementptr i8, ptr %.pre.i108.2.i, i64 %i.bbc
  %i.bbd = getelementptr inbounds i8, ptr %next.gep483, i64 -8
  %wide.load484 = load <8 x i8>, ptr %i.bbd, align 1, !tbaa !178, !noalias !594
  %i.bbe = getelementptr inbounds i8, ptr %next.gep482, i64 -8
  store <8 x i8> %wide.load484, ptr %i.bbe, align 1, !tbaa !178, !noalias !594
  %index.next485 = add nuw i64 %index481, 8       ; 2 uses
  %i.bbf = icmp eq i64 %index.next485, %n.vec479
  br i1 %i.bbf, label %vec.epilog.middle.block486, label %vec.epilog.vector.body480, !llvm.loop !503

vec.epilog.middle.block486:                       ; preds = %vec.epilog.vector.body480
  %cmp.n487 = icmp eq i64 %i.bal, %n.vec479
  br i1 %cmp.n487, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.2.i, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader

.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader:          ; preds = %iter.check474, %vector.memcheck454, %vec.epilog.iter.check476, %vec.epilog.middle.block486
  %.ph722 = phi ptr [ %i.bai, %iter.check474 ], [ %i.bai, %vector.memcheck454 ], [ %i.bar, %vec.epilog.iter.check476 ], [ %i.bba, %vec.epilog.middle.block486 ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.ph = phi ptr [ %.pre.i108.2.i, %iter.check474 ], [ %.pre.i108.2.i, %vector.memcheck454 ], [ %i.bas, %vec.epilog.iter.check476 ], [ %i.bbb, %vec.epilog.middle.block486 ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.ph764 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.ph to i64 ; 2 uses
  %i.bbg = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.ph764, %.pre13.i109.2.i457
  %xtraiter765 = and i64 %i.bbg, 7                ; 2 uses
  %lcmp.mod766.not = icmp eq i64 %xtraiter765, 0
  br i1 %lcmp.mod766.not, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol

.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol
  %i.bbh = phi ptr [ %i.bbk, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol ], [ %.ph722, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.prol = phi ptr [ %i.bbi, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.ph, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader ]
  %prol.iter767 = phi i64 [ %prol.iter767.next, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader ]
  %i.bbi = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.prol, i64 -1 ; 3 uses
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !178, !noalias !594
  %i.bbk = getelementptr inbounds i8, ptr %i.bbh, i64 -1 ; 4 uses
  store i8 %i.bbj, ptr %i.bbk, align 1, !tbaa !178, !noalias !594
  %prol.iter767.next = add i64 %prol.iter767, 1   ; 2 uses
  %prol.iter767.cmp.not = icmp eq i64 %prol.iter767.next, %xtraiter765
  br i1 %prol.iter767.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol, !llvm.loop !504

.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader
  %.lcssa723.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader ], [ %i.bbk, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol ]
  %.unr768 = phi ptr [ %.ph722, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader ], [ %i.bbk, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.ph, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.preheader ], [ %i.bbi, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol ]
  %i.bbl = sub i64 %.pre13.i109.2.i457, %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.ph764
  %i.bbm = icmp ugt i64 %i.bbl, -8
  br i1 %i.bbm, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.2.i, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i

.lr.ph.i.i.i.i.i.i.i.i113.2.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i113.2.i
  %i.bbn = phi ptr [ %i.bcl, %.lr.ph.i.i.i.i.i.i.i.i113.2.i ], [ %.unr768, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i = phi ptr [ %i.bcj, %.lr.ph.i.i.i.i.i.i.i.i113.2.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i.unr, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol.loopexit ] ; 8 uses
  %i.bbo = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i, i64 -1
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !178, !noalias !594
  %i.bbq = getelementptr inbounds i8, ptr %i.bbn, i64 -1
  store i8 %i.bbp, ptr %i.bbq, align 1, !tbaa !178, !noalias !594
  %i.bbr = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i, i64 -2
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !178, !noalias !594
  %i.bbt = getelementptr inbounds i8, ptr %i.bbn, i64 -2
  store i8 %i.bbs, ptr %i.bbt, align 1, !tbaa !178, !noalias !594
  %i.bbu = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i, i64 -3
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !178, !noalias !594
  %i.bbw = getelementptr inbounds i8, ptr %i.bbn, i64 -3
  store i8 %i.bbv, ptr %i.bbw, align 1, !tbaa !178, !noalias !594
  %i.bbx = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i, i64 -4
  %i.bby = load i8, ptr %i.bbx, align 1, !tbaa !178, !noalias !594
  %i.bbz = getelementptr inbounds i8, ptr %i.bbn, i64 -4
  store i8 %i.bby, ptr %i.bbz, align 1, !tbaa !178, !noalias !594
  %i.bca = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i, i64 -5
  %i.bcb = load i8, ptr %i.bca, align 1, !tbaa !178, !noalias !594
  %i.bcc = getelementptr inbounds i8, ptr %i.bbn, i64 -5
  store i8 %i.bcb, ptr %i.bcc, align 1, !tbaa !178, !noalias !594
  %i.bcd = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i, i64 -6
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !178, !noalias !594
  %i.bcf = getelementptr inbounds i8, ptr %i.bbn, i64 -6
  store i8 %i.bce, ptr %i.bcf, align 1, !tbaa !178, !noalias !594
  %i.bcg = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i, i64 -7
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !178, !noalias !594
  %i.bci = getelementptr inbounds i8, ptr %i.bbn, i64 -7
  store i8 %i.bch, ptr %i.bci, align 1, !tbaa !178, !noalias !594
  %i.bcj = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.2.i, i64 -8 ; 3 uses
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !178, !noalias !594
  %i.bcl = getelementptr inbounds i8, ptr %i.bbn, i64 -8 ; 3 uses
  store i8 %i.bck, ptr %i.bcl, align 1, !tbaa !178, !noalias !594
  %.not.i.i.i.i.i.i.i.i115.2.i.7 = icmp eq ptr %i.bcj, %.pre13.i109.2.i
  br i1 %.not.i.i.i.i.i.i.i.i115.2.i.7, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.2.i, label %.lr.ph.i.i.i.i.i.i.i.i113.2.i, !llvm.loop !505

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.2.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i113.2.i, %middle.block470, %vec.epilog.middle.block486, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm.exit.i110.2.i
  %storemerge.i117.2.i = phi ptr [ %i.bai, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm.exit.i110.2.i ], [ %i.bba, %vec.epilog.middle.block486 ], [ %i.bar, %middle.block470 ], [ %.lcssa723.unr, %.lr.ph.i.i.i.i.i.i.i.i113.2.i.prol.loopexit ], [ %i.bcl, %.lr.ph.i.i.i.i.i.i.i.i113.2.i ]
  store ptr %storemerge.i117.2.i, ptr %25, align 16, !tbaa !168
  store ptr %i.bak, ptr %i.ais, align 8, !tbaa !168
  %i.bcm = load ptr, ptr %i.aku, align 16, !tbaa !168
  store ptr %i.baj, ptr %i.aku, align 16, !tbaa !168
  %.not.i6.i118.2.i = icmp eq ptr %.pre13.i109.2.i, null
  br i1 %.not.i6.i118.2.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm.exit119.2.i, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.2.i
  %i.bcn = ptrtoint ptr %i.bcm to i64
  %i.bco = ptrtoint ptr %.pre13.i109.2.i to i64
  %i.bcp = sub i64 %i.bcn, %i.bco
  call void @_ZdlPvm(ptr noundef nonnull %.pre13.i109.2.i, i64 noundef %i.bcp) #23
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm.exit119.2.i

_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm.exit119.2.i: ; preds = %bb.dp, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.2.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i102.2.i
  %.pre.i87.2.i = load ptr, ptr %25, align 16, !tbaa !166
  br label %_ZN3jxl6detailL13WriteICCUint8EhmPNSt3__16vectorIhNS1_9allocatorIhEEEE.exit88.2.i

_ZN3jxl6detailL13WriteICCUint8EhmPNSt3__16vectorIhNS1_9allocatorIhEEEE.exit88.2.i: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm.exit119.2.i, %.preheader275.2.i
  %i.bcq = phi ptr [ %.pre.i87.2.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm.exit119.2.i ], [ %i.azv, %.preheader275.2.i ]
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 %i.azy
  store i8 %i.azt, ptr %i.bcr, align 1, !tbaa !178
  %i.bcs = add nuw nsw i64 %.071283.2.i, 1        ; 2 uses
  %exitcond319.2.not.i = icmp eq i64 %i.bcs, 256
  br i1 %exitcond319.2.not.i, label %.preheader274.i, label %.preheader275.2.i, !llvm.loop !501

.preheader274.i:                                  ; preds = %_ZN3jxl6detailL13WriteICCUint8EhmPNSt3__16vectorIhNS1_9allocatorIhEEEE.exit88.2.i
  %i.bct = fptrunc double %.sroa.526.0.copyload to float
  %i.bcu = fptrunc double %.sroa.6.0.copyload to float
  %i.bcv = fptrunc double %.sroa.7.0.copyload to float
  %i.bcw = fptrunc double %.sroa.8.0.copyload to float
  %i.bcx = fptrunc <2 x double> %i.air to <2 x float> ; 2 uses
  %i.bcy = fptrunc double %.sroa.3.0.copyload to float ; 3 uses
  %i.bcz = fptrunc double %.sroa.4.0.copyload to float ; 3 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.9203.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bdb = icmp eq i32 %i.ail, 16
  %i.bdc = fcmp ult double %.sroa.3.0.copyload, f0xB690000000000000
  %i.bdd = fcmp ugt double %.sroa.3.0.copyload, f0x3FF0000010000000
  %or.cond.i.not300.i = or i1 %i.bdc, %i.bdd
  %i.bde = fcmp ule double %.sroa.4.0.copyload, f0x3690000000000000
  %or.cond3.i.not297.i = or i1 %or.cond.i.not300.i, %i.bde
  %i.bdf = fcmp ugt double %.sroa.4.0.copyload, f0x3FF0000010000000
  %.not295.i = or i1 %i.bdf, %or.cond3.i.not297.i
  %i.bdg = fsub float 1.000000e+00, %i.bcy
  %i.bdh = fsub float %i.bdg, %i.bcz
  %i.bdi = insertelement <2 x float> poison, float %i.bdh, i64 0
  %i.bdj = insertelement <2 x float> %i.bdi, float %i.bcy, i64 1
  %i.bdk = insertelement <2 x float> poison, float %i.bcz, i64 0
  %i.bdl = shufflevector <2 x float> %i.bdk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdm = fdiv <2 x float> %i.bdj, %i.bdl        ; 3 uses
  %i.bdn = extractelement <2 x float> %i.bdm, i64 1
  %i.bdo = call float @llvm.fabs.f32(float %i.bdn)
  %i.bdp = fcmp ueq float %i.bdo, +inf
  %i.bdq = extractelement <2 x float> %i.bdm, i64 0
  %i.bdr = call float @llvm.fabs.f32(float %i.bdq)
  %i.bds = fcmp ueq float %i.bdr, +inf
  %or.cond54.i.i = or i1 %i.bdp, %i.bds
  %i.bdt = fpext <2 x float> %i.bdm to <2 x double> ; 4 uses
  %i.bdu = shufflevector <2 x double> %i.bdt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bdv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bdu, <2 x double> <double f0xBFE801A360000000, double f0x3FECA4A8C0000000>, <2 x double> zeroinitializer)
  %43 = fadd <2 x double> %i.bdv, <double f0x3FFB6A7F00000000, double f0x3FD10CB2A0000000>
  %44 = shufflevector <2 x double> %i.bdt, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> <double f0x3FA2CA57A0000000, double f0xBFC4A8C160000000>, <2 x double> %43)
  %46 = fptrunc <2 x double> %45 to <2 x float>   ; 3 uses
  %47 = extractelement <2 x double> %i.bdt, i64 1
  %48 = call double @llvm.fmuladd.f64(double %47, double f0x3FA3EAB360000000, double 0.000000e+00)
  %49 = fadd double %48, f0xBFB1893740000000
  %50 = extractelement <2 x double> %i.bdt, i64 0
  %51 = call double @llvm.fmuladd.f64(double %50, double f0x3FF0793DE0000000, double %49)
  %i.bdw = fptrunc double %51 to float            ; 2 uses
  %i.bdx = fcmp oeq <2 x float> %46, zeroinitializer
  %i.bdy = bitcast <2 x i1> %i.bdx to i2
  %or.cond47.i.i = icmp ne i2 %i.bdy, 0
  %i.bdz = fcmp oeq float %i.bdw, 0.000000e+00
  %or.cond48.i.i = or i1 %i.bdz, %or.cond47.i.i
  %i.bea = extractelement <2 x float> %46, i64 1
  %i.beb = fdiv float f0x3F7F0C7F, %i.bea         ; 2 uses
  %i.bec = insertelement <2 x float> %46, float %i.bdw, i64 1
  %i.bed = fdiv <2 x float> <float f0x3F829D5E, float f0x3F5192AD>, %i.bec ; 3 uses
  %52 = call float @llvm.fabs.f32(float %i.beb)
  %53 = fcmp ueq float %52, +inf
  %54 = extractelement <2 x float> %i.bed, i64 0
  %i.bee = call float @llvm.fabs.f32(float %54)
  %i.bef = fcmp ueq float %i.bee, +inf
  %or.cond56.i.i = or i1 %53, %i.bef
  %i.beg = extractelement <2 x float> %i.bed, i64 1 ; 2 uses
  %i.beh = call float @llvm.fabs.f32(float %i.beg)
  %i.bei = fcmp ueq float %i.beh, +inf
  %or.cond58.i.i = or i1 %i.bei, %or.cond56.i.i
  %55 = insertelement <2 x float> %i.bed, float %i.beb, i64 1
  %56 = fpext <2 x float> %55 to <2 x double>     ; 3 uses
  %57 = extractelement <2 x double> %56, i64 0    ; 2 uses
  %i.bej = fmul nnan double %57, f0x3FE801A360000000
  %58 = fsub nnan double 0.000000e+00, %i.bej
  %59 = fptrunc nnan double %58 to float
  %60 = fmul nnan <2 x double> %56, <double f0x3FFB6A7F00000000, double f0x3FECA4A8C0000000>
  %61 = fadd <2 x double> %60, zeroinitializer
  %62 = fptrunc <2 x double> %61 to <2 x float>   ; 2 uses
  %i.bek = fmul nnan double %57, f0x3FA2CA57A0000000
  %i.bel = fadd double %i.bek, 0.000000e+00
  %i.bem = fptrunc double %i.bel to float
  %63 = extractelement <2 x float> %62, i64 1
  %64 = fpext float %63 to double
  %65 = fpext nnan float %59 to double
  %66 = insertelement <4 x double> poison, double %65, i64 0
  %67 = shufflevector <4 x double> %66, <4 x double> poison, <4 x i32> zeroinitializer
  %68 = fmul nnan <4 x double> %67, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000, double f0x3FA4807D60000000, double f0xBFC2D2ACE0000000>
  %69 = insertelement <4 x double> poison, double %64, i64 0
  %70 = shufflevector <4 x double> %69, <4 x double> poison, <4 x i32> zeroinitializer
  %71 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %70, <4 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000, double f0xBF81777EC0000000, double f0x3FEF957220000000>, <4 x double> %68)
  %72 = extractelement <2 x float> %62, i64 0
  %73 = fpext nnan float %72 to double
  %74 = insertelement <4 x double> poison, double %73, i64 0
  %75 = shufflevector <4 x double> %74, <4 x double> poison, <4 x i32> zeroinitializer
  %76 = fmul nnan <4 x double> %75, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000, double f0x3FA4807D60000000, double f0xBFC2D2ACE0000000>
  %i.ben = fpext float %i.bem to double           ; 3 uses
  %i.beo = fmul nnan double %i.ben, f0xBFC2D2ACE0000000
  %77 = fpext float %i.beg to double              ; 2 uses
  %i.bep = insertelement <2 x double> poison, double %77, i64 0
  %i.beq = insertelement <2 x double> %56, double %77, i64 0 ; 2 uses
  %78 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.beq, <2 x double> <double f0x3FA3EAB360000000, double f0x3FD10CB2A0000000>, <2 x double> zeroinitializer)
  %i.ber = fptrunc <2 x double> %78 to <2 x float> ; 2 uses
  %79 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.beq, <2 x double> <double f0xBFB1893740000000, double f0xBFC4A8C160000000>, <2 x double> zeroinitializer) ; 2 uses
  %80 = extractelement <2 x double> %79, i64 0
  %81 = fptrunc double %80 to float
  %82 = extractelement <2 x double> %79, i64 1
  %83 = fadd double %82, 0.000000e+00
  %84 = fptrunc double %83 to float
  %85 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.beo, i64 1
  %i.bes = extractelement <2 x float> %i.ber, i64 0
  %i.bet = fpext float %i.bes to double
  %i.beu = insertelement <4 x double> poison, double %i.bet, i64 0
  %i.bev = shufflevector <4 x double> %i.beu, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bew = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bev, <4 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000, double f0x3FEEFDD7E0000000, double f0x3FC479A860000000>, <4 x double> %71)
  %i.bex = fptrunc <4 x double> %i.bew to <4 x float>
  %86 = extractelement <2 x float> %i.ber, i64 1
  %87 = fpext float %86 to double
  %88 = fpext float %81 to double
  %i.bey = insertelement <4 x double> poison, double %87, i64 0
  %i.bez = shufflevector <4 x double> %i.bey, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bfa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bez, <4 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000, double f0xBF81777EC0000000, double f0x3FEF957220000000>, <4 x double> %76)
  %i.bfb = insertelement <4 x double> poison, double %88, i64 0
  %i.bfc = shufflevector <4 x double> %i.bfb, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bfd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bfc, <4 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000, double f0x3FEEFDD7E0000000, double f0x3FC479A860000000>, <4 x double> %i.bfa)
  %i.bfe = fptrunc <4 x double> %i.bfd to <4 x float>
  %i.bff = fmul nnan double %i.ben, f0x3FE0966860000000
  %i.bfg = fmul nnan double %i.ben, f0x3FA4807D60000000
  %i.bfh = fpext float %84 to double              ; 2 uses
  %i.bfi = insertelement <2 x double> %i.bep, double %i.bfh, i64 1
  %i.bfj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bfi, <2 x double> <double f0x3FF0793DE0000000, double f0x3FEF957220000000>, <2 x double> %85) ; 2 uses
  %i.bfk = extractelement <2 x double> %i.bfj, i64 0
  %i.bfl = fptrunc double %i.bfk to float
  %i.bfm = fpext float %i.bfl to double           ; 2 uses
  %i.bfn = insertelement <2 x double> poison, double %i.bfm, i64 0
  %i.bfo = insertelement <2 x double> %i.bfn, double %i.bfh, i64 1 ; 2 uses
  %i.bfp = shufflevector <2 x double> %i.bfj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bfq = insertelement <2 x double> %i.bfp, double %i.bff, i64 1
  %i.bfr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bfo, <2 x double> <double f0x3FC479A860000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bfq) ; 2 uses
  %i.bfs = shufflevector <2 x double> %i.bfr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bft = insertelement <2 x double> %i.bfs, double %i.bfg, i64 1
  %i.bfu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bfo, <2 x double> <double f0x3FA93CB240000000, double f0xBF81777EC0000000>, <2 x double> %i.bft) ; 2 uses
  %i.bfv = shufflevector <2 x double> %i.bfr, <2 x double> %i.bfu, <2 x i32> <i32 0, i32 2>
  %i.bfw = fptrunc <2 x double> %i.bfv to <2 x float>
  %i.bfx = extractelement <2 x double> %i.bfu, i64 1
  %i.bfy = call double @llvm.fmuladd.f64(double %i.bfm, double f0x3FEEFDD7E0000000, double %i.bfx)
  %i.bfz = fptrunc double %i.bfy to float
  %i.bga = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bgb = fpext <2 x float> %i.bfw to <2 x double> ; 3 uses
  %i.bgc = fpext <4 x float> %i.bex to <4 x double> ; 4 uses
  %i.bgd = fpext <4 x float> %i.bfe to <4 x double> ; 4 uses
  %i.bge = fpext float %i.bfz to double           ; 3 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bgg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bgh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %brmerge.i = select i1 %.not295.i, i1 true, i1 %or.cond54.i.i
  %brmerge292.i = select i1 %brmerge.i, i1 true, i1 %or.cond48.i.i
  %brmerge293.i = select i1 %brmerge292.i, i1 true, i1 %or.cond58.i.i
  %i.bgi = extractelement <4 x double> %i.bgc, i64 2
  %i.bgj = extractelement <4 x double> %i.bgd, i64 2
  %i.bgk = shufflevector <4 x double> %i.bgc, <4 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.bgl = insertelement <4 x double> %i.bgk, double %i.bge, i64 0
  %i.bgm = shufflevector <4 x double> %i.bgd, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.bgn = shufflevector <4 x double> %i.bgc, <4 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.bgo = shufflevector <2 x double> %i.bgb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bgp = shufflevector <4 x double> %i.bgl, <4 x double> %i.bgo, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.bgq = shufflevector <4 x double> %i.bgn, <4 x double> %i.bgo, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.bgr = extractelement <2 x float> %i.bcx, i64 0
  %i.bgs = extractelement <2 x float> %i.bcx, i64 1
  %i.bgt = insertelement <4 x double> %i.bgq, double %i.bge, i64 2
  br label %.preheader273.i

.preheader276.i:                                  ; preds = %bb.dl, %_ZN3jxl6detailL13WriteICCUint8EhmPNSt3__16vectorIhNS1_9allocatorIhEEEE.exit88.i
  %.071283.i = phi i64 [ %i.bjt, %_ZN3jxl6detailL13WriteICCUint8EhmPNSt3__16vectorIhNS1_9allocatorIhEEEE.exit88.i ], [ 0, %bb.dl ] ; 2 uses
  %i.bgu = trunc nuw i64 %.071283.i to i8
  %i.bgv = load ptr, ptr %i.ais, align 8, !tbaa !167 ; 4 uses
  %i.bgw = load ptr, ptr %25, align 16, !tbaa !166 ; 2 uses
  %i.bgx = ptrtoint ptr %i.bgv to i64             ; 2 uses
  %i.bgy = ptrtoint ptr %i.bgw to i64             ; 3 uses
  %i.bgz = sub i64 %i.bgx, %i.bgy                 ; 4 uses
  %i.bha = add nuw i64 %i.bgz, 1                  ; 2 uses
  %.not270.i = icmp eq i64 %i.bgz, -1
  br i1 %.not270.i, label %_ZN3jxl6detailL13WriteICCUint8EhmPNSt3__16vectorIhNS1_9allocatorIhEEEE.exit88.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i86.i

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i86.i: ; preds = %.preheader276.i
  %i.bhb = load ptr, ptr %i.aku, align 16, !tbaa !168 ; 2 uses
  %i.bhc = ptrtoint ptr %i.bhb to i64
  %.not.i99.i = icmp eq ptr %i.bhb, %i.bgv
  br i1 %.not.i99.i, label %bb.dq, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i102.i

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i102.i: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i86.i
  %i.bhd = getelementptr i8, ptr %i.bgv, i64 1
  store i8 0, ptr %i.bgv, align 1
  store ptr %i.bhd, ptr %i.ais, align 8, !tbaa !167
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm.exit119.i

bb.dq:                                            ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i86.i
  %i.bhe = icmp slt i64 %i.bha, 0
  br i1 %i.bhe, label %.loopexit321.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm.exit.i110.i

.loopexit321.i:                                   ; preds = %bb.dq, %bb.dm, %bb.do
  call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #24
  unreachable

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm.exit.i110.i: ; preds = %bb.dq
  %i.bhf = sub i64 %i.bhc, %i.bgy                 ; 2 uses
  %.not.i.i105.i = icmp ult i64 %i.bhf, 4611686018427387903
  %i.bhg = shl nuw nsw i64 %i.bhf, 1
  %.sroa.speculated.i.i106.i = call i64 @llvm.umax.i64(i64 %i.bhg, i64 %i.bha)
  %.0.i.i107.i = select i1 %.not.i.i105.i, i64 %.sroa.speculated.i.i106.i, i64 9223372036854775807 ; 2 uses
  %i.bhh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i.i107.i) #25 ; 3 uses
  %i.bhi = ptrtoaddr ptr %i.bhh to i64
  %.pre.i108.i = load ptr, ptr %i.ais, align 8, !tbaa !167 ; 8 uses
  %.pre.i108.i383 = ptrtoaddr ptr %.pre.i108.i to i64 ; 2 uses
  %.pre13.i109.i = load ptr, ptr %25, align 16, !tbaa !166 ; 6 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhh, i64 %i.bgz ; 9 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhh, i64 %.0.i.i107.i
  %i.bhl = getelementptr i8, ptr %i.bhj, i64 1
  store i8 0, ptr %i.bhj, align 1
  %.not4.i.i.i.i.i.i.i.i112.i = icmp eq ptr %.pre.i108.i, %.pre13.i109.i
  br i1 %.not4.i.i.i.i.i.i.i.i112.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.i, label %iter.check402

iter.check402:                                    ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm.exit.i110.i
  %.pre13.i109.i385 = ptrtoaddr ptr %.pre13.i109.i to i64 ; 3 uses
  %i.bhm = sub i64 %.pre.i108.i383, %.pre13.i109.i385 ; 7 uses
  %min.iters.check386 = icmp ult i64 %i.bhm, 8
  br i1 %min.iters.check386, label %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader, label %vector.memcheck382

vector.memcheck382:                               ; preds = %iter.check402
  %i.bhn = add i64 %i.bgy, %.pre.i108.i383
  %i.bho = add i64 %i.bhi, %i.bgx
  %i.bhp = sub i64 %i.bho, %i.bhn
  %diff.check384 = icmp ugt i64 %i.bhp, -32
  br i1 %diff.check384, label %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader, label %vector.main.loop.iter.check387

vector.main.loop.iter.check387:                   ; preds = %vector.memcheck382
  %min.iters.check388 = icmp ult i64 %i.bhm, 32
  br i1 %min.iters.check388, label %vec.epilog.ph406, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.bhq = and i64 %i.bhm, 24
  %n.vec390 = and i64 %i.bhm, -32                 ; 4 uses
  %i.bhr = sub i64 0, %n.vec390                   ; 2 uses
  %i.bhs = getelementptr i8, ptr %i.bhj, i64 %i.bhr ; 2 uses
  %i.bht = getelementptr i8, ptr %.pre.i108.i, i64 %i.bhr
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph389, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next397, %vector.body391 ] ; 2 uses
  %i.bhu = sub i64 0, %index392                   ; 2 uses
  %next.gep393 = getelementptr i8, ptr %i.bhj, i64 %i.bhu ; 2 uses
  %next.gep394 = getelementptr i8, ptr %.pre.i108.i, i64 %i.bhu ; 2 uses
  %i.bhv = getelementptr inbounds i8, ptr %next.gep394, i64 -16
  %i.bhw = getelementptr inbounds i8, ptr %next.gep394, i64 -32
  %wide.load395 = load <16 x i8>, ptr %i.bhv, align 1, !tbaa !178, !noalias !594
  %wide.load396 = load <16 x i8>, ptr %i.bhw, align 1, !tbaa !178, !noalias !594
  %i.bhx = getelementptr inbounds i8, ptr %next.gep393, i64 -16
  %i.bhy = getelementptr inbounds i8, ptr %next.gep393, i64 -32
  store <16 x i8> %wide.load395, ptr %i.bhx, align 1, !tbaa !178, !noalias !594
  store <16 x i8> %wide.load396, ptr %i.bhy, align 1, !tbaa !178, !noalias !594
  %index.next397 = add nuw i64 %index392, 32      ; 2 uses
  %i.bhz = icmp eq i64 %index.next397, %n.vec390
  br i1 %i.bhz, label %middle.block398, label %vector.body391, !llvm.loop !506

middle.block398:                                  ; preds = %vector.body391
  %cmp.n399 = icmp eq i64 %i.bhm, %n.vec390
  br i1 %cmp.n399, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.i, label %vec.epilog.iter.check404

vec.epilog.iter.check404:                         ; preds = %middle.block398
  %min.epilog.iters.check405 = icmp eq i64 %i.bhq, 0
  br i1 %min.epilog.iters.check405, label %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader, label %vec.epilog.ph406, !prof !254

vec.epilog.ph406:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check404
  %vec.epilog.resume.val400 = phi i64 [ %n.vec390, %vec.epilog.iter.check404 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec407 = and i64 %i.bhm, -8                  ; 3 uses
  %i.bia = sub i64 0, %n.vec407                   ; 2 uses
  %i.bib = getelementptr i8, ptr %i.bhj, i64 %i.bia ; 2 uses
  %i.bic = getelementptr i8, ptr %.pre.i108.i, i64 %i.bia
  br label %vec.epilog.vector.body408

vec.epilog.vector.body408:                        ; preds = %vec.epilog.vector.body408, %vec.epilog.ph406
  %index409 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph406 ], [ %index.next413, %vec.epilog.vector.body408 ] ; 2 uses
  %i.bid = sub i64 0, %index409                   ; 2 uses
  %next.gep410 = getelementptr i8, ptr %i.bhj, i64 %i.bid
  %next.gep411 = getelementptr i8, ptr %.pre.i108.i, i64 %i.bid
  %i.bie = getelementptr inbounds i8, ptr %next.gep411, i64 -8
  %wide.load412 = load <8 x i8>, ptr %i.bie, align 1, !tbaa !178, !noalias !594
  %i.bif = getelementptr inbounds i8, ptr %next.gep410, i64 -8
  store <8 x i8> %wide.load412, ptr %i.bif, align 1, !tbaa !178, !noalias !594
  %index.next413 = add nuw i64 %index409, 8       ; 2 uses
  %i.big = icmp eq i64 %index.next413, %n.vec407
  br i1 %i.big, label %vec.epilog.middle.block414, label %vec.epilog.vector.body408, !llvm.loop !507

vec.epilog.middle.block414:                       ; preds = %vec.epilog.vector.body408
  %cmp.n415 = icmp eq i64 %i.bhm, %n.vec407
  br i1 %cmp.n415, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.i, label %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader

.lr.ph.i.i.i.i.i.i.i.i113.i.preheader:            ; preds = %iter.check402, %vector.memcheck382, %vec.epilog.iter.check404, %vec.epilog.middle.block414
  %.ph727 = phi ptr [ %i.bhj, %iter.check402 ], [ %i.bhj, %vector.memcheck382 ], [ %i.bhs, %vec.epilog.iter.check404 ], [ %i.bib, %vec.epilog.middle.block414 ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i114.i.ph = phi ptr [ %.pre.i108.i, %iter.check402 ], [ %.pre.i108.i, %vector.memcheck382 ], [ %i.bht, %vec.epilog.iter.check404 ], [ %i.bic, %vec.epilog.middle.block414 ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i114.i.ph754 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.i.ph to i64 ; 2 uses
  %i.bih = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.i114.i.ph754, %.pre13.i109.i385
  %xtraiter755 = and i64 %i.bih, 7                ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %.lr.ph.i.i.i.i.i.i.i.i113.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i113.i.prol

.lr.ph.i.i.i.i.i.i.i.i113.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol
  %i.bii = phi ptr [ %i.bil, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol ], [ %.ph727, %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i114.i.prol = phi ptr [ %i.bij, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.i114.i.ph, %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader ]
  %prol.iter757 = phi i64 [ %prol.iter757.next, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader ]
  %i.bij = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.i.prol, i64 -1 ; 3 uses
  %i.bik = load i8, ptr %i.bij, align 1, !tbaa !178, !noalias !594
  %i.bil = getelementptr inbounds i8, ptr %i.bii, i64 -1 ; 4 uses
  store i8 %i.bik, ptr %i.bil, align 1, !tbaa !178, !noalias !594
  %prol.iter757.next = add i64 %prol.iter757, 1   ; 2 uses
  %prol.iter757.cmp.not = icmp eq i64 %prol.iter757.next, %xtraiter755
  br i1 %prol.iter757.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i113.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i113.i.prol, !llvm.loop !508

.lr.ph.i.i.i.i.i.i.i.i113.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i113.i.prol, %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader
  %.lcssa729.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader ], [ %i.bil, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol ]
  %.unr758 = phi ptr [ %.ph727, %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader ], [ %i.bil, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.i114.i.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.i114.i.ph, %.lr.ph.i.i.i.i.i.i.i.i113.i.preheader ], [ %i.bij, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol ]
  %i.bim = sub i64 %.pre13.i109.i385, %.sroa.2.05.i.i.i.i.i.i.i.i114.i.ph754
  %i.bin = icmp ugt i64 %i.bim, -8
  br i1 %i.bin, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i116.i, label %.lr.ph.i.i.i.i.i.i.i.i113.i

.lr.ph.i.i.i.i.i.i.i.i113.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i113.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i113.i
  %i.bio = phi ptr [ %i.bjm, %.lr.ph.i.i.i.i.i.i.i.i113.i ], [ %.unr758, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i114.i = phi ptr [ %i.bjk, %.lr.ph.i.i.i.i.i.i.i.i113.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i114.i.unr, %.lr.ph.i.i.i.i.i.i.i.i113.i.prol.loopexit ] ; 8 uses
  %i.bip = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i114.i, i64 -1
  %i.biq = load i8, ptr %i.bip, align 1, !tbaa !178, !noalias !594
end_hunk_0
