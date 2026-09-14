Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj8?download=true
inline.NumInlined: 197
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Exa8_ManExactSynthesis:bb.a
middle.block826:                                  ; preds = %vector.body819
  %cmp.n827 = icmp eq i64 %n.vec818, %i.aso
  br i1 %cmp.n827, label %Abc_TtOr.exit.i, label %.lr.ph.i89.i.preheader

.lr.ph.i89.i.preheader:                           ; preds = %vector.memcheck, %._crit_edge110.i, %middle.block826
  %indvars.iv.i90.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %._crit_edge110.i ], [ %n.vec818, %middle.block826 ] ; 3 uses
  %xtraiter945 = and i64 %i.aso, 3                ; 2 uses
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %.lr.ph.i89.i.prol.loopexit, label %.lr.ph.i89.i.prol

.lr.ph.i89.i.prol:                                ; preds = %.lr.ph.i89.i.preheader, %.lr.ph.i89.i.prol
  %indvars.iv.i90.i.prol = phi i64 [ %indvars.iv.next.i91.i.prol, %.lr.ph.i89.i.prol ], [ %indvars.iv.i90.i.ph, %.lr.ph.i89.i.preheader ] ; 3 uses
  %prol.iter947 = phi i64 [ %prol.iter947.next, %.lr.ph.i89.i.prol ], [ 0, %.lr.ph.i89.i.preheader ]
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr %i.avm, i64 %indvars.iv.i90.i.prol ; 2 uses
  %i.avy = load i64, ptr %i.avx, align 8, !tbaa !164
  %i.avz = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %indvars.iv.i90.i.prol
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !164
  %i.awb = or i64 %i.awa, %i.avy
  store i64 %i.awb, ptr %i.avx, align 8, !tbaa !164
  %indvars.iv.next.i91.i.prol = add nuw nsw i64 %indvars.iv.i90.i.prol, 1 ; 2 uses
  %prol.iter947.next = add i64 %prol.iter947, 1   ; 2 uses
  %prol.iter947.cmp.not = icmp eq i64 %prol.iter947.next, %xtraiter945
  br i1 %prol.iter947.cmp.not, label %.lr.ph.i89.i.prol.loopexit, label %.lr.ph.i89.i.prol, !llvm.loop !138

.lr.ph.i89.i.prol.loopexit:                       ; preds = %.lr.ph.i89.i.prol, %.lr.ph.i89.i.preheader
  %indvars.iv.i90.i.unr = phi i64 [ %indvars.iv.i90.i.ph, %.lr.ph.i89.i.preheader ], [ %indvars.iv.next.i91.i.prol, %.lr.ph.i89.i.prol ]
  %i.awc = sub nsw i64 %indvars.iv.i90.i.ph, %i.aso
  %i.awd = icmp ugt i64 %i.awc, -4
  br i1 %i.awd, label %Abc_TtOr.exit.i, label %.lr.ph.i89.i

