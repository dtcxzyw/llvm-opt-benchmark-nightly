inline.NumInlined: 57
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 58
begin_hunk_0_@III_format_bitstream:bb.a
  %i.bml = udiv i32 %i.bmk, 3
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bko, i64 112
  %i.bmn = load i32, ptr %i.bmm, align 8, !tbaa !4 ; 3 uses
  %.not.2.i = icmp ult i32 %i.bmk, 3
  br i1 %.not.2.i, label %._crit_edge210.2.i, label %.preheader184.preheader.2.i

.preheader184.preheader.2.i:                      ; preds = %._crit_edge210.1.i
  %i.bmo = sext i32 %.7.lcssa.1.i to i64
  %.pre326.i = load ptr, ptr %i.bkn, align 8, !tbaa !15
  br label %.preheader184.2.i

.preheader184.2.i:                                ; preds = %.preheader184.2.i, %.preheader184.preheader.2.i
  %i.bmp = phi ptr [ %.pre326.i, %.preheader184.preheader.2.i ], [ %i.bmy, %.preheader184.2.i ]
  %indvars.iv264.2.i = phi i64 [ %i.bmo, %.preheader184.preheader.2.i ], [ %indvars.iv.next265.2.i, %.preheader184.2.i ] ; 2 uses
  %.0209.2.i = phi i32 [ 0, %.preheader184.preheader.2.i ], [ %i.bmz, %.preheader184.2.i ]
  %i.bmq = getelementptr inbounds [12 x i8], ptr %i.bla, i64 %indvars.iv264.2.i ; 3 uses
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !4
  %i.bms = tail call ptr @BF_addEntry(ptr noundef %i.bmp, i32 noundef %i.bmr, i32 noundef %i.bmn) #11 ; 2 uses
  store ptr %i.bms, ptr %i.bkn, align 8, !tbaa !15
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmq, i64 4
  %i.bmu = load i32, ptr %i.bmt, align 4, !tbaa !4
  %i.bmv = tail call ptr @BF_addEntry(ptr noundef %i.bms, i32 noundef %i.bmu, i32 noundef %i.bmn) #11 ; 2 uses
  store ptr %i.bmv, ptr %i.bkn, align 8, !tbaa !15
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmq, i64 8
  %i.bmx = load i32, ptr %i.bmw, align 4, !tbaa !4
  %i.bmy = tail call ptr @BF_addEntry(ptr noundef %i.bmv, i32 noundef %i.bmx, i32 noundef %i.bmn) #11 ; 2 uses
  store ptr %i.bmy, ptr %i.bkn, align 8, !tbaa !15
  %i.bmz = add nuw nsw i32 %.0209.2.i, 1          ; 2 uses
  %indvars.iv.next265.2.i = add nsw i64 %indvars.iv264.2.i, 1 ; 2 uses
  %exitcond267.2.not.i = icmp eq i32 %i.bmz, %i.bml
  br i1 %exitcond267.2.not.i, label %._crit_edge210.loopexit.2.i, label %.preheader184.2.i, !llvm.loop !75

._crit_edge210.loopexit.2.i:                      ; preds = %.preheader184.2.i
  %i.bna = trunc nsw i64 %indvars.iv.next265.2.i to i32
  %.pre327.i = load ptr, ptr %i.bkt, align 8, !tbaa !74
  br label %._crit_edge210.2.i

._crit_edge210.2.i:                               ; preds = %._crit_edge210.loopexit.2.i, %._crit_edge210.1.i
  %i.bnb = phi ptr [ %i.bmi, %._crit_edge210.1.i ], [ %.pre327.i, %._crit_edge210.loopexit.2.i ]
  %.7.lcssa.2.i = phi i32 [ %.7.lcssa.1.i, %._crit_edge210.1.i ], [ %i.bna, %._crit_edge210.loopexit.2.i ]
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bnb, i64 12
  %i.bnd = load i32, ptr %i.bnc, align 4, !tbaa !4 ; 2 uses
  %i.bne = udiv i32 %i.bnd, 3
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bko, i64 116
  %i.bng = load i32, ptr %i.bnf, align 4, !tbaa !4 ; 3 uses
  %.not.3.i = icmp ult i32 %i.bnd, 3
  br i1 %.not.3.i, label %.loopexit186.i, label %.preheader184.preheader.3.i

.preheader184.preheader.3.i:                      ; preds = %._crit_edge210.2.i
  %i.bnh = sext i32 %.7.lcssa.2.i to i64
  %.pre328.i = load ptr, ptr %i.bkn, align 8, !tbaa !15
  br label %.preheader184.3.i

.preheader184.3.i:                                ; preds = %.preheader184.3.i, %.preheader184.preheader.3.i
  %i.bni = phi ptr [ %.pre328.i, %.preheader184.preheader.3.i ], [ %i.bnr, %.preheader184.3.i ]
  %indvars.iv264.3.i = phi i64 [ %i.bnh, %.preheader184.preheader.3.i ], [ %indvars.iv.next265.3.i, %.preheader184.3.i ] ; 2 uses
  %.0209.3.i = phi i32 [ 0, %.preheader184.preheader.3.i ], [ %i.bns, %.preheader184.3.i ]
  %i.bnj = getelementptr inbounds [12 x i8], ptr %i.bla, i64 %indvars.iv264.3.i ; 3 uses
  %i.bnk = load i32, ptr %i.bnj, align 4, !tbaa !4
  %i.bnl = tail call ptr @BF_addEntry(ptr noundef %i.bni, i32 noundef %i.bnk, i32 noundef %i.bng) #11 ; 2 uses
  store ptr %i.bnl, ptr %i.bkn, align 8, !tbaa !15
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnj, i64 4
  %i.bnn = load i32, ptr %i.bnm, align 4, !tbaa !4
  %i.bno = tail call ptr @BF_addEntry(ptr noundef %i.bnl, i32 noundef %i.bnn, i32 noundef %i.bng) #11 ; 2 uses
  store ptr %i.bno, ptr %i.bkn, align 8, !tbaa !15
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnj, i64 8
  %i.bnq = load i32, ptr %i.bnp, align 4, !tbaa !4
  %i.bnr = tail call ptr @BF_addEntry(ptr noundef %i.bno, i32 noundef %i.bnq, i32 noundef %i.bng) #11 ; 2 uses
  store ptr %i.bnr, ptr %i.bkn, align 8, !tbaa !15
  %i.bns = add nuw nsw i32 %.0209.3.i, 1          ; 2 uses
  %indvars.iv.next265.3.i = add nsw i64 %indvars.iv264.3.i, 1
  %exitcond267.3.not.i = icmp eq i32 %i.bns, %i.bne
  br i1 %exitcond267.3.not.i, label %.loopexit186.i, label %.preheader184.3.i, !llvm.loop !75

.lr.ph.preheader.i55:                             ; preds = %.preheader187.i
  %wide.trip.count258.i = zext nneg i32 %i.bkx to i64
  %.pre.i = load ptr, ptr %i.bkn, align 8, !tbaa !15
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56, %.lr.ph.preheader.i55
  %i.bnt = phi ptr [ %.pre.i, %.lr.ph.preheader.i55 ], [ %i.bnw, %.lr.ph.i56 ]
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph.preheader.i55 ], [ %indvars.iv.next250.i, %.lr.ph.i56 ] ; 2 uses
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %indvars.iv249.i
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !4
  %i.bnw = tail call ptr @BF_addEntry(ptr noundef %i.bnt, i32 noundef %i.bnv, i32 noundef %i.bky) #11 ; 2 uses
  store ptr %i.bnw, ptr %i.bkn, align 8, !tbaa !15
  %indvars.iv.next250.i = add nuw nsw i64 %indvars.iv249.i, 1 ; 2 uses
  %exitcond259.not.i = icmp eq i64 %indvars.iv.next250.i, %wide.trip.count258.i
  br i1 %exitcond259.not.i, label %._crit_edge203.loopexit.i, label %.lr.ph.i56, !llvm.loop !76

._crit_edge203.loopexit.i:                        ; preds = %.lr.ph.i56
  %.pre316.i = load ptr, ptr %i.bkt, align 8, !tbaa !74
  br label %._crit_edge203.i

._crit_edge203.i:                                 ; preds = %._crit_edge203.loopexit.i, %.preheader187.i
  %i.bnx = phi ptr [ %i.bkw, %.preheader187.i ], [ %.pre316.i, %._crit_edge203.loopexit.i ] ; 2 uses
  %.9.lcssa.i = phi i32 [ 0, %.preheader187.i ], [ %i.bkx, %._crit_edge203.loopexit.i ] ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 4
  %i.bnz = load i32, ptr %i.bny, align 4, !tbaa !4 ; 2 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bko, i64 108
  %i.bob = load i32, ptr %i.boa, align 4, !tbaa !4
  %i.boc = icmp sgt i32 %i.bnz, 0
  br i1 %i.boc, label %.lr.ph.preheader.1.i, label %._crit_edge203.1.i

.lr.ph.preheader.1.i:                             ; preds = %._crit_edge203.i
  %i.bod = zext nneg i32 %.9.lcssa.i to i64
  %.pre317.i = load ptr, ptr %i.bkn, align 8, !tbaa !15
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %.lr.ph.1.i, %.lr.ph.preheader.1.i
  %i.boe = phi ptr [ %.pre317.i, %.lr.ph.preheader.1.i ], [ %i.boh, %.lr.ph.1.i ]
  %indvars.iv249.1.i = phi i64 [ %i.bod, %.lr.ph.preheader.1.i ], [ %indvars.iv.next250.1.i, %.lr.ph.1.i ] ; 2 uses
  %.1201.1.i = phi i32 [ 0, %.lr.ph.preheader.1.i ], [ %i.boi, %.lr.ph.1.i ]
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %indvars.iv249.1.i
  %i.bog = load i32, ptr %i.bof, align 4, !tbaa !4
  %i.boh = tail call ptr @BF_addEntry(ptr noundef %i.boe, i32 noundef %i.bog, i32 noundef %i.bob) #11 ; 2 uses
  store ptr %i.boh, ptr %i.bkn, align 8, !tbaa !15
  %i.boi = add nuw nsw i32 %.1201.1.i, 1          ; 2 uses
  %indvars.iv.next250.1.i = add nuw nsw i64 %indvars.iv249.1.i, 1 ; 2 uses
  %exitcond252.1.not.i = icmp eq i32 %i.boi, %i.bnz
  br i1 %exitcond252.1.not.i, label %._crit_edge203.loopexit.1.i, label %.lr.ph.1.i, !llvm.loop !76

._crit_edge203.loopexit.1.i:                      ; preds = %.lr.ph.1.i
  %i.boj = trunc nsw i64 %indvars.iv.next250.1.i to i32
  %.pre318.i = load ptr, ptr %i.bkt, align 8, !tbaa !74
  br label %._crit_edge203.1.i

._crit_edge203.1.i:                               ; preds = %._crit_edge203.loopexit.1.i, %._crit_edge203.i
  %i.bok = phi ptr [ %i.bnx, %._crit_edge203.i ], [ %.pre318.i, %._crit_edge203.loopexit.1.i ] ; 2 uses
  %.9.lcssa.1.i = phi i32 [ %.9.lcssa.i, %._crit_edge203.i ], [ %i.boj, %._crit_edge203.loopexit.1.i ] ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 8
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !4 ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bko, i64 112
  %i.boo = load i32, ptr %i.bon, align 8, !tbaa !4
  %i.bop = icmp sgt i32 %i.bom, 0
  br i1 %i.bop, label %.lr.ph.preheader.2.i, label %._crit_edge203.2.i

