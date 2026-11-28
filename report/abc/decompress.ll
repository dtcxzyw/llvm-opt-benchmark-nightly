Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/decompress?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@BZ2_decompress:bb.a
  %i.csh = getelementptr inbounds nuw i8, ptr %0, i64 7660
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.csh, align 4, !tbaa !75
  %i.csi = getelementptr inbounds nuw i8, ptr %0, i64 7844
  store i32 3936, ptr %i.csi, align 4, !tbaa !97
  %i.csj = getelementptr inbounds nuw i8, ptr %0, i64 7644
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.csj, align 4, !tbaa !75
  %i.csk = getelementptr inbounds nuw i8, ptr %0, i64 7840
  store i32 3920, ptr %i.csk, align 8, !tbaa !97
  %i.csl = getelementptr inbounds nuw i8, ptr %0, i64 7628
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.csl, align 4, !tbaa !75
  %i.csm = getelementptr inbounds nuw i8, ptr %0, i64 7836
  store i32 3904, ptr %i.csm, align 4, !tbaa !97
  %i.csn = getelementptr inbounds nuw i8, ptr %0, i64 7612
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.csn, align 4, !tbaa !75
  %i.cso = getelementptr inbounds nuw i8, ptr %0, i64 7832
  store i32 3888, ptr %i.cso, align 8, !tbaa !97
  %i.csp = getelementptr inbounds nuw i8, ptr %0, i64 7596
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.csp, align 4, !tbaa !75
  %i.csq = getelementptr inbounds nuw i8, ptr %0, i64 7828
  store i32 3872, ptr %i.csq, align 4, !tbaa !97
  %i.csr = getelementptr inbounds nuw i8, ptr %0, i64 7580
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.csr, align 4, !tbaa !75
  %i.css = getelementptr inbounds nuw i8, ptr %0, i64 7824
  store i32 3856, ptr %i.css, align 8, !tbaa !97
  %i.cst = getelementptr inbounds nuw i8, ptr %0, i64 7564
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.cst, align 4, !tbaa !75
  store i32 3840, ptr %i.cro, align 4, !tbaa !97
  %i.csu = add nsw i32 %i.crk, 1                  ; 2 uses
  %i.csv = mul nsw i32 %i.crm, 100000             ; 2 uses
  %i.csw = icmp slt i32 %.31501, 1
  br i1 %i.csw, label %.loopexit, label %bb.fh

bb.fh:                                            ; preds = %._crit_edge2242
  %i.csx = getelementptr inbounds nuw i8, ptr %0, i64 51628
  %i.csy = getelementptr inbounds nuw i8, ptr %0, i64 7884
  %i.csz = load i8, ptr %i.csy, align 4, !tbaa !75 ; 2 uses
  %i.cta = zext i8 %i.csz to i64                  ; 4 uses
  %i.ctb = getelementptr inbounds nuw [1032 x i8], ptr %i.csx, i64 %i.cta
  %i.ctc = getelementptr inbounds nuw i8, ptr %0, i64 57820
  %i.ctd = getelementptr inbounds nuw [1032 x i8], ptr %i.ctc, i64 %i.cta
  %i.cte = getelementptr inbounds nuw i8, ptr %0, i64 45436
  %i.ctf = getelementptr inbounds nuw [1032 x i8], ptr %i.cte, i64 %i.cta
  %i.ctg = getelementptr inbounds nuw i8, ptr %0, i64 64012
  %i.cth = getelementptr inbounds nuw [4 x i8], ptr %i.ctg, i64 %i.cta
  %i.cti = load i32, ptr %i.cth, align 4, !tbaa !97 ; 2 uses
  %i.ctj = zext i8 %i.csz to i32
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.b
  %i.ctk = phi ptr [ %i.ccx, %bb.fh ], [ %i.be, %bb.b ] ; 3 uses
  %i.ctl = phi ptr [ %i.ccy, %bb.fh ], [ %i.bd, %bb.b ] ; 3 uses
  %i.ctm = phi ptr [ %i.ccz, %bb.fh ], [ %i.bc, %bb.b ] ; 3 uses
  %i.ctn = phi ptr [ %i.cda, %bb.fh ], [ %i.bb, %bb.b ] ; 3 uses
  %i.cto = phi ptr [ %i.cdb, %bb.fh ], [ %i.ba, %bb.b ] ; 3 uses
  %i.ctp = phi ptr [ %i.cdc, %bb.fh ], [ %i.az, %bb.b ] ; 3 uses
  %i.ctq = phi ptr [ %i.cdd, %bb.fh ], [ %i.ay, %bb.b ] ; 3 uses
  %i.ctr = phi ptr [ %i.cde, %bb.fh ], [ %i.ax, %bb.b ] ; 3 uses
  %i.cts = phi ptr [ %i.cdf, %bb.fh ], [ %i.aw, %bb.b ] ; 3 uses
  %i.ctt = phi ptr [ %i.cdg, %bb.fh ], [ %i.av, %bb.b ] ; 3 uses
  %i.ctu = phi ptr [ %i.cdh, %bb.fh ], [ %i.au, %bb.b ] ; 3 uses
  %i.ctv = phi ptr [ %i.cdi, %bb.fh ], [ %i.at, %bb.b ] ; 3 uses
  %i.ctw = phi ptr [ %i.cdj, %bb.fh ], [ %i.as, %bb.b ] ; 3 uses
  %i.ctx = phi ptr [ %i.cdk, %bb.fh ], [ %i.ar, %bb.b ] ; 3 uses
  %i.cty = phi ptr [ %i.cdl, %bb.fh ], [ %i.aq, %bb.b ] ; 3 uses
  %i.ctz = phi ptr [ %i.cdm, %bb.fh ], [ %i.ap, %bb.b ] ; 3 uses
  %i.cua = phi ptr [ %i.cdn, %bb.fh ], [ %i.ao, %bb.b ] ; 3 uses
  %i.cub = phi ptr [ %i.cdo, %bb.fh ], [ %i.an, %bb.b ] ; 3 uses
  %i.cuc = phi ptr [ %i.cdp, %bb.fh ], [ %i.am, %bb.b ] ; 3 uses
  %i.cud = phi ptr [ %i.cdq, %bb.fh ], [ %i.al, %bb.b ] ; 3 uses
  %i.cue = phi ptr [ %i.cdr, %bb.fh ], [ %i.ak, %bb.b ] ; 3 uses
  %i.cuf = phi ptr [ %i.cds, %bb.fh ], [ %i.aj, %bb.b ] ; 3 uses
  %i.cug = phi ptr [ %i.cdt, %bb.fh ], [ %i.ai, %bb.b ] ; 3 uses
  %i.cuh = phi ptr [ %i.cdu, %bb.fh ], [ %i.ah, %bb.b ] ; 3 uses
  %i.cui = phi i32 [ %i.cdy, %bb.fh ], [ %.pre2642, %bb.b ] ; 3 uses
  %i.cuj = phi i32 [ %i.ceb, %bb.fh ], [ %.pre2648, %bb.b ] ; 3 uses
  %i.cuk = phi i32 [ %i.cec, %bb.fh ], [ %.pre2650, %bb.b ] ; 3 uses
  %i.cul = phi i32 [ %i.ced, %bb.fh ], [ %.pre2654, %bb.b ] ; 3 uses
  %i.cum = phi i32 [ %i.cef, %bb.fh ], [ %.pre2658, %bb.b ] ; 2 uses
  %i.cun = phi i32 [ %i.ceg, %bb.fh ], [ %.pre2660, %bb.b ] ; 3 uses
  %.11747 = phi ptr [ %i.ctd, %bb.fh ], [ %.pre2670, %bb.b ] ; 3 uses
  %.11732 = phi ptr [ %i.ctb, %bb.fh ], [ %.pre2668, %bb.b ] ; 3 uses
  %.11717 = phi ptr [ %i.ctf, %bb.fh ], [ %.pre2666, %bb.b ] ; 3 uses
  %.11702 = phi i32 [ %i.cti, %bb.fh ], [ %.pre2664, %bb.b ] ; 3 uses
  %.11687 = phi i32 [ %i.ctj, %bb.fh ], [ %.pre2662, %bb.b ] ; 3 uses
  %.01652 = phi i32 [ %i.cti, %bb.fh ], [ %.pre2656, %bb.b ] ; 7 uses
  %.71640 = phi i32 [ %.01633, %bb.fh ], [ %.pre2652, %bb.b ] ; 3 uses
  %.01594 = phi i32 [ 0, %bb.fh ], [ %.pre2646, %bb.b ] ; 3 uses
  %.01582 = phi i32 [ %i.csv, %bb.fh ], [ %.pre2644, %bb.b ] ; 3 uses
  %.11555 = phi i32 [ 49, %bb.fh ], [ %.pre2640, %bb.b ] ; 3 uses
  %.11540 = phi i32 [ 0, %bb.fh ], [ %.pre2638, %bb.b ] ; 3 uses
  %.01527 = phi i32 [ %i.csu, %bb.fh ], [ %.pre2636, %bb.b ] ; 3 uses
  %.91507 = phi i32 [ %.31501, %bb.fh ], [ %.pre2634, %bb.b ] ; 3 uses
  %.101486 = phi i32 [ %.41480, %bb.fh ], [ %.pre2632, %bb.b ] ; 3 uses
  %.111464 = phi i32 [ %.51458, %bb.fh ], [ %.pre2630, %bb.b ] ; 3 uses
  %.71441 = phi i32 [ %.61440.lcssa, %bb.fh ], [ %.pre2628, %bb.b ] ; 3 uses
  %.151420 = phi i32 [ %.91414, %bb.fh ], [ %.pre2626, %bb.b ] ; 3 uses
  %.21 = phi i32 [ 256, %bb.fh ], [ %.pre, %bb.b ] ; 3 uses
  store i32 36, ptr %i.c, align 8, !tbaa !45
  %i.cuo = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.cup = load i32, ptr %i.cuo, align 4, !tbaa !46 ; 3 uses
  %.not18422249 = icmp slt i32 %i.cup, %.01652
  br i1 %.not18422249, label %.lr.ph2251, label %.._crit_edge2252_crit_edge

.._crit_edge2252_crit_edge:                       ; preds = %bb.fi
  %.phi.trans.insert2780 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre2781 = load i32, ptr %.phi.trans.insert2780, align 8, !tbaa !71
  br label %._crit_edge2252

.lr.ph2251:                                       ; preds = %bb.fi
  %i.cuq = load ptr, ptr %0, align 8, !tbaa !44   ; 5 uses
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cuq, i64 8 ; 2 uses
  %i.cus = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cuq, i64 12 ; 2 uses
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.cuq, i64 16 ; 2 uses
  %.pre2779 = load i32, ptr %i.cur, align 8, !tbaa !73 ; 2 uses
  %i.cuv = icmp eq i32 %.pre2779, 0
  br i1 %i.cuv, label %.loopexit, label %.lr.ph3436.preheader

.lr.ph3436.preheader:                             ; preds = %.lr.ph2251
  %.promoted = load ptr, ptr %i.cuq, align 8, !tbaa !74
  %.promoted3865 = load i32, ptr %i.cut, align 4, !tbaa !76
  br label %.lr.ph3436

._crit_edge2252:                                  ; preds = %bb.fl, %.._crit_edge2252_crit_edge
  %i.cuw = phi i32 [ %.pre2781, %.._crit_edge2252_crit_edge ], [ %i.cvk, %bb.fl ]
  %.lcssa2041 = phi i32 [ %i.cup, %.._crit_edge2252_crit_edge ], [ %i.cvl, %bb.fl ]
  %i.cux = sub nsw i32 %.lcssa2041, %.01652       ; 3 uses
  %i.cuy = lshr i32 %i.cuw, %i.cux
  %notmask = shl nsw i32 -1, %.01652
  %i.cuz = xor i32 %notmask, -1
  %i.cva = and i32 %i.cuy, %i.cuz
  store i32 %i.cux, ptr %i.cuo, align 4, !tbaa !46
  br label %bb.fm

bb.fj:                                            ; preds = %bb.fl
  %i.cvb = icmp eq i32 %i.cvn, 0
  br i1 %i.cvb, label %.loopexit, label %.lr.ph3436

.lr.ph3436:                                       ; preds = %.lr.ph3436.preheader, %bb.fj
  %i.cvc = phi i32 [ %i.cvo, %bb.fj ], [ %.promoted3865, %.lr.ph3436.preheader ]
  %i.cvd = phi ptr [ %i.cvm, %bb.fj ], [ %.promoted, %.lr.ph3436.preheader ] ; 2 uses
  %i.cve = phi i32 [ %i.cvl, %bb.fj ], [ %i.cup, %.lr.ph3436.preheader ]
  %i.cvf = phi i32 [ %i.cvn, %bb.fj ], [ %.pre2779, %.lr.ph3436.preheader ]
  %i.cvg = load i32, ptr %i.cus, align 8, !tbaa !71
  %i.cvh = shl i32 %i.cvg, 8
  %i.cvi = load i8, ptr %i.cvd, align 1, !tbaa !75
  %i.cvj = zext i8 %i.cvi to i32
  %i.cvk = or disjoint i32 %i.cvh, %i.cvj         ; 2 uses
  store i32 %i.cvk, ptr %i.cus, align 8, !tbaa !71
  %i.cvl = add nsw i32 %i.cve, 8                  ; 4 uses
  store i32 %i.cvl, ptr %i.cuo, align 4, !tbaa !46
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.cvd, i64 1 ; 2 uses
  store ptr %i.cvm, ptr %i.cuq, align 8, !tbaa !74
  %i.cvn = add i32 %i.cvf, -1                     ; 3 uses
  store i32 %i.cvn, ptr %i.cur, align 8, !tbaa !73
  %i.cvo = add i32 %i.cvc, 1                      ; 3 uses
  store i32 %i.cvo, ptr %i.cut, align 4, !tbaa !76
  %i.cvp = icmp eq i32 %i.cvo, 0
  br i1 %i.cvp, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.lr.ph3436
  %i.cvq = load i32, ptr %i.cuu, align 8, !tbaa !77
  %i.cvr = add i32 %i.cvq, 1
  store i32 %i.cvr, ptr %i.cuu, align 8, !tbaa !77
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph3436
  %.not1842 = icmp slt i32 %i.cvl, %.01652
  br i1 %.not1842, label %bb.fj, label %._crit_edge2252