.lr.ph.i89.i:                                     ; preds = %.lr.ph.i89.i.prol.loopexit, %.lr.ph.i89.i
  %indvars.iv.i90.i = phi i64 [ %indvars.iv.next.i91.i.3, %.lr.ph.i89.i ], [ %indvars.iv.i90.i.unr, %.lr.ph.i89.i.prol.loopexit ] ; 6 uses
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.avm, i64 %indvars.iv.i90.i ; 2 uses
  %i.awf = load i64, ptr %i.awe, align 8, !tbaa !164
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %indvars.iv.i90.i
  %i.awh = load i64, ptr %i.awg, align 8, !tbaa !164
  %i.awi = or i64 %i.awh, %i.awf
  store i64 %i.awi, ptr %i.awe, align 8, !tbaa !164
  %indvars.iv.next.i91.i = add nuw nsw i64 %indvars.iv.i90.i, 1 ; 2 uses
  %i.awj = getelementptr inbounds nuw [8 x i8], ptr %i.avm, i64 %indvars.iv.next.i91.i ; 2 uses
  %i.awk = load i64, ptr %i.awj, align 8, !tbaa !164
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %indvars.iv.next.i91.i
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !164
  %i.awn = or i64 %i.awm, %i.awk
  store i64 %i.awn, ptr %i.awj, align 8, !tbaa !164
  %indvars.iv.next.i91.i.1 = add nuw nsw i64 %indvars.iv.i90.i, 2 ; 2 uses
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.avm, i64 %indvars.iv.next.i91.i.1 ; 2 uses
  %i.awp = load i64, ptr %i.awo, align 8, !tbaa !164
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %indvars.iv.next.i91.i.1
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !164
  %i.aws = or i64 %i.awr, %i.awp
  store i64 %i.aws, ptr %i.awo, align 8, !tbaa !164
  %indvars.iv.next.i91.i.2 = add nuw nsw i64 %indvars.iv.i90.i, 3 ; 2 uses
  %i.awt = getelementptr inbounds nuw [8 x i8], ptr %i.avm, i64 %indvars.iv.next.i91.i.2 ; 2 uses
  %i.awu = load i64, ptr %i.awt, align 8, !tbaa !164
  %i.awv = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %indvars.iv.next.i91.i.2
  %i.aww = load i64, ptr %i.awv, align 8, !tbaa !164
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.awt, align 8, !tbaa !164
  %indvars.iv.next.i91.i.3 = add nuw nsw i64 %indvars.iv.i90.i, 4 ; 2 uses
  %exitcond.not.i92.i.3 = icmp eq i64 %indvars.iv.next.i91.i.3, %i.aso
  br i1 %exitcond.not.i92.i.3, label %Abc_TtOr.exit.i, label %.lr.ph.i89.i, !llvm.loop !139

Abc_TtOr.exit.i:                                  ; preds = %.lr.ph.i89.i.prol.loopexit, %.lr.ph.i89.i, %middle.block826, %bb.fj, %bb.fi
  %i.awy = add nuw nsw i32 %.1112.i, 1
  %i.awz = load i32, ptr %i.fq, align 4, !tbaa !166 ; 2 uses
  %.not.not.i173 = icmp slt i32 %.1112.i, %i.awz
  br i1 %.not.not.i173, label %bb.fi, label %._crit_edge116.loopexit.i, !llvm.loop !140

._crit_edge116.loopexit.i:                        ; preds = %Abc_TtOr.exit.i
  %.pre143.i = load i32, ptr %i.fs, align 8, !tbaa !167
  br label %._crit_edge116.i

._crit_edge116.i:                                 ; preds = %._crit_edge116.loopexit.i, %Abc_TtConst0.exit.i
  %i.axa = phi i32 [ %.pre143.i, %._crit_edge116.loopexit.i ], [ %i.arw, %Abc_TtConst0.exit.i ] ; 3 uses
  %i.axb = phi i32 [ %i.awz, %._crit_edge116.loopexit.i ], [ %i.asd, %Abc_TtConst0.exit.i ]
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %i.axc = sext i32 %i.axa to i64
  %i.axd = icmp slt i64 %indvars.iv.next139.i, %i.axc
  %indvar.next = add i64 %indvar, 1
  br i1 %i.axd, label %bb.fe, label %._crit_edge120.loopexit.i, !llvm.loop !141

._crit_edge120.loopexit.i:                        ; preds = %._crit_edge116.i
  %.pre144.i = load i32, ptr %i.fi, align 8, !tbaa !165
  br label %._crit_edge120.i

._crit_edge120.i:                                 ; preds = %._crit_edge120.loopexit.i, %bb.fd
  %i.axe = phi i32 [ %i.apt, %bb.fd ], [ %.pre144.i, %._crit_edge120.loopexit.i ] ; 4 uses
  %.lcssa106.i = phi i32 [ %i.apu, %bb.fd ], [ %i.axa, %._crit_edge120.loopexit.i ]
  %i.axf = add nsw i32 %.lcssa106.i, -1
  %.val.i170 = load i32, ptr %i.fx, align 4, !tbaa !168
  %.val63.i = load ptr, ptr %i.ss, align 8, !tbaa !177
  %i.axg = getelementptr i8, ptr %.val63.i, i64 8
  %.val63.val.i = load ptr, ptr %i.axg, align 8, !tbaa !175
  %i.axh = mul nsw i32 %.val.i170, %i.axf
  %i.axi = sext i32 %i.axh to i64
  %i.axj = getelementptr inbounds [8 x i8], ptr %.val63.val.i, i64 %i.axi
  %i.axk = load ptr, ptr %i.fy, align 8, !tbaa !169
  %i.axl = icmp slt i32 %i.axe, 7
  %i.axm = add nsw i32 %i.axe, -6
  %i.axn = shl nuw i32 1, %i.axm
  %i.axo = select i1 %i.axl, i32 1, i32 %i.axn    ; 2 uses
  %i.axp = icmp sgt i32 %i.axo, 0
  br i1 %i.axp, label %.lr.ph.preheader.i93.i, label %Exa8_ManEval.exit.thread