.lr.ph.preheader.2.i:                             ; preds = %._crit_edge203.1.i
  %i.boq = sext i32 %.9.lcssa.1.i to i64
  %.pre319.i = load ptr, ptr %i.bkn, align 8, !tbaa !15
  br label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %.lr.ph.2.i, %.lr.ph.preheader.2.i
  %i.bor = phi ptr [ %.pre319.i, %.lr.ph.preheader.2.i ], [ %i.bou, %.lr.ph.2.i ]
  %indvars.iv249.2.i = phi i64 [ %i.boq, %.lr.ph.preheader.2.i ], [ %indvars.iv.next250.2.i, %.lr.ph.2.i ] ; 2 uses
  %.1201.2.i = phi i32 [ 0, %.lr.ph.preheader.2.i ], [ %i.bov, %.lr.ph.2.i ]
  %i.bos = getelementptr inbounds [4 x i8], ptr %i.bkv, i64 %indvars.iv249.2.i
  %i.bot = load i32, ptr %i.bos, align 4, !tbaa !4
  %i.bou = tail call ptr @BF_addEntry(ptr noundef %i.bor, i32 noundef %i.bot, i32 noundef %i.boo) #11 ; 2 uses
  store ptr %i.bou, ptr %i.bkn, align 8, !tbaa !15
  %i.bov = add nuw nsw i32 %.1201.2.i, 1          ; 2 uses
  %indvars.iv.next250.2.i = add nsw i64 %indvars.iv249.2.i, 1 ; 2 uses
  %exitcond252.2.not.i = icmp eq i32 %i.bov, %i.bom
  br i1 %exitcond252.2.not.i, label %._crit_edge203.loopexit.2.i, label %.lr.ph.2.i, !llvm.loop !76

._crit_edge203.loopexit.2.i:                      ; preds = %.lr.ph.2.i
  %i.bow = trunc nsw i64 %indvars.iv.next250.2.i to i32
  %.pre320.i = load ptr, ptr %i.bkt, align 8, !tbaa !74
  br label %._crit_edge203.2.i

._crit_edge203.2.i:                               ; preds = %._crit_edge203.loopexit.2.i, %._crit_edge203.1.i
  %i.box = phi ptr [ %i.bok, %._crit_edge203.1.i ], [ %.pre320.i, %._crit_edge203.loopexit.2.i ]
  %.9.lcssa.2.i = phi i32 [ %.9.lcssa.1.i, %._crit_edge203.1.i ], [ %i.bow, %._crit_edge203.loopexit.2.i ]
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 12
  %i.boz = load i32, ptr %i.boy, align 4, !tbaa !4 ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bko, i64 116
  %i.bpb = load i32, ptr %i.bpa, align 4, !tbaa !4
  %i.bpc = icmp sgt i32 %i.boz, 0
  br i1 %i.bpc, label %.lr.ph.preheader.3.i, label %.loopexit186.i

.lr.ph.preheader.3.i:                             ; preds = %._crit_edge203.2.i
  %i.bpd = sext i32 %.9.lcssa.2.i to i64
  %.pre321.i = load ptr, ptr %i.bkn, align 8, !tbaa !15
  br label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %.lr.ph.3.i, %.lr.ph.preheader.3.i
  %i.bpe = phi ptr [ %.pre321.i, %.lr.ph.preheader.3.i ], [ %i.bph, %.lr.ph.3.i ]
  %indvars.iv249.3.i = phi i64 [ %i.bpd, %.lr.ph.preheader.3.i ], [ %indvars.iv.next250.3.i, %.lr.ph.3.i ] ; 2 uses
  %.1201.3.i = phi i32 [ 0, %.lr.ph.preheader.3.i ], [ %i.bpi, %.lr.ph.3.i ]
  %i.bpf = getelementptr inbounds [4 x i8], ptr %i.bkv, i64 %indvars.iv249.3.i
  %i.bpg = load i32, ptr %i.bpf, align 4, !tbaa !4
  %i.bph = tail call ptr @BF_addEntry(ptr noundef %i.bpe, i32 noundef %i.bpg, i32 noundef %i.bpb) #11 ; 2 uses
  store ptr %i.bph, ptr %i.bkn, align 8, !tbaa !15
  %i.bpi = add nuw nsw i32 %.1201.3.i, 1          ; 2 uses
  %indvars.iv.next250.3.i = add nsw i64 %indvars.iv249.3.i, 1
  %exitcond252.3.not.i = icmp eq i32 %i.bpi, %i.boz
  br i1 %exitcond252.3.not.i, label %.loopexit186.i, label %.lr.ph.3.i, !llvm.loop !76

.loopexit186.i:                                   ; preds = %.lr.ph.3.i, %.preheader184.3.i, %._crit_edge203.2.i, %._crit_edge210.2.i
  %i.bpj = getelementptr inbounds nuw [8 x i8], ptr @codedDataPH, i64 %indvars.iv275.i
  tail call fastcc void @Huffmancodebits(ptr noundef nonnull %i.bpj, ptr noundef readonly %i.bkp, ptr noundef nonnull readonly %i.bko)
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %i.bpk = load i32, ptr %i.fd, align 4, !tbaa !36
  %i.bpl = sext i32 %i.bpk to i64
  %i.bpm = icmp slt i64 %indvars.iv.next276.i, %i.bpl
  br i1 %i.bpm, label %bb.s, label %encodeMainData.exit, !llvm.loop !77

encodeMainData.exit:                              ; preds = %.loopexit186.i, %._crit_edge226.i, %.preheader189.i, %.preheader182.i
  %i.bpn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bpo = load i32, ptr %i.bpn, align 8, !tbaa !78 ; 3 uses
  %6 = lshr i32 %i.bpo, 5
  %i.bpp = srem i32 %i.bpo, 32                    ; 2 uses
  %i.bpq = load ptr, ptr @userFrameDataPH, align 8, !tbaa !15 ; 3 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 8
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !17
  store i32 0, ptr %i.bps, align 8, !tbaa !19
  %i.bpt = icmp sgt i32 %i.bpo, 31
  br i1 %i.bpt, label %.lr.ph.i66, label %._crit_edge.i64

.lr.ph.i66:                                       ; preds = %encodeMainData.exit, %.lr.ph.i66
  %i.bpu = phi ptr [ %i.bpv, %.lr.ph.i66 ], [ %i.bpq, %encodeMainData.exit ]
  %.08.i = phi i32 [ %i.bpw, %.lr.ph.i66 ], [ 0, %encodeMainData.exit ]
  %i.bpv = tail call ptr @BF_addEntry(ptr noundef %i.bpu, i32 noundef 0, i32 noundef 32) #11 ; 3 uses
  store ptr %i.bpv, ptr @userFrameDataPH, align 8, !tbaa !15
  %i.bpw = add nuw nsw i32 %.08.i, 1              ; 2 uses
  %exitcond.not.i67 = icmp eq i32 %i.bpw, %6
  br i1 %exitcond.not.i67, label %._crit_edge.i64, label %.lr.ph.i66, !llvm.loop !79

._crit_edge.i64:                                  ; preds = %.lr.ph.i66, %encodeMainData.exit
  %i.bpx = phi ptr [ %i.bpq, %encodeMainData.exit ], [ %i.bpv, %.lr.ph.i66 ]
  %.not.i65 = icmp eq i32 %i.bpp, 0
  br i1 %.not.i65, label %drain_into_ancillary_data.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i64
  %i.bpy = tail call ptr @BF_addEntry(ptr noundef %i.bpx, i32 noundef 0, i32 noundef %i.bpp) #11
  store ptr %i.bpy, ptr @userFrameDataPH, align 8, !tbaa !15
  br label %drain_into_ancillary_data.exit

drain_into_ancillary_data.exit:                   ; preds = %._crit_edge.i64, %bb.t
  %i.bpz = load ptr, ptr @frameData, align 8, !tbaa !11 ; 5 uses
  store i32 %1, ptr %i.bpz, align 8, !tbaa !80
  %i.bqa = load i32, ptr %i.azo, align 8, !tbaa !39 ; 3 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpz, i64 4
  store i32 %i.bqa, ptr %i.bqb, align 4, !tbaa !82
  %i.bqc = load i32, ptr %i.fd, align 4, !tbaa !36 ; 5 uses
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpz, i64 8
  store i32 %i.bqc, ptr %i.bqd, align 8, !tbaa !83
  %i.bqe = load ptr, ptr @headerPH, align 8, !tbaa !15
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 8
  %i.bqg = load ptr, ptr %i.bqf, align 8, !tbaa !17
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bpz, i64 16
  store ptr %i.bqg, ptr %i.bqh, align 8, !tbaa !84
  %i.bqi = load ptr, ptr @frameSIPH, align 8, !tbaa !15
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 8
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !17
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bpz, i64 24
  store ptr %i.bqk, ptr %i.bql, align 8, !tbaa !85
  %i.bqm = icmp sgt i32 %i.bqc, 0
  br i1 %i.bqm, label %.lr.ph.preheader, label %._crit_edge84.split

.lr.ph.preheader:                                 ; preds = %drain_into_ancillary_data.exit
  %wide.trip.count = zext nneg i32 %i.bqc to i64  ; 2 uses
  %xtraiter159 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.bqn = icmp ult i32 %i.bqc, 4
  br i1 %i.bqn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter163 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.preheader68.unr-lcssa:                           ; preds = %.lr.ph
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %.preheader68, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader68.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader68.unr-lcssa ]
  %lcmp.mod162 = icmp ne i64 %xtraiter159, 0
  tail call void @llvm.assume(i1 %lcmp.mod162)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter160 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter160.next, %.lr.ph.epil ]
  %i.bqo = getelementptr inbounds nuw [8 x i8], ptr @channelSIPH, i64 %indvars.iv.epil
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !15
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 8
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !17
  %i.bqs = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 32
  %i.bqu = getelementptr inbounds nuw [8 x i8], ptr %i.bqt, i64 %indvars.iv.epil
  store ptr %i.bqr, ptr %i.bqu, align 8, !tbaa !86
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter160.next = add i64 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i64 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %.preheader68, label %.lr.ph.epil, !llvm.loop !87

.preheader68:                                     ; preds = %.lr.ph.epil, %.preheader68.unr-lcssa
  %i.bqv = icmp sgt i32 %i.bqa, 0
  br i1 %i.bqv, label %.preheader.preheader, label %._crit_edge84.split