bb.fm:                                            ; preds = %._crit_edge2323, %._crit_edge2252
  %i.cvs = phi ptr [ %i.ctk, %._crit_edge2252 ], [ %i.cxa, %._crit_edge2323 ] ; 4 uses
  %i.cvt = phi ptr [ %i.ctl, %._crit_edge2252 ], [ %i.cxb, %._crit_edge2323 ] ; 4 uses
  %i.cvu = phi ptr [ %i.ctm, %._crit_edge2252 ], [ %i.cxc, %._crit_edge2323 ] ; 4 uses
  %i.cvv = phi ptr [ %i.ctn, %._crit_edge2252 ], [ %i.cxd, %._crit_edge2323 ] ; 4 uses
  %i.cvw = phi ptr [ %i.cto, %._crit_edge2252 ], [ %i.cxe, %._crit_edge2323 ] ; 4 uses
  %i.cvx = phi ptr [ %i.ctp, %._crit_edge2252 ], [ %i.cxf, %._crit_edge2323 ] ; 4 uses
  %i.cvy = phi ptr [ %i.ctq, %._crit_edge2252 ], [ %i.cxg, %._crit_edge2323 ] ; 4 uses
  %i.cvz = phi ptr [ %i.ctr, %._crit_edge2252 ], [ %i.cxh, %._crit_edge2323 ] ; 4 uses
  %i.cwa = phi ptr [ %i.cts, %._crit_edge2252 ], [ %i.cxi, %._crit_edge2323 ] ; 4 uses
  %i.cwb = phi ptr [ %i.ctt, %._crit_edge2252 ], [ %i.cxj, %._crit_edge2323 ] ; 4 uses
  %i.cwc = phi ptr [ %i.ctu, %._crit_edge2252 ], [ %i.cxk, %._crit_edge2323 ] ; 4 uses
  %i.cwd = phi ptr [ %i.ctv, %._crit_edge2252 ], [ %i.cxl, %._crit_edge2323 ] ; 4 uses
  %i.cwe = phi ptr [ %i.ctw, %._crit_edge2252 ], [ %i.cxm, %._crit_edge2323 ] ; 4 uses
  %i.cwf = phi ptr [ %i.ctx, %._crit_edge2252 ], [ %i.cxn, %._crit_edge2323 ] ; 4 uses
  %i.cwg = phi ptr [ %i.cty, %._crit_edge2252 ], [ %i.cxo, %._crit_edge2323 ] ; 4 uses
  %i.cwh = phi ptr [ %i.ctz, %._crit_edge2252 ], [ %i.cxp, %._crit_edge2323 ] ; 4 uses
  %i.cwi = phi ptr [ %i.cua, %._crit_edge2252 ], [ %i.cxq, %._crit_edge2323 ] ; 4 uses
  %i.cwj = phi ptr [ %i.cub, %._crit_edge2252 ], [ %i.cxr, %._crit_edge2323 ] ; 4 uses
  %i.cwk = phi ptr [ %i.cuc, %._crit_edge2252 ], [ %i.cxs, %._crit_edge2323 ] ; 4 uses
  %i.cwl = phi ptr [ %i.cud, %._crit_edge2252 ], [ %i.cxt, %._crit_edge2323 ] ; 4 uses
  %i.cwm = phi ptr [ %i.cue, %._crit_edge2252 ], [ %i.cxu, %._crit_edge2323 ] ; 4 uses
  %i.cwn = phi ptr [ %i.cuf, %._crit_edge2252 ], [ %i.cxv, %._crit_edge2323 ] ; 4 uses
  %i.cwo = phi ptr [ %i.cug, %._crit_edge2252 ], [ %i.cxw, %._crit_edge2323 ] ; 4 uses
  %i.cwp = phi ptr [ %i.cuh, %._crit_edge2252 ], [ %i.cxx, %._crit_edge2323 ] ; 4 uses
  %i.cwq = phi i32 [ %i.cui, %._crit_edge2252 ], [ %i.cxy, %._crit_edge2323 ] ; 3 uses
  %i.cwr = phi i32 [ %i.cuj, %._crit_edge2252 ], [ %i.cxz, %._crit_edge2323 ] ; 4 uses
  %i.cws = phi i32 [ %i.cuk, %._crit_edge2252 ], [ %i.cya, %._crit_edge2323 ] ; 4 uses
  %i.cwt = phi i32 [ %i.cul, %._crit_edge2252 ], [ %i.cyb, %._crit_edge2323 ] ; 4 uses
  %i.cwu = phi i32 [ %i.cux, %._crit_edge2252 ], [ %i.cyl, %._crit_edge2323 ]
  %.21748 = phi ptr [ %.11747, %._crit_edge2252 ], [ %.31749, %._crit_edge2323 ] ; 5 uses
  %.21733 = phi ptr [ %.11732, %._crit_edge2252 ], [ %.31734, %._crit_edge2323 ] ; 5 uses
  %.21718 = phi ptr [ %.11717, %._crit_edge2252 ], [ %.31719, %._crit_edge2323 ] ; 5 uses
  %.21703 = phi i32 [ %.11702, %._crit_edge2252 ], [ %.31704, %._crit_edge2323 ] ; 4 uses
  %.21688 = phi i32 [ %.11687, %._crit_edge2252 ], [ %.31689, %._crit_edge2323 ] ; 4 uses
  %.01675 = phi i32 [ %i.cun, %._crit_edge2252 ], [ %i.cyn, %._crit_edge2323 ] ; 4 uses
  %.01664 = phi i32 [ %i.cva, %._crit_edge2252 ], [ %i.cyp, %._crit_edge2323 ] ; 6 uses
  %.11653 = phi i32 [ %.01652, %._crit_edge2252 ], [ %.21654, %._crit_edge2323 ] ; 6 uses
  %.81641 = phi i32 [ %.71640, %._crit_edge2252 ], [ %.91642, %._crit_edge2323 ] ; 4 uses
  %.11595 = phi i32 [ %.01594, %._crit_edge2252 ], [ %.21596, %._crit_edge2323 ] ; 4 uses
  %.11583 = phi i32 [ %.01582, %._crit_edge2252 ], [ %.21584, %._crit_edge2323 ] ; 4 uses
  %.21556 = phi i32 [ %.11555, %._crit_edge2252 ], [ %.31557, %._crit_edge2323 ] ; 4 uses
  %.21541 = phi i32 [ %.11540, %._crit_edge2252 ], [ %.31542, %._crit_edge2323 ] ; 4 uses
  %.11528 = phi i32 [ %.01527, %._crit_edge2252 ], [ %.21529, %._crit_edge2323 ] ; 4 uses
  %.101508 = phi i32 [ %.91507, %._crit_edge2252 ], [ %.111509, %._crit_edge2323 ] ; 4 uses
  %.111487 = phi i32 [ %.101486, %._crit_edge2252 ], [ %.121488, %._crit_edge2323 ] ; 4 uses
  %.121465 = phi i32 [ %.111464, %._crit_edge2252 ], [ %.131466, %._crit_edge2323 ] ; 4 uses
  %.81442 = phi i32 [ %.71441, %._crit_edge2252 ], [ %.91443, %._crit_edge2323 ] ; 4 uses
  %.161421 = phi i32 [ %.151420, %._crit_edge2252 ], [ %.171422, %._crit_edge2323 ] ; 4 uses
  %.22 = phi i32 [ %.21, %._crit_edge2252 ], [ %.23, %._crit_edge2323 ] ; 4 uses
  %i.cwv = icmp sgt i32 %.11653, 20
  br i1 %i.cwv, label %.loopexit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.cww = sext i32 %.11653 to i64                ; 2 uses
  %i.cwx = getelementptr inbounds [4 x i8], ptr %.21718, i64 %i.cww
  %i.cwy = load i32, ptr %i.cwx, align 4, !tbaa !97
  %.not1843 = icmp sgt i32 %.01664, %i.cwy
  br i1 %.not1843, label %bb.fo, label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  %i.cwz = add nsw i32 %.11653, 1
  br label %bb.fp

bb.fp:                                            ; preds = %._crit_edge2802, %bb.fo
  %i.cxa = phi ptr [ %i.cvs, %bb.fo ], [ %i.be, %._crit_edge2802 ] ; 2 uses
  %i.cxb = phi ptr [ %i.cvt, %bb.fo ], [ %i.bd, %._crit_edge2802 ] ; 2 uses
  %i.cxc = phi ptr [ %i.cvu, %bb.fo ], [ %i.bc, %._crit_edge2802 ] ; 2 uses
  %i.cxd = phi ptr [ %i.cvv, %bb.fo ], [ %i.bb, %._crit_edge2802 ] ; 2 uses
  %i.cxe = phi ptr [ %i.cvw, %bb.fo ], [ %i.ba, %._crit_edge2802 ] ; 2 uses
  %i.cxf = phi ptr [ %i.cvx, %bb.fo ], [ %i.az, %._crit_edge2802 ] ; 2 uses
  %i.cxg = phi ptr [ %i.cvy, %bb.fo ], [ %i.ay, %._crit_edge2802 ] ; 2 uses
  %i.cxh = phi ptr [ %i.cvz, %bb.fo ], [ %i.ax, %._crit_edge2802 ] ; 2 uses
  %i.cxi = phi ptr [ %i.cwa, %bb.fo ], [ %i.aw, %._crit_edge2802 ] ; 2 uses
  %i.cxj = phi ptr [ %i.cwb, %bb.fo ], [ %i.av, %._crit_edge2802 ] ; 2 uses
  %i.cxk = phi ptr [ %i.cwc, %bb.fo ], [ %i.au, %._crit_edge2802 ] ; 2 uses
  %i.cxl = phi ptr [ %i.cwd, %bb.fo ], [ %i.at, %._crit_edge2802 ] ; 2 uses
  %i.cxm = phi ptr [ %i.cwe, %bb.fo ], [ %i.as, %._crit_edge2802 ] ; 2 uses
  %i.cxn = phi ptr [ %i.cwf, %bb.fo ], [ %i.ar, %._crit_edge2802 ] ; 2 uses
  %i.cxo = phi ptr [ %i.cwg, %bb.fo ], [ %i.aq, %._crit_edge2802 ] ; 2 uses
  %i.cxp = phi ptr [ %i.cwh, %bb.fo ], [ %i.ap, %._crit_edge2802 ] ; 2 uses
  %i.cxq = phi ptr [ %i.cwi, %bb.fo ], [ %i.ao, %._crit_edge2802 ] ; 2 uses
  %i.cxr = phi ptr [ %i.cwj, %bb.fo ], [ %i.an, %._crit_edge2802 ] ; 2 uses
  %i.cxs = phi ptr [ %i.cwk, %bb.fo ], [ %i.am, %._crit_edge2802 ] ; 2 uses
  %i.cxt = phi ptr [ %i.cwl, %bb.fo ], [ %i.al, %._crit_edge2802 ] ; 2 uses
  %i.cxu = phi ptr [ %i.cwm, %bb.fo ], [ %i.ak, %._crit_edge2802 ] ; 2 uses
  %i.cxv = phi ptr [ %i.cwn, %bb.fo ], [ %i.aj, %._crit_edge2802 ] ; 2 uses
  %i.cxw = phi ptr [ %i.cwo, %bb.fo ], [ %i.ai, %._crit_edge2802 ] ; 2 uses
  %i.cxx = phi ptr [ %i.cwp, %bb.fo ], [ %i.ah, %._crit_edge2802 ] ; 2 uses
  %i.cxy = phi i32 [ %i.cwq, %bb.fo ], [ %.pre2642, %._crit_edge2802 ] ; 2 uses
  %i.cxz = phi i32 [ %i.cwr, %bb.fo ], [ %.pre2648, %._crit_edge2802 ] ; 2 uses
  %i.cya = phi i32 [ %i.cws, %bb.fo ], [ %.pre2650, %._crit_edge2802 ] ; 2 uses
  %i.cyb = phi i32 [ %i.cwt, %bb.fo ], [ %.pre2654, %._crit_edge2802 ] ; 2 uses
  %i.cyc = phi i32 [ %i.cwu, %bb.fo ], [ %.pre2804, %._crit_edge2802 ] ; 3 uses
  %.31749 = phi ptr [ %.21748, %bb.fo ], [ %.pre2670, %._crit_edge2802 ] ; 2 uses
  %.31734 = phi ptr [ %.21733, %bb.fo ], [ %.pre2668, %._crit_edge2802 ] ; 2 uses
  %.31719 = phi ptr [ %.21718, %bb.fo ], [ %.pre2666, %._crit_edge2802 ] ; 2 uses
  %.31704 = phi i32 [ %.21703, %bb.fo ], [ %.pre2664, %._crit_edge2802 ] ; 2 uses
  %.31689 = phi i32 [ %.21688, %bb.fo ], [ %.pre2662, %._crit_edge2802 ] ; 2 uses
  %.11676 = phi i32 [ %.01675, %bb.fo ], [ %.pre2660, %._crit_edge2802 ]
  %.11665 = phi i32 [ %.01664, %bb.fo ], [ %.pre2658, %._crit_edge2802 ] ; 2 uses
  %.21654 = phi i32 [ %i.cwz, %bb.fo ], [ %.pre2656, %._crit_edge2802 ] ; 2 uses
  %.91642 = phi i32 [ %.81641, %bb.fo ], [ %.pre2652, %._crit_edge2802 ] ; 2 uses
  %.21596 = phi i32 [ %.11595, %bb.fo ], [ %.pre2646, %._crit_edge2802 ] ; 2 uses
  %.21584 = phi i32 [ %.11583, %bb.fo ], [ %.pre2644, %._crit_edge2802 ] ; 2 uses
  %.31557 = phi i32 [ %.21556, %bb.fo ], [ %.pre2640, %._crit_edge2802 ] ; 2 uses
  %.31542 = phi i32 [ %.21541, %bb.fo ], [ %.pre2638, %._crit_edge2802 ] ; 2 uses
  %.21529 = phi i32 [ %.11528, %bb.fo ], [ %.pre2636, %._crit_edge2802 ] ; 2 uses
  %.111509 = phi i32 [ %.101508, %bb.fo ], [ %.pre2634, %._crit_edge2802 ] ; 2 uses
  %.121488 = phi i32 [ %.111487, %bb.fo ], [ %.pre2632, %._crit_edge2802 ] ; 2 uses
  %.131466 = phi i32 [ %.121465, %bb.fo ], [ %.pre2630, %._crit_edge2802 ] ; 2 uses
  %.91443 = phi i32 [ %.81442, %bb.fo ], [ %.pre2628, %._crit_edge2802 ] ; 2 uses
  %.171422 = phi i32 [ %.161421, %bb.fo ], [ %.pre2626, %._crit_edge2802 ] ; 2 uses
  %.23 = phi i32 [ %.22, %bb.fo ], [ %.pre, %._crit_edge2802 ] ; 2 uses
  store i32 37, ptr %i.c, align 8, !tbaa !45
  %i.cyd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.cye = icmp sgt i32 %i.cyc, 0
  br i1 %i.cye, label %.._crit_edge2323_crit_edge, label %.lr.ph2322