.lr.ph.preheader.i93.i:                           ; preds = %._crit_edge120.i
  %wide.trip.count.i94.i = zext nneg i32 %i.axo to i64
  br label %.lr.ph.i95.i

.lr.ph.i95.i:                                     ; preds = %bb.fk, %.lr.ph.preheader.i93.i
  %indvars.iv.i96.i = phi i64 [ 0, %.lr.ph.preheader.i93.i ], [ %indvars.iv.next.i98.i, %bb.fk ] ; 4 uses
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.axj, i64 %indvars.iv.i96.i
  %i.axr = load i64, ptr %i.axq, align 8, !tbaa !164 ; 2 uses
  %i.axs = getelementptr inbounds nuw [8 x i8], ptr %i.axk, i64 %indvars.iv.i96.i
  %i.axt = load i64, ptr %i.axs, align 8, !tbaa !164 ; 2 uses
  %.not.i97.i = icmp eq i64 %i.axr, %i.axt
  br i1 %.not.i97.i, label %bb.fk, label %Exa8_ManEval.exit

bb.fk:                                            ; preds = %.lr.ph.i95.i
  %indvars.iv.next.i98.i = add nuw nsw i64 %indvars.iv.i96.i, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i98.i, %wide.trip.count.i94.i
  br i1 %exitcond.not.i99.i, label %Exa8_ManEval.exit.thread, label %.lr.ph.i95.i, !llvm.loop !142

Exa8_ManEval.exit.thread:                         ; preds = %bb.fk, %._crit_edge120.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %bb.fm

Exa8_ManEval.exit:                                ; preds = %.lr.ph.i95.i
  %i.axu = trunc nuw nsw i64 %indvars.iv.i96.i to i32
  %i.axv = xor i64 %i.axt, %i.axr                 ; 3 uses
  %i.axw = shl nuw nsw i32 %i.axu, 6
  %i.axx = and i64 %i.axv, 4294967295
  %i.axy = icmp eq i64 %i.axx, 0                  ; 2 uses
  %i.axz = lshr exact i64 %i.axv, 32
  %.020.i.i.i = select i1 %i.axy, i64 %i.axz, i64 %i.axv ; 3 uses
  %.0.i.i.i = select i1 %i.axy, i32 32, i32 0     ; 2 uses
  %i.aya = and i64 %.020.i.i.i, 65535
  %i.ayb = icmp eq i64 %i.aya, 0                  ; 2 uses
  %i.ayc = or disjoint i32 %.0.i.i.i, 16
  %i.ayd = lshr exact i64 %.020.i.i.i, 16
  %.121.i.i.i = select i1 %i.ayb, i64 %i.ayd, i64 %.020.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.ayb, i32 %i.ayc, i32 %.0.i.i.i ; 2 uses
  %i.aye = and i64 %.121.i.i.i, 255
  %i.ayf = icmp eq i64 %i.aye, 0                  ; 2 uses
  %i.ayg = or disjoint i32 %.1.i.i.i, 8
  %i.ayh = lshr exact i64 %.121.i.i.i, 8
  %.222.i.i.i = select i1 %i.ayf, i64 %i.ayh, i64 %.121.i.i.i ; 3 uses
  %.2.i.i.i = select i1 %i.ayf, i32 %i.ayg, i32 %.1.i.i.i ; 2 uses
  %i.ayi = and i64 %.222.i.i.i, 15
  %i.ayj = icmp eq i64 %i.ayi, 0                  ; 2 uses
  %i.ayk = or disjoint i32 %.2.i.i.i, 4
  %i.ayl = lshr exact i64 %.222.i.i.i, 4
  %.323.i.i.i = select i1 %i.ayj, i64 %i.ayl, i64 %.222.i.i.i ; 3 uses
  %.3.i.i.i = select i1 %i.ayj, i32 %i.ayk, i32 %.2.i.i.i ; 2 uses
  %i.aym = and i64 %.323.i.i.i, 3
  %i.ayn = icmp eq i64 %i.aym, 0                  ; 2 uses
  %i.ayo = add nuw nsw i32 %.3.i.i.i, 2
  %i.ayp = lshr exact i64 %.323.i.i.i, 2
  %.424.i.i.i = select i1 %i.ayn, i64 %i.ayp, i64 %.323.i.i.i
  %.4.i.i.i = select i1 %i.ayn, i32 %i.ayo, i32 %.3.i.i.i
  %i.ayq = trunc i64 %.424.i.i.i to i32
  %i.ayr = and i32 %i.ayq, 1
  %i.ays = xor i32 %i.ayr, 1
  %.5.i.i.i = add nuw nsw i32 %.4.i.i.i, %i.axw
  %i.ayt = add nuw nsw i32 %.5.i.i.i, %i.ays      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %.not116 = icmp eq i32 %i.ayt, -1
  br i1 %.not116, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %Exa8_ManEval.exit
  %i.ayu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ayt) ; 0 uses
  %.pre459 = load i32, ptr %i.fi, align 8, !tbaa !165
  br label %bb.fm