.preheader.preheader:                             ; preds = %.preheader68
  %wide.trip.count103 = zext nneg i32 %i.bqa to i64
  %wide.trip.count98 = zext nneg i32 %i.bqc to i64
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter164 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter164.next.3, %.lr.ph ]
  %i.bqw = getelementptr inbounds nuw [8 x i8], ptr @channelSIPH, i64 %indvars.iv
  %i.bqx = load ptr, ptr %i.bqw, align 16, !tbaa !15
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 8
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !17
  %i.bra = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 32
  %i.brc = getelementptr inbounds nuw [8 x i8], ptr %i.brb, i64 %indvars.iv
  store ptr %i.bqz, ptr %i.brc, align 8, !tbaa !86
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.brd = getelementptr inbounds nuw [8 x i8], ptr @channelSIPH, i64 %indvars.iv.next
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !15
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bre, i64 8
  %i.brg = load ptr, ptr %i.brf, align 8, !tbaa !17
  %i.brh = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 32
  %i.brj = getelementptr inbounds nuw [8 x i8], ptr %i.bri, i64 %indvars.iv.next
  store ptr %i.brg, ptr %i.brj, align 8, !tbaa !86
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.brk = getelementptr inbounds nuw [8 x i8], ptr @channelSIPH, i64 %indvars.iv.next.1
  %i.brl = load ptr, ptr %i.brk, align 16, !tbaa !15
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 8
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !17
  %i.bro = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 32
  %i.brq = getelementptr inbounds nuw [8 x i8], ptr %i.brp, i64 %indvars.iv.next.1
  store ptr %i.brn, ptr %i.brq, align 8, !tbaa !86
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.brr = getelementptr inbounds nuw [8 x i8], ptr @channelSIPH, i64 %indvars.iv.next.2
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !15
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 8
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !17
  %i.brv = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.brx = getelementptr inbounds nuw [8 x i8], ptr %i.brw, i64 %indvars.iv.next.2
  store ptr %i.bru, ptr %i.brx, align 8, !tbaa !86
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter164.next.3 = add i64 %niter164, 4         ; 2 uses
  %niter164.ncmp.3 = icmp eq i64 %niter164.next.3, %unroll_iter163
  br i1 %niter164.ncmp.3, label %.preheader68.unr-lcssa, label %.lr.ph, !llvm.loop !88

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv100 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next101, %._crit_edge ] ; 9 uses
  %i.bry = getelementptr inbounds nuw [16 x i8], ptr @spectrumSIPH, i64 %indvars.iv100
  %i.brz = getelementptr inbounds nuw [16 x i8], ptr @scaleFactorsPH, i64 %indvars.iv100
  %i.bsa = getelementptr inbounds nuw [16 x i8], ptr @codedDataPH, i64 %indvars.iv100
  %i.bsb = getelementptr inbounds nuw [16 x i8], ptr @userSpectrumPH, i64 %indvars.iv100
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.u
  %indvars.iv95 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next96, %bb.u ] ; 9 uses
  %i.bsc = getelementptr inbounds nuw [8 x i8], ptr %i.bry, i64 %indvars.iv95
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !15
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 8
  %i.bsf = load ptr, ptr %i.bse, align 8, !tbaa !17
  %i.bsg = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsg, i64 48
  %i.bsi = getelementptr inbounds nuw [16 x i8], ptr %i.bsh, i64 %indvars.iv100
  %i.bsj = getelementptr inbounds nuw [8 x i8], ptr %i.bsi, i64 %indvars.iv95
  store ptr %i.bsf, ptr %i.bsj, align 8, !tbaa !86
  %i.bsk = getelementptr inbounds nuw [8 x i8], ptr %i.brz, i64 %indvars.iv95
  %i.bsl = load ptr, ptr %i.bsk, align 8, !tbaa !15
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 8
  %i.bsn = load ptr, ptr %i.bsm, align 8, !tbaa !17
  %i.bso = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 80
  %i.bsq = getelementptr inbounds nuw [16 x i8], ptr %i.bsp, i64 %indvars.iv100
  %i.bsr = getelementptr inbounds nuw [8 x i8], ptr %i.bsq, i64 %indvars.iv95
  store ptr %i.bsn, ptr %i.bsr, align 8, !tbaa !86
  %i.bss = getelementptr inbounds nuw [8 x i8], ptr %i.bsa, i64 %indvars.iv95
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !15
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 8
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !17
  %i.bsw = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 112
  %i.bsy = getelementptr inbounds nuw [16 x i8], ptr %i.bsx, i64 %indvars.iv100
  %i.bsz = getelementptr inbounds nuw [8 x i8], ptr %i.bsy, i64 %indvars.iv95
  store ptr %i.bsv, ptr %i.bsz, align 8, !tbaa !86
  %i.bta = getelementptr inbounds nuw [8 x i8], ptr %i.bsb, i64 %indvars.iv95
  %i.btb = load ptr, ptr %i.bta, align 8, !tbaa !15
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !17
  %i.bte = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 144
  %i.btg = getelementptr inbounds nuw [16 x i8], ptr %i.btf, i64 %indvars.iv100
  %i.bth = getelementptr inbounds nuw [8 x i8], ptr %i.btg, i64 %indvars.iv95
  store ptr %i.btd, ptr %i.bth, align 8, !tbaa !86
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %._crit_edge, label %bb.u, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.u
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge84.split, label %.preheader, !llvm.loop !90

._crit_edge84.split:                              ; preds = %._crit_edge, %drain_into_ancillary_data.exit, %.preheader68
  %i.bti = load ptr, ptr @userFrameDataPH, align 8, !tbaa !15
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bti, i64 8
  %i.btk = load ptr, ptr %i.btj, align 8, !tbaa !17
  %i.btl = load ptr, ptr @frameData, align 8, !tbaa !11 ; 2 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 176
  store ptr %i.btk, ptr %i.btm, align 8, !tbaa !91
  %i.btn = load ptr, ptr @frameResults, align 8, !tbaa !13
  tail call void @BF_BitstreamFrame(ptr noundef %i.btl, ptr noundef %i.btn) #11
  %i.bto = load ptr, ptr @frameResults, align 8, !tbaa !13
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bto, i64 8
  %i.btq = load i32, ptr %i.btp, align 4, !tbaa !92
  store i32 %i.btq, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BF_newPartHolder(i32 noundef) local_unnamed_addr #1

declare void @BF_BitstreamFrame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @III_FlushBitstream() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @PartHoldersInitialized, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @frameData, align 8, !tbaa !11
  %i.c = load ptr, ptr @frameResults, align 8, !tbaa !13
  tail call void @BF_FlushBitstream(ptr noundef %i.b, ptr noundef %i.c) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @BF_FlushBitstream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @abs_and_sign(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 0, %i.a
  store i32 %i.c, ptr %0, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 260) i32 @L3_huffman_coder_count1(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
abs_and_sign.exit:
  %spec.select52 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.a = icmp slt i32 %3, 1
  %.050 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %.0.i32 = zext i1 %i.a to i32
  %i.b = icmp slt i32 %4, 1
  %.049 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %.0.i34 = zext i1 %i.b to i32
  %i.c = icmp slt i32 %5, 1
  %.0 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %.0.i36 = zext i1 %i.c to i32
  %i.d = shl i32 %spec.select52, 3
  %i.e = shl i32 %.050, 2
  %i.f = add nsw i32 %i.e, %i.d
  %i.g = shl nuw i32 %.049, 1
  %i.h = add nsw i32 %i.f, %i.g
  %i.i = add nsw i32 %i.h, %.0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = zext i32 %i.i to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  %i.r = load i8, ptr %i.q, align 1, !tbaa !99
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !15
  %i.u = trunc i64 %i.n to i32
  %i.v = tail call ptr @BF_addEntry(ptr noundef %i.t, i32 noundef %i.u, i32 noundef %i.s) #11 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !15
  %.not.not = icmp ne i32 %2, 0                   ; 2 uses
  %.lobit = lshr i32 %2, 31                       ; 2 uses
  %spec.select31 = zext i1 %.not.not to i32
  %.not28 = icmp eq i32 %3, 0                     ; 2 uses
  %i.w = shl nuw nsw i32 %.lobit, 1
  %i.x = or disjoint i32 %i.w, %.0.i32
  %i.y = select i1 %.not.not, i32 2, i32 1
  %.125 = select i1 %.not28, i32 %.lobit, i32 %i.x ; 2 uses
  %.1 = select i1 %.not28, i32 %spec.select31, i32 %i.y
  %.not29 = icmp ne i32 %4, 0                     ; 2 uses
  %i.z = shl nuw nsw i32 %.125, 1
  %i.aa = or disjoint i32 %i.z, %.0.i34
  %.226 = select i1 %.not29, i32 %i.aa, i32 %.125 ; 2 uses
  %i.ab = zext i1 %.not29 to i32
  %.2 = add nuw nsw i32 %.1, %i.ab
  %.not30 = icmp ne i32 %5, 0                     ; 2 uses
  %i.ac = shl nuw nsw i32 %.226, 1
  %i.ad = or disjoint i32 %i.ac, %.0.i36
  %.327 = select i1 %.not30, i32 %i.ad, i32 %.226
  %i.ae = zext i1 %.not30 to i32
  %.3 = add nuw nsw i32 %.2, %i.ae                ; 2 uses
  %i.af = tail call ptr @BF_addEntry(ptr noundef %i.v, i32 noundef %.327, i32 noundef %.3) #11
  store ptr %i.af, ptr %0, align 8, !tbaa !15
  %i.ag = add nuw nsw i32 %.3, %i.s
  ret i32 %i.ag
}

declare ptr @BF_addEntry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @HuffmanCode(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6) local_unnamed_addr #5 {
bb.a:
  store i32 0, ptr %5, align 4, !tbaa !4
  store i32 0, ptr %6, align 4, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !4
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.k, label %abs_and_sign.exit

abs_and_sign.exit:                                ; preds = %bb.a
  %i.b = icmp slt i32 %1, 1
  %spec.select = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 4 uses
  %spec.select77 = zext i1 %i.b to i32            ; 2 uses
  %i.c = icmp slt i32 %2, 1
  %.1 = tail call i32 @llvm.abs.i32(i32 %2, i1 true) ; 4 uses
  %.0.i56 = zext i1 %i.c to i32
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [24 x i8], ptr @ht, i64 %i.d ; 5 uses
  %i.f = icmp sgt i32 %0, 15
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %abs_and_sign.exit
  %i.g = load i32, ptr %i.e, align 8, !tbaa !100  ; 3 uses
  %spec.select78 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 15)
  %.071 = tail call i32 @llvm.umin.i32(i32 %.1, i32 15)
  %.04981 = add nsw i32 %.1, -15
  %i.h = shl nuw nsw i32 %spec.select78, 4
  %i.i = or disjoint i32 %i.h, %.071
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %3, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.s = load i8, ptr %i.r, align 1, !tbaa !99
  %i.t = zext i8 %i.s to i32
  store i32 %i.t, ptr %5, align 4, !tbaa !4
  %i.u = icmp samesign ugt i32 %spec.select, 14
  br i1 %i.u, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %spec.select79 = add nsw i32 %spec.select, -15
  %i.v = load i32, ptr %4, align 4, !tbaa !4
  %i.w = or i32 %i.v, %spec.select79
  store i32 %i.w, ptr %4, align 4, !tbaa !4
  %i.x = load i32, ptr %6, align 4, !tbaa !4
  %i.y = add i32 %i.x, %i.g
  store i32 %i.y, ptr %6, align 4, !tbaa !4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not54 = icmp eq i32 %1, 0
  br i1 %.not54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.z = load i32, ptr %4, align 4, !tbaa !4
  %i.aa = shl i32 %i.z, 1
  %i.ab = or disjoint i32 %i.aa, %spec.select77
  store i32 %i.ab, ptr %4, align 4, !tbaa !4
  %i.ac = load i32, ptr %6, align 4, !tbaa !4
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %6, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = icmp samesign ugt i32 %.1, 14
  br i1 %i.ae, label %.thread75, label %bb.f