.._crit_edge2323_crit_edge:                       ; preds = %bb.fp
  %.phi.trans.insert2806 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre2807 = load i32, ptr %.phi.trans.insert2806, align 8, !tbaa !71
  br label %._crit_edge2323

.lr.ph2322:                                       ; preds = %bb.fp
  %i.cyf = load ptr, ptr %0, align 8, !tbaa !44   ; 5 uses
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cyf, i64 8 ; 2 uses
  %i.cyh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cyf, i64 12 ; 2 uses
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cyf, i64 16 ; 2 uses
  %.pre2805 = load i32, ptr %i.cyg, align 8, !tbaa !73
  br label %bb.fq

._crit_edge2323:                                  ; preds = %bb.ft, %.._crit_edge2323_crit_edge
  %i.cyk = phi i32 [ %.pre2807, %.._crit_edge2323_crit_edge ], [ %i.cyy, %bb.ft ]
  %.lcssa2011 = phi i32 [ %i.cyc, %.._crit_edge2323_crit_edge ], [ %i.cyz, %bb.ft ]
  %i.cyl = add nsw i32 %.lcssa2011, -1            ; 3 uses
  %i.cym = lshr i32 %i.cyk, %i.cyl
  %i.cyn = and i32 %i.cym, 1                      ; 2 uses
  store i32 %i.cyl, ptr %i.cyd, align 4, !tbaa !46
  %i.cyo = shl i32 %.11665, 1
  %i.cyp = or disjoint i32 %i.cyn, %i.cyo
  br label %bb.fm

bb.fq:                                            ; preds = %.lr.ph2322, %bb.ft
  %i.cyq = phi i32 [ %.pre2805, %.lr.ph2322 ], [ %i.czb, %bb.ft ] ; 2 uses
  %i.cyr = phi i32 [ %i.cyc, %.lr.ph2322 ], [ %i.cyz, %bb.ft ] ; 2 uses
  %i.cys = icmp eq i32 %i.cyq, 0
  br i1 %i.cys, label %.loopexit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.cyt = load i32, ptr %i.cyh, align 8, !tbaa !71
  %i.cyu = shl i32 %i.cyt, 8
  %i.cyv = load ptr, ptr %i.cyf, align 8, !tbaa !74 ; 2 uses
  %i.cyw = load i8, ptr %i.cyv, align 1, !tbaa !75
  %i.cyx = zext i8 %i.cyw to i32
  %i.cyy = or disjoint i32 %i.cyu, %i.cyx         ; 2 uses
  store i32 %i.cyy, ptr %i.cyh, align 8, !tbaa !71
  %i.cyz = add nsw i32 %i.cyr, 8                  ; 3 uses
  store i32 %i.cyz, ptr %i.cyd, align 4, !tbaa !46
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyv, i64 1
  store ptr %i.cza, ptr %i.cyf, align 8, !tbaa !74
  %i.czb = add i32 %i.cyq, -1                     ; 2 uses
  store i32 %i.czb, ptr %i.cyg, align 8, !tbaa !73
  %i.czc = load i32, ptr %i.cyi, align 4, !tbaa !76
  %i.czd = add i32 %i.czc, 1                      ; 2 uses
  store i32 %i.czd, ptr %i.cyi, align 4, !tbaa !76
  %i.cze = icmp eq i32 %i.czd, 0
  br i1 %i.cze, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.czf = load i32, ptr %i.cyj, align 8, !tbaa !77
  %i.czg = add i32 %i.czf, 1
  store i32 %i.czg, ptr %i.cyj, align 8, !tbaa !77
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.czh = icmp sgt i32 %i.cyr, -8
  br i1 %i.czh, label %._crit_edge2323, label %bb.fq

bb.fu:                                            ; preds = %bb.fn
  %i.czi = getelementptr inbounds [4 x i8], ptr %.21733, i64 %i.cww
  %i.czj = load i32, ptr %i.czi, align 4, !tbaa !97
  %i.czk = sub nsw i32 %.01664, %i.czj            ; 2 uses
  %or.cond = icmp ugt i32 %i.czk, 257
  br i1 %or.cond, label %.loopexit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.czl = zext nneg i32 %i.czk to i64
  %i.czm = getelementptr inbounds nuw [4 x i8], ptr %.21748, i64 %i.czl
  %i.czn = load i32, ptr %i.czm, align 4, !tbaa !97
  br label %.loopexit1912

.loopexit1912:                                    ; preds = %.preheader1911, %.preheader1914, %.loopexit1912.loopexit, %.loopexit1912.loopexit2424, %26, %bb.fv
  %1 = phi ptr [ %i.cvs, %bb.fv ], [ %i.dxm, %26 ], [ %i.ddm, %.loopexit1912.loopexit2424 ], [ %i.ddm, %.loopexit1912.loopexit ], [ %i.ddm, %.preheader1914 ], [ %i.ddm, %.preheader1911 ] ; 12 uses
  %2 = phi ptr [ %i.cvt, %bb.fv ], [ %i.dxn, %26 ], [ %i.ddn, %.loopexit1912.loopexit2424 ], [ %i.ddn, %.loopexit1912.loopexit ], [ %i.ddn, %.preheader1914 ], [ %i.ddn, %.preheader1911 ] ; 12 uses
  %3 = phi ptr [ %i.cvu, %bb.fv ], [ %i.dxo, %26 ], [ %i.ddo, %.loopexit1912.loopexit2424 ], [ %i.ddo, %.loopexit1912.loopexit ], [ %i.ddo, %.preheader1914 ], [ %i.ddo, %.preheader1911 ] ; 12 uses
  %4 = phi ptr [ %i.cvv, %bb.fv ], [ %i.dxp, %26 ], [ %i.ddp, %.loopexit1912.loopexit2424 ], [ %i.ddp, %.loopexit1912.loopexit ], [ %i.ddp, %.preheader1914 ], [ %i.ddp, %.preheader1911 ] ; 12 uses
  %5 = phi ptr [ %i.cvw, %bb.fv ], [ %i.dxq, %26 ], [ %i.ddq, %.loopexit1912.loopexit2424 ], [ %i.ddq, %.loopexit1912.loopexit ], [ %i.ddq, %.preheader1914 ], [ %i.ddq, %.preheader1911 ] ; 12 uses
  %6 = phi ptr [ %i.cvx, %bb.fv ], [ %i.dxr, %26 ], [ %i.ddr, %.loopexit1912.loopexit2424 ], [ %i.ddr, %.loopexit1912.loopexit ], [ %i.ddr, %.preheader1914 ], [ %i.ddr, %.preheader1911 ] ; 12 uses
  %7 = phi ptr [ %i.cvy, %bb.fv ], [ %i.dxs, %26 ], [ %i.dds, %.loopexit1912.loopexit2424 ], [ %i.dds, %.loopexit1912.loopexit ], [ %i.dds, %.preheader1914 ], [ %i.dds, %.preheader1911 ] ; 12 uses
  %8 = phi ptr [ %i.cvz, %bb.fv ], [ %i.dxt, %26 ], [ %i.ddt, %.loopexit1912.loopexit2424 ], [ %i.ddt, %.loopexit1912.loopexit ], [ %i.ddt, %.preheader1914 ], [ %i.ddt, %.preheader1911 ] ; 12 uses
  %9 = phi ptr [ %i.cwa, %bb.fv ], [ %i.dxu, %26 ], [ %i.ddu, %.loopexit1912.loopexit2424 ], [ %i.ddu, %.loopexit1912.loopexit ], [ %i.ddu, %.preheader1914 ], [ %i.ddu, %.preheader1911 ] ; 12 uses
  %10 = phi ptr [ %i.cwb, %bb.fv ], [ %i.dxv, %26 ], [ %i.ddv, %.loopexit1912.loopexit2424 ], [ %i.ddv, %.loopexit1912.loopexit ], [ %i.ddv, %.preheader1914 ], [ %i.ddv, %.preheader1911 ] ; 12 uses
  %11 = phi ptr [ %i.cwc, %bb.fv ], [ %i.dxw, %26 ], [ %i.ddw, %.loopexit1912.loopexit2424 ], [ %i.ddw, %.loopexit1912.loopexit ], [ %i.ddw, %.preheader1914 ], [ %i.ddw, %.preheader1911 ] ; 12 uses
  %12 = phi ptr [ %i.cwd, %bb.fv ], [ %i.dxx, %26 ], [ %i.ddx, %.loopexit1912.loopexit2424 ], [ %i.ddx, %.loopexit1912.loopexit ], [ %i.ddx, %.preheader1914 ], [ %i.ddx, %.preheader1911 ] ; 12 uses
  %13 = phi ptr [ %i.cwe, %bb.fv ], [ %i.dxy, %26 ], [ %i.ddy, %.loopexit1912.loopexit2424 ], [ %i.ddy, %.loopexit1912.loopexit ], [ %i.ddy, %.preheader1914 ], [ %i.ddy, %.preheader1911 ] ; 12 uses
  %14 = phi ptr [ %i.cwf, %bb.fv ], [ %i.dxz, %26 ], [ %i.ddz, %.loopexit1912.loopexit2424 ], [ %i.ddz, %.loopexit1912.loopexit ], [ %i.ddz, %.preheader1914 ], [ %i.ddz, %.preheader1911 ] ; 12 uses
  %15 = phi ptr [ %i.cwg, %bb.fv ], [ %i.dya, %26 ], [ %i.dea, %.loopexit1912.loopexit2424 ], [ %i.dea, %.loopexit1912.loopexit ], [ %i.dea, %.preheader1914 ], [ %i.dea, %.preheader1911 ] ; 12 uses
  %16 = phi ptr [ %i.cwh, %bb.fv ], [ %i.dyb, %26 ], [ %i.deb, %.loopexit1912.loopexit2424 ], [ %i.deb, %.loopexit1912.loopexit ], [ %i.deb, %.preheader1914 ], [ %i.deb, %.preheader1911 ] ; 12 uses
  %17 = phi ptr [ %i.cwi, %bb.fv ], [ %i.dyc, %26 ], [ %i.dec, %.loopexit1912.loopexit2424 ], [ %i.dec, %.loopexit1912.loopexit ], [ %i.dec, %.preheader1914 ], [ %i.dec, %.preheader1911 ] ; 12 uses
  %18 = phi ptr [ %i.cwj, %bb.fv ], [ %i.dyd, %26 ], [ %i.ded, %.loopexit1912.loopexit2424 ], [ %i.ded, %.loopexit1912.loopexit ], [ %i.ded, %.preheader1914 ], [ %i.ded, %.preheader1911 ] ; 12 uses
  %19 = phi ptr [ %i.cwk, %bb.fv ], [ %i.dye, %26 ], [ %i.dee, %.loopexit1912.loopexit2424 ], [ %i.dee, %.loopexit1912.loopexit ], [ %i.dee, %.preheader1914 ], [ %i.dee, %.preheader1911 ] ; 12 uses
  %20 = phi ptr [ %i.cwl, %bb.fv ], [ %i.dyf, %26 ], [ %i.def, %.loopexit1912.loopexit2424 ], [ %i.def, %.loopexit1912.loopexit ], [ %i.def, %.preheader1914 ], [ %i.def, %.preheader1911 ] ; 12 uses
  %21 = phi ptr [ %i.cwm, %bb.fv ], [ %i.dyg, %26 ], [ %i.deg, %.loopexit1912.loopexit2424 ], [ %i.deg, %.loopexit1912.loopexit ], [ %i.deg, %.preheader1914 ], [ %i.deg, %.preheader1911 ] ; 12 uses
  %22 = phi ptr [ %i.cwn, %bb.fv ], [ %i.dyh, %26 ], [ %i.deh, %.loopexit1912.loopexit2424 ], [ %i.deh, %.loopexit1912.loopexit ], [ %i.deh, %.preheader1914 ], [ %i.deh, %.preheader1911 ] ; 12 uses
  %23 = phi ptr [ %i.cwo, %bb.fv ], [ %i.dyi, %26 ], [ %i.dei, %.loopexit1912.loopexit2424 ], [ %i.dei, %.loopexit1912.loopexit ], [ %i.dei, %.preheader1914 ], [ %i.dei, %.preheader1911 ] ; 12 uses
  %24 = phi ptr [ %i.cwp, %bb.fv ], [ %i.dyj, %26 ], [ %i.dej, %.loopexit1912.loopexit2424 ], [ %i.dej, %.loopexit1912.loopexit ], [ %i.dej, %.preheader1914 ], [ %i.dej, %.preheader1911 ] ; 12 uses
  %25 = phi i32 [ %i.cwt, %bb.fv ], [ %i.dyk, %26 ], [ %i.dek, %.loopexit1912.loopexit2424 ], [ %i.dek, %.loopexit1912.loopexit ], [ %i.dek, %.preheader1914 ], [ %i.dek, %.preheader1911 ] ; 12 uses
  %.41750 = phi ptr [ %.21748, %bb.fv ], [ %.121758, %26 ], [ %.81754, %.loopexit1912.loopexit2424 ], [ %.81754, %.loopexit1912.loopexit ], [ %.81754, %.preheader1914 ], [ %.81754, %.preheader1911 ] ; 12 uses
  %.41735 = phi ptr [ %.21733, %bb.fv ], [ %.121743, %26 ], [ %.81739, %.loopexit1912.loopexit2424 ], [ %.81739, %.loopexit1912.loopexit ], [ %.81739, %.preheader1914 ], [ %.81739, %.preheader1911 ] ; 12 uses
  %.41720 = phi ptr [ %.21718, %bb.fv ], [ %.121728, %26 ], [ %.81724, %.loopexit1912.loopexit2424 ], [ %.81724, %.loopexit1912.loopexit ], [ %.81724, %.preheader1914 ], [ %.81724, %.preheader1911 ] ; 12 uses
  %.41705 = phi i32 [ %.21703, %bb.fv ], [ %.121713, %26 ], [ %.81709, %.loopexit1912.loopexit2424 ], [ %.81709, %.loopexit1912.loopexit ], [ %.81709, %.preheader1914 ], [ %.81709, %.preheader1911 ] ; 12 uses
  %.41690 = phi i32 [ %.21688, %bb.fv ], [ %.121698, %26 ], [ %.81694, %.loopexit1912.loopexit2424 ], [ %.81694, %.loopexit1912.loopexit ], [ %.81694, %.preheader1914 ], [ %.81694, %.preheader1911 ] ; 12 uses
  %.21677 = phi i32 [ %.01675, %bb.fv ], [ %.81683, %26 ], [ %.51680, %.loopexit1912.loopexit2424 ], [ %.51680, %.loopexit1912.loopexit ], [ %.51680, %.preheader1914 ], [ %.51680, %.preheader1911 ] ; 12 uses
  %.21666 = phi i32 [ %.01664, %bb.fv ], [ %.81672, %26 ], [ %.51669, %.loopexit1912.loopexit2424 ], [ %.51669, %.loopexit1912.loopexit ], [ %.51669, %.preheader1914 ], [ %.51669, %.preheader1911 ] ; 12 uses
  %.31655 = phi i32 [ %.11653, %bb.fv ], [ %.91661, %26 ], [ %.61658, %.loopexit1912.loopexit2424 ], [ %.61658, %.loopexit1912.loopexit ], [ %.61658, %.preheader1914 ], [ %.61658, %.preheader1911 ] ; 11 uses
  %.101643 = phi i32 [ %.81641, %bb.fv ], [ %.161649, %26 ], [ %.131646, %.loopexit1912.loopexit2424 ], [ %.131646, %.loopexit1912.loopexit ], [ %.131646, %.preheader1914 ], [ %.131646, %.preheader1911 ] ; 12 uses
  %.01624 = phi i32 [ %i.cws, %bb.fv ], [ %.61630, %26 ], [ %.31627, %.loopexit1912.loopexit2424 ], [ %.31627, %.loopexit1912.loopexit ], [ %.31627, %.preheader1914 ], [ %.31627, %.preheader1911 ] ; 11 uses
  %.01609 = phi i32 [ %i.cwr, %bb.fv ], [ %.101619, %26 ], [ %i.die, %.loopexit1912.loopexit2424 ], [ %i.dii, %.loopexit1912.loopexit ], [ %i.dhd, %.preheader1914 ], [ %i.dhd, %.preheader1911 ] ; 11 uses
  %.31597 = phi i32 [ %.11595, %bb.fv ], [ %.121606, %26 ], [ %i.dil, %.loopexit1912.loopexit2424 ], [ %i.dik, %.loopexit1912.loopexit ], [ %.61600, %.preheader1914 ], [ %.61600, %.preheader1911 ] ; 30 uses
  %.31585 = phi i32 [ %.11583, %bb.fv ], [ %.91591, %26 ], [ %.61588, %.loopexit1912.loopexit2424 ], [ %.61588, %.loopexit1912.loopexit ], [ %.61588, %.preheader1914 ], [ %.61588, %.preheader1911 ] ; 13 uses
  %.01569 = phi i32 [ %i.czn, %bb.fv ], [ %29, %26 ], [ %i.dhb, %.loopexit1912.loopexit2424 ], [ %i.dhb, %.loopexit1912.loopexit ], [ %i.dhb, %.preheader1914 ], [ %i.dhb, %.preheader1911 ] ; 26 uses
  %.41558 = phi i32 [ %.21556, %bb.fv ], [ %.121566, %26 ], [ %.81562, %.loopexit1912.loopexit2424 ], [ %.81562, %.loopexit1912.loopexit ], [ %.81562, %.preheader1914 ], [ %.81562, %.preheader1911 ] ; 12 uses
  %.41543 = phi i32 [ %.21541, %bb.fv ], [ %.121551, %26 ], [ %.81547, %.loopexit1912.loopexit2424 ], [ %.81547, %.loopexit1912.loopexit ], [ %.81547, %.preheader1914 ], [ %.81547, %.preheader1911 ] ; 12 uses
  %.31530 = phi i32 [ %.11528, %bb.fv ], [ %.91536, %26 ], [ %.61533, %.loopexit1912.loopexit2424 ], [ %.61533, %.loopexit1912.loopexit ], [ %.61533, %.preheader1914 ], [ %.61533, %.preheader1911 ] ; 5 uses
  %.121510 = phi i32 [ %.101508, %bb.fv ], [ %.181516, %26 ], [ %.151513, %.loopexit1912.loopexit2424 ], [ %.151513, %.loopexit1912.loopexit ], [ %.151513, %.preheader1914 ], [ %.151513, %.preheader1911 ] ; 13 uses
  %.131489 = phi i32 [ %.111487, %bb.fv ], [ %.191495, %26 ], [ %.161492, %.loopexit1912.loopexit2424 ], [ %.161492, %.loopexit1912.loopexit ], [ %.161492, %.preheader1914 ], [ %.161492, %.preheader1911 ] ; 12 uses
  %.141467 = phi i32 [ %.121465, %bb.fv ], [ %.201473, %26 ], [ %.171470, %.loopexit1912.loopexit2424 ], [ %.171470, %.loopexit1912.loopexit ], [ %.171470, %.preheader1914 ], [ %.171470, %.preheader1911 ] ; 12 uses
  %.101444 = phi i32 [ %.81442, %bb.fv ], [ %.161450, %26 ], [ %.131447, %.loopexit1912.loopexit2424 ], [ %.131447, %.loopexit1912.loopexit ], [ %.131447, %.preheader1914 ], [ %.131447, %.preheader1911 ] ; 12 uses
  %.181423 = phi i32 [ %.161421, %bb.fv ], [ %.241429, %26 ], [ %.211426, %.loopexit1912.loopexit2424 ], [ %.211426, %.loopexit1912.loopexit ], [ %.211426, %.preheader1914 ], [ %.211426, %.preheader1911 ] ; 10 uses
  %.24 = phi i32 [ %.22, %bb.fv ], [ %.30, %26 ], [ %.27, %.loopexit1912.loopexit2424 ], [ %.27, %.loopexit1912.loopexit ], [ %.27, %.preheader1914 ], [ %.27, %.preheader1911 ] ; 5 uses
  %i.czo = icmp eq i32 %.01569, %.31530
  br i1 %i.czo, label %bb.hs, label %bb.fw