bb.fm:                                            ; preds = %Exa8_ManEval.exit.thread, %bb.fl, %Exa8_ManEval.exit
  %i.ayv = phi i32 [ %i.axe, %Exa8_ManEval.exit.thread ], [ %.pre459, %bb.fl ], [ %i.axe, %Exa8_ManEval.exit ]
  %i.ayw = load i32, ptr %i.fl, align 4, !tbaa !49
  %i.ayx = load i32, ptr %i.fo, align 8, !tbaa !51
  %i.ayy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ayv, i32 noundef %i.ayw, i32 noundef %i.ayx) ; 0 uses
  %i.ayz = load i32, ptr %i.fs, align 8, !tbaa !167 ; 2 uses
  %i.aza = load i32, ptr %i.fi, align 8, !tbaa !165 ; 2 uses
  %.not.not56.i = icmp sgt i32 %i.ayz, %i.aza
  br i1 %.not.not56.i, label %.lr.ph61.i, label %Exa8_ManPrintSolution.exit

.lr.ph61.i:                                       ; preds = %bb.fm
  %i.azb = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.azc = sext i32 %i.ayz to i64
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge54.i187, %.lr.ph61.i
  %indvars.iv65.i = phi i64 [ %i.azc, %.lr.ph61.i ], [ %indvars.iv.next66.i, %._crit_edge54.i187 ] ; 2 uses
  %i.azd = phi i32 [ %i.aza, %.lr.ph61.i ], [ %i.bbd, %._crit_edge54.i187 ] ; 2 uses
  %indvars.iv.next66.i = add nsw i64 %indvars.iv65.i, -1 ; 4 uses
  %i.aze = load i32, ptr %i.fq, align 4, !tbaa !166
  %i.azf = trunc nsw i64 %indvars.iv65.i to i32   ; 3 uses
  %i.azg = add i32 %i.azf, 64
  %i.azh = sub i32 %i.azg, %i.azd
  %i.azi = load i32, ptr %i.fo, align 8, !tbaa !51
  %i.azj = shl nuw i32 1, %i.azi
  %i.azk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.azh, i32 noundef %i.azj) ; 0 uses
  %i.azl = load i32, ptr %i.fq, align 4, !tbaa !166 ; 2 uses
  %i.azm = icmp sgt i32 %i.azl, 0
  br i1 %i.azm, label %.lr.ph.i204, label %._crit_edge.i186

.lr.ph.i204:                                      ; preds = %bb.fn
  %.047.i = add nsw i32 %i.azl, -1                ; 2 uses
  %i.azn = trunc nsw i64 %indvars.iv.next66.i to i32
  %i.azo = sub nsw i32 %i.azn, %i.azd
  %i.azp = mul nsw i32 %i.azo, %i.aze
  %i.azq = add i32 %i.azp, 2                      ; 2 uses
  br i1 %.not108, label %.lr.ph.split.i205, label %.lr.ph.split.us.i209

