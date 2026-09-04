Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZSt17__merge_sort_loopIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SR_T1_T2_:bb.a
bb.g:                                             ; preds = %bb.e
  %i.bb = udiv i64 %i.ax, 6
  br label %bb.i

bb.h:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i.i
  %i.bc = xor i64 %i.ax, -1
  %i.bd = udiv i64 %i.bc, 6
  %i.be = xor i64 %i.bd, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi i64 [ %i.bb, %bb.g ], [ %i.be, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !129, !noalias !1312
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.bf, -480
  %i.bi = getelementptr i8, ptr %i.bh, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr [80 x i8], ptr %i.bi, i64 %i.ax
  br label %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i

_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i: ; preds = %bb.i, %bb.f
  %.0.i2.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.f ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bk = load ptr, ptr %.0.i2.i.i.i.i.i.i, align 8, !tbaa !516, !nonnull !108, !align !517
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !576
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i.i, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !515
  %i.bp = getelementptr inbounds nuw i8, ptr %.029.i, i64 12
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !561
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %i.bt, align 8, !tbaa !482
  %i.bu = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !560
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %.0.copyload.i.i.i.i.i4.i = load i32, ptr %i.by, align 1
  %i.bz = zext i32 %.0.copyload.i.i.i.i.i4.i to i64 ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %.0.copyload.i.i.i2.i.i.i.i5.i = load i16, ptr %i.cb, align 1 ; 3 uses
  %i.cc = icmp eq i16 %.0.copyload.i.i.i2.i.i.i.i5.i, -1
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 976
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !113
  %i.cf = shl nuw nsw i64 %i.bz, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %.0.copyload.i5.i.i.i.i.i.i13.i = load i32, ptr %i.cg, align 1
  %i.ch = zext i32 %.0.copyload.i5.i.i.i.i.i.i13.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i

bb.k:                                             ; preds = %_ZSt8__invokeIRZN4mold10ObjectFileINS0_6X86_64EE13parse_ehframeERNS0_7ContextIS2_EEEUlRKNS0_9FdeRecordIS2_EEE0_JRS8_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i
  %i.ci = icmp ugt i16 %.0.copyload.i.i.i2.i.i.i.i5.i, -257
  %narrow.i.i.i.i.i.i6.i = select i1 %i.ci, i16 0, i16 %.0.copyload.i.i.i2.i.i.i.i5.i
  %spec.select.i.i.i.i.i.i7.i = zext i16 %narrow.i.i.i.i.i.i6.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i: ; preds = %bb.k, %bb.j
  %.0.i.i3.i.i.i.i9.i = phi i64 [ %i.ch, %bb.j ], [ %spec.select.i.i.i.i.i.i7.i, %bb.k ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0.i.i3.i.i.i.i9.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i.i.i.i.i10.i = icmp sgt i32 %i.ck, 0
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i10.i)
  %i.cl = add nsw i32 %i.ck, -1
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = add nsw i64 %i.aw, %i.cm                ; 5 uses
  %i.co = icmp sgt i64 %i.cn, -1
  br i1 %i.co, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i
  %i.cp = icmp samesign ult i64 %i.cn, 6
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw [80 x i8], ptr %i.ao, i64 %i.cm
  br label %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit

bb.n:                                             ; preds = %bb.l
  %i.cr = udiv i64 %i.cn, 6
  br label %bb.p

bb.o:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i.i.i.i.i8.i
  %i.cs = xor i64 %i.cn, -1
  %i.ct = udiv i64 %i.cs, 6
  %i.cu = xor i64 %i.ct, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cv = phi i64 [ %i.cr, %bb.n ], [ %i.cu, %bb.o ] ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !129, !noalias !1313
  %.idx.i.i.i.i.i.i.i.i.i.i11.i = mul i64 %i.cv, -480
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.idx.i.i.i.i.i.i.i.i.i.i11.i
  %i.cz = getelementptr [80 x i8], ptr %i.cy, i64 %i.cn
  br label %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit

_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit: ; preds = %bb.m, %bb.p
  %.0.i2.i.i.i.i.i12.i = phi ptr [ %i.cq, %bb.m ], [ %i.cz, %bb.p ] ; 2 uses
  %i.da = shl i64 %i.bm, 32
  %i.db = sext i32 %i.bo to i64
  %i.dc = or i64 %i.da, %i.db
  %i.dd = load ptr, ptr %.0.i2.i.i.i.i.i12.i, align 8, !tbaa !516, !nonnull !108, !align !517
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.df = load i64, ptr %i.de, align 8, !tbaa !576
  %i.dg = shl i64 %i.df, 32
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i12.i, i64 48
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !515
  %i.dj = sext i32 %i.di to i64
  %i.dk = or i64 %i.dg, %i.dj
  %i.dl = icmp slt i64 %i.dc, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 14 ; 2 uses
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.027.i, ptr noundef nonnull align 4 dereferenceable(15) %.01628.i, i64 14, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %.01628.i, i64 14
  %i.do = load atomic i8, ptr %i.dn monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.do, ptr %i.dm monotonic, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.01628.i, i64 16
  br label %bb.s

bb.r:                                             ; preds = %_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.027.i, ptr noundef nonnull align 4 dereferenceable(15) %.029.i, i64 14, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %.029.i, i64 14
  %i.dr = load atomic i8, ptr %i.dq monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.dr, ptr %i.dm monotonic, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %.029.i, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.117.i = phi ptr [ %i.dp, %bb.q ], [ %.01628.i, %bb.r ] ; 3 uses
  %.1.i = phi ptr [ %.029.i, %bb.q ], [ %i.ds, %bb.r ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.du = icmp ne ptr %.1.i, %i.f
  %i.dv = icmp ne ptr %.117.i, %i.g
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1310

._crit_edge.i:                                    ; preds = %bb.s, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.066, %bb.b ], [ %i.dt, %bb.s ] ; 7 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.s ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %.065, %bb.b ], [ %.1.i, %bb.s ] ; 5 uses
  %i.dx = ptrtoint ptr %i.f to i64
  %i.dy = ptrtoint ptr %.0.lcssa.i to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 3 uses
  %i.ea = ashr exact i64 %i.dz, 4                 ; 3 uses
  %i.eb = icmp sgt i64 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %i.ec = and i64 %i.dz, 16
  %lcmp.mod.not = icmp eq i64 %i.ec, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.0.lcssa.i, ptr noundef nonnull align 4 dereferenceable(15) %.0.lcssa.i, i64 14, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 14
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 14
  %i.ef = load atomic i8, ptr %i.ee monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ef, ptr %i.ed monotonic, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16 ; 2 uses
  %i.ei = add nsw i64 %i.ea, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa104.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ej = icmp eq i64 %i.dz, 16
  br i1 %i.ej, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i.i, i64 14, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 14
  %i.el = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 14
  %i.em = load atomic i8, ptr %i.el monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.em, ptr %i.ek monotonic, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.eo, ptr noundef nonnull align 4 dereferenceable(15) %i.en, i64 14, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 30
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 30
  %i.er = load atomic i8, ptr %i.eq monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.er, ptr %i.ep monotonic, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.eu = add nsw i64 %.012.i.i.i.i.i.i, -2
  %i.ev = icmp sgt i64 %.012.i.i.i.i.i.i, 2
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i, !llvm.loop !12