bb.fw:                                            ; preds = %.loopexit1912
  %or.cond5 = icmp ult i32 %.01569, 2
  br i1 %or.cond5, label %bb.fx, label %bb.gv

bb.fx:                                            ; preds = %bb.fw, %bb.gp
  %i.czp = phi ptr [ %i.ddm, %bb.gp ], [ %1, %bb.fw ] ; 3 uses
  %i.czq = phi ptr [ %i.ddn, %bb.gp ], [ %2, %bb.fw ] ; 3 uses
  %i.czr = phi ptr [ %i.ddo, %bb.gp ], [ %3, %bb.fw ] ; 3 uses
  %i.czs = phi ptr [ %i.ddp, %bb.gp ], [ %4, %bb.fw ] ; 3 uses
  %i.czt = phi ptr [ %i.ddq, %bb.gp ], [ %5, %bb.fw ] ; 3 uses
  %i.czu = phi ptr [ %i.ddr, %bb.gp ], [ %6, %bb.fw ] ; 3 uses
  %i.czv = phi ptr [ %i.dds, %bb.gp ], [ %7, %bb.fw ] ; 3 uses
  %i.czw = phi ptr [ %i.ddt, %bb.gp ], [ %8, %bb.fw ] ; 3 uses
  %i.czx = phi ptr [ %i.ddu, %bb.gp ], [ %9, %bb.fw ] ; 3 uses
  %i.czy = phi ptr [ %i.ddv, %bb.gp ], [ %10, %bb.fw ] ; 3 uses
  %i.czz = phi ptr [ %i.ddw, %bb.gp ], [ %11, %bb.fw ] ; 3 uses
  %i.daa = phi ptr [ %i.ddx, %bb.gp ], [ %12, %bb.fw ] ; 3 uses
  %i.dab = phi ptr [ %i.ddy, %bb.gp ], [ %13, %bb.fw ] ; 3 uses
  %i.dac = phi ptr [ %i.ddz, %bb.gp ], [ %14, %bb.fw ] ; 3 uses
  %i.dad = phi ptr [ %i.dea, %bb.gp ], [ %15, %bb.fw ] ; 3 uses
  %i.dae = phi ptr [ %i.deb, %bb.gp ], [ %16, %bb.fw ] ; 3 uses
  %i.daf = phi ptr [ %i.dec, %bb.gp ], [ %17, %bb.fw ] ; 3 uses
  %i.dag = phi ptr [ %i.ded, %bb.gp ], [ %18, %bb.fw ] ; 3 uses
  %i.dah = phi ptr [ %i.dee, %bb.gp ], [ %19, %bb.fw ] ; 3 uses
  %i.dai = phi ptr [ %i.def, %bb.gp ], [ %20, %bb.fw ] ; 3 uses
  %i.daj = phi ptr [ %i.deg, %bb.gp ], [ %21, %bb.fw ] ; 3 uses
  %i.dak = phi ptr [ %i.deh, %bb.gp ], [ %22, %bb.fw ] ; 3 uses
  %i.dal = phi ptr [ %i.dei, %bb.gp ], [ %23, %bb.fw ] ; 3 uses
  %i.dam = phi ptr [ %i.dej, %bb.gp ], [ %24, %bb.fw ] ; 3 uses
  %i.dan = phi i32 [ %i.dek, %bb.gp ], [ %25, %bb.fw ] ; 3 uses
  %.51751 = phi ptr [ %.81754, %bb.gp ], [ %.41750, %bb.fw ] ; 3 uses
  %.51736 = phi ptr [ %.81739, %bb.gp ], [ %.41735, %bb.fw ] ; 3 uses
  %.51721 = phi ptr [ %.81724, %bb.gp ], [ %.41720, %bb.fw ] ; 3 uses
  %.51706 = phi i32 [ %.81709, %bb.gp ], [ %.41705, %bb.fw ] ; 3 uses
  %.51691 = phi i32 [ %.81694, %bb.gp ], [ %.41690, %bb.fw ] ; 3 uses
  %.31678 = phi i32 [ %.51680, %bb.gp ], [ %.21677, %bb.fw ] ; 3 uses
  %.31667 = phi i32 [ %.51669, %bb.gp ], [ %.21666, %bb.fw ] ; 3 uses
  %.41656 = phi i32 [ %.61658, %bb.gp ], [ %.31655, %bb.fw ] ; 2 uses
  %.111644 = phi i32 [ %.131646, %bb.gp ], [ %.101643, %bb.fw ] ; 3 uses
  %.11625 = phi i32 [ %.31627, %bb.gp ], [ 1, %bb.fw ] ; 4 uses
  %.11610 = phi i32 [ %.41613, %bb.gp ], [ -1, %bb.fw ] ; 2 uses
  %.41598 = phi i32 [ %.61600, %bb.gp ], [ %.31597, %bb.fw ] ; 3 uses
  %.41586 = phi i32 [ %.61588, %bb.gp ], [ %.31585, %bb.fw ] ; 3 uses
  %.11570 = phi i32 [ %i.dhb, %bb.gp ], [ %.01569, %bb.fw ] ; 4 uses
  %.51559 = phi i32 [ %.81562, %bb.gp ], [ %.41558, %bb.fw ] ; 3 uses
  %.51544 = phi i32 [ %.81547, %bb.gp ], [ %.41543, %bb.fw ] ; 3 uses
  %.41531 = phi i32 [ %.61533, %bb.gp ], [ %.31530, %bb.fw ] ; 3 uses
  %.131511 = phi i32 [ %.151513, %bb.gp ], [ %.121510, %bb.fw ] ; 4 uses
  %.141490 = phi i32 [ %.161492, %bb.gp ], [ %.131489, %bb.fw ] ; 3 uses
  %.151468 = phi i32 [ %.171470, %bb.gp ], [ %.141467, %bb.fw ] ; 3 uses
  %.111445 = phi i32 [ %.131447, %bb.gp ], [ %.101444, %bb.fw ] ; 3 uses
  %.191424 = phi i32 [ %.211426, %bb.gp ], [ %.181423, %bb.fw ] ; 3 uses
  %.25 = phi i32 [ %.27, %bb.gp ], [ %.24, %bb.fw ] ; 3 uses
  %i.dao = icmp sgt i32 %.11625, 2097151
  br i1 %i.dao, label %.loopexit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.dap = icmp eq i32 %.11570, 0
  %i.daq = shl nsw i32 %.11625, 1                 ; 3 uses
  %.21611.v = select i1 %i.dap, i32 %.11625, i32 %i.daq
  %.21611 = add nsw i32 %.21611.v, %.11610        ; 2 uses
  %i.dar = icmp eq i32 %.51559, 0
  br i1 %i.dar, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.das = add nsw i32 %.51544, 1                 ; 4 uses
  %.not1851 = icmp slt i32 %i.das, %.131511
  br i1 %.not1851, label %bb.ga, label %.loopexit