.lr.ph.split.us.i209:                             ; preds = %.lr.ph.i204, %.lr.ph.split.us.i209
  %.0.in48.us.i = phi i32 [ %.0.us.i, %.lr.ph.split.us.i209 ], [ %.047.i, %.lr.ph.i204 ] ; 3 uses
  %.val.us.i = load ptr, ptr %i.vn, align 8, !tbaa !183
  %i.azr = add i32 %.0.in48.us.i, %i.azq
  %i.azs = call i32 @kissat_value(ptr noundef %.val.us.i, i32 noundef %i.azr) #23
  %i.azt = icmp sgt i32 %i.azs, 0
  %i.azu = zext i1 %i.azt to i32
  %i.azv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.azu) ; 0 uses
  %.0.us.i = add nsw i32 %.0.in48.us.i, -1
  %.not78.i = icmp eq i32 %.0.in48.us.i, 0
  br i1 %.not78.i, label %._crit_edge.thread.i, label %.lr.ph.split.us.i209, !llvm.loop !143

.lr.ph.split.i205:                                ; preds = %.lr.ph.i204, %.lr.ph.split.i205
  %.0.in48.i = phi i32 [ %.0.i208, %.lr.ph.split.i205 ], [ %.047.i, %.lr.ph.i204 ] ; 3 uses
  %.val.i206 = load ptr, ptr %i.vn, align 8, !tbaa !183
  %i.azw = add i32 %.0.in48.i, %i.azq
  %i.azx = call i32 @kissat_value(ptr noundef %.val.i206, i32 noundef %i.azw) #23
  %i.azy = icmp sgt i32 %i.azx, 0
  %i.azz = load i32, ptr %i.fs, align 8, !tbaa !167
  %i.baa = icmp eq i32 %i.azz, %i.azf
  %.sink77.i = xor i1 %i.azy, %i.baa
  %.sink.i207 = zext i1 %.sink77.i to i32
  %i.bab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %.sink.i207) ; 0 uses
  %.0.i208 = add nsw i32 %.0.in48.i, -1
  %.not350 = icmp eq i32 %.0.in48.i, 0
  br i1 %.not350, label %._crit_edge.i186, label %.lr.ph.split.i205, !llvm.loop !143

._crit_edge.i186:                                 ; preds = %.lr.ph.split.i205, %bb.fn
  %i.bac = load i32, ptr %i.fs, align 8, !tbaa !167
  %i.bad = icmp eq i32 %i.bac, %i.azf
  %or.cond3.i = and i1 %i.bad, %.not108
  br i1 %or.cond3.i, label %bb.fo, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.split.us.i209, %._crit_edge.i186
  br label %bb.fo

bb.fo:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i186
  %.str.25.sink.i = phi ptr [ @.str.25, %._crit_edge.thread.i ], [ @.str.24, %._crit_edge.i186 ]
  %i.bae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.25.sink.i) ; 0 uses
  %i.baf = load i32, ptr %i.fo, align 8, !tbaa !51 ; 2 uses
  %i.bag = icmp sgt i32 %i.baf, 0
  br i1 %i.bag, label %.lr.ph53.i189, label %._crit_edge54.i187

.lr.ph53.i189:                                    ; preds = %bb.fo
  %i.bah = getelementptr inbounds [2048 x i8], ptr %i.azb, i64 %indvars.iv.next66.i
  %i.bai = zext nneg i32 %i.baf to i64
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fu, %.lr.ph53.i189
  %indvars.iv.i190 = phi i64 [ %i.bai, %.lr.ph53.i189 ], [ %indvars.iv.next.i191, %bb.fu ] ; 2 uses
  %indvars.iv.next.i191 = add nsw i64 %indvars.iv.i190, -1 ; 2 uses
  %i.baj = load i32, ptr %i.fs, align 8, !tbaa !167 ; 2 uses
  %i.bak = icmp sgt i32 %i.baj, 0
  br i1 %i.bak, label %.lr.ph.i.i193, label %.Exa8_ManFindFanin.exit.thread_crit_edge.i