.thread75:                                        ; preds = %bb.e
  %i.af = load i32, ptr %4, align 4, !tbaa !4
  %i.ag = shl i32 %i.af, %i.g
  %i.ah = or i32 %i.ag, %.04981
  store i32 %i.ah, ptr %4, align 4, !tbaa !4
  %i.ai = load i32, ptr %6, align 4, !tbaa !4
  %i.aj = add i32 %i.ai, %i.g
  store i32 %i.aj, ptr %6, align 4, !tbaa !4
  br label %.sink.split

bb.f:                                             ; preds = %bb.e
  %.not55 = icmp eq i32 %2, 0
  br i1 %.not55, label %bb.j, label %.sink.split

bb.g:                                             ; preds = %abs_and_sign.exit
  %i.ak = shl nsw i32 %spec.select, 4
  %i.al = add nuw nsw i32 %i.ak, %.1
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !94
  %i.ao = zext nneg i32 %i.al to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !97
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %3, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ao
  %i.av = load i8, ptr %i.au, align 1, !tbaa !99
  %i.aw = zext i8 %i.av to i32
  %i.ax = load i32, ptr %5, align 4, !tbaa !4
  %i.ay = add nsw i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %5, align 4, !tbaa !4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i32, ptr %3, align 4, !tbaa !4
  %i.ba = shl i32 %i.az, 1
  %i.bb = or disjoint i32 %i.ba, %spec.select77
  store i32 %i.bb, ptr %3, align 4, !tbaa !4
  %i.bc = load i32, ptr %5, align 4, !tbaa !4
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %5, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not53 = icmp eq i32 %2, 0
  br i1 %.not53, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.f, %.thread75
  %.sink87 = phi ptr [ %4, %bb.f ], [ %4, %.thread75 ], [ %3, %bb.i ] ; 2 uses
  %.sink = phi ptr [ %6, %bb.f ], [ %6, %.thread75 ], [ %5, %bb.i ] ; 2 uses
  %i.be = load i32, ptr %.sink87, align 4, !tbaa !4
  %i.bf = shl i32 %i.be, 1
  %i.bg = or disjoint i32 %i.bf, %.0.i56
  store i32 %i.bg, ptr %.sink87, align 4, !tbaa !4
  %i.bh = load i32, ptr %.sink, align 4, !tbaa !4
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %.sink, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.f
  %i.bj = load i32, ptr %5, align 4, !tbaa !4
  %i.bk = load i32, ptr %6, align 4, !tbaa !4
  %i.bl = add nsw i32 %i.bk, %i.bj
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.0 = phi i32 [ %i.bl, %bb.j ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Huffmancodebits(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 23 uses
  %i.b = alloca i32, align 4                      ; 27 uses
  %i.c = alloca i32, align 4                      ; 23 uses
  %i.d = alloca i32, align 4                      ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52
  %i.g = shl i32 %i.f, 1                          ; 6 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit172, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
  %.not112 = icmp eq i32 %i.i, 0
  br i1 %.not112, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %.preheader171, label %bb.l

.loopexit:                                        ; preds = %._crit_edge.split.us188, %HuffmanCode.exit.us.us.us.2, %.preheader171
  %.us-phi190 = phi i32 [ %.0107191, %HuffmanCode.exit.us.us.us.2 ], [ %.0107191, %.preheader171 ], [ %124, %._crit_edge.split.us188 ] ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next215, 13
  br i1 %exitcond217.not, label %.loopexit172, label %.preheader171, !llvm.loop !101

.preheader171:                                    ; preds = %bb.c, %.loopexit
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.loopexit ], [ 0, %bb.c ] ; 2 uses
  %.0107191 = phi i32 [ %.us-phi190, %.loopexit ], [ 0, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv214
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 6 uses
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv.next215
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 5 uses
  %i.q = icmp slt i32 %i.n, 12
  %.0101.in.v = select i1 %i.q, i64 32, i64 36
  %.0101.in = getelementptr inbounds nuw i8, ptr %2, i64 %.0101.in.v
  %.0101 = load i32, ptr %.0101.in, align 4, !tbaa !4 ; 3 uses
  %i.r = icmp slt i32 %i.n, %i.p
  %i.s = sext i32 %.0101 to i64
  %i.t = getelementptr inbounds [24 x i8], ptr @ht, i64 %i.s ; 5 uses
  %i.u = icmp sgt i32 %.0101, 15                  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 6 uses
  br i1 %i.r, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %.preheader171
  %i.x = icmp eq i32 %.0101, 0
  br i1 %i.x, label %.split.us.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.split.us
  %i.y = sext i32 %i.n to i64                     ; 3 uses
  %i.z = sext i32 %i.p to i64                     ; 3 uses
  br label %abs_and_sign.exit.i.us

.split.us.split.us:                               ; preds = %.split.us
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i32 0, ptr %i.c, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %HuffmanCode.exit.us.us.us

HuffmanCode.exit.us.us.us:                        ; preds = %HuffmanCode.exit.us.us.us, %.split.us.split.us
  %i.aa = phi ptr [ %.pre, %.split.us.split.us ], [ %i.ac, %HuffmanCode.exit.us.us.us ]
  %.0104177.us.us.us = phi i32 [ %i.n, %.split.us.split.us ], [ %i.ad, %HuffmanCode.exit.us.us.us ]
  %i.ab = tail call ptr @BF_addEntry(ptr noundef %i.aa, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !15
  %i.ac = tail call ptr @BF_addEntry(ptr noundef %i.ab, i32 noundef 0, i32 noundef 0) #11 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !15
  %i.ad = add nsw i32 %.0104177.us.us.us, 2       ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %i.p
  br i1 %i.ae, label %HuffmanCode.exit.us.us.us, label %HuffmanCode.exit.us.us.us.1, !llvm.loop !102

HuffmanCode.exit.us.us.us.1:                      ; preds = %HuffmanCode.exit.us.us.us, %HuffmanCode.exit.us.us.us.1
  %i.af = phi ptr [ %i.ah, %HuffmanCode.exit.us.us.us.1 ], [ %i.ac, %HuffmanCode.exit.us.us.us ]
  %.0104177.us.us.us.1 = phi i32 [ %i.ai, %HuffmanCode.exit.us.us.us.1 ], [ %i.n, %HuffmanCode.exit.us.us.us ]
  %i.ag = tail call ptr @BF_addEntry(ptr noundef %i.af, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !15
  %i.ah = tail call ptr @BF_addEntry(ptr noundef %i.ag, i32 noundef 0, i32 noundef 0) #11 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !15
  %i.ai = add nsw i32 %.0104177.us.us.us.1, 2     ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.p
  br i1 %i.aj, label %HuffmanCode.exit.us.us.us.1, label %HuffmanCode.exit.us.us.us.2, !llvm.loop !102

HuffmanCode.exit.us.us.us.2:                      ; preds = %HuffmanCode.exit.us.us.us.1, %HuffmanCode.exit.us.us.us.2
  %i.ak = phi ptr [ %i.am, %HuffmanCode.exit.us.us.us.2 ], [ %i.ah, %HuffmanCode.exit.us.us.us.1 ]
  %.0104177.us.us.us.2 = phi i32 [ %i.an, %HuffmanCode.exit.us.us.us.2 ], [ %i.n, %HuffmanCode.exit.us.us.us.1 ]
  %i.al = tail call ptr @BF_addEntry(ptr noundef %i.ak, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !15
  %i.am = tail call ptr @BF_addEntry(ptr noundef %i.al, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !15
  %i.an = add nsw i32 %.0104177.us.us.us.2, 2     ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.p
  br i1 %i.ao, label %HuffmanCode.exit.us.us.us.2, label %.loopexit, !llvm.loop !102

abs_and_sign.exit.i.us:                           ; preds = %.preheader.us.preheader, %HuffmanCode.exit.us182
  %indvars.iv206 = phi i64 [ %i.y, %.preheader.us.preheader ], [ %indvars.iv.next207, %HuffmanCode.exit.us182 ] ; 2 uses
  %.2175.us = phi i32 [ %.0107191, %.preheader.us.preheader ], [ %61, %HuffmanCode.exit.us182 ]
  %3 = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv206 ; 2 uses
  %4 = load i32, ptr %3, align 4, !tbaa !4        ; 4 uses
  %5 = getelementptr i8, ptr %3, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !4        ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %7 = icmp slt i32 %4, 1
  %spec.select.i.us = tail call i32 @llvm.abs.i32(i32 %4, i1 true) ; 4 uses
  %spec.select77.i.us = zext i1 %7 to i32         ; 3 uses
  %8 = icmp slt i32 %6, 1
  %.1.i.us = tail call i32 @llvm.abs.i32(i32 %6, i1 true) ; 4 uses
  %.0.i56.i.us = zext i1 %8 to i32
  br i1 %i.u, label %28, label %9

9:                                                ; preds = %abs_and_sign.exit.i.us
  %10 = shl nsw i32 %spec.select.i.us, 4
  %11 = add nuw nsw i32 %10, %.1.i.us
  %12 = load ptr, ptr %i.v, align 8, !tbaa !94
  %13 = zext nneg i32 %11 to i64                  ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !97
  %16 = trunc i64 %15 to i32                      ; 3 uses
  store i32 %16, ptr %i.c, align 4, !tbaa !4
  %17 = load ptr, ptr %i.w, align 8, !tbaa !98
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %13
  %19 = load i8, ptr %18, align 1, !tbaa !99
  %20 = zext i8 %19 to i32                        ; 3 uses
  store i32 %20, ptr %i.a, align 4, !tbaa !4
  %.not.i.us = icmp eq i32 %4, 0
  br i1 %.not.i.us, label %25, label %21

21:                                               ; preds = %9
  %22 = shl i32 %16, 1
  %23 = or disjoint i32 %22, %spec.select77.i.us  ; 2 uses
  store i32 %23, ptr %i.c, align 4, !tbaa !4
  %24 = add nuw nsw i32 %20, 1                    ; 2 uses
  store i32 %24, ptr %i.a, align 4, !tbaa !4
  br label %25

25:                                               ; preds = %21, %9
  %26 = phi i32 [ %24, %21 ], [ %20, %9 ]         ; 2 uses
  %27 = phi i32 [ %23, %21 ], [ %16, %9 ]         ; 2 uses
  %.not53.i.us = icmp eq i32 %6, 0
  br i1 %.not53.i.us, label %HuffmanCode.exit.us182, label %.sink.split.i.us

28:                                               ; preds = %abs_and_sign.exit.i.us
  %29 = load i32, ptr %i.t, align 8, !tbaa !100   ; 3 uses
  %spec.select78.i.us = tail call i32 @llvm.umin.i32(i32 %spec.select.i.us, i32 15)
  %.071.i.us = tail call i32 @llvm.umin.i32(i32 %.1.i.us, i32 15)
  %.04981.i.us = add nsw i32 %.1.i.us, -15
  %30 = shl nuw nsw i32 %spec.select78.i.us, 4
  %31 = or disjoint i32 %30, %.071.i.us
  %32 = load ptr, ptr %i.v, align 8, !tbaa !94
  %33 = zext nneg i32 %31 to i64                  ; 2 uses
  %34 = getelementptr inbounds nuw [8 x i8], ptr %32, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !97
  %36 = trunc i64 %35 to i32                      ; 2 uses
  store i32 %36, ptr %i.c, align 4, !tbaa !4
  %37 = load ptr, ptr %i.w, align 8, !tbaa !98
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 %33
  %39 = load i8, ptr %38, align 1, !tbaa !99
  %40 = zext i8 %39 to i32                        ; 2 uses
  store i32 %40, ptr %i.a, align 4, !tbaa !4
  %41 = icmp samesign ugt i32 %spec.select.i.us, 14
  br i1 %41, label %.thread.i.us, label %42

42:                                               ; preds = %28
  %.not54.i.us = icmp eq i32 %4, 0
  br i1 %.not54.i.us, label %46, label %.preheader.us

.thread.i.us:                                     ; preds = %28
  %spec.select79.i.us = shl nuw i32 %spec.select.i.us, 1
  %43 = add i32 %spec.select79.i.us, -30
  %44 = or disjoint i32 %43, %spec.select77.i.us
  %45 = add nsw i32 %29, 1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.thread.i.us, %42
  %.0..0.155.us = phi i32 [ %45, %.thread.i.us ], [ 1, %42 ] ; 2 uses
  %.1108180.us = phi i32 [ %44, %.thread.i.us ], [ %spec.select77.i.us, %42 ] ; 2 uses
  store i32 %.1108180.us, ptr %i.d, align 4, !tbaa !4
  store i32 %.0..0.155.us, ptr %i.b, align 4, !tbaa !4
  br label %46

46:                                               ; preds = %.preheader.us, %42
  %.0..0.156.us = phi i32 [ %.0..0.155.us, %.preheader.us ], [ 0, %42 ] ; 3 uses
  %.0..0.143.us = phi i32 [ %.1108180.us, %.preheader.us ], [ 0, %42 ] ; 3 uses
  %47 = icmp samesign ugt i32 %.1.i.us, 14
  br i1 %47, label %.thread75.i.us, label %48

48:                                               ; preds = %46
  %.not55.i.us = icmp eq i32 %6, 0
  br i1 %.not55.i.us, label %HuffmanCode.exit.us182, label %.sink.split.i.us

.thread75.i.us:                                   ; preds = %46
  %49 = shl i32 %.0..0.143.us, %29
  %50 = or i32 %49, %.04981.i.us                  ; 2 uses
  store i32 %50, ptr %i.d, align 4, !tbaa !4
  %51 = add i32 %.0..0.156.us, %29                ; 2 uses
  store i32 %51, ptr %i.b, align 4, !tbaa !4
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.thread75.i.us, %48, %25
  %52 = phi i32 [ %.0..0.156.us, %48 ], [ %51, %.thread75.i.us ], [ %26, %25 ]
  %53 = phi i32 [ %.0..0.143.us, %48 ], [ %50, %.thread75.i.us ], [ %27, %25 ]
  %.sink88.i.us = phi ptr [ %i.d, %48 ], [ %i.d, %.thread75.i.us ], [ %i.c, %25 ]
  %.sink.i.us = phi ptr [ %i.b, %48 ], [ %i.b, %.thread75.i.us ], [ %i.a, %25 ]
  %54 = shl i32 %53, 1
  %55 = or disjoint i32 %54, %.0.i56.i.us
  store i32 %55, ptr %.sink88.i.us, align 4, !tbaa !4
  %56 = add nsw i32 %52, 1
  store i32 %56, ptr %.sink.i.us, align 4, !tbaa !4
  %.0..0..0.166.us.pre = load i32, ptr %i.a, align 4, !tbaa !4
  %.0..0..0.154.us.pre = load i32, ptr %i.b, align 4, !tbaa !4
  %.0..0..0.148.us183.pre = load i32, ptr %i.c, align 4, !tbaa !4
  %.0..0..0..us185.pre = load i32, ptr %i.d, align 4, !tbaa !4
  br label %HuffmanCode.exit.us182

HuffmanCode.exit.us182:                           ; preds = %.sink.split.i.us, %48, %25
  %.0..0..us185 = phi i32 [ %.0..0..0..us185.pre, %.sink.split.i.us ], [ %.0..0.143.us, %48 ], [ 0, %25 ]
  %.0..0.148.us183 = phi i32 [ %.0..0..0.148.us183.pre, %.sink.split.i.us ], [ %36, %48 ], [ %27, %25 ]
  %.0..0.152.us186 = phi i32 [ %.0..0..0.154.us.pre, %.sink.split.i.us ], [ %.0..0.156.us, %48 ], [ 0, %25 ] ; 2 uses
  %.0..0.166.us = phi i32 [ %.0..0..0.166.us.pre, %.sink.split.i.us ], [ %40, %48 ], [ %26, %25 ] ; 2 uses
  %57 = add nsw i32 %.0..0.152.us186, %.0..0.166.us
  %58 = load ptr, ptr %0, align 8, !tbaa !15
  %59 = tail call ptr @BF_addEntry(ptr noundef %58, i32 noundef %.0..0.148.us183, i32 noundef %.0..0.166.us) #11 ; 2 uses
  store ptr %59, ptr %0, align 8, !tbaa !15
  %60 = tail call ptr @BF_addEntry(ptr noundef %59, i32 noundef %.0..0..us185, i32 noundef %.0..0.152.us186) #11
  store ptr %60, ptr %0, align 8, !tbaa !15
  %61 = add nsw i32 %57, %.2175.us                ; 2 uses
  %indvars.iv.next207 = add nsw i64 %indvars.iv206, 2 ; 2 uses
  %62 = icmp slt i64 %indvars.iv.next207, %i.z
  br i1 %62, label %abs_and_sign.exit.i.us, label %abs_and_sign.exit.i.us.a, !llvm.loop !102

abs_and_sign.exit.i.us.a:                         ; preds = %HuffmanCode.exit.us182, %HuffmanCode.exit.us183
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %HuffmanCode.exit.us183 ], [ %i.y, %HuffmanCode.exit.us182 ] ; 2 uses
  %.2176.us = phi i32 [ %i.co, %HuffmanCode.exit.us183 ], [ %61, %HuffmanCode.exit.us182 ]
  %i.ap = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv207 ; 2 uses
  %63 = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aq = load i32, ptr %63, align 4, !tbaa !4    ; 4 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %i.at = icmp slt i32 %i.aq, 1
  %spec.select.i.us.a = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 4 uses
  %spec.select77.i.us.a = zext i1 %i.at to i32    ; 3 uses
  %i.au = icmp slt i32 %i.as, 1
  %.1.i.us.a = tail call i32 @llvm.abs.i32(i32 %i.as, i1 true) ; 4 uses
  %.0.i56.i.us.a = zext i1 %i.au to i32
  br i1 %i.u, label %bb.g, label %bb.d

bb.d:                                             ; preds = %abs_and_sign.exit.i.us.a
  %i.av = shl nsw i32 %spec.select.i.us.a, 4
  %i.aw = add nuw nsw i32 %i.av, %.1.i.us.a
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.ay = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !97
  %i.bb = trunc i64 %i.ba to i32                  ; 3 uses
  store i32 %i.bb, ptr %i.c, align 4, !tbaa !4
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ay
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !99
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !4
  %.not.i.us.a = icmp eq i32 %i.aq, 0
  br i1 %.not.i.us.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = shl i32 %i.bb, 1
  %i.bh = or disjoint i32 %i.bg, %spec.select77.i.us.a ; 2 uses
  store i32 %i.bh, ptr %i.c, align 4, !tbaa !4
  %i.bi = add nuw nsw i32 %i.bf, 1                ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bj = phi i32 [ %i.bi, %bb.e ], [ %i.bf, %bb.d ] ; 2 uses
  %i.bk = phi i32 [ %i.bh, %bb.e ], [ %i.bb, %bb.d ] ; 2 uses
  %.not53.i.us.a = icmp eq i32 %i.as, 0
  br i1 %.not53.i.us.a, label %HuffmanCode.exit.us183, label %.sink.split.i.us.a

bb.g:                                             ; preds = %abs_and_sign.exit.i.us.a
  %i.bl = load i32, ptr %i.t, align 8, !tbaa !100 ; 3 uses
  %spec.select78.i.us.a = tail call i32 @llvm.umin.i32(i32 %spec.select.i.us.a, i32 15)
  %.071.i.us.a = tail call i32 @llvm.umin.i32(i32 %.1.i.us.a, i32 15)
  %.04981.i.us.1 = add nsw i32 %.1.i.us.a, -15
  %i.bm = shl nuw nsw i32 %spec.select78.i.us.a, 4
  %i.bn = or disjoint i32 %i.bm, %.071.i.us.a
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.bp = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !97
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !4
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !98
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !99
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !4
  %i.bx = icmp samesign ugt i32 %spec.select.i.us.a, 14
  br i1 %i.bx, label %.thread.i.us.a, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not54.i.us.a = icmp eq i32 %i.aq, 0
  br i1 %.not54.i.us.a, label %bb.j, label %bb.i

.thread.i.us.a:                                   ; preds = %bb.g
  %spec.select79.i.us.a = shl nuw i32 %spec.select.i.us.a, 1
  %i.by = add i32 %spec.select79.i.us.a, -30
  %i.bz = or disjoint i32 %i.by, %spec.select77.i.us.a
  %i.ca = add nsw i32 %i.bl, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread.i.us.a, %bb.h
  %.0..0.156.us.a = phi i32 [ %i.ca, %.thread.i.us.a ], [ 1, %bb.h ] ; 2 uses
  %.0..0.143.us.a = phi i32 [ %i.bz, %.thread.i.us.a ], [ %spec.select77.i.us.a, %bb.h ] ; 2 uses
  store i32 %.0..0.143.us.a, ptr %i.d, align 4, !tbaa !4
  store i32 %.0..0.156.us.a, ptr %i.b, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0..0.157.us = phi i32 [ %.0..0.156.us.a, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.0..0.144.us = phi i32 [ %.0..0.143.us.a, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.cb = icmp samesign ugt i32 %.1.i.us.a, 14
  br i1 %i.cb, label %.thread75.i.us.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not55.i.us.a = icmp eq i32 %i.as, 0
  br i1 %.not55.i.us.a, label %HuffmanCode.exit.us183, label %.sink.split.i.us.a

.thread75.i.us.a:                                 ; preds = %bb.j
  %i.cc = shl i32 %.0..0.144.us, %i.bl
  %i.cd = or i32 %i.cc, %.04981.i.us.1            ; 2 uses
  store i32 %i.cd, ptr %i.d, align 4, !tbaa !4
  %i.ce = add i32 %.0..0.157.us, %i.bl            ; 2 uses
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !4
  br label %.sink.split.i.us.a

.sink.split.i.us.a:                               ; preds = %.thread75.i.us.a, %bb.k, %bb.f
  %i.cf = phi i32 [ %.0..0.157.us, %bb.k ], [ %i.ce, %.thread75.i.us.a ], [ %i.bj, %bb.f ]
  %i.cg = phi i32 [ %.0..0.144.us, %bb.k ], [ %i.cd, %.thread75.i.us.a ], [ %i.bk, %bb.f ]
  %.sink87.i.us = phi ptr [ %i.d, %bb.k ], [ %i.d, %.thread75.i.us.a ], [ %i.c, %bb.f ]
  %.sink.i.us.a = phi ptr [ %i.b, %bb.k ], [ %i.b, %.thread75.i.us.a ], [ %i.a, %bb.f ]
  %i.ch = shl i32 %i.cg, 1
  %i.ci = or disjoint i32 %i.ch, %.0.i56.i.us.a
  store i32 %i.ci, ptr %.sink87.i.us, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.cf, 1
  store i32 %i.cj, ptr %.sink.i.us.a, align 4, !tbaa !4
  %.0..0..0.167.us.pre = load i32, ptr %i.a, align 4, !tbaa !4
  %.0..0..0.155.us.pre = load i32, ptr %i.b, align 4, !tbaa !4
  %.0..0..0.149.us184.pre = load i32, ptr %i.c, align 4, !tbaa !4
  %.0..0..0..us186.pre = load i32, ptr %i.d, align 4, !tbaa !4
  br label %HuffmanCode.exit.us183

HuffmanCode.exit.us183:                           ; preds = %.sink.split.i.us.a, %bb.k, %bb.f
  %.0..0..us186 = phi i32 [ %.0..0..0..us186.pre, %.sink.split.i.us.a ], [ %.0..0.144.us, %bb.k ], [ 0, %bb.f ]
  %.0..0.149.us184 = phi i32 [ %.0..0..0.149.us184.pre, %.sink.split.i.us.a ], [ %i.bs, %bb.k ], [ %i.bk, %bb.f ]
  %.0..0.153.us187 = phi i32 [ %.0..0..0.155.us.pre, %.sink.split.i.us.a ], [ %.0..0.157.us, %bb.k ], [ 0, %bb.f ] ; 2 uses
  %.0..0.167.us = phi i32 [ %.0..0..0.167.us.pre, %.sink.split.i.us.a ], [ %i.bw, %bb.k ], [ %i.bj, %bb.f ] ; 2 uses
  %i.ck = add nsw i32 %.0..0.153.us187, %.0..0.167.us
  %i.cl = load ptr, ptr %0, align 8, !tbaa !15
  %i.cm = tail call ptr @BF_addEntry(ptr noundef %i.cl, i32 noundef %.0..0.149.us184, i32 noundef %.0..0.167.us) #11 ; 2 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !15
  %i.cn = tail call ptr @BF_addEntry(ptr noundef %i.cm, i32 noundef %.0..0..us186, i32 noundef %.0..0.153.us187) #11
  store ptr %i.cn, ptr %0, align 8, !tbaa !15
  %i.co = add nsw i32 %i.ck, %.2176.us            ; 2 uses
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 2 ; 2 uses
  %i.cp = icmp slt i64 %indvars.iv.next208, %i.z
  br i1 %i.cp, label %abs_and_sign.exit.i.us.a, label %abs_and_sign.exit.i.us.2, !llvm.loop !102

abs_and_sign.exit.i.us.2:                         ; preds = %HuffmanCode.exit.us183, %._crit_edge.split.us188
  %indvars.iv206.2 = phi i64 [ %indvars.iv.next211, %._crit_edge.split.us188 ], [ %i.y, %HuffmanCode.exit.us183 ] ; 2 uses
  %.2175.us.2 = phi i32 [ %124, %._crit_edge.split.us188 ], [ %i.co, %HuffmanCode.exit.us183 ]
  %64 = getelementptr inbounds [12 x i8], ptr %1, i64 %indvars.iv206.2 ; 2 uses
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %66 = load i32, ptr %65, align 4, !tbaa !4      ; 4 uses
  %67 = getelementptr i8, ptr %64, i64 20
  %68 = load i32, ptr %67, align 4, !tbaa !4      ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %69 = icmp slt i32 %66, 1
  %spec.select.i.us.2 = tail call i32 @llvm.abs.i32(i32 %66, i1 true) ; 4 uses
  %spec.select77.i.us.2 = zext i1 %69 to i32      ; 3 uses
  %70 = icmp slt i32 %68, 1
  %.1.i.us.2 = tail call i32 @llvm.abs.i32(i32 %68, i1 true) ; 4 uses
  %.0.i56.i.us.2 = zext i1 %70 to i32
  br i1 %i.u, label %90, label %71

71:                                               ; preds = %abs_and_sign.exit.i.us.2
  %72 = shl nsw i32 %spec.select.i.us.2, 4
  %73 = add nuw nsw i32 %72, %.1.i.us.2
  %74 = load ptr, ptr %i.v, align 8, !tbaa !94
  %75 = zext nneg i32 %73 to i64                  ; 2 uses
  %76 = getelementptr inbounds nuw [8 x i8], ptr %74, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !97
  %78 = trunc i64 %77 to i32                      ; 3 uses
  store i32 %78, ptr %i.c, align 4, !tbaa !4
  %79 = load ptr, ptr %i.w, align 8, !tbaa !98
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 %75
  %81 = load i8, ptr %80, align 1, !tbaa !99
  %82 = zext i8 %81 to i32                        ; 3 uses
  store i32 %82, ptr %i.a, align 4, !tbaa !4
  %.not.i.us.2 = icmp eq i32 %66, 0
  br i1 %.not.i.us.2, label %87, label %83

83:                                               ; preds = %71
  %84 = shl i32 %78, 1
  %85 = or disjoint i32 %84, %spec.select77.i.us.2 ; 2 uses
  store i32 %85, ptr %i.c, align 4, !tbaa !4
  %86 = add nuw nsw i32 %82, 1                    ; 2 uses
  store i32 %86, ptr %i.a, align 4, !tbaa !4
  br label %87

87:                                               ; preds = %83, %71
  %88 = phi i32 [ %86, %83 ], [ %82, %71 ]        ; 2 uses
  %89 = phi i32 [ %85, %83 ], [ %78, %71 ]        ; 2 uses
  %.not53.i.us.2 = icmp eq i32 %68, 0
  br i1 %.not53.i.us.2, label %._crit_edge.split.us188, label %.sink.split.i.us.2

90:                                               ; preds = %abs_and_sign.exit.i.us.2
  %91 = load i32, ptr %i.t, align 8, !tbaa !100   ; 3 uses
  %spec.select78.i.us.2 = tail call i32 @llvm.umin.i32(i32 %spec.select.i.us.2, i32 15)
  %.071.i.us.2 = tail call i32 @llvm.umin.i32(i32 %.1.i.us.2, i32 15)
  %.04981.i.us.2 = add nsw i32 %.1.i.us.2, -15
  %92 = shl nuw nsw i32 %spec.select78.i.us.2, 4
  %93 = or disjoint i32 %92, %.071.i.us.2
  %94 = load ptr, ptr %i.v, align 8, !tbaa !94
  %95 = zext nneg i32 %93 to i64                  ; 2 uses
  %96 = getelementptr inbounds nuw [8 x i8], ptr %94, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !97
  %98 = trunc i64 %97 to i32                      ; 2 uses
  store i32 %98, ptr %i.c, align 4, !tbaa !4
  %99 = load ptr, ptr %i.w, align 8, !tbaa !98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %95
  %101 = load i8, ptr %100, align 1, !tbaa !99
  %102 = zext i8 %101 to i32                      ; 2 uses
  store i32 %102, ptr %i.a, align 4, !tbaa !4
  %103 = icmp samesign ugt i32 %spec.select.i.us.2, 14
  br i1 %103, label %.thread.i.us.2, label %104

104:                                              ; preds = %90
  %.not54.i.us.2 = icmp eq i32 %66, 0
  br i1 %.not54.i.us.2, label %109, label %108

.thread.i.us.2:                                   ; preds = %90
  %spec.select79.i.us.2 = shl nuw i32 %spec.select.i.us.2, 1
  %105 = add i32 %spec.select79.i.us.2, -30
  %106 = or disjoint i32 %105, %spec.select77.i.us.2
  %107 = add nsw i32 %91, 1
  br label %108

108:                                              ; preds = %.thread.i.us.2, %104
  %.0..0.155.us.2 = phi i32 [ %107, %.thread.i.us.2 ], [ 1, %104 ] ; 2 uses
  %.0..0.142.us.2 = phi i32 [ %106, %.thread.i.us.2 ], [ %spec.select77.i.us.2, %104 ] ; 2 uses
  store i32 %.0..0.142.us.2, ptr %i.d, align 4, !tbaa !4
  store i32 %.0..0.155.us.2, ptr %i.b, align 4, !tbaa !4
  br label %109

109:                                              ; preds = %108, %104
  %.0..0.156.us.2 = phi i32 [ %.0..0.155.us.2, %108 ], [ 0, %104 ] ; 3 uses
  %.0..0.143.us.2 = phi i32 [ %.0..0.142.us.2, %108 ], [ 0, %104 ] ; 3 uses
  %110 = icmp samesign ugt i32 %.1.i.us.2, 14
  br i1 %110, label %.thread75.i.us.2, label %111

111:                                              ; preds = %109
  %.not55.i.us.2 = icmp eq i32 %68, 0
  br i1 %.not55.i.us.2, label %._crit_edge.split.us188, label %.sink.split.i.us.2

.thread75.i.us.2:                                 ; preds = %109
  %112 = shl i32 %.0..0.143.us.2, %91
  %113 = or i32 %112, %.04981.i.us.2              ; 2 uses
  store i32 %113, ptr %i.d, align 4, !tbaa !4
  %114 = add i32 %.0..0.156.us.2, %91             ; 2 uses
  store i32 %114, ptr %i.b, align 4, !tbaa !4
  br label %.sink.split.i.us.2

.sink.split.i.us.2:                               ; preds = %.thread75.i.us.2, %111, %87
  %115 = phi i32 [ %.0..0.156.us.2, %111 ], [ %114, %.thread75.i.us.2 ], [ %88, %87 ]
  %116 = phi i32 [ %.0..0.143.us.2, %111 ], [ %113, %.thread75.i.us.2 ], [ %89, %87 ]
  %.sink88.i.us.2 = phi ptr [ %i.d, %111 ], [ %i.d, %.thread75.i.us.2 ], [ %i.c, %87 ]
  %.sink.i.us.2 = phi ptr [ %i.b, %111 ], [ %i.b, %.thread75.i.us.2 ], [ %i.a, %87 ]
  %117 = shl i32 %116, 1
  %118 = or disjoint i32 %117, %.0.i56.i.us.2
  store i32 %118, ptr %.sink88.i.us.2, align 4, !tbaa !4
  %119 = add nsw i32 %115, 1
  store i32 %119, ptr %.sink.i.us.2, align 4, !tbaa !4
  %.0..0..0.166.us.pre.2 = load i32, ptr %i.a, align 4, !tbaa !4
  %.0..0..0.154.us.pre.2 = load i32, ptr %i.b, align 4, !tbaa !4
  %.0..0..0.148.us183.pre.2 = load i32, ptr %i.c, align 4, !tbaa !4
  %.0..0..0..us185.pre.2 = load i32, ptr %i.d, align 4, !tbaa !4
  br label %._crit_edge.split.us188

._crit_edge.split.us188:                          ; preds = %.sink.split.i.us.2, %111, %87
  %.0..0..us185.2 = phi i32 [ %.0..0..0..us185.pre.2, %.sink.split.i.us.2 ], [ %.0..0.143.us.2, %111 ], [ 0, %87 ]
  %.0..0.148.us183.2 = phi i32 [ %.0..0..0.148.us183.pre.2, %.sink.split.i.us.2 ], [ %98, %111 ], [ %89, %87 ]
  %.0..0.152.us186.2 = phi i32 [ %.0..0..0.154.us.pre.2, %.sink.split.i.us.2 ], [ %.0..0.156.us.2, %111 ], [ 0, %87 ] ; 2 uses
  %.0..0.166.us.2 = phi i32 [ %.0..0..0.166.us.pre.2, %.sink.split.i.us.2 ], [ %102, %111 ], [ %88, %87 ] ; 2 uses
  %120 = add nsw i32 %.0..0.152.us186.2, %.0..0.166.us.2
  %121 = load ptr, ptr %0, align 8, !tbaa !15
  %122 = tail call ptr @BF_addEntry(ptr noundef %121, i32 noundef %.0..0.148.us183.2, i32 noundef %.0..0.166.us.2) #11 ; 2 uses
  store ptr %122, ptr %0, align 8, !tbaa !15
  %123 = tail call ptr @BF_addEntry(ptr noundef %122, i32 noundef %.0..0..us185.2, i32 noundef %.0..0.152.us186.2) #11
  store ptr %123, ptr %0, align 8, !tbaa !15
  %124 = add nsw i32 %120, %.2175.us.2            ; 2 uses
  %indvars.iv.next211 = add nsw i64 %indvars.iv206.2, 2 ; 2 uses
  %125 = icmp slt i64 %indvars.iv.next211, %i.z
  br i1 %125, label %abs_and_sign.exit.i.us.2, label %.loopexit, !llvm.loop !102

bb.l:                                             ; preds = %bb.c
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %i.cs = add i32 %i.cr, 1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !103
  %i.cy = add i32 %i.cr, 2
  %i.cz = add i32 %i.cy, %i.cx
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = sext i32 %i.dc to i64
  %i.de = sext i32 %i.cv to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  %.0102 = phi i64 [ %i.dd, %bb.l ], [ 576, %bb.b ]
  %.0 = phi i64 [ %i.de, %bb.l ], [ 36, %bb.b ]
  %i.df = icmp sgt i32 %i.g, 0
  br i1 %i.df, label %.lr.ph, label %.loopexit172

.lr.ph:                                           ; preds = %bb.m
  %i.dg = zext nneg i32 %i.g to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %.3174 = phi i32 [ 0, %.lr.ph ], [ %.4, %bb.w ] ; 2 uses
  %i.dh = icmp slt i64 %indvars.iv, %.0
  %i.di = icmp slt i64 %indvars.iv, %.0102
  %..v = select i1 %i.di, i64 36, i64 40
  %.0100.in.v = select i1 %i.dh, i64 32, i64 %..v
  %.0100.in = getelementptr inbounds nuw i8, ptr %2, i64 %.0100.in.v
  %.0100 = load i32, ptr %.0100.in, align 4, !tbaa !4 ; 3 uses
  %.not117 = icmp eq i32 %.0100, 0
  br i1 %.not117, label %bb.w, label %abs_and_sign.exit.i118

abs_and_sign.exit.i118:                           ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4  ; 4 uses
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !4  ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %i.dn = icmp slt i32 %i.dm, 1
  %spec.select.i119 = tail call i32 @llvm.abs.i32(i32 %i.dm, i1 true) ; 4 uses
  %spec.select77.i120 = zext i1 %i.dn to i32      ; 3 uses
  %i.do = icmp slt i32 %i.dl, 1
  %.1.i121 = tail call i32 @llvm.abs.i32(i32 %i.dl, i1 true) ; 4 uses
  %.0.i56.i122 = zext i1 %i.do to i32
  %i.dp = sext i32 %.0100 to i64
  %i.dq = getelementptr inbounds [24 x i8], ptr @ht, i64 %i.dp ; 5 uses
  %i.dr = icmp sgt i32 %.0100, 15
  br i1 %i.dr, label %bb.o, label %bb.t

bb.o:                                             ; preds = %abs_and_sign.exit.i118
  %i.ds = load i32, ptr %i.dq, align 8, !tbaa !100 ; 3 uses
  %spec.select78.i129 = tail call i32 @llvm.umin.i32(i32 %spec.select.i119, i32 15)
  %.071.i130 = tail call i32 @llvm.umin.i32(i32 %.1.i121, i32 15)
  %.04981.i131 = add nsw i32 %.1.i121, -15
  %i.dt = shl nuw nsw i32 %spec.select78.i129, 4
  %i.du = or disjoint i32 %i.dt, %.071.i130
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !94
  %i.dx = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !97
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  store i32 %i.ea, ptr %i.c, align 4, !tbaa !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !98
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dx
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !99
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  store i32 %i.ef, ptr %i.a, align 4, !tbaa !4
  %i.eg = icmp samesign ugt i32 %spec.select.i119, 14
  br i1 %i.eg, label %.thread.i135, label %bb.p

.thread.i135:                                     ; preds = %bb.o
  %spec.select79.i136 = shl nuw i32 %spec.select.i119, 1
  %i.eh = add i32 %spec.select79.i136, -30
  %i.ei = or disjoint i32 %i.eh, %spec.select77.i120
  %i.ej = add nsw i32 %i.ds, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not54.i132 = icmp eq i32 %i.dm, 0
  br i1 %.not54.i132, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread.i135
  %.0..0.160.a = phi i32 [ 1, %bb.p ], [ %i.ej, %.thread.i135 ] ; 2 uses
  %.0..0.146.a = phi i32 [ %spec.select77.i120, %bb.p ], [ %i.ei, %.thread.i135 ] ; 2 uses
  store i32 %.0..0.146.a, ptr %i.d, align 4, !tbaa !4
  store i32 %.0..0.160.a, ptr %i.b, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0..0.161 = phi i32 [ %.0..0.160.a, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %.0..0.147 = phi i32 [ %.0..0.146.a, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.ek = icmp samesign ugt i32 %.1.i121, 14
  br i1 %i.ek, label %.thread75.i134, label %bb.s

.thread75.i134:                                   ; preds = %bb.r
  %i.el = shl i32 %.0..0.147, %i.ds
  %i.em = or i32 %i.el, %.04981.i131              ; 2 uses
  store i32 %i.em, ptr %i.d, align 4, !tbaa !4
  %i.en = add i32 %.0..0.161, %i.ds               ; 2 uses
  store i32 %i.en, ptr %i.b, align 4, !tbaa !4
  br label %.sink.split.i125

bb.s:                                             ; preds = %bb.r
  %.not55.i133 = icmp eq i32 %i.dl, 0
  br i1 %.not55.i133, label %HuffmanCode.exit137, label %.sink.split.i125

bb.t:                                             ; preds = %abs_and_sign.exit.i118
  %i.eo = shl nsw i32 %spec.select.i119, 4
  %i.ep = add nuw nsw i32 %i.eo, %.1.i121
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !94
  %i.es = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !97
  %i.ev = trunc i64 %i.eu to i32                  ; 3 uses
  store i32 %i.ev, ptr %i.c, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !98
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.es
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !99
  %i.fa = zext i8 %i.ez to i32                    ; 3 uses
  store i32 %i.fa, ptr %i.a, align 4, !tbaa !4
  %.not.i123 = icmp eq i32 %i.dm, 0
  br i1 %.not.i123, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fb = shl i32 %i.ev, 1
  %i.fc = or disjoint i32 %i.fb, %spec.select77.i120 ; 2 uses
  store i32 %i.fc, ptr %i.c, align 4, !tbaa !4
  %i.fd = add nuw nsw i32 %i.fa, 1                ; 2 uses
  store i32 %i.fd, ptr %i.a, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fe = phi i32 [ %i.fd, %bb.u ], [ %i.fa, %bb.t ] ; 2 uses
  %i.ff = phi i32 [ %i.fc, %bb.u ], [ %i.ev, %bb.t ] ; 2 uses
  %.not53.i124 = icmp eq i32 %i.dl, 0
  br i1 %.not53.i124, label %HuffmanCode.exit137, label %.sink.split.i125

.sink.split.i125:                                 ; preds = %bb.v, %bb.s, %.thread75.i134
  %i.fg = phi i32 [ %.0..0.161, %bb.s ], [ %i.en, %.thread75.i134 ], [ %i.fe, %bb.v ]
  %i.fh = phi i32 [ %.0..0.147, %bb.s ], [ %i.em, %.thread75.i134 ], [ %i.ff, %bb.v ]
  %.sink87.i126 = phi ptr [ %i.d, %bb.s ], [ %i.d, %.thread75.i134 ], [ %i.c, %bb.v ]
  %.sink.i127 = phi ptr [ %i.b, %bb.s ], [ %i.b, %.thread75.i134 ], [ %i.a, %bb.v ]
  %i.fi = shl i32 %i.fh, 1
  %i.fj = or disjoint i32 %i.fi, %.0.i56.i122
  store i32 %i.fj, ptr %.sink87.i126, align 4, !tbaa !4
  %i.fk = add nsw i32 %i.fg, 1
  store i32 %i.fk, ptr %.sink.i127, align 4, !tbaa !4
  %.0..0..0.170.pre = load i32, ptr %i.a, align 4, !tbaa !4
  %.0..0..0.159.pre = load i32, ptr %i.b, align 4, !tbaa !4
  %.0..0..0.150.pre = load i32, ptr %i.c, align 4, !tbaa !4
  %.0..0..0.142.pre = load i32, ptr %i.d, align 4, !tbaa !4
  br label %HuffmanCode.exit137

HuffmanCode.exit137:                              ; preds = %bb.s, %bb.v, %.sink.split.i125
  %.0..0.142 = phi i32 [ %.0..0.147, %bb.s ], [ 0, %bb.v ], [ %.0..0..0.142.pre, %.sink.split.i125 ]
  %.0..0.150 = phi i32 [ %i.ea, %bb.s ], [ %i.ff, %bb.v ], [ %.0..0..0.150.pre, %.sink.split.i125 ]
  %.0..0.159 = phi i32 [ %.0..0.161, %bb.s ], [ 0, %bb.v ], [ %.0..0..0.159.pre, %.sink.split.i125 ] ; 2 uses
  %.0..0.170 = phi i32 [ %i.ef, %bb.s ], [ %i.fe, %bb.v ], [ %.0..0..0.170.pre, %.sink.split.i125 ] ; 2 uses
  %i.fl = load ptr, ptr %0, align 8, !tbaa !15
  %i.fm = tail call ptr @BF_addEntry(ptr noundef %i.fl, i32 noundef %.0..0.150, i32 noundef %.0..0.170) #11 ; 2 uses
  store ptr %i.fm, ptr %0, align 8, !tbaa !15
  %i.fn = tail call ptr @BF_addEntry(ptr noundef %i.fm, i32 noundef %.0..0.142, i32 noundef %.0..0.159) #11
  store ptr %i.fn, ptr %0, align 8, !tbaa !15
  %i.fo = add i32 %.0..0.170, %.3174
  %i.fp = add i32 %i.fo, %.0..0.159
  br label %bb.w

bb.w:                                             ; preds = %HuffmanCode.exit137, %bb.n
  %.4 = phi i32 [ %i.fp, %HuffmanCode.exit137 ], [ %.3174, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fq = icmp samesign ult i64 %indvars.iv.next, %i.dg
  br i1 %i.fq, label %bb.n, label %.loopexit172, !llvm.loop !104

.loopexit172:                                     ; preds = %bb.w, %.loopexit, %bb.m, %bb.a
  %.5 = phi i32 [ %.us-phi190, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.m ], [ %.4, %bb.w ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !105
  %i.ft = shl i32 %i.fs, 2
  %i.fu = add i32 %i.ft, %i.g                     ; 2 uses
  %i.fv = icmp slt i32 %i.g, %i.fu
  br i1 %i.fv, label %.lr.ph195, label %._crit_edge

.lr.ph195:                                        ; preds = %.loopexit172
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.fx = sext i32 %i.g to i64
  %i.fy = sext i32 %i.fu to i64
  %.pre237.a = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph195, %bb.x
  %i.fz = phi ptr [ %.pre237.a, %.lr.ph195 ], [ %i.hq, %bb.x ]
  %indvars.iv218 = phi i64 [ %i.fx, %.lr.ph195 ], [ %indvars.iv.next219, %bb.x ] ; 2 uses
  %.6193 = phi i32 [ %.5, %.lr.ph195 ], [ %i.hs, %bb.x ]
  %i.ga = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv218 ; 4 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4  ; 3 uses
  %i.gc = getelementptr i8, ptr %i.ga, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4  ; 3 uses
  %i.ge = getelementptr i8, ptr %i.ga, i64 8
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 3 uses
  %i.gg = getelementptr i8, ptr %i.ga, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4  ; 3 uses
  %i.gi = load i32, ptr %i.fw, align 8, !tbaa !61
  %i.gj = add i32 %i.gi, 32
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.gk ; 2 uses
  %spec.select52.i = tail call i32 @llvm.abs.i32(i32 %i.gb, i1 true)
  %i.gm = icmp slt i32 %i.gd, 1
  %.050.i = tail call i32 @llvm.abs.i32(i32 %i.gd, i1 true)
  %.0.i32.i = zext i1 %i.gm to i32
  %i.gn = icmp slt i32 %i.gf, 1
  %.049.i139 = tail call i32 @llvm.abs.i32(i32 %i.gf, i1 true)
  %.0.i34.i = zext i1 %i.gn to i32
  %i.go = icmp slt i32 %i.gh, 1
  %.0.i140 = tail call i32 @llvm.abs.i32(i32 %i.gh, i1 true)
  %.0.i36.i = zext i1 %i.go to i32
  %i.gp = shl i32 %spec.select52.i, 3
  %i.gq = shl i32 %.050.i, 2
  %i.gr = add nsw i32 %i.gq, %i.gp
  %i.gs = shl nuw i32 %.049.i139, 1
  %i.gt = add nsw i32 %i.gr, %i.gs
  %i.gu = add nsw i32 %i.gt, %.0.i140
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !94
  %i.gx = zext i32 %i.gu to i64                   ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !97
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !98
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gx
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !99
  %i.he = zext i8 %i.hd to i32                    ; 2 uses
  %i.hf = trunc i64 %i.gz to i32
  %i.hg = tail call ptr @BF_addEntry(ptr noundef %i.fz, i32 noundef %i.hf, i32 noundef %i.he) #11 ; 2 uses
  store ptr %i.hg, ptr %0, align 8, !tbaa !15
  %.not.not.i = icmp ne i32 %i.gb, 0              ; 2 uses
  %.lobit.i = lshr i32 %i.gb, 31                  ; 2 uses
  %spec.select31.i = zext i1 %.not.not.i to i32
  %.not28.i = icmp eq i32 %i.gd, 0                ; 2 uses
  %i.hh = shl nuw nsw i32 %.lobit.i, 1
  %i.hi = or disjoint i32 %i.hh, %.0.i32.i
  %i.hj = select i1 %.not.not.i, i32 2, i32 1
  %.125.i = select i1 %.not28.i, i32 %.lobit.i, i32 %i.hi ; 2 uses
  %.1.i141 = select i1 %.not28.i, i32 %spec.select31.i, i32 %i.hj
  %.not29.i = icmp ne i32 %i.gf, 0                ; 2 uses
  %i.hk = shl nuw nsw i32 %.125.i, 1
  %i.hl = or disjoint i32 %i.hk, %.0.i34.i
  %.226.i = select i1 %.not29.i, i32 %i.hl, i32 %.125.i ; 2 uses
  %i.hm = zext i1 %.not29.i to i32
  %.2.i = add nuw nsw i32 %.1.i141, %i.hm
  %.not30.i = icmp ne i32 %i.gh, 0                ; 2 uses
  %i.hn = shl nuw nsw i32 %.226.i, 1
  %i.ho = or disjoint i32 %i.hn, %.0.i36.i
  %.327.i = select i1 %.not30.i, i32 %i.ho, i32 %.226.i
  %i.hp = zext i1 %.not30.i to i32
  %.3.i = add nuw nsw i32 %.2.i, %i.hp            ; 2 uses
  %i.hq = tail call ptr @BF_addEntry(ptr noundef %i.hg, i32 noundef %.327.i, i32 noundef %.3.i) #11 ; 2 uses
  store ptr %i.hq, ptr %0, align 8, !tbaa !15
  %i.hr = add i32 %.3.i, %.6193
  %i.hs = add i32 %i.hr, %i.he                    ; 2 uses
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, 4 ; 2 uses
  %i.ht = icmp slt i64 %indvars.iv.next219, %i.fy
  br i1 %i.ht, label %bb.x, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.x, %.loopexit172
  %.6.lcssa = phi i32 [ %.5, %.loopexit172 ], [ %i.hs, %bb.x ]
  %i.hu = load i32, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !107
  %i.hx = add i32 %i.hw, %.6.lcssa                ; 2 uses
  %.not114 = icmp eq i32 %i.hu, %i.hx
  br i1 %.not114, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.hy = sub i32 %i.hu, %i.hx                    ; 4 uses
  %i.hz = srem i32 %i.hy, 32                      ; 2 uses
  %i.ia = sdiv i32 %i.hy, 32
  %i.ib = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.ic = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ib, ptr noundef nonnull @.str, i32 noundef %i.hy) #13 ; 0 uses
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.ie = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr %i.id) #14 ; 0 uses
  %.off = add i32 %i.hy, 31
  %.not115197 = icmp ult i32 %.off, 63
  br i1 %.not115197, label %._crit_edge201, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %bb.y
  %.pre238 = load ptr, ptr %0, align 8, !tbaa !15
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.lr.ph200
  %i.if = phi ptr [ %i.ih, %.lr.ph200 ], [ %.pre238, %.lr.ph200.preheader ]
  %.099198 = phi i32 [ %i.ig, %.lr.ph200 ], [ %i.ia, %.lr.ph200.preheader ]
  %i.ig = add nsw i32 %.099198, -1                ; 2 uses
  %i.ih = tail call ptr @BF_addEntry(ptr noundef %i.if, i32 noundef -1, i32 noundef 32) #11 ; 2 uses
  store ptr %i.ih, ptr %0, align 8, !tbaa !15
  %.not115 = icmp eq i32 %i.ig, 0
  br i1 %.not115, label %._crit_edge201, label %.lr.ph200, !llvm.loop !110

._crit_edge201:                                   ; preds = %.lr.ph200, %bb.y
  %.not116 = icmp eq i32 %i.hz, 0
  br i1 %.not116, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge201
  %i.ii = load ptr, ptr %0, align 8, !tbaa !15
  %i.ij = tail call ptr @BF_addEntry(ptr noundef %i.ii, i32 noundef -1, i32 noundef %i.hz) #11
  store ptr %i.ij, ptr %0, align 8, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge201, %bb.z, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { cold nounwind }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS16bit_stream_struc", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS12BF_FrameData", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS15BF_FrameResults", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS13BF_PartHolder", !10, i64 0}
!17 = !{!18, !10, i64 8}
!18 = !{!"BF_PartHolder", !5, i64 0, !10, i64 8}
!19 = !{!20, !5, i64 0}
!20 = !{!"", !5, i64 0, !10, i64 8}
!21 = !{!22, !5, i64 192}
!22 = !{!"", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !24, i64 128, !24, i64 136, !5, i64 144, !5, i64 148, !25, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !23, i64 168, !23, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !25, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !25, i64 232, !25, i64 236, !25, i64 240, !25, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276}
!23 = !{!"long", !6, i64 0}
!24 = !{!"p1 omnipotent char", !10, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = !{!22, !5, i64 60}
!27 = !{!22, !5, i64 220}
!28 = !{!22, !5, i64 224}
!29 = !{!22, !5, i64 196}
!30 = !{!22, !5, i64 68}
!31 = !{!22, !5, i64 36}
!32 = !{!22, !5, i64 228}
!33 = !{!22, !5, i64 52}
!34 = !{!22, !5, i64 56}
!35 = !{!22, !5, i64 164}
!36 = !{!22, !5, i64 204}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!22, !5, i64 200}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !41}
!45 = !{!46, !5, i64 0}
!46 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !6, i64 48}
!47 = !{!46, !5, i64 4}
!48 = distinct !{!48, !41}
!49 = !{!50, !5, i64 0}
!50 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !6, i64 44, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !51, i64 96, !6, i64 104}
!51 = !{!"p1 int", !10, i64 0}
!52 = !{!50, !5, i64 4}
!53 = !{!50, !5, i64 12}
!54 = !{!50, !5, i64 16}
!55 = !{!50, !5, i64 20}
!56 = !{!50, !5, i64 56}
!57 = !{!50, !5, i64 24}
!58 = !{!50, !5, i64 28}
!59 = !{!50, !5, i64 64}
!60 = !{!50, !5, i64 68}
!61 = !{!50, !5, i64 72}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !41, !64}
!64 = !{!"llvm.loop.unswitch.partial.disable"}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !41}
!67 = distinct !{!67, !38}
!68 = distinct !{!68, !41}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !38}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41, !64}
!74 = !{!50, !51, i64 96}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = !{!46, !5, i64 8}
!79 = distinct !{!79, !41}
!80 = !{!81, !5, i64 0}
!81 = !{!"BF_FrameData", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 48, !6, i64 80, !6, i64 112, !6, i64 144, !10, i64 176}
!82 = !{!81, !5, i64 4}
!83 = !{!81, !5, i64 8}
!84 = !{!81, !10, i64 16}
!85 = !{!81, !10, i64 24}
!86 = !{!10, !10, i64 0}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = !{!81, !10, i64 176}
!92 = !{!93, !5, i64 8}
!93 = !{!"BF_FrameResults", !5, i64 0, !5, i64 4, !5, i64 8}
!94 = !{!95, !96, i64 8}
!95 = !{!"huffcodetab", !5, i64 0, !5, i64 4, !96, i64 8, !24, i64 16}
!96 = !{!"p1 long", !10, i64 0}
!97 = !{!23, !23, i64 0}
!98 = !{!95, !24, i64 16}
!99 = !{!6, !6, i64 0}
!100 = !{!95, !5, i64 0}
!101 = distinct !{!101, !41}
!102 = distinct !{!102, !41}
!103 = !{!50, !5, i64 60}
!104 = distinct !{!104, !41}
!105 = !{!50, !5, i64 8}
!106 = distinct !{!106, !41}
!107 = !{!50, !5, i64 76}
!108 = !{!109, !109, i64 0}
!109 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!110 = distinct !{!110, !41}
end_hunk_0