bb.ga:                                            ; preds = %bb.fz
  %i.dat = getelementptr inbounds nuw i8, ptr %0, i64 7884
  %i.dau = sext i32 %i.das to i64
  %i.dav = getelementptr inbounds i8, ptr %i.dat, i64 %i.dau
  %i.daw = load i8, ptr %i.dav, align 1, !tbaa !75 ; 2 uses
  %i.dax = zext i8 %i.daw to i32
  %i.day = getelementptr inbounds nuw i8, ptr %0, i64 64012
  %i.daz = zext i8 %i.daw to i64                  ; 4 uses
  %i.dba = getelementptr inbounds nuw [4 x i8], ptr %i.day, i64 %i.daz
  %i.dbb = load i32, ptr %i.dba, align 4, !tbaa !97
  %i.dbc = getelementptr inbounds nuw i8, ptr %0, i64 45436
  %i.dbd = getelementptr inbounds nuw [1032 x i8], ptr %i.dbc, i64 %i.daz
  %i.dbe = getelementptr inbounds nuw i8, ptr %0, i64 57820
  %i.dbf = getelementptr inbounds nuw [1032 x i8], ptr %i.dbe, i64 %i.daz
  %i.dbg = getelementptr inbounds nuw i8, ptr %0, i64 51628
  %i.dbh = getelementptr inbounds nuw [1032 x i8], ptr %i.dbg, i64 %i.daz
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fy
  %.61752 = phi ptr [ %i.dbf, %bb.ga ], [ %.51751, %bb.fy ]
  %.61737 = phi ptr [ %i.dbh, %bb.ga ], [ %.51736, %bb.fy ]
  %.61722 = phi ptr [ %i.dbd, %bb.ga ], [ %.51721, %bb.fy ]
  %.61707 = phi i32 [ %i.dbb, %bb.ga ], [ %.51706, %bb.fy ] ; 2 uses
  %.61692 = phi i32 [ %i.dax, %bb.ga ], [ %.51691, %bb.fy ]
  %.61560 = phi i32 [ 50, %bb.ga ], [ %.51559, %bb.fy ]
  %.61545 = phi i32 [ %i.das, %bb.ga ], [ %.51544, %bb.fy ]
  %i.dbi = add nsw i32 %.61560, -1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.b
  %i.dbj = phi ptr [ %i.czp, %bb.gb ], [ %i.be, %bb.b ] ; 3 uses
  %i.dbk = phi ptr [ %i.czq, %bb.gb ], [ %i.bd, %bb.b ] ; 3 uses
  %i.dbl = phi ptr [ %i.czr, %bb.gb ], [ %i.bc, %bb.b ] ; 3 uses
  %i.dbm = phi ptr [ %i.czs, %bb.gb ], [ %i.bb, %bb.b ] ; 3 uses
  %i.dbn = phi ptr [ %i.czt, %bb.gb ], [ %i.ba, %bb.b ] ; 3 uses
  %i.dbo = phi ptr [ %i.czu, %bb.gb ], [ %i.az, %bb.b ] ; 3 uses
  %i.dbp = phi ptr [ %i.czv, %bb.gb ], [ %i.ay, %bb.b ] ; 3 uses
  %i.dbq = phi ptr [ %i.czw, %bb.gb ], [ %i.ax, %bb.b ] ; 3 uses
  %i.dbr = phi ptr [ %i.czx, %bb.gb ], [ %i.aw, %bb.b ] ; 3 uses
  %i.dbs = phi ptr [ %i.czy, %bb.gb ], [ %i.av, %bb.b ] ; 3 uses
  %i.dbt = phi ptr [ %i.czz, %bb.gb ], [ %i.au, %bb.b ] ; 3 uses
  %i.dbu = phi ptr [ %i.daa, %bb.gb ], [ %i.at, %bb.b ] ; 3 uses
  %i.dbv = phi ptr [ %i.dab, %bb.gb ], [ %i.as, %bb.b ] ; 3 uses
  %i.dbw = phi ptr [ %i.dac, %bb.gb ], [ %i.ar, %bb.b ] ; 3 uses
  %i.dbx = phi ptr [ %i.dad, %bb.gb ], [ %i.aq, %bb.b ] ; 3 uses
  %i.dby = phi ptr [ %i.dae, %bb.gb ], [ %i.ap, %bb.b ] ; 3 uses
  %i.dbz = phi ptr [ %i.daf, %bb.gb ], [ %i.ao, %bb.b ] ; 3 uses
  %i.dca = phi ptr [ %i.dag, %bb.gb ], [ %i.an, %bb.b ] ; 3 uses
  %i.dcb = phi ptr [ %i.dah, %bb.gb ], [ %i.am, %bb.b ] ; 3 uses
  %i.dcc = phi ptr [ %i.dai, %bb.gb ], [ %i.al, %bb.b ] ; 3 uses
  %i.dcd = phi ptr [ %i.daj, %bb.gb ], [ %i.ak, %bb.b ] ; 3 uses
  %i.dce = phi ptr [ %i.dak, %bb.gb ], [ %i.aj, %bb.b ] ; 3 uses
  %i.dcf = phi ptr [ %i.dal, %bb.gb ], [ %i.ai, %bb.b ] ; 3 uses
  %i.dcg = phi ptr [ %i.dam, %bb.gb ], [ %i.ah, %bb.b ] ; 3 uses
  %i.dch = phi i32 [ %i.dan, %bb.gb ], [ %.pre2654, %bb.b ] ; 3 uses
  %.71753 = phi ptr [ %.61752, %bb.gb ], [ %.pre2670, %bb.b ] ; 3 uses
  %.71738 = phi ptr [ %.61737, %bb.gb ], [ %.pre2668, %bb.b ] ; 3 uses
  %.71723 = phi ptr [ %.61722, %bb.gb ], [ %.pre2666, %bb.b ] ; 3 uses
  %.71708 = phi i32 [ %.61707, %bb.gb ], [ %.pre2664, %bb.b ] ; 3 uses
  %.71693 = phi i32 [ %.61692, %bb.gb ], [ %.pre2662, %bb.b ] ; 3 uses
  %.41679 = phi i32 [ %.31678, %bb.gb ], [ %.pre2660, %bb.b ] ; 3 uses
  %.41668 = phi i32 [ %.31667, %bb.gb ], [ %.pre2658, %bb.b ] ; 2 uses
  %.51657 = phi i32 [ %.61707, %bb.gb ], [ %.pre2656, %bb.b ] ; 7 uses
  %.121645 = phi i32 [ %.111644, %bb.gb ], [ %.pre2652, %bb.b ] ; 3 uses
  %.21626 = phi i32 [ %i.daq, %bb.gb ], [ %.pre2650, %bb.b ] ; 3 uses
  %.31612 = phi i32 [ %.21611, %bb.gb ], [ %.pre2648, %bb.b ] ; 3 uses
  %.51599 = phi i32 [ %.41598, %bb.gb ], [ %.pre2646, %bb.b ] ; 3 uses
  %.51587 = phi i32 [ %.41586, %bb.gb ], [ %.pre2644, %bb.b ] ; 3 uses
  %.21571 = phi i32 [ %.11570, %bb.gb ], [ %.pre2642, %bb.b ] ; 3 uses
  %.71561 = phi i32 [ %i.dbi, %bb.gb ], [ %.pre2640, %bb.b ] ; 3 uses
  %.71546 = phi i32 [ %.61545, %bb.gb ], [ %.pre2638, %bb.b ] ; 3 uses
  %.51532 = phi i32 [ %.41531, %bb.gb ], [ %.pre2636, %bb.b ] ; 3 uses
  %.141512 = phi i32 [ %.131511, %bb.gb ], [ %.pre2634, %bb.b ] ; 3 uses
  %.151491 = phi i32 [ %.141490, %bb.gb ], [ %.pre2632, %bb.b ] ; 3 uses
  %.161469 = phi i32 [ %.151468, %bb.gb ], [ %.pre2630, %bb.b ] ; 3 uses
  %.121446 = phi i32 [ %.111445, %bb.gb ], [ %.pre2628, %bb.b ] ; 3 uses
  %.201425 = phi i32 [ %.191424, %bb.gb ], [ %.pre2626, %bb.b ] ; 3 uses
  %.26 = phi i32 [ %.25, %bb.gb ], [ %.pre, %bb.b ] ; 3 uses
  store i32 38, ptr %i.c, align 8, !tbaa !45
  %i.dci = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.dcj = load i32, ptr %i.dci, align 4, !tbaa !46 ; 3 uses
  %.not18522287 = icmp slt i32 %i.dcj, %.51657
  br i1 %.not18522287, label %.lr.ph2289, label %.._crit_edge2290_crit_edge

.._crit_edge2290_crit_edge:                       ; preds = %bb.gc
  %.phi.trans.insert2792 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre2793 = load i32, ptr %.phi.trans.insert2792, align 8, !tbaa !71
  br label %._crit_edge2290

.lr.ph2289:                                       ; preds = %bb.gc
  %i.dck = load ptr, ptr %0, align 8, !tbaa !44   ; 5 uses
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.dck, i64 8 ; 2 uses
  %i.dcm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dcn = getelementptr inbounds nuw i8, ptr %i.dck, i64 12 ; 2 uses
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dck, i64 16 ; 2 uses
  %.pre2791 = load i32, ptr %i.dcl, align 8, !tbaa !73 ; 2 uses
  %i.dcp = icmp eq i32 %.pre2791, 0
  br i1 %i.dcp, label %.loopexit, label %.lr.ph3438.preheader

.lr.ph3438.preheader:                             ; preds = %.lr.ph2289
  %.promoted3874 = load ptr, ptr %i.dck, align 8, !tbaa !74
  %.promoted3875 = load i32, ptr %i.dcn, align 4, !tbaa !76
  br label %.lr.ph3438

._crit_edge2290:                                  ; preds = %bb.gf, %.._crit_edge2290_crit_edge
  %i.dcq = phi i32 [ %.pre2793, %.._crit_edge2290_crit_edge ], [ %i.dde, %bb.gf ]
  %.lcssa2028 = phi i32 [ %i.dcj, %.._crit_edge2290_crit_edge ], [ %i.ddf, %bb.gf ]
  %i.dcr = sub nsw i32 %.lcssa2028, %.51657       ; 3 uses
  %i.dcs = lshr i32 %i.dcq, %i.dcr
  %notmask1853 = shl nsw i32 -1, %.51657
  %i.dct = xor i32 %notmask1853, -1
  %i.dcu = and i32 %i.dcs, %i.dct
  store i32 %i.dcr, ptr %i.dci, align 4, !tbaa !46
  br label %bb.gg

bb.gd:                                            ; preds = %bb.gf
  %i.dcv = icmp eq i32 %i.ddh, 0
  br i1 %i.dcv, label %.loopexit, label %.lr.ph3438

.lr.ph3438:                                       ; preds = %.lr.ph3438.preheader, %bb.gd
  %i.dcw = phi i32 [ %i.ddi, %bb.gd ], [ %.promoted3875, %.lr.ph3438.preheader ]
  %i.dcx = phi ptr [ %i.ddg, %bb.gd ], [ %.promoted3874, %.lr.ph3438.preheader ] ; 2 uses
  %i.dcy = phi i32 [ %i.ddf, %bb.gd ], [ %i.dcj, %.lr.ph3438.preheader ]
  %i.dcz = phi i32 [ %i.ddh, %bb.gd ], [ %.pre2791, %.lr.ph3438.preheader ]
  %i.dda = load i32, ptr %i.dcm, align 8, !tbaa !71
  %i.ddb = shl i32 %i.dda, 8
  %i.ddc = load i8, ptr %i.dcx, align 1, !tbaa !75
  %i.ddd = zext i8 %i.ddc to i32
end_hunk_0
begin_hunk_1_@BZ2_decompress:bb.a
  %i.dul = getelementptr inbounds [2 x i8], ptr %i.duk, i64 %i.duh
  store i16 %i.dui, ptr %i.dul, align 2, !tbaa !99
  br label %bb.hb

bb.ha:                                            ; preds = %.loopexit1923
  %i.dum = zext i8 %i.dua to i32
  %i.dun = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.duo = load ptr, ptr %i.dun, align 8, !tbaa !84
  %i.dup = getelementptr inbounds [4 x i8], ptr %i.duo, i64 %i.duh
  store i32 %i.dum, ptr %i.dup, align 4, !tbaa !97
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.duq = add nsw i32 %.31597, 1                 ; 2 uses
  %i.dur = icmp eq i32 %.41558, 0
  br i1 %i.dur, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %bb.hb
  %i.dus = add nsw i32 %.41543, 1                 ; 4 uses
  %.not1847 = icmp slt i32 %i.dus, %.121510
  br i1 %.not1847, label %bb.hd, label %.loopexit