.Exa8_ManFindFanin.exit.thread_crit_edge.i:       ; preds = %bb.fp
  %.pre.i192 = load i32, ptr %i.fi, align 8, !tbaa !165
  br label %Exa8_ManFindFanin.exit.thread.i

.lr.ph.i.i193:                                    ; preds = %bb.fp
  %i.bal = getelementptr inbounds nuw [256 x i8], ptr %i.bah, i64 %indvars.iv.next.i191
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fs, %.lr.ph.i.i193
  %i.bam = phi i32 [ %i.baj, %.lr.ph.i.i193 ], [ %i.bat, %bb.fs ]
  %indvars.iv.i.i194 = phi i64 [ 0, %.lr.ph.i.i193 ], [ %indvars.iv.next.i.i201, %bb.fs ] ; 3 uses
  %.022.i.i195 = phi i32 [ -1, %.lr.ph.i.i193 ], [ %.1.i.i200, %bb.fs ] ; 2 uses
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %i.bal, i64 %indvars.iv.i.i194
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !22 ; 2 uses
  %.not.i.i196 = icmp eq i32 %i.bao, 0
  br i1 %.not.i.i196, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %.val.i.i197 = load ptr, ptr %i.vn, align 8, !tbaa !183
  %i.bap = add nsw i32 %i.bao, 1
  %i.baq = call i32 @kissat_value(ptr noundef %.val.i.i197, i32 noundef %i.bap) #23
  %i.bar = icmp sgt i32 %i.baq, 0
  %i.bas = trunc nuw nsw i64 %indvars.iv.i.i194 to i32
  %spec.select19.i.i198 = select i1 %i.bar, i32 %i.bas, i32 %.022.i.i195
  %.pre.i.i199 = load i32, ptr %i.fs, align 8, !tbaa !167
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.bat = phi i32 [ %i.bam, %bb.fq ], [ %.pre.i.i199, %bb.fr ] ; 2 uses
  %.1.i.i200 = phi i32 [ %.022.i.i195, %bb.fq ], [ %spec.select19.i.i198, %bb.fr ] ; 5 uses
  %indvars.iv.next.i.i201 = add nuw nsw i64 %indvars.iv.i.i194, 1 ; 2 uses
  %i.bau = sext i32 %i.bat to i64
  %i.bav = icmp slt i64 %indvars.iv.next.i.i201, %i.bau
  br i1 %i.bav, label %bb.fq, label %Exa8_ManFindFanin.exit.i202, !llvm.loop !120

Exa8_ManFindFanin.exit.i202:                      ; preds = %bb.fs
  %i.baw = icmp sgt i32 %.1.i.i200, -1
  %.pre68.i = load i32, ptr %i.fi, align 8, !tbaa !165 ; 2 uses
  %i.bax = icmp slt i32 %.1.i.i200, %.pre68.i
  %or.cond.i203 = select i1 %i.baw, i1 %i.bax, i1 false
  br i1 %or.cond.i203, label %bb.ft, label %Exa8_ManFindFanin.exit.thread.i

bb.ft:                                            ; preds = %Exa8_ManFindFanin.exit.i202
  %i.bay = add nuw nsw i32 %.1.i.i200, 97
  br label %bb.fu

Exa8_ManFindFanin.exit.thread.i:                  ; preds = %Exa8_ManFindFanin.exit.i202, %.Exa8_ManFindFanin.exit.thread_crit_edge.i
  %i.baz = phi i32 [ %.pre68.i, %Exa8_ManFindFanin.exit.i202 ], [ %.pre.i192, %.Exa8_ManFindFanin.exit.thread_crit_edge.i ]
  %.0.lcssa.i45.i = phi i32 [ %.1.i.i200, %Exa8_ManFindFanin.exit.i202 ], [ -1, %.Exa8_ManFindFanin.exit.thread_crit_edge.i ]
  %reass.sub = sub i32 %.0.lcssa.i45.i, %i.baz
  %i.bba = add i32 %reass.sub, 65
  br label %bb.fu