_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa104.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.et, %.lr.ph.i.i.i.i.i.i ]
  %i.ew = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.ex = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.ey ; 6 uses
  %i.fa = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.fb = ptrtoint ptr %.016.lcssa.i to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = ashr exact i64 %i.fc, 4                 ; 3 uses
  %i.fe = icmp sgt i64 %i.fd, 0
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i
  %i.ff = and i64 %i.fc, 16
  %lcmp.mod110.not = icmp eq i64 %i.ff, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.ez, ptr noundef nonnull align 4 dereferenceable(15) %.016.lcssa.i, i64 14, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 14
  %i.fh = getelementptr inbounds nuw i8, ptr %.016.lcssa.i, i64 14
  %i.fi = load atomic i8, ptr %i.fh monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.fi, ptr %i.fg monotonic, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %.016.lcssa.i, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fl = add nsw i64 %i.fd, -1
  br label %.lr.ph.i.i.i.i.i19.i.prol.loopexit

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.fl, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.fk, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.fj, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa105.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.fk, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.fm = icmp eq i64 %i.fc, 16
  br i1 %i.fm, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i21.i, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i22.i, i64 14, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 14
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 14
  %i.fp = load atomic i8, ptr %i.fo monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.fp, ptr %i.fn monotonic, align 2
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.fr, ptr noundef nonnull align 4 dereferenceable(15) %i.fq, i64 14, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 30
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 30
  %i.fu = load atomic i8, ptr %i.ft monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.fu, ptr %i.fs monotonic, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32 ; 2 uses
  %i.fx = add nsw i64 %.012.i.i.i.i.i20.i, -2
  %i.fy = icmp sgt i64 %.012.i.i.i.i.i20.i, 2
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit, !llvm.loop !12