bb.hd:                                            ; preds = %bb.hc
  %i.dut = getelementptr inbounds nuw i8, ptr %0, i64 7884
  %i.duu = sext i32 %i.dus to i64
  %i.duv = getelementptr inbounds i8, ptr %i.dut, i64 %i.duu
  %i.duw = load i8, ptr %i.duv, align 1, !tbaa !75 ; 2 uses
  %i.dux = zext i8 %i.duw to i32
  %i.duy = getelementptr inbounds nuw i8, ptr %0, i64 64012
  %i.duz = zext i8 %i.duw to i64                  ; 4 uses
  %i.dva = getelementptr inbounds nuw [4 x i8], ptr %i.duy, i64 %i.duz
  %i.dvb = load i32, ptr %i.dva, align 4, !tbaa !97
  %i.dvc = getelementptr inbounds nuw i8, ptr %0, i64 45436
  %i.dvd = getelementptr inbounds nuw [1032 x i8], ptr %i.dvc, i64 %i.duz
  %i.dve = getelementptr inbounds nuw i8, ptr %0, i64 57820
  %i.dvf = getelementptr inbounds nuw [1032 x i8], ptr %i.dve, i64 %i.duz
  %i.dvg = getelementptr inbounds nuw i8, ptr %0, i64 51628
  %i.dvh = getelementptr inbounds nuw [1032 x i8], ptr %i.dvg, i64 %i.duz
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hb
  %.101756 = phi ptr [ %i.dvf, %bb.hd ], [ %.41750, %bb.hb ]
  %.101741 = phi ptr [ %i.dvh, %bb.hd ], [ %.41735, %bb.hb ]
  %.101726 = phi ptr [ %i.dvd, %bb.hd ], [ %.41720, %bb.hb ]
  %.101711 = phi i32 [ %i.dvb, %bb.hd ], [ %.41705, %bb.hb ] ; 2 uses
  %.101696 = phi i32 [ %i.dux, %bb.hd ], [ %.41690, %bb.hb ]
  %.101564 = phi i32 [ 50, %bb.hd ], [ %.41558, %bb.hb ]
  %.101549 = phi i32 [ %i.dus, %bb.hd ], [ %.41543, %bb.hb ]
  %i.dvi = add nsw i32 %.101564, -1
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.b
  %i.dvj = phi ptr [ %1, %bb.he ], [ %i.be, %bb.b ] ; 3 uses
  %i.dvk = phi ptr [ %2, %bb.he ], [ %i.bd, %bb.b ] ; 3 uses
  %i.dvl = phi ptr [ %3, %bb.he ], [ %i.bc, %bb.b ] ; 3 uses
  %i.dvm = phi ptr [ %4, %bb.he ], [ %i.bb, %bb.b ] ; 3 uses
  %i.dvn = phi ptr [ %5, %bb.he ], [ %i.ba, %bb.b ] ; 3 uses
  %i.dvo = phi ptr [ %6, %bb.he ], [ %i.az, %bb.b ] ; 3 uses
  %i.dvp = phi ptr [ %7, %bb.he ], [ %i.ay, %bb.b ] ; 3 uses
  %i.dvq = phi ptr [ %8, %bb.he ], [ %i.ax, %bb.b ] ; 3 uses
  %i.dvr = phi ptr [ %9, %bb.he ], [ %i.aw, %bb.b ] ; 3 uses
  %i.dvs = phi ptr [ %10, %bb.he ], [ %i.av, %bb.b ] ; 3 uses
  %i.dvt = phi ptr [ %11, %bb.he ], [ %i.au, %bb.b ] ; 3 uses
  %i.dvu = phi ptr [ %12, %bb.he ], [ %i.at, %bb.b ] ; 3 uses
  %i.dvv = phi ptr [ %13, %bb.he ], [ %i.as, %bb.b ] ; 3 uses
  %i.dvw = phi ptr [ %14, %bb.he ], [ %i.ar, %bb.b ] ; 3 uses
  %i.dvx = phi ptr [ %15, %bb.he ], [ %i.aq, %bb.b ] ; 3 uses
  %i.dvy = phi ptr [ %16, %bb.he ], [ %i.ap, %bb.b ] ; 3 uses
  %i.dvz = phi ptr [ %17, %bb.he ], [ %i.ao, %bb.b ] ; 3 uses
  %i.dwa = phi ptr [ %18, %bb.he ], [ %i.an, %bb.b ] ; 3 uses
  %i.dwb = phi ptr [ %19, %bb.he ], [ %i.am, %bb.b ] ; 3 uses
  %i.dwc = phi ptr [ %20, %bb.he ], [ %i.al, %bb.b ] ; 3 uses
  %i.dwd = phi ptr [ %21, %bb.he ], [ %i.ak, %bb.b ] ; 3 uses
  %i.dwe = phi ptr [ %22, %bb.he ], [ %i.aj, %bb.b ] ; 3 uses
  %i.dwf = phi ptr [ %23, %bb.he ], [ %i.ai, %bb.b ] ; 3 uses
  %i.dwg = phi ptr [ %24, %bb.he ], [ %i.ah, %bb.b ] ; 3 uses
  %i.dwh = phi i32 [ %25, %bb.he ], [ %.pre2654, %bb.b ] ; 3 uses
  %.111757 = phi ptr [ %.101756, %bb.he ], [ %.pre2670, %bb.b ] ; 3 uses
  %.111742 = phi ptr [ %.101741, %bb.he ], [ %.pre2668, %bb.b ] ; 3 uses
  %.111727 = phi ptr [ %.101726, %bb.he ], [ %.pre2666, %bb.b ] ; 3 uses
  %.111712 = phi i32 [ %.101711, %bb.he ], [ %.pre2664, %bb.b ] ; 3 uses
  %.111697 = phi i32 [ %.101696, %bb.he ], [ %.pre2662, %bb.b ] ; 3 uses
  %.71682 = phi i32 [ %.21677, %bb.he ], [ %.pre2660, %bb.b ] ; 3 uses
  %.71671 = phi i32 [ %.21666, %bb.he ], [ %.pre2658, %bb.b ] ; 2 uses
  %.81660 = phi i32 [ %.101711, %bb.he ], [ %.pre2656, %bb.b ] ; 7 uses
  %.151648 = phi i32 [ %.101643, %bb.he ], [ %.pre2652, %bb.b ] ; 3 uses
  %.51629 = phi i32 [ %.01624, %bb.he ], [ %.pre2650, %bb.b ] ; 3 uses
  %.91618 = phi i32 [ %.01609, %bb.he ], [ %.pre2648, %bb.b ] ; 3 uses
  %.111605 = phi i32 [ %i.duq, %bb.he ], [ %.pre2646, %bb.b ] ; 3 uses
  %.81590 = phi i32 [ %.31585, %bb.he ], [ %.pre2644, %bb.b ] ; 3 uses
  %.51574 = phi i32 [ %.01569, %bb.he ], [ %.pre2642, %bb.b ] ; 3 uses
  %.111565 = phi i32 [ %i.dvi, %bb.he ], [ %.pre2640, %bb.b ] ; 3 uses
  %.111550 = phi i32 [ %.101549, %bb.he ], [ %.pre2638, %bb.b ] ; 3 uses
  %.81535 = phi i32 [ %.31530, %bb.he ], [ %.pre2636, %bb.b ] ; 3 uses
  %.171515 = phi i32 [ %.121510, %bb.he ], [ %.pre2634, %bb.b ] ; 3 uses
  %.181494 = phi i32 [ %.131489, %bb.he ], [ %.pre2632, %bb.b ] ; 3 uses
  %.191472 = phi i32 [ %.141467, %bb.he ], [ %.pre2630, %bb.b ] ; 3 uses
  %.151449 = phi i32 [ %.101444, %bb.he ], [ %.pre2628, %bb.b ] ; 3 uses
  %.231428 = phi i32 [ %.181423, %bb.he ], [ %.pre2626, %bb.b ] ; 3 uses
  %.29 = phi i32 [ %.24, %bb.he ], [ %.pre, %bb.b ] ; 3 uses
  store i32 40, ptr %i.c, align 8, !tbaa !45
  %i.dwi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.dwj = load i32, ptr %i.dwi, align 4, !tbaa !46 ; 3 uses
  %.not18482276 = icmp slt i32 %i.dwj, %.81660
  br i1 %.not18482276, label %.lr.ph2278, label %.._crit_edge2279_crit_edge

.._crit_edge2279_crit_edge:                       ; preds = %bb.hf
  %.phi.trans.insert2783 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre2784 = load i32, ptr %.phi.trans.insert2783, align 8, !tbaa !71
  br label %._crit_edge2279

.lr.ph2278:                                       ; preds = %bb.hf
  %i.dwk = load ptr, ptr %0, align 8, !tbaa !44   ; 5 uses
  %i.dwl = getelementptr inbounds nuw i8, ptr %i.dwk, i64 8 ; 2 uses
  %i.dwm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dwn = getelementptr inbounds nuw i8, ptr %i.dwk, i64 12 ; 2 uses
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwk, i64 16 ; 2 uses
  %.pre2782 = load i32, ptr %i.dwl, align 8, !tbaa !73 ; 2 uses
  %i.dwp = icmp eq i32 %.pre2782, 0
  br i1 %i.dwp, label %.loopexit, label %.lr.ph3437.preheader

.lr.ph3437.preheader:                             ; preds = %.lr.ph2278
  %.promoted3872 = load ptr, ptr %i.dwk, align 8, !tbaa !74
  %.promoted3873 = load i32, ptr %i.dwn, align 4, !tbaa !76
  br label %.lr.ph3437

._crit_edge2279:                                  ; preds = %bb.hi, %.._crit_edge2279_crit_edge
  %i.dwq = phi i32 [ %.pre2784, %.._crit_edge2279_crit_edge ], [ %i.dxe, %bb.hi ]
  %.lcssa2036 = phi i32 [ %i.dwj, %.._crit_edge2279_crit_edge ], [ %i.dxf, %bb.hi ]
  %i.dwr = sub nsw i32 %.lcssa2036, %.81660       ; 3 uses
  %i.dws = lshr i32 %i.dwq, %i.dwr
  %notmask1849 = shl nsw i32 -1, %.81660
  %i.dwt = xor i32 %notmask1849, -1
  %i.dwu = and i32 %i.dws, %i.dwt
  store i32 %i.dwr, ptr %i.dwi, align 4, !tbaa !46
  br label %bb.hj

bb.hg:                                            ; preds = %bb.hi
  %i.dwv = icmp eq i32 %i.dxh, 0
  br i1 %i.dwv, label %.loopexit, label %.lr.ph3437

.lr.ph3437:                                       ; preds = %.lr.ph3437.preheader, %bb.hg
  %i.dww = phi i32 [ %i.dxi, %bb.hg ], [ %.promoted3873, %.lr.ph3437.preheader ]
  %i.dwx = phi ptr [ %i.dxg, %bb.hg ], [ %.promoted3872, %.lr.ph3437.preheader ] ; 2 uses
  %i.dwy = phi i32 [ %i.dxf, %bb.hg ], [ %i.dwj, %.lr.ph3437.preheader ]
  %i.dwz = phi i32 [ %i.dxh, %bb.hg ], [ %.pre2782, %.lr.ph3437.preheader ]
  %i.dxa = load i32, ptr %i.dwm, align 8, !tbaa !71
  %i.dxb = shl i32 %i.dxa, 8
  %i.dxc = load i8, ptr %i.dwx, align 1, !tbaa !75
  %i.dxd = zext i8 %i.dxc to i32
  %i.dxe = or disjoint i32 %i.dxb, %i.dxd         ; 2 uses
  store i32 %i.dxe, ptr %i.dwm, align 8, !tbaa !71
  %i.dxf = add nsw i32 %i.dwy, 8                  ; 4 uses
  store i32 %i.dxf, ptr %i.dwi, align 4, !tbaa !46
  %i.dxg = getelementptr inbounds nuw i8, ptr %i.dwx, i64 1 ; 2 uses
  store ptr %i.dxg, ptr %i.dwk, align 8, !tbaa !74
  %i.dxh = add i32 %i.dwz, -1                     ; 3 uses
  store i32 %i.dxh, ptr %i.dwl, align 8, !tbaa !73
  %i.dxi = add i32 %i.dww, 1                      ; 3 uses
  store i32 %i.dxi, ptr %i.dwn, align 4, !tbaa !76
  %i.dxj = icmp eq i32 %i.dxi, 0
  br i1 %i.dxj, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %.lr.ph3437
  %i.dxk = load i32, ptr %i.dwo, align 8, !tbaa !77
  %i.dxl = add i32 %i.dxk, 1
  store i32 %i.dxl, ptr %i.dwo, align 8, !tbaa !77
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %.lr.ph3437
  %.not1848 = icmp slt i32 %i.dxf, %.81660
  br i1 %.not1848, label %bb.hg, label %._crit_edge2279

bb.hj:                                            ; preds = %._crit_edge2284, %._crit_edge2279
  %i.dxm = phi ptr [ %i.dvj, %._crit_edge2279 ], [ %i.dyr, %._crit_edge2284 ] ; 4 uses
  %i.dxn = phi ptr [ %i.dvk, %._crit_edge2279 ], [ %i.dys, %._crit_edge2284 ] ; 4 uses
  %i.dxo = phi ptr [ %i.dvl, %._crit_edge2279 ], [ %i.dyt, %._crit_edge2284 ] ; 4 uses
  %i.dxp = phi ptr [ %i.dvm, %._crit_edge2279 ], [ %i.dyu, %._crit_edge2284 ] ; 4 uses
  %i.dxq = phi ptr [ %i.dvn, %._crit_edge2279 ], [ %i.dyv, %._crit_edge2284 ] ; 4 uses
  %i.dxr = phi ptr [ %i.dvo, %._crit_edge2279 ], [ %i.dyw, %._crit_edge2284 ] ; 4 uses
  %i.dxs = phi ptr [ %i.dvp, %._crit_edge2279 ], [ %i.dyx, %._crit_edge2284 ] ; 4 uses
  %i.dxt = phi ptr [ %i.dvq, %._crit_edge2279 ], [ %i.dyy, %._crit_edge2284 ] ; 4 uses
  %i.dxu = phi ptr [ %i.dvr, %._crit_edge2279 ], [ %i.dyz, %._crit_edge2284 ] ; 4 uses
  %i.dxv = phi ptr [ %i.dvs, %._crit_edge2279 ], [ %i.dza, %._crit_edge2284 ] ; 4 uses
  %i.dxw = phi ptr [ %i.dvt, %._crit_edge2279 ], [ %i.dzb, %._crit_edge2284 ] ; 4 uses
  %i.dxx = phi ptr [ %i.dvu, %._crit_edge2279 ], [ %i.dzc, %._crit_edge2284 ] ; 4 uses
  %i.dxy = phi ptr [ %i.dvv, %._crit_edge2279 ], [ %i.dzd, %._crit_edge2284 ] ; 4 uses
  %i.dxz = phi ptr [ %i.dvw, %._crit_edge2279 ], [ %i.dze, %._crit_edge2284 ] ; 4 uses
  %i.dya = phi ptr [ %i.dvx, %._crit_edge2279 ], [ %i.dzf, %._crit_edge2284 ] ; 4 uses
  %i.dyb = phi ptr [ %i.dvy, %._crit_edge2279 ], [ %i.dzg, %._crit_edge2284 ] ; 4 uses
  %i.dyc = phi ptr [ %i.dvz, %._crit_edge2279 ], [ %i.dzh, %._crit_edge2284 ] ; 4 uses
  %i.dyd = phi ptr [ %i.dwa, %._crit_edge2279 ], [ %i.dzi, %._crit_edge2284 ] ; 4 uses
  %i.dye = phi ptr [ %i.dwb, %._crit_edge2279 ], [ %i.dzj, %._crit_edge2284 ] ; 4 uses
  %i.dyf = phi ptr [ %i.dwc, %._crit_edge2279 ], [ %i.dzk, %._crit_edge2284 ] ; 4 uses
  %i.dyg = phi ptr [ %i.dwd, %._crit_edge2279 ], [ %i.dzl, %._crit_edge2284 ] ; 4 uses
  %i.dyh = phi ptr [ %i.dwe, %._crit_edge2279 ], [ %i.dzm, %._crit_edge2284 ] ; 4 uses
  %i.dyi = phi ptr [ %i.dwf, %._crit_edge2279 ], [ %i.dzn, %._crit_edge2284 ] ; 4 uses
  %i.dyj = phi ptr [ %i.dwg, %._crit_edge2279 ], [ %i.dzo, %._crit_edge2284 ] ; 4 uses
  %i.dyk = phi i32 [ %i.dwh, %._crit_edge2279 ], [ %i.dzp, %._crit_edge2284 ] ; 4 uses
  %i.dyl = phi i32 [ %i.dwr, %._crit_edge2279 ], [ %i.dzz, %._crit_edge2284 ]
  %.121758 = phi ptr [ %.111757, %._crit_edge2279 ], [ %.131759, %._crit_edge2284 ] ; 5 uses
  %.121743 = phi ptr [ %.111742, %._crit_edge2279 ], [ %.131744, %._crit_edge2284 ] ; 5 uses
  %.121728 = phi ptr [ %.111727, %._crit_edge2279 ], [ %.131729, %._crit_edge2284 ] ; 5 uses
  %.121713 = phi i32 [ %.111712, %._crit_edge2279 ], [ %.131714, %._crit_edge2284 ] ; 4 uses
  %.121698 = phi i32 [ %.111697, %._crit_edge2279 ], [ %.131699, %._crit_edge2284 ] ; 4 uses
  %.81683 = phi i32 [ %.71682, %._crit_edge2279 ], [ %i.eab, %._crit_edge2284 ] ; 4 uses
  %.81672 = phi i32 [ %i.dwu, %._crit_edge2279 ], [ %i.ead, %._crit_edge2284 ] ; 6 uses
  %.91661 = phi i32 [ %.81660, %._crit_edge2279 ], [ %.101662, %._crit_edge2284 ] ; 6 uses
  %.161649 = phi i32 [ %.151648, %._crit_edge2279 ], [ %.171650, %._crit_edge2284 ] ; 4 uses
  %.61630 = phi i32 [ %.51629, %._crit_edge2279 ], [ %.71631, %._crit_edge2284 ] ; 4 uses
  %.101619 = phi i32 [ %.91618, %._crit_edge2279 ], [ %.111620, %._crit_edge2284 ] ; 4 uses
  %.121606 = phi i32 [ %.111605, %._crit_edge2279 ], [ %.131607, %._crit_edge2284 ] ; 4 uses
  %.91591 = phi i32 [ %.81590, %._crit_edge2279 ], [ %.101592, %._crit_edge2284 ] ; 4 uses
  %.61575 = phi i32 [ %.51574, %._crit_edge2279 ], [ %.71576, %._crit_edge2284 ] ; 3 uses
  %.121566 = phi i32 [ %.111565, %._crit_edge2279 ], [ %.131567, %._crit_edge2284 ] ; 4 uses
  %.121551 = phi i32 [ %.111550, %._crit_edge2279 ], [ %.131552, %._crit_edge2284 ] ; 4 uses
  %.91536 = phi i32 [ %.81535, %._crit_edge2279 ], [ %.101537, %._crit_edge2284 ] ; 4 uses
  %.181516 = phi i32 [ %.171515, %._crit_edge2279 ], [ %.191517, %._crit_edge2284 ] ; 4 uses
  %.191495 = phi i32 [ %.181494, %._crit_edge2279 ], [ %.201496, %._crit_edge2284 ] ; 4 uses
  %.201473 = phi i32 [ %.191472, %._crit_edge2279 ], [ %.211474, %._crit_edge2284 ] ; 4 uses
  %.161450 = phi i32 [ %.151449, %._crit_edge2279 ], [ %.171451, %._crit_edge2284 ] ; 4 uses
  %.241429 = phi i32 [ %.231428, %._crit_edge2279 ], [ %.251430, %._crit_edge2284 ] ; 4 uses
  %.30 = phi i32 [ %.29, %._crit_edge2279 ], [ %.31, %._crit_edge2284 ] ; 4 uses
  %i.dym = icmp sgt i32 %.91661, 20
  br i1 %i.dym, label %.loopexit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.dyn = sext i32 %.91661 to i64                ; 2 uses
  %i.dyo = getelementptr inbounds [4 x i8], ptr %.121728, i64 %i.dyn
  %i.dyp = load i32, ptr %i.dyo, align 4, !tbaa !97
  %.not1850 = icmp sgt i32 %.81672, %i.dyp
  br i1 %.not1850, label %bb.hl, label %bb.hr