bb.fu:                                            ; preds = %Exa8_ManFindFanin.exit.thread.i, %bb.ft
  %.sink76.i = phi i32 [ %i.bay, %bb.ft ], [ %i.bba, %Exa8_ManFindFanin.exit.thread.i ]
  %i.bbb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.sink76.i) ; 0 uses
  %i.bbc = icmp sgt i64 %indvars.iv.i190, 1
  br i1 %i.bbc, label %bb.fp, label %._crit_edge54.i187, !llvm.loop !144

._crit_edge54.i187:                               ; preds = %bb.fu, %bb.fo
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.bbd = load i32, ptr %i.fi, align 8, !tbaa !165 ; 2 uses
  %i.bbe = sext i32 %i.bbd to i64
  %.not.not.i188 = icmp sgt i64 %indvars.iv.next66.i, %i.bbe
  br i1 %.not.not.i188, label %bb.fn, label %Exa8_ManPrintSolution.exit, !llvm.loop !145

Exa8_ManPrintSolution.exit:                       ; preds = %._crit_edge54.i187, %bb.fm
  %i.bbf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.bbg = load i32, ptr %i.fi, align 8, !tbaa !165 ; 2 uses
  %i.bbh = load i32, ptr %i.fs, align 8, !tbaa !167 ; 2 uses
  %i.bbi = icmp slt i32 %i.bbg, %i.bbh
  br i1 %i.bbi, label %.lr.ph23.i, label %Exa8_ManPrintPerm.exit

.lr.ph23.i:                                       ; preds = %Exa8_ManPrintSolution.exit
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.bbk = sext i32 %i.bbg to i64
  br label %bb.fv

bb.fv:                                            ; preds = %._crit_edge.i210, %.lr.ph23.i
  %.pre3031.i = phi i32 [ %i.bbh, %.lr.ph23.i ], [ %.pre3032.i, %._crit_edge.i210 ]
  %indvars.iv27.i = phi i64 [ %i.bbk, %.lr.ph23.i ], [ %indvars.iv.next28.i, %._crit_edge.i210 ] ; 3 uses
  %i.bbl = load i32, ptr %i.fi, align 8, !tbaa !165
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = icmp sgt i64 %indvars.iv27.i, %i.bbm
  br i1 %i.bbn, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %putchar.i = call i32 @putchar(i32 95)          ; 0 uses
  %.pre30.pre.i = load i32, ptr %i.fs, align 8, !tbaa !167
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.pre30.i = phi i32 [ %.pre30.pre.i, %bb.fw ], [ %.pre3031.i, %bb.fv ] ; 3 uses
  %i.bbo = load i32, ptr %i.fo, align 8, !tbaa !51 ; 2 uses
  %i.bbp = icmp sgt i32 %i.bbo, 0
  br i1 %i.bbp, label %.lr.ph.i211, label %._crit_edge.i210

.lr.ph.i211:                                      ; preds = %bb.fx
  %i.bbq = getelementptr inbounds [2048 x i8], ptr %i.bbj, i64 %indvars.iv27.i
  %i.bbr = icmp sgt i32 %.pre30.i, 0
  br i1 %i.bbr, label %.lr.ph.split.preheader.i212, label %._crit_edge.i210

.lr.ph.split.preheader.i212:                      ; preds = %.lr.ph.i211
  %.019.i = add nsw i32 %i.bbo, -1
  %i.bbs = zext nneg i32 %.019.i to i64
  br label %.lr.ph.split.i213

.lr.ph.split.i213:                                ; preds = %Exa8_ManFindFanin.exit.thread.i215, %.lr.ph.split.preheader.i212
  %indvars.iv.i214 = phi i64 [ %i.bbs, %.lr.ph.split.preheader.i212 ], [ %indvars.iv.next.i216, %Exa8_ManFindFanin.exit.thread.i215 ] ; 3 uses
  %i.bbt = load i32, ptr %i.fs, align 8, !tbaa !167 ; 2 uses
  %i.bbu = icmp sgt i32 %i.bbt, 0
  br i1 %i.bbu, label %.lr.ph.i.i219, label %Exa8_ManFindFanin.exit.thread.i215

.lr.ph.i.i219:                                    ; preds = %.lr.ph.split.i213
  %i.bbv = getelementptr inbounds nuw [256 x i8], ptr %i.bbq, i64 %indvars.iv.i214
  br label %bb.fy