_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.ez, %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i ], [ %.lcssa105.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.fw, %.lr.ph.i.i.i.i.i19.i ]
  %7 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.fz = sub i64 %7, %i.ew
  %i.ga = getelementptr inbounds i8, ptr %i.ez, i64 %i.fz ; 2 uses
  %i.gb = sub i64 %i.b, %i.fa
  %i.gc = ashr exact i64 %i.gb, 4                 ; 2 uses
  %.not = icmp slt i64 %i.gc, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1311

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ga, %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit ] ; 2 uses
  %.lcssa62 = phi i64 [ %i.e, %bb.a ], [ %i.gc, %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa62) ; 2 uses
  %.idx57 = shl nsw i64 %.sroa.speculated, 4
  %i.gd = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %4, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ge = icmp ne i64 %.sroa.speculated, 0
  %i.gf = icmp ne ptr %i.gd, %1
  %i.gg = and i1 %i.ge, %i.gf
  br i1 %i.gg, label %.lr.ph.i41, label %._crit_edge.i25

.lr.ph.i41:                                       ; preds = %._crit_edge, %bb.v
  %.029.i42 = phi ptr [ %.1.i46, %bb.v ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.01628.i43 = phi ptr [ %.117.i45, %bb.v ], [ %i.gd, %._crit_edge ] ; 5 uses
  %.sroa.0.027.i44 = phi ptr [ %i.gp, %bb.v ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.gh = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold10ObjectFileINS3_6X86_64EE13parse_ehframeERNS3_7ContextIS5_EEEUlRKNS3_9FdeRecordIS5_EEE0_EEDaRT_RT0_ENKUlOSF_OSH_E_clIRSB_SN_EEbSJ_SK_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(15) %.01628.i43, ptr noundef nonnull align 4 dereferenceable(15) %.029.i42)
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 14 ; 2 uses
  br i1 %i.gh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.027.i44, ptr noundef nonnull align 4 dereferenceable(15) %.01628.i43, i64 14, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 14
  %i.gk = load atomic i8, ptr %i.gj monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.gk, ptr %i.gi monotonic, align 2
  %i.gl = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 16
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.027.i44, ptr noundef nonnull align 4 dereferenceable(15) %.029.i42, i64 14, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.029.i42, i64 14
  %i.gn = load atomic i8, ptr %i.gm monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.gn, ptr %i.gi monotonic, align 2
  %i.go = getelementptr inbounds nuw i8, ptr %.029.i42, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.117.i45 = phi ptr [ %i.gl, %bb.t ], [ %.01628.i43, %bb.u ] ; 3 uses
  %.1.i46 = phi ptr [ %.029.i42, %bb.t ], [ %i.go, %bb.u ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.gq = icmp ne ptr %.1.i46, %i.gd
  %i.gr = icmp ne ptr %.117.i45, %1
  %i.gs = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %i.gs, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !1310

._crit_edge.i25:                                  ; preds = %bb.v, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.gp, %bb.v ] ; 7 uses
  %.016.lcssa.i27 = phi ptr [ %i.gd, %._crit_edge ], [ %.117.i45, %bb.v ] ; 5 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i46, %bb.v ] ; 5 uses
  %i.gt = ptrtoint ptr %i.gd to i64
  %i.gu = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 3 uses
  %i.gw = ashr exact i64 %i.gv, 4                 ; 3 uses
  %i.gx = icmp sgt i64 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29

.lr.ph.i.i.i.i.i.i37.preheader:                   ; preds = %._crit_edge.i25
  %i.gy = and i64 %i.gv, 16
  %lcmp.mod112.not = icmp eq i64 %i.gy, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i37.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i37.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.0.0.lcssa.i26, ptr noundef nonnull align 4 dereferenceable(15) %.0.lcssa.i28, i64 14, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i26, i64 14
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.lcssa.i28, i64 14
  %i.hb = load atomic i8, ptr %i.ha monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.hb, ptr %i.gz monotonic, align 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i28, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i26, i64 16 ; 2 uses
  %i.he = add nsw i64 %i.gw, -1
  br label %.lr.ph.i.i.i.i.i.i37.prol.loopexit