bb.hl:                                            ; preds = %bb.hk
  %i.dyq = add nsw i32 %.91661, 1
  br label %bb.hm

bb.hm:                                            ; preds = %._crit_edge2785, %bb.hl
  %i.dyr = phi ptr [ %i.dxm, %bb.hl ], [ %i.be, %._crit_edge2785 ] ; 2 uses
  %i.dys = phi ptr [ %i.dxn, %bb.hl ], [ %i.bd, %._crit_edge2785 ] ; 2 uses
  %i.dyt = phi ptr [ %i.dxo, %bb.hl ], [ %i.bc, %._crit_edge2785 ] ; 2 uses
  %i.dyu = phi ptr [ %i.dxp, %bb.hl ], [ %i.bb, %._crit_edge2785 ] ; 2 uses
  %i.dyv = phi ptr [ %i.dxq, %bb.hl ], [ %i.ba, %._crit_edge2785 ] ; 2 uses
  %i.dyw = phi ptr [ %i.dxr, %bb.hl ], [ %i.az, %._crit_edge2785 ] ; 2 uses
  %i.dyx = phi ptr [ %i.dxs, %bb.hl ], [ %i.ay, %._crit_edge2785 ] ; 2 uses
  %i.dyy = phi ptr [ %i.dxt, %bb.hl ], [ %i.ax, %._crit_edge2785 ] ; 2 uses
  %i.dyz = phi ptr [ %i.dxu, %bb.hl ], [ %i.aw, %._crit_edge2785 ] ; 2 uses
  %i.dza = phi ptr [ %i.dxv, %bb.hl ], [ %i.av, %._crit_edge2785 ] ; 2 uses
  %i.dzb = phi ptr [ %i.dxw, %bb.hl ], [ %i.au, %._crit_edge2785 ] ; 2 uses
  %i.dzc = phi ptr [ %i.dxx, %bb.hl ], [ %i.at, %._crit_edge2785 ] ; 2 uses
  %i.dzd = phi ptr [ %i.dxy, %bb.hl ], [ %i.as, %._crit_edge2785 ] ; 2 uses
  %i.dze = phi ptr [ %i.dxz, %bb.hl ], [ %i.ar, %._crit_edge2785 ] ; 2 uses
  %i.dzf = phi ptr [ %i.dya, %bb.hl ], [ %i.aq, %._crit_edge2785 ] ; 2 uses
  %i.dzg = phi ptr [ %i.dyb, %bb.hl ], [ %i.ap, %._crit_edge2785 ] ; 2 uses
  %i.dzh = phi ptr [ %i.dyc, %bb.hl ], [ %i.ao, %._crit_edge2785 ] ; 2 uses
  %i.dzi = phi ptr [ %i.dyd, %bb.hl ], [ %i.an, %._crit_edge2785 ] ; 2 uses
  %i.dzj = phi ptr [ %i.dye, %bb.hl ], [ %i.am, %._crit_edge2785 ] ; 2 uses
  %i.dzk = phi ptr [ %i.dyf, %bb.hl ], [ %i.al, %._crit_edge2785 ] ; 2 uses
  %i.dzl = phi ptr [ %i.dyg, %bb.hl ], [ %i.ak, %._crit_edge2785 ] ; 2 uses
  %i.dzm = phi ptr [ %i.dyh, %bb.hl ], [ %i.aj, %._crit_edge2785 ] ; 2 uses
  %i.dzn = phi ptr [ %i.dyi, %bb.hl ], [ %i.ai, %._crit_edge2785 ] ; 2 uses
  %i.dzo = phi ptr [ %i.dyj, %bb.hl ], [ %i.ah, %._crit_edge2785 ] ; 2 uses
  %i.dzp = phi i32 [ %i.dyk, %bb.hl ], [ %.pre2654, %._crit_edge2785 ] ; 2 uses
  %i.dzq = phi i32 [ %i.dyl, %bb.hl ], [ %.pre2787, %._crit_edge2785 ] ; 3 uses
  %.131759 = phi ptr [ %.121758, %bb.hl ], [ %.pre2670, %._crit_edge2785 ] ; 2 uses
  %.131744 = phi ptr [ %.121743, %bb.hl ], [ %.pre2668, %._crit_edge2785 ] ; 2 uses
  %.131729 = phi ptr [ %.121728, %bb.hl ], [ %.pre2666, %._crit_edge2785 ] ; 2 uses
  %.131714 = phi i32 [ %.121713, %bb.hl ], [ %.pre2664, %._crit_edge2785 ] ; 2 uses
  %.131699 = phi i32 [ %.121698, %bb.hl ], [ %.pre2662, %._crit_edge2785 ] ; 2 uses
  %.91684 = phi i32 [ %.81683, %bb.hl ], [ %.pre2660, %._crit_edge2785 ]
  %.91673 = phi i32 [ %.81672, %bb.hl ], [ %.pre2658, %._crit_edge2785 ] ; 2 uses
  %.101662 = phi i32 [ %i.dyq, %bb.hl ], [ %.pre2656, %._crit_edge2785 ] ; 2 uses
  %.171650 = phi i32 [ %.161649, %bb.hl ], [ %.pre2652, %._crit_edge2785 ] ; 2 uses
  %.71631 = phi i32 [ %.61630, %bb.hl ], [ %.pre2650, %._crit_edge2785 ] ; 2 uses
  %.111620 = phi i32 [ %.101619, %bb.hl ], [ %.pre2648, %._crit_edge2785 ] ; 2 uses
  %.131607 = phi i32 [ %.121606, %bb.hl ], [ %.pre2646, %._crit_edge2785 ] ; 2 uses
  %.101592 = phi i32 [ %.91591, %bb.hl ], [ %.pre2644, %._crit_edge2785 ] ; 2 uses
  %.71576 = phi i32 [ %.61575, %bb.hl ], [ %.pre2642, %._crit_edge2785 ] ; 2 uses
  %.131567 = phi i32 [ %.121566, %bb.hl ], [ %.pre2640, %._crit_edge2785 ] ; 2 uses
  %.131552 = phi i32 [ %.121551, %bb.hl ], [ %.pre2638, %._crit_edge2785 ] ; 2 uses
  %.101537 = phi i32 [ %.91536, %bb.hl ], [ %.pre2636, %._crit_edge2785 ] ; 2 uses
  %.191517 = phi i32 [ %.181516, %bb.hl ], [ %.pre2634, %._crit_edge2785 ] ; 2 uses
  %.201496 = phi i32 [ %.191495, %bb.hl ], [ %.pre2632, %._crit_edge2785 ] ; 2 uses
  %.211474 = phi i32 [ %.201473, %bb.hl ], [ %.pre2630, %._crit_edge2785 ] ; 2 uses
  %.171451 = phi i32 [ %.161450, %bb.hl ], [ %.pre2628, %._crit_edge2785 ] ; 2 uses
  %.251430 = phi i32 [ %.241429, %bb.hl ], [ %.pre2626, %._crit_edge2785 ] ; 2 uses
  %.31 = phi i32 [ %.30, %bb.hl ], [ %.pre, %._crit_edge2785 ] ; 2 uses
  store i32 41, ptr %i.c, align 8, !tbaa !45
  %i.dzr = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dzs = icmp sgt i32 %i.dzq, 0
  br i1 %i.dzs, label %.._crit_edge2284_crit_edge, label %.lr.ph2283

.._crit_edge2284_crit_edge:                       ; preds = %bb.hm
  %.phi.trans.insert2789 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre2790 = load i32, ptr %.phi.trans.insert2789, align 8, !tbaa !71
  br label %._crit_edge2284

.lr.ph2283:                                       ; preds = %bb.hm
  %i.dzt = load ptr, ptr %0, align 8, !tbaa !44   ; 5 uses
  %i.dzu = getelementptr inbounds nuw i8, ptr %i.dzt, i64 8 ; 2 uses
  %i.dzv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dzw = getelementptr inbounds nuw i8, ptr %i.dzt, i64 12 ; 2 uses
  %i.dzx = getelementptr inbounds nuw i8, ptr %i.dzt, i64 16 ; 2 uses
  %.pre2788 = load i32, ptr %i.dzu, align 8, !tbaa !73
  br label %bb.hn

._crit_edge2284:                                  ; preds = %bb.hq, %.._crit_edge2284_crit_edge
  %i.dzy = phi i32 [ %.pre2790, %.._crit_edge2284_crit_edge ], [ %i.eam, %bb.hq ]
  %.lcssa2032 = phi i32 [ %i.dzq, %.._crit_edge2284_crit_edge ], [ %i.ean, %bb.hq ]
  %i.dzz = add nsw i32 %.lcssa2032, -1            ; 3 uses
  %i.eaa = lshr i32 %i.dzy, %i.dzz
  %i.eab = and i32 %i.eaa, 1                      ; 2 uses
  store i32 %i.dzz, ptr %i.dzr, align 4, !tbaa !46
  %i.eac = shl i32 %.91673, 1
  %i.ead = or disjoint i32 %i.eab, %i.eac
  br label %bb.hj

bb.hn:                                            ; preds = %.lr.ph2283, %bb.hq
  %i.eae = phi i32 [ %.pre2788, %.lr.ph2283 ], [ %i.eap, %bb.hq ] ; 2 uses
  %i.eaf = phi i32 [ %i.dzq, %.lr.ph2283 ], [ %i.ean, %bb.hq ] ; 2 uses
  %i.eag = icmp eq i32 %i.eae, 0
  br i1 %i.eag, label %.loopexit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.eah = load i32, ptr %i.dzv, align 8, !tbaa !71
  %i.eai = shl i32 %i.eah, 8
  %i.eaj = load ptr, ptr %i.dzt, align 8, !tbaa !74 ; 2 uses
  %i.eak = load i8, ptr %i.eaj, align 1, !tbaa !75
  %i.eal = zext i8 %i.eak to i32
  %i.eam = or disjoint i32 %i.eai, %i.eal         ; 2 uses
  store i32 %i.eam, ptr %i.dzv, align 8, !tbaa !71
  %i.ean = add nsw i32 %i.eaf, 8                  ; 3 uses
  store i32 %i.ean, ptr %i.dzr, align 4, !tbaa !46
  %i.eao = getelementptr inbounds nuw i8, ptr %i.eaj, i64 1
  store ptr %i.eao, ptr %i.dzt, align 8, !tbaa !74
  %i.eap = add i32 %i.eae, -1                     ; 2 uses
  store i32 %i.eap, ptr %i.dzu, align 8, !tbaa !73
  %i.eaq = load i32, ptr %i.dzw, align 4, !tbaa !76
  %i.ear = add i32 %i.eaq, 1                      ; 2 uses
  store i32 %i.ear, ptr %i.dzw, align 4, !tbaa !76
  %i.eas = icmp eq i32 %i.ear, 0
  br i1 %i.eas, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.eat = load i32, ptr %i.dzx, align 8, !tbaa !77
  %i.eau = add i32 %i.eat, 1
  store i32 %i.eau, ptr %i.dzx, align 8, !tbaa !77
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.eav = icmp sgt i32 %i.eaf, -8
  br i1 %i.eav, label %._crit_edge2284, label %bb.hn

bb.hr:                                            ; preds = %bb.hk
  %i.eaw = getelementptr inbounds [4 x i8], ptr %.121743, i64 %i.dyn
  %i.eax = load i32, ptr %i.eaw, align 4, !tbaa !97
  %i.eay = sub nsw i32 %.81672, %i.eax            ; 2 uses
  %or.cond1880 = icmp ugt i32 %i.eay, 257
  br i1 %or.cond1880, label %.loopexit, label %26