bb.fy:                                            ; preds = %bb.ga, %.lr.ph.i.i219
  %i.bbw = phi i32 [ %i.bbt, %.lr.ph.i.i219 ], [ %i.bcd, %bb.ga ]
  %indvars.iv.i.i220 = phi i64 [ 0, %.lr.ph.i.i219 ], [ %indvars.iv.next.i.i227, %bb.ga ] ; 3 uses
  %.022.i.i221 = phi i32 [ -1, %.lr.ph.i.i219 ], [ %.1.i.i226, %bb.ga ] ; 2 uses
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %i.bbv, i64 %indvars.iv.i.i220
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !22 ; 2 uses
  %.not.i.i222 = icmp eq i32 %i.bby, 0
  br i1 %.not.i.i222, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.val.i.i223 = load ptr, ptr %i.vn, align 8, !tbaa !183
  %i.bbz = add nsw i32 %i.bby, 1
  %i.bca = call i32 @kissat_value(ptr noundef %.val.i.i223, i32 noundef %i.bbz) #23
  %i.bcb = icmp sgt i32 %i.bca, 0
  %i.bcc = trunc nuw nsw i64 %indvars.iv.i.i220 to i32
  %spec.select19.i.i224 = select i1 %i.bcb, i32 %i.bcc, i32 %.022.i.i221
  %.pre.i.i225 = load i32, ptr %i.fs, align 8, !tbaa !167
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.bcd = phi i32 [ %i.bbw, %bb.fy ], [ %.pre.i.i225, %bb.fz ] ; 2 uses
  %.1.i.i226 = phi i32 [ %.022.i.i221, %bb.fy ], [ %spec.select19.i.i224, %bb.fz ] ; 4 uses
  %indvars.iv.next.i.i227 = add nuw nsw i64 %indvars.iv.i.i220, 1 ; 2 uses
  %i.bce = sext i32 %i.bcd to i64
  %i.bcf = icmp slt i64 %indvars.iv.next.i.i227, %i.bce
  br i1 %i.bcf, label %bb.fy, label %Exa8_ManFindFanin.exit.i228, !llvm.loop !120

Exa8_ManFindFanin.exit.i228:                      ; preds = %bb.ga
  %i.bcg = icmp sgt i32 %.1.i.i226, -1
  br i1 %i.bcg, label %bb.gb, label %Exa8_ManFindFanin.exit.thread.i215

bb.gb:                                            ; preds = %Exa8_ManFindFanin.exit.i228
  %i.bch = load i32, ptr %i.fi, align 8, !tbaa !165
  %i.bci = icmp slt i32 %.1.i.i226, %i.bch
  br i1 %i.bci, label %bb.gc, label %Exa8_ManFindFanin.exit.thread.i215

bb.gc:                                            ; preds = %bb.gb
  %i.bcj = add nuw nsw i32 %.1.i.i226, 97
  %putchar17.i = call i32 @putchar(i32 %i.bcj)    ; 0 uses
  br label %Exa8_ManFindFanin.exit.thread.i215

Exa8_ManFindFanin.exit.thread.i215:               ; preds = %bb.gc, %bb.gb, %Exa8_ManFindFanin.exit.i228, %.lr.ph.split.i213
  %indvars.iv.next.i216 = add nsw i64 %indvars.iv.i214, -1
  %i.bck = icmp sgt i64 %indvars.iv.i214, 0
  br i1 %i.bck, label %.lr.ph.split.i213, label %._crit_edge.loopexit.i217, !llvm.loop !146

._crit_edge.loopexit.i217:                        ; preds = %Exa8_ManFindFanin.exit.thread.i215
  %.pre.i218 = load i32, ptr %i.fs, align 8, !tbaa !167
  br label %._crit_edge.i210

._crit_edge.i210:                                 ; preds = %._crit_edge.loopexit.i217, %.lr.ph.i211, %bb.fx
  %.pre3032.i = phi i32 [ %.pre30.i, %bb.fx ], [ %.pre.i218, %._crit_edge.loopexit.i217 ], [ %.pre30.i, %.lr.ph.i211 ] ; 2 uses
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, 1 ; 2 uses
end_hunk_0