.lr.ph.i.i.i.i.i.i37.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i38.unr = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.he, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.hd, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.hc, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.hd, %.lr.ph.i.i.i.i.i.i37.prol ]
  %i.hf = icmp eq i64 %i.gv, 16
  br i1 %i.hf, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i38 = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i40 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i.i39, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i.i40, i64 14, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 14
  %i.hh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 14
  %i.hi = load atomic i8, ptr %i.hh monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.hi, ptr %i.hg monotonic, align 2
  %i.hj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.hk, ptr noundef nonnull align 4 dereferenceable(15) %i.hj, i64 14, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 30
  %i.hm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 30
  %i.hn = load atomic i8, ptr %i.hm monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.hn, ptr %i.hl monotonic, align 2
  %i.ho = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32 ; 2 uses
  %i.hq = add nsw i64 %.012.i.i.i.i.i.i38, -2
  %i.hr = icmp sgt i64 %.012.i.i.i.i.i.i38, 2
  br i1 %i.hr, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, !llvm.loop !12

_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ], [ %i.hp, %.lr.ph.i.i.i.i.i.i37 ]
  %i.hs = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.ht = sub i64 %i.b, %i.hs                     ; 3 uses
  %i.hu = ashr exact i64 %i.ht, 4                 ; 3 uses
  %i.hv = icmp sgt i64 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit47

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  %i.hw = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.hx = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.hy ; 4 uses
  %i.ia = and i64 %i.ht, 16
  %lcmp.mod114.not = icmp eq i64 %i.ia, 0
  br i1 %lcmp.mod114.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.hz, ptr noundef nonnull align 4 dereferenceable(15) %.016.lcssa.i27, i64 14, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 14
  %i.ic = getelementptr inbounds nuw i8, ptr %.016.lcssa.i27, i64 14
  %i.id = load atomic i8, ptr %i.ic monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.id, ptr %i.ib monotonic, align 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.016.lcssa.i27, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ig = add nsw i64 %i.hu, -1
  br label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.hu, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.ig, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.if, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.ie, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.ih = icmp eq i64 %i.ht, 16
  br i1 %i.ih, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit47, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0811.i.i.i.i.i21.i34, ptr noundef nonnull align 4 dereferenceable(15) %.0910.i.i.i.i.i22.i35, i64 14, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 14
  %i.ij = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 14
  %i.ik = load atomic i8, ptr %i.ij monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ik, ptr %i.ii monotonic, align 2
  %i.il = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.im, ptr noundef nonnull align 4 dereferenceable(15) %i.il, i64 14, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 30
  %i.io = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 30
  %i.ip = load atomic i8, ptr %i.io monotonic, align 2, !range !107, !noundef !108
  store atomic i8 %i.ip, ptr %i.in monotonic, align 2
  %i.iq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.is = add nsw i64 %.012.i.i.i.i.i20.i33, -2
  %i.it = icmp sgt i64 %.012.i.i.i.i.i20.i33, 2
  br i1 %i.it, label %.lr.ph.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit47, !llvm.loop !12

_ZSt12__move_mergeIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS0_10ObjectFileIS2_E13parse_ehframeERNS0_7ContextIS2_EEEUlRKS3_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEESR_SP_SP_SP_SP_SR_T1_.exit47: ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32, %_ZSt4moveIPN4mold9FdeRecordINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold9FdeRecordINS2_6X86_64EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSD_4lessEZNS2_10ObjectFileIS4_E13parse_ehframeERNS2_7ContextIS4_EEEUlRKS5_E0_EEDaRT_RT0_EUlOSP_OSR_E_EEEvSP_SP_SR_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 16 ; 5 uses
  %5 = alloca %"struct.mold::FdeRecord", align 4  ; 8 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 16 ; 4 uses
  %.sroa.0 = alloca <{ i32, i32, i32, i16 }>, align 4 ; 4 uses
  store ptr %2, ptr %6, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.010.019 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %.sroa.010.019, %1
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = ptrtoint ptr %0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  br label %bb.b
end_hunk_0