26:                                               ; preds = %bb.hr
  %27 = zext nneg i32 %i.eay to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %.121758, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !97
  br label %.loopexit1912

bb.hs:                                            ; preds = %.loopexit1912
  %i.eaz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.eba = load i32, ptr %i.eaz, align 8, !tbaa !91 ; 2 uses
  %i.ebb = icmp sgt i32 %i.eba, -1
  %.not1858 = icmp slt i32 %i.eba, %.31597
  %or.cond1881 = select i1 %i.ebb, i1 %.not1858, i1 false
  br i1 %or.cond1881, label %.preheader1908, label %.loopexit

.preheader1908:                                   ; preds = %bb.hs
  %i.ebc = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hx, %.preheader1908
  %indvars.iv2581 = phi i64 [ 0, %.preheader1908 ], [ %indvars.iv.next2582.3, %bb.hx ] ; 6 uses
  %i.ebd = getelementptr inbounds nuw [4 x i8], ptr %i.ebc, i64 %indvars.iv2581
  %i.ebe = load i32, ptr %i.ebd, align 4, !tbaa !97 ; 2 uses
  %i.ebf = icmp slt i32 %i.ebe, 0
  %i.ebg = icmp sgt i32 %i.ebe, %.31597
  %or.cond1882 = select i1 %i.ebf, i1 true, i1 %i.ebg
  br i1 %or.cond1882, label %.loopexit.loopexit2420, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %indvars.iv.next2582 = or disjoint i64 %indvars.iv2581, 1 ; 2 uses
  %i.ebh = getelementptr inbounds nuw [4 x i8], ptr %i.ebc, i64 %indvars.iv.next2582
  %i.ebi = load i32, ptr %i.ebh, align 4, !tbaa !97 ; 2 uses
  %i.ebj = icmp slt i32 %i.ebi, 0
  %i.ebk = icmp sgt i32 %i.ebi, %.31597
  %or.cond1882.1 = select i1 %i.ebj, i1 true, i1 %i.ebk
  br i1 %or.cond1882.1, label %.loopexit.loopexit2420, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %indvars.iv.next2582.1 = or disjoint i64 %indvars.iv2581, 2 ; 2 uses
  %i.ebl = getelementptr inbounds nuw [4 x i8], ptr %i.ebc, i64 %indvars.iv.next2582.1
  %i.ebm = load i32, ptr %i.ebl, align 4, !tbaa !97 ; 2 uses
  %i.ebn = icmp slt i32 %i.ebm, 0
  %i.ebo = icmp sgt i32 %i.ebm, %.31597
  %or.cond1882.2 = select i1 %i.ebn, i1 true, i1 %i.ebo
  br i1 %or.cond1882.2, label %.loopexit.loopexit2420, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %indvars.iv.next2582.2 = or disjoint i64 %indvars.iv2581, 3 ; 2 uses
  %i.ebp = getelementptr inbounds nuw [4 x i8], ptr %i.ebc, i64 %indvars.iv.next2582.2
  %i.ebq = load i32, ptr %i.ebp, align 4, !tbaa !97 ; 2 uses
  %i.ebr = icmp slt i32 %i.ebq, 0
  %i.ebs = icmp sgt i32 %i.ebq, %.31597
  %or.cond1882.3 = select i1 %i.ebr, i1 true, i1 %i.ebs
  br i1 %or.cond1882.3, label %.loopexit.loopexit2420, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %indvars.iv.next2582.3 = add nuw nsw i64 %indvars.iv2581, 4 ; 2 uses
  %exitcond2585.not.3 = icmp eq i64 %indvars.iv.next2582.3, 256
  br i1 %exitcond2585.not.3, label %vector.ph3489, label %bb.ht, !llvm.loop !33

vector.ph3489:                                    ; preds = %bb.hx
  %i.ebt = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 20 uses
  store i32 0, ptr %i.ebt, align 8, !tbaa !97
  %i.ebu = getelementptr i8, ptr %0, i64 68
  %i.ebv = getelementptr i8, ptr %0, i64 84
  %wide.load3492 = load <4 x i32>, ptr %i.ebu, align 4, !tbaa !97
  %wide.load3493 = load <4 x i32>, ptr %i.ebv, align 4, !tbaa !97
  %i.ebw = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.ebx = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store <4 x i32> %wide.load3492, ptr %i.ebw, align 4, !tbaa !97
  store <4 x i32> %wide.load3493, ptr %i.ebx, align 4, !tbaa !97
  %i.eby = getelementptr i8, ptr %0, i64 100
  %i.ebz = getelementptr i8, ptr %0, i64 116
  %wide.load3492.1 = load <4 x i32>, ptr %i.eby, align 4, !tbaa !97
  %wide.load3493.1 = load <4 x i32>, ptr %i.ebz, align 4, !tbaa !97
  %i.eca = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.ecb = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store <4 x i32> %wide.load3492.1, ptr %i.eca, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.1, ptr %i.ecb, align 4, !tbaa !97
  %i.ecc = getelementptr i8, ptr %0, i64 132
  %i.ecd = getelementptr i8, ptr %0, i64 148
  %wide.load3492.2 = load <4 x i32>, ptr %i.ecc, align 4, !tbaa !97
  %wide.load3493.2 = load <4 x i32>, ptr %i.ecd, align 4, !tbaa !97
  %i.ece = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.ecf = getelementptr inbounds nuw i8, ptr %0, i64 1180
  store <4 x i32> %wide.load3492.2, ptr %i.ece, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.2, ptr %i.ecf, align 4, !tbaa !97
  %i.ecg = getelementptr i8, ptr %0, i64 164
  %i.ech = getelementptr i8, ptr %0, i64 180
  %wide.load3492.3 = load <4 x i32>, ptr %i.ecg, align 4, !tbaa !97
  %wide.load3493.3 = load <4 x i32>, ptr %i.ech, align 4, !tbaa !97
  %i.eci = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.ecj = getelementptr inbounds nuw i8, ptr %0, i64 1212
  store <4 x i32> %wide.load3492.3, ptr %i.eci, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.3, ptr %i.ecj, align 4, !tbaa !97
  %i.eck = getelementptr i8, ptr %0, i64 196
  %i.ecl = getelementptr i8, ptr %0, i64 212
  %wide.load3492.4 = load <4 x i32>, ptr %i.eck, align 4, !tbaa !97
  %wide.load3493.4 = load <4 x i32>, ptr %i.ecl, align 4, !tbaa !97
  %i.ecm = getelementptr inbounds nuw i8, ptr %0, i64 1228
  %i.ecn = getelementptr inbounds nuw i8, ptr %0, i64 1244
  store <4 x i32> %wide.load3492.4, ptr %i.ecm, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.4, ptr %i.ecn, align 4, !tbaa !97
  %i.eco = getelementptr i8, ptr %0, i64 228
  %i.ecp = getelementptr i8, ptr %0, i64 244
  %wide.load3492.5 = load <4 x i32>, ptr %i.eco, align 4, !tbaa !97
  %wide.load3493.5 = load <4 x i32>, ptr %i.ecp, align 4, !tbaa !97
  %i.ecq = getelementptr inbounds nuw i8, ptr %0, i64 1260
  %i.ecr = getelementptr inbounds nuw i8, ptr %0, i64 1276
  store <4 x i32> %wide.load3492.5, ptr %i.ecq, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.5, ptr %i.ecr, align 4, !tbaa !97
  %i.ecs = getelementptr i8, ptr %0, i64 260
  %i.ect = getelementptr i8, ptr %0, i64 276
  %wide.load3492.6 = load <4 x i32>, ptr %i.ecs, align 4, !tbaa !97
  %wide.load3493.6 = load <4 x i32>, ptr %i.ect, align 4, !tbaa !97
  %i.ecu = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.ecv = getelementptr inbounds nuw i8, ptr %0, i64 1308
  store <4 x i32> %wide.load3492.6, ptr %i.ecu, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.6, ptr %i.ecv, align 4, !tbaa !97
  %i.ecw = getelementptr i8, ptr %0, i64 292
  %i.ecx = getelementptr i8, ptr %0, i64 308
  %wide.load3492.7 = load <4 x i32>, ptr %i.ecw, align 4, !tbaa !97
  %wide.load3493.7 = load <4 x i32>, ptr %i.ecx, align 4, !tbaa !97
  %i.ecy = getelementptr inbounds nuw i8, ptr %0, i64 1324
  %i.ecz = getelementptr inbounds nuw i8, ptr %0, i64 1340
  store <4 x i32> %wide.load3492.7, ptr %i.ecy, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.7, ptr %i.ecz, align 4, !tbaa !97
  %i.eda = getelementptr i8, ptr %0, i64 324
  %i.edb = getelementptr i8, ptr %0, i64 340
  %wide.load3492.8 = load <4 x i32>, ptr %i.eda, align 4, !tbaa !97
  %wide.load3493.8 = load <4 x i32>, ptr %i.edb, align 4, !tbaa !97
  %i.edc = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.edd = getelementptr inbounds nuw i8, ptr %0, i64 1372
  store <4 x i32> %wide.load3492.8, ptr %i.edc, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.8, ptr %i.edd, align 4, !tbaa !97
  %i.ede = getelementptr i8, ptr %0, i64 356
  %i.edf = getelementptr i8, ptr %0, i64 372
  %wide.load3492.9 = load <4 x i32>, ptr %i.ede, align 4, !tbaa !97
  %wide.load3493.9 = load <4 x i32>, ptr %i.edf, align 4, !tbaa !97
  %i.edg = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.edh = getelementptr inbounds nuw i8, ptr %0, i64 1404
  store <4 x i32> %wide.load3492.9, ptr %i.edg, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.9, ptr %i.edh, align 4, !tbaa !97
  %i.edi = getelementptr i8, ptr %0, i64 388
  %i.edj = getelementptr i8, ptr %0, i64 404
  %wide.load3492.10 = load <4 x i32>, ptr %i.edi, align 4, !tbaa !97
  %wide.load3493.10 = load <4 x i32>, ptr %i.edj, align 4, !tbaa !97
  %i.edk = getelementptr inbounds nuw i8, ptr %0, i64 1420
  %i.edl = getelementptr inbounds nuw i8, ptr %0, i64 1436
  store <4 x i32> %wide.load3492.10, ptr %i.edk, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.10, ptr %i.edl, align 4, !tbaa !97
  %i.edm = getelementptr i8, ptr %0, i64 420
  %i.edn = getelementptr i8, ptr %0, i64 436
  %wide.load3492.11 = load <4 x i32>, ptr %i.edm, align 4, !tbaa !97
  %wide.load3493.11 = load <4 x i32>, ptr %i.edn, align 4, !tbaa !97
  %i.edo = getelementptr inbounds nuw i8, ptr %0, i64 1452
  %i.edp = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store <4 x i32> %wide.load3492.11, ptr %i.edo, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.11, ptr %i.edp, align 4, !tbaa !97
  %i.edq = getelementptr i8, ptr %0, i64 452
  %i.edr = getelementptr i8, ptr %0, i64 468
  %wide.load3492.12 = load <4 x i32>, ptr %i.edq, align 4, !tbaa !97
  %wide.load3493.12 = load <4 x i32>, ptr %i.edr, align 4, !tbaa !97
  %i.eds = getelementptr inbounds nuw i8, ptr %0, i64 1484
  %i.edt = getelementptr inbounds nuw i8, ptr %0, i64 1500
  store <4 x i32> %wide.load3492.12, ptr %i.eds, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.12, ptr %i.edt, align 4, !tbaa !97
  %i.edu = getelementptr i8, ptr %0, i64 484
  %i.edv = getelementptr i8, ptr %0, i64 500
  %wide.load3492.13 = load <4 x i32>, ptr %i.edu, align 4, !tbaa !97
  %wide.load3493.13 = load <4 x i32>, ptr %i.edv, align 4, !tbaa !97
  %i.edw = getelementptr inbounds nuw i8, ptr %0, i64 1516
  %i.edx = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store <4 x i32> %wide.load3492.13, ptr %i.edw, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.13, ptr %i.edx, align 4, !tbaa !97
  %i.edy = getelementptr i8, ptr %0, i64 516
  %i.edz = getelementptr i8, ptr %0, i64 532
  %wide.load3492.14 = load <4 x i32>, ptr %i.edy, align 4, !tbaa !97
  %wide.load3493.14 = load <4 x i32>, ptr %i.edz, align 4, !tbaa !97
  %i.eea = getelementptr inbounds nuw i8, ptr %0, i64 1548
  %i.eeb = getelementptr inbounds nuw i8, ptr %0, i64 1564
  store <4 x i32> %wide.load3492.14, ptr %i.eea, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.14, ptr %i.eeb, align 4, !tbaa !97
  %i.eec = getelementptr i8, ptr %0, i64 548
  %i.eed = getelementptr i8, ptr %0, i64 564
  %wide.load3492.15 = load <4 x i32>, ptr %i.eec, align 4, !tbaa !97
  %wide.load3493.15 = load <4 x i32>, ptr %i.eed, align 4, !tbaa !97
  %i.eee = getelementptr inbounds nuw i8, ptr %0, i64 1580
  %i.eef = getelementptr inbounds nuw i8, ptr %0, i64 1596
  store <4 x i32> %wide.load3492.15, ptr %i.eee, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.15, ptr %i.eef, align 4, !tbaa !97
  %i.eeg = getelementptr i8, ptr %0, i64 580
  %i.eeh = getelementptr i8, ptr %0, i64 596
  %wide.load3492.16 = load <4 x i32>, ptr %i.eeg, align 4, !tbaa !97
  %wide.load3493.16 = load <4 x i32>, ptr %i.eeh, align 4, !tbaa !97
  %i.eei = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %i.eej = getelementptr inbounds nuw i8, ptr %0, i64 1628
  store <4 x i32> %wide.load3492.16, ptr %i.eei, align 4, !tbaa !97
  store <4 x i32> %wide.load3493.16, ptr %i.eej, align 4, !tbaa !97
  %i.eek = getelementptr i8, ptr %0, i64 612
  %i.eel = getelementptr i8, ptr %0, i64 628
  %wide.load3492.17 = load <4 x i32>, ptr %i.eek, align 4, !tbaa !97
  %wide.load3493.17 = load <4 x i32>, ptr %i.eel, align 4, !tbaa !97
  %i.eem = getelementptr inbounds nuw i8, ptr %0, i64 1644
  %i.een = getelementptr inbounds nuw i8, ptr %0, i64 1660
  store <4 x i32> %wide.load3492.17, ptr %i.eem, align 4, !tbaa !97
end_hunk_1
