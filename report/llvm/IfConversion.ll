Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IfConversion?download=true
inline.NumInlined: 2502
inline.NumDeleted: 1167
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12_GLOBAL__N_111IfConverter20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a

bb.jv:                                            ; preds = %bb.ju, %_ZL16canFallThroughToRN4llvm17MachineBasicBlockES1_.exit.i
  %.1156.i = phi i1 [ %.1.ph.i, %bb.ju ], [ false, %_ZL16canFallThroughToRN4llvm17MachineBasicBlockES1_.exit.i ]
  %i.bnu = load ptr, ptr %i.bin, align 8, !tbaa !381 ; 5 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 64
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !40 ; 4 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnu, i64 72
  %i.bny = load i32, ptr %i.bnx, align 8, !tbaa !68 ; 2 uses
  %i.bnz = zext i32 %i.bny to i64
  %.idx.i.i144 = shl nuw nsw i64 %i.bnz, 3        ; 2 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnw, i64 %.idx.i.i144
  %.not17.i113.i = icmp eq i32 %i.bny, 0
  br i1 %.not17.i113.i, label %_ZN12_GLOBAL__N_111IfConverter15InvalidatePredsERN4llvm17MachineBasicBlockE.exit.i, label %.lr.ph.i114.i.preheader

.lr.ph.i114.i.preheader:                          ; preds = %bb.jv
  %i.bob = add nsw i64 %.idx.i.i144, -8           ; 2 uses
  %i.boc = and i64 %i.bob, 8
  %lcmp.mod737.not.not = icmp eq i64 %i.boc, 0
  br i1 %lcmp.mod737.not.not, label %.lr.ph.i114.i.prol, label %.lr.ph.i114.i.prol.loopexit

.lr.ph.i114.i.prol:                               ; preds = %.lr.ph.i114.i.preheader
  %i.bod = load ptr, ptr %i.bnw, align 8, !tbaa !328
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 24
  %i.bof = load i32, ptr %i.boe, align 8, !tbaa !374
  %i.bog = sext i32 %i.bof to i64
  %.val.i.i.prol = load ptr, ptr %i.dt, align 8, !tbaa !125
  %i.boh = getelementptr inbounds nuw [328 x i8], ptr %.val.i.i.prol, i64 %i.bog ; 3 uses
  %i.boi = load i16, ptr %i.boh, align 8          ; 2 uses
  %i.boj = trunc i16 %i.boi to i1
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boh, i64 16
  %i.bol = load ptr, ptr %i.bok, align 8
  %i.bom = icmp eq ptr %i.bol, %i.bnu
  %or.cond.i.i145.prol = select i1 %i.boj, i1 true, i1 %i.bom
  br i1 %or.cond.i.i145.prol, label %.lr.ph.i114.i.prol.loopexit.unr-lcssa, label %bb.jw

bb.jw:                                            ; preds = %.lr.ph.i114.i.prol
  %i.bon = and i16 %i.boi, -14
  store i16 %i.bon, ptr %i.boh, align 8
  br label %.lr.ph.i114.i.prol.loopexit.unr-lcssa

.lr.ph.i114.i.prol.loopexit.unr-lcssa:            ; preds = %bb.jw, %.lr.ph.i114.i.prol
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bnw, i64 8
  br label %.lr.ph.i114.i.prol.loopexit

.lr.ph.i114.i.prol.loopexit:                      ; preds = %.lr.ph.i114.i.prol.loopexit.unr-lcssa, %.lr.ph.i114.i.preheader
  %.01418.i.i.unr = phi ptr [ %i.bnw, %.lr.ph.i114.i.preheader ], [ %i.boo, %.lr.ph.i114.i.prol.loopexit.unr-lcssa ]
  %i.bop = icmp eq i64 %i.bob, 0
  br i1 %i.bop, label %_ZN12_GLOBAL__N_111IfConverter15InvalidatePredsERN4llvm17MachineBasicBlockE.exit.i, label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i.prol.loopexit, %bb.jz
  %.01418.i.i = phi ptr [ %i.bpn, %bb.jz ], [ %.01418.i.i.unr, %.lr.ph.i114.i.prol.loopexit ] ; 3 uses
  %i.boq = load ptr, ptr %.01418.i.i, align 8, !tbaa !328
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 24
  %i.bos = load i32, ptr %i.bor, align 8, !tbaa !374
  %i.bot = sext i32 %i.bos to i64
  %.val.i.i = load ptr, ptr %i.dt, align 8, !tbaa !125
  %i.bou = getelementptr inbounds nuw [328 x i8], ptr %.val.i.i, i64 %i.bot ; 3 uses
  %i.bov = load i16, ptr %i.bou, align 8          ; 2 uses
  %i.bow = trunc i16 %i.bov to i1
  %i.box = getelementptr inbounds nuw i8, ptr %i.bou, i64 16
  %i.boy = load ptr, ptr %i.box, align 8
  %i.boz = icmp eq ptr %i.boy, %i.bnu
  %or.cond.i.i145 = select i1 %i.bow, i1 true, i1 %i.boz
  br i1 %or.cond.i.i145, label %.lr.ph.i114.i.1, label %bb.jx

bb.jx:                                            ; preds = %.lr.ph.i114.i
  %i.bpa = and i16 %i.bov, -14
  store i16 %i.bpa, ptr %i.bou, align 8
  br label %.lr.ph.i114.i.1

.lr.ph.i114.i.1:                                  ; preds = %bb.jx, %.lr.ph.i114.i
  %i.bpb = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !328
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 24
  %i.bpe = load i32, ptr %i.bpd, align 8, !tbaa !374
  %i.bpf = sext i32 %i.bpe to i64
  %.val.i.i.1 = load ptr, ptr %i.dt, align 8, !tbaa !125
  %i.bpg = getelementptr inbounds nuw [328 x i8], ptr %.val.i.i.1, i64 %i.bpf ; 3 uses
  %i.bph = load i16, ptr %i.bpg, align 8          ; 2 uses
  %i.bpi = trunc i16 %i.bph to i1
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpg, i64 16
  %i.bpk = load ptr, ptr %i.bpj, align 8
  %i.bpl = icmp eq ptr %i.bpk, %i.bnu
  %or.cond.i.i145.1 = select i1 %i.bpi, i1 true, i1 %i.bpl
  br i1 %or.cond.i.i145.1, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %.lr.ph.i114.i.1
  %i.bpm = and i16 %i.bph, -14
  store i16 %i.bpm, ptr %i.bpg, align 8
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %.lr.ph.i114.i.1
  %i.bpn = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 2 uses
  %.not.i115.i.1 = icmp eq ptr %i.bpn, %i.boa
  br i1 %.not.i115.i.1, label %_ZN12_GLOBAL__N_111IfConverter15InvalidatePredsERN4llvm17MachineBasicBlockE.exit.i, label %.lr.ph.i114.i

_ZN12_GLOBAL__N_111IfConverter15InvalidatePredsERN4llvm17MachineBasicBlockE.exit.i: ; preds = %.lr.ph.i114.i.prol.loopexit, %bb.jz, %bb.jv
  %i.bpo = load i16, ptr %.0.i, align 8
  %i.bpp = or i16 %i.bpo, 1
  store i16 %i.bpp, ptr %.0.i, align 8
  br i1 %.1156.i, label %bb.ka, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread.i

bb.ka:                                            ; preds = %_ZN12_GLOBAL__N_111IfConverter15InvalidatePredsERN4llvm17MachineBasicBlockE.exit.i
  %i.bpq = load i16, ptr %.0146.i, align 8
  %i.bpr = or i16 %i.bpq, 1
  store i16 %i.bpr, ptr %.0146.i, align 8
  br label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread.i

_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread.i: ; preds = %bb.ka, %_ZN12_GLOBAL__N_111IfConverter15InvalidatePredsERN4llvm17MachineBasicBlockE.exit.i, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i, %bb.ii, %bb.ih
  %.088.i = phi i1 [ false, %bb.ih ], [ true, %_ZN12_GLOBAL__N_111IfConverter15InvalidatePredsERN4llvm17MachineBasicBlockE.exit.i ], [ false, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i ], [ true, %bb.ka ], [ false, %bb.ii ]
  %i.bps = load ptr, ptr %9, align 8, !tbaa !40   ; 2 uses
  %i.bpt = icmp eq ptr %i.bps, %i.ln
  br i1 %i.bpt, label %_ZN12_GLOBAL__N_111IfConverter17IfConvertTriangleERNS0_6BBInfoENS0_9IfcvtKindE.exit, label %bb.kb

bb.kb:                                            ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread.i
  call void @free(ptr noundef %i.bps) #23
  br label %_ZN12_GLOBAL__N_111IfConverter17IfConvertTriangleERNS0_6BBInfoENS0_9IfcvtKindE.exit

_ZN12_GLOBAL__N_111IfConverter17IfConvertTriangleERNS0_6BBInfoENS0_9IfcvtKindE.exit: ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread.i, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.088.i, label %.thread236, label %.thread231

bb.kc:                                            ; preds = %bb.hw
  %i.bpu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14DisableDiamond, i64 120), align 8, !tbaa !410, !range !36, !noundef !37
  %i.bpv = trunc nuw i8 %i.bpu to i1
  br i1 %i.bpv, label %.thread231, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bcm, i64 20
  %i.bpx = load i8, ptr %i.bpw, align 4           ; 2 uses
  %i.bpy = and i8 %i.bpx, 2
  %i.bpz = icmp ne i8 %i.bpy, 0
  %i.bqa = and i8 %i.bpx, 4
  %i.bqb = icmp ne i8 %i.bqa, 0
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bcn, i64 24
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !383
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 24
  %i.bqf = load i32, ptr %i.bqe, align 8, !tbaa !374
  %i.bqg = sext i32 %i.bqf to i64
  %.val60.i = load ptr, ptr %i.dt, align 8, !tbaa !125 ; 2 uses
  %i.bqh = getelementptr inbounds nuw [328 x i8], ptr %.val60.i, i64 %i.bqg ; 6 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bcn, i64 32
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !382
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 24
  %i.bql = load i32, ptr %i.bqk, align 8, !tbaa !374
  %i.bqm = sext i32 %i.bql to i64
  %i.bqn = getelementptr inbounds nuw [328 x i8], ptr %.val60.i, i64 %i.bqm ; 5 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqh, i64 24
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !383 ; 2 uses
  %.not.i150 = icmp eq ptr %i.bqp, null
  %.pre.i151 = load i16, ptr %i.bqh, align 8
  %i.bqq = and i16 %.pre.i151, 16                 ; 2 uses
  br i1 %.not.i150, label %bb.ke, label %._crit_edge.i152

._crit_edge.i152:                                 ; preds = %bb.kd
  %i.bqr = icmp ne i16 %i.bqq, 0
  br label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  %.not.i.not.i = icmp eq i16 %i.bqq, 0
  br i1 %.not.i.not.i, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqn, i64 24
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !383
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ke, %._crit_edge.i152
  %.pre-phi81.i = phi i1 [ %i.bqr, %._crit_edge.i152 ], [ false, %bb.ke ], [ true, %bb.kf ]
  %.050.i = phi ptr [ %i.bqp, %._crit_edge.i152 ], [ null, %bb.ke ], [ %i.bqt, %bb.kf ] ; 6 uses
  %i.bqu = icmp eq ptr %.050.i, null              ; 2 uses
  %i.bqv = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111IfConverter22IfConvertDiamondCommonERNS0_6BBInfoES2_S2_jjbbbb(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(328) %i.bcn, ptr noundef nonnull align 8 dereferenceable(328) %i.bqh, ptr noundef nonnull align 8 dereferenceable(328) %i.bqn, i32 noundef %i.bcr, i32 noundef %i.bct, i1 noundef zeroext %i.bpz, i1 noundef zeroext %i.bqb, i1 noundef zeroext %.pre-phi81.i, i1 noundef zeroext %i.bqu)
  br i1 %i.bqv, label %bb.kh, label %.thread231

bb.kh:                                            ; preds = %bb.kg
  br i1 %i.bqu, label %bb.kp, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bcn, i64 16 ; 6 uses
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !381
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqh, i64 16 ; 2 uses
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !381
  call void @_ZN4llvm17MachineBasicBlock15removeSuccessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(360) %i.bqx, ptr noundef %i.bqz, i1 noundef zeroext false) #23
  %i.bra = load ptr, ptr %i.bqw, align 8, !tbaa !381
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqn, i64 16 ; 2 uses
  %i.brc = load ptr, ptr %i.brb, align 8, !tbaa !381
  call void @_ZN4llvm17MachineBasicBlock15removeSuccessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(360) %i.bra, ptr noundef %i.brc, i1 noundef zeroext true) #23
  %i.brd = getelementptr inbounds nuw i8, ptr %.050.i, i64 24
  %i.bre = load i32, ptr %i.brd, align 8, !tbaa !374
  %i.brf = sext i32 %i.bre to i64
  %.val.i154 = load ptr, ptr %i.dt, align 8, !tbaa !125
  %i.brg = getelementptr inbounds nuw [328 x i8], ptr %.val.i154, i64 %i.brf ; 5 uses
  %.val63.i = load i16, ptr %i.brg, align 8       ; 2 uses
  %i.brh = getelementptr i8, ptr %i.brg, i64 16   ; 2 uses
  %.val64.i = load ptr, ptr %i.brh, align 8       ; 5 uses
  %i.bri = and i16 %.val63.i, 16
  %.not.i65.i = icmp eq i16 %i.bri, 0
  br i1 %.not.i65.i, label %.preheader.preheader.i.i, label %.split.i

.preheader.preheader.i.i:                         ; preds = %bb.ki
  %i.brj = getelementptr inbounds nuw i8, ptr %.val64.i, i64 8
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !322 ; 2 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %.val64.i, i64 32
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !390
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 296
  %i.bro = icmp eq ptr %i.brk, %i.brn
  br i1 %i.bro, label %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread.i, label %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.i

.split.i:                                         ; preds = %bb.ki
  %34 = and i16 %.val63.i, 64
  %.not5.i.i = icmp eq i16 %34, 0
  br i1 %.not5.i.i, label %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread.i, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i155

_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.i: ; preds = %.preheader.preheader.i.i
  %i.brp = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock11isSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360) %.val64.i, ptr noundef nonnull %i.brk) #23
  br i1 %i.brp, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i155, label %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit._ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread_crit_edge.i

_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit._ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread_crit_edge.i: ; preds = %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.i
  %.pre78.i = load ptr, ptr %i.brh, align 8, !tbaa !381
  br label %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread.i

_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread.i: ; preds = %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit._ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread_crit_edge.i, %.split.i, %.preheader.preheader.i.i
  %i.brq = phi ptr [ %.pre78.i, %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit._ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread_crit_edge.i ], [ %.val64.i, %.preheader.preheader.i.i ], [ %.val64.i, %.split.i ] ; 3 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 217
  %i.brs = load i8, ptr %i.brr, align 1, !tbaa !411, !range !36, !noundef !37
  %i.brt = trunc nuw i8 %i.brs to i1
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brq, i64 224
  %i.brv = load ptr, ptr %i.bru, align 8
  %.not.i66.i = icmp ne ptr %i.brv, null
  %or.cond.not.i.i163 = select i1 %i.brt, i1 true, i1 %.not.i66.i
  br i1 %or.cond.not.i.i163, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i155, label %bb.kj

bb.kj:                                            ; preds = %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread.i
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brq, i64 330
  %i.brx = load i8, ptr %i.brw, align 2, !tbaa !412, !range !36, !noundef !37
  %i.bry = xor i8 %i.brx, 1
  br label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i155

_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i155: ; preds = %bb.kj, %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread.i, %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.i, %.split.i
  %i.brz = phi i8 [ 0, %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.i ], [ 0, %.split.i ], [ %i.bry, %bb.kj ], [ 0, %_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE.exit.thread.i ] ; 2 uses
  %i.bsa = load ptr, ptr %i.bqw, align 8, !tbaa !381
  %i.bsb = call ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %i.bsa) #23 ; 2 uses
  %i.bsc = load ptr, ptr %i.bqw, align 8, !tbaa !381
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 48
  %.not77.i = icmp eq ptr %i.bsb, %i.bsd
  br i1 %.not77.i, label %.critedge.i, label %bb.kk

bb.kk:                                            ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i155
  %i.bse = load ptr, ptr %i.w, align 8, !tbaa !240 ; 2 uses
  %i.bsf = load ptr, ptr %i.bse, align 8, !tbaa !28
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 888
  %i.bsh = load ptr, ptr %i.bsg, align 8
  %i.bsi = call noundef zeroext i1 %i.bsh(ptr noundef nonnull align 8 dereferenceable(112) %i.bse, ptr noundef nonnull align 8 dereferenceable(80) %i.bsb) #23, !inline_history !568
  %spec.select.i = select i1 %i.bsi, i8 0, i8 %i.brz
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.kk, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i155
  %.049.i = phi i8 [ %spec.select.i, %bb.kk ], [ %i.brz, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.i155 ]
  %i.bsj = getelementptr inbounds nuw i8, ptr %.050.i, i64 72
  %i.bsk = load i32, ptr %i.bsj, align 8, !tbaa !68 ; 2 uses
  %i.bsl = icmp ugt i32 %i.bsk, 1
  br i1 %i.bsl, label %.thread75.i, label %bb.kl

bb.kl:                                            ; preds = %.critedge.i
  %i.bsm = icmp eq i32 %i.bsk, 1
  %i.bsn = trunc nuw i8 %.049.i to i1             ; 2 uses
  %or.cond.i = select i1 %i.bsm, i1 %i.bsn, i1 false
  br i1 %or.cond.i, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.bso = getelementptr inbounds nuw i8, ptr %.050.i, i64 64
  %i.bsp = load ptr, ptr %i.bso, align 8, !tbaa !40
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !328 ; 2 uses
  %i.bsr = load ptr, ptr %i.bqy, align 8, !tbaa !381
  %.not56.i = icmp eq ptr %i.bsq, %i.bsr
  br i1 %.not56.i, label %.thread.i, label %.split89.i

.split89.i:                                       ; preds = %bb.km
  %i.bss = load ptr, ptr %i.brb, align 8, !tbaa !381
  %.not57.i = icmp eq ptr %i.bsq, %i.bss
  br i1 %.not57.i, label %.thread.i, label %.thread75.i

bb.kn:                                            ; preds = %bb.kl
  br i1 %i.bsn, label %.thread.i, label %.thread75.i

.thread.i:                                        ; preds = %bb.kn, %.split89.i, %bb.km
  call fastcc void @_ZN12_GLOBAL__N_111IfConverter11MergeBlocksERNS0_6BBInfoES2_b(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(328) %i.bcn, ptr noundef nonnull align 8 dereferenceable(328) %i.brg, i1 noundef zeroext true)
  %i.bst = load i16, ptr %i.brg, align 8
  %i.bsu = or i16 %i.bst, 1
  store i16 %i.bsu, ptr %i.brg, align 8
  br label %bb.kp

.thread75.i:                                      ; preds = %bb.kn, %.split89.i, %.critedge.i
  %i.bsv = load ptr, ptr %i.bqw, align 8, !tbaa !381
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.bsv, ptr noundef nonnull %.050.i, i32 -2147483648) #23
  %i.bsw = load ptr, ptr %i.bqw, align 8, !tbaa !381
  %i.bsx = load ptr, ptr %i.w, align 8, !tbaa !240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.lx, ptr %4, align 8, !tbaa !40
  store i32 0, ptr %i.ly, align 8, !tbaa !68
  store i32 0, ptr %i.lz, align 4, !tbaa !69
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !28
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 320
  %i.bta = load ptr, ptr %i.bsz, align 8
  %i.btb = call noundef i32 %i.bta(ptr noundef nonnull align 8 dereferenceable(112) %i.bsx, ptr noundef nonnull align 8 dereferenceable(360) %i.bsw, ptr noundef nonnull align 8 dereferenceable(360) %.050.i, ptr noundef null, ptr nonnull %i.lx, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #23, !inline_history !569 ; 0 uses
  %i.btc = load ptr, ptr %4, align 8, !tbaa !40   ; 2 uses
  %i.btd = icmp eq ptr %i.btc, %i.lx
  br i1 %i.btd, label %_ZL18InsertUncondBranchRN4llvm17MachineBasicBlockES1_PKNS_15TargetInstrInfoE.exit.i156, label %bb.ko

bb.ko:                                            ; preds = %.thread75.i
  call void @free(ptr noundef %i.btc) #23
  br label %_ZL18InsertUncondBranchRN4llvm17MachineBasicBlockES1_PKNS_15TargetInstrInfoE.exit.i156

_ZL18InsertUncondBranchRN4llvm17MachineBasicBlockES1_PKNS_15TargetInstrInfoE.exit.i156: ; preds = %bb.ko, %.thread75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bte = load i16, ptr %i.bcn, align 8
  %i.btf = and i16 %i.bte, -65
  store i16 %i.btf, ptr %i.bcn, align 8
  br label %bb.kp

bb.kp:                                            ; preds = %_ZL18InsertUncondBranchRN4llvm17MachineBasicBlockES1_PKNS_15TargetInstrInfoE.exit.i156, %.thread.i, %bb.kh
  %i.btg = load i16, ptr %i.bqn, align 8
  %i.bth = or i16 %i.btg, 1
  store i16 %i.bth, ptr %i.bqn, align 8
  %i.bti = load i16, ptr %i.bqh, align 8
  %i.btj = or i16 %i.bti, 1
  store i16 %i.btj, ptr %i.bqh, align 8
  %i.btk = load i16, ptr %i.bcn, align 8
  %i.btl = or i16 %i.btk, 1
  store i16 %i.btl, ptr %i.bcn, align 8
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bcn, i64 16
  %i.btn = load ptr, ptr %i.btm, align 8, !tbaa !381 ; 5 uses
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btn, i64 64
  %i.btp = load ptr, ptr %i.bto, align 8, !tbaa !40 ; 4 uses
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btn, i64 72
  %i.btr = load i32, ptr %i.btq, align 8, !tbaa !68 ; 2 uses
  %i.bts = zext i32 %i.btr to i64
  %.idx.i.i157 = shl nuw nsw i64 %i.bts, 3        ; 2 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %i.btp, i64 %.idx.i.i157
  %.not17.i.i158 = icmp eq i32 %i.btr, 0
  br i1 %.not17.i.i158, label %.thread236, label %.lr.ph.i.i159.preheader

.lr.ph.i.i159.preheader:                          ; preds = %bb.kp
  %i.btu = add nsw i64 %.idx.i.i157, -8           ; 2 uses
  %i.btv = and i64 %i.btu, 8
  %lcmp.mod740.not.not = icmp eq i64 %i.btv, 0
  br i1 %lcmp.mod740.not.not, label %.lr.ph.i.i159.prol, label %.lr.ph.i.i159.prol.loopexit

.lr.ph.i.i159.prol:                               ; preds = %.lr.ph.i.i159.preheader
  %i.btw = load ptr, ptr %i.btp, align 8, !tbaa !328
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btw, i64 24
  %i.bty = load i32, ptr %i.btx, align 8, !tbaa !374
  %i.btz = sext i32 %i.bty to i64
  %.val.i.i161.prol = load ptr, ptr %i.dt, align 8, !tbaa !125
  %i.bua = getelementptr inbounds nuw [328 x i8], ptr %.val.i.i161.prol, i64 %i.btz ; 3 uses
  %i.bub = load i16, ptr %i.bua, align 8          ; 2 uses
  %i.buc = trunc i16 %i.bub to i1
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bua, i64 16
  %i.bue = load ptr, ptr %i.bud, align 8
  %i.buf = icmp eq ptr %i.bue, %i.btn
  %or.cond.i.i162.prol = select i1 %i.buc, i1 true, i1 %i.buf
  br i1 %or.cond.i.i162.prol, label %.lr.ph.i.i159.prol.loopexit.unr-lcssa, label %bb.kq

bb.kq:                                            ; preds = %.lr.ph.i.i159.prol
  %i.bug = and i16 %i.bub, -14
  store i16 %i.bug, ptr %i.bua, align 8
  br label %.lr.ph.i.i159.prol.loopexit.unr-lcssa

.lr.ph.i.i159.prol.loopexit.unr-lcssa:            ; preds = %bb.kq, %.lr.ph.i.i159.prol
  %i.buh = getelementptr inbounds nuw i8, ptr %i.btp, i64 8
  br label %.lr.ph.i.i159.prol.loopexit

.lr.ph.i.i159.prol.loopexit:                      ; preds = %.lr.ph.i.i159.prol.loopexit.unr-lcssa, %.lr.ph.i.i159.preheader
  %.01418.i.i160.unr = phi ptr [ %i.btp, %.lr.ph.i.i159.preheader ], [ %i.buh, %.lr.ph.i.i159.prol.loopexit.unr-lcssa ]
  %i.bui = icmp eq i64 %i.btu, 0
  br i1 %i.bui, label %.thread236, label %.lr.ph.i.i159

.lr.ph.i.i159:                                    ; preds = %.lr.ph.i.i159.prol.loopexit, %bb.kt
  %.01418.i.i160 = phi ptr [ %i.bvg, %bb.kt ], [ %.01418.i.i160.unr, %.lr.ph.i.i159.prol.loopexit ] ; 3 uses
  %i.buj = load ptr, ptr %.01418.i.i160, align 8, !tbaa !328
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 24
  %i.bul = load i32, ptr %i.buk, align 8, !tbaa !374
  %i.bum = sext i32 %i.bul to i64
  %.val.i.i161 = load ptr, ptr %i.dt, align 8, !tbaa !125
  %i.bun = getelementptr inbounds nuw [328 x i8], ptr %.val.i.i161, i64 %i.bum ; 3 uses
  %i.buo = load i16, ptr %i.bun, align 8          ; 2 uses
  %i.bup = trunc i16 %i.buo to i1
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bun, i64 16
  %i.bur = load ptr, ptr %i.buq, align 8
  %i.bus = icmp eq ptr %i.bur, %i.btn
  %or.cond.i.i162 = select i1 %i.bup, i1 true, i1 %i.bus
  br i1 %or.cond.i.i162, label %.lr.ph.i.i159.1, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph.i.i159
  %i.but = and i16 %i.buo, -14
  store i16 %i.but, ptr %i.bun, align 8
  br label %.lr.ph.i.i159.1

.lr.ph.i.i159.1:                                  ; preds = %bb.kr, %.lr.ph.i.i159
  %i.buu = getelementptr inbounds nuw i8, ptr %.01418.i.i160, i64 8
  %i.buv = load ptr, ptr %i.buu, align 8, !tbaa !328
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 24
  %i.bux = load i32, ptr %i.buw, align 8, !tbaa !374
  %i.buy = sext i32 %i.bux to i64
  %.val.i.i161.1 = load ptr, ptr %i.dt, align 8, !tbaa !125
  %i.buz = getelementptr inbounds nuw [328 x i8], ptr %.val.i.i161.1, i64 %i.buy ; 3 uses
  %i.bva = load i16, ptr %i.buz, align 8          ; 2 uses
  %i.bvb = trunc i16 %i.bva to i1
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.buz, i64 16
  %i.bvd = load ptr, ptr %i.bvc, align 8
  %i.bve = icmp eq ptr %i.bvd, %i.btn
  %or.cond.i.i162.1 = select i1 %i.bvb, i1 true, i1 %i.bve
  br i1 %or.cond.i.i162.1, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %.lr.ph.i.i159.1
  %i.bvf = and i16 %i.bva, -14
  store i16 %i.bvf, ptr %i.buz, align 8
  br label %bb.kt

end_hunk_0
begin_hunk_1_@_ZL16UpdatePredRedefsRN4llvm12MachineInstrERNS_12LivePhysRegsE:bb.a
  %.not15.i.i.i.i = icmp ult i32 %i.cb, %i.ca
  br i1 %.not15.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit.thread, !llvm.loop !753

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.01222.i.i.i.i = phi i32 [ %i.cb, %bb.l ], [ %i.by, %bb.k ] ; 2 uses
  %i.cc = zext i32 %.01222.i.i.i.i to i64         ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i.i.i, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !452
  %.not.i.i.i.i = icmp eq i16 %.sroa.08.0.copyload, %i.ce
  br i1 %.not.i.i.i.i, label %_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit, label %bb.l

_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit: ; preds = %.lr.ph.i.i.i.i
  %.not58 = icmp samesign eq i64 %i.bz, %i.cc
  br i1 %.not58, label %_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %i.ai, align 8, !tbaa !771, !alias.scope !772
  store i32 %i.bn, ptr %i.aj, align 4, !tbaa !48, !alias.scope !772
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !772
  store i32 33554432, ptr %4, align 8, !alias.scope !772
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit.thread

_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit.thread: ; preds = %bb.l, %bb.k, %bb.m, %_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %i.al, align 8, !tbaa !771, !alias.scope !773
  store i32 %i.bn, ptr %i.am, align 4, !tbaa !48, !alias.scope !773
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !773
  store i32 50331648, ptr %3, align 8, !alias.scope !773
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_16MCSubRegIteratorEEEZL16UpdatePredRedefsRNS_12MachineInstrERNS_12LivePhysRegsEE3$_0EEbOT_T0_.exit.thread"

bb.n:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !453, !noalias !774 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not10.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_16MCSubRegIteratorEEEZL16UpdatePredRedefsRNS_12MachineInstrERNS_12LivePhysRegsEE3$_0EEbOT_T0_.exit.thread", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n
  %i.cg = load ptr, ptr %i.ae, align 8, !tbaa !454, !noalias !774
  %i.ch = zext i16 %.sroa.08.0.copyload to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !456, !noalias !774
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !44, !noalias !775
  %i.co = load i64, ptr %i.i, align 8, !tbaa !88, !noalias !775 ; 2 uses
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !87, !noalias !775
  br label %bb.o

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.thread.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.cq = phi i16 [ %.sroa.08.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.dc, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.thread.i.i.i.i.i.i" ] ; 3 uses
  %i.cr = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %i.da, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %i.cs = zext i16 %i.cq to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !48, !noalias !775
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %.not1521.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.cv, %i.cp
  br i1 %.not1521.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.thread.i.i.i.i.i.i"

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = add i32 %.01222.i.i.i.i.i.i.i.i.i.i.i.i, 256 ; 2 uses
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.cw, %i.cp
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.thread.i.i.i.i.i.i", !llvm.loop !753

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.o, %bb.p
  %.01222.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.p ], [ %i.cv, %bb.o ] ; 2 uses
  %i.cx = zext i32 %.01222.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !452, !noalias !775
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cq, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.i.i.i.i.i.i", label %bb.p

"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i = icmp samesign eq i64 %i.co, %i.cx
  br i1 %.not5.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.thread.i.i.i.i.i.i", label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_16MCSubRegIteratorEEEZL16UpdatePredRedefsRNS_12MachineInstrERNS_12LivePhysRegsEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %bb.p, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.i.i.i.i.i.i", %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.db = load i16, ptr %i.cr, align 2, !tbaa !452, !noalias !775 ; 2 uses
  %i.dc = add i16 %i.db, %i.cq
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_16MCSubRegIteratorEEEZL16UpdatePredRedefsRNS_12MachineInstrERNS_12LivePhysRegsEE3$_0EEbOT_T0_.exit.thread", label %bb.o, !llvm.loop !766

"_ZN4llvm6any_ofINS_14iterator_rangeINS_16MCSubRegIteratorEEEZL16UpdatePredRedefsRNS_12MachineInstrERNS_12LivePhysRegsEE3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr null, ptr %i.af, align 8, !tbaa !771, !alias.scope !776
  store i32 %i.bn, ptr %i.ag, align 4, !tbaa !48, !alias.scope !776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !776
  store i32 33554432, ptr %2, align 8, !alias.scope !776
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_16MCSubRegIteratorEEEZL16UpdatePredRedefsRNS_12MachineInstrERNS_12LivePhysRegsEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofINS_14iterator_rangeINS_16MCSubRegIteratorEEEZL16UpdatePredRedefsRNS_12MachineInstrERNS_12LivePhysRegsEE3$_0EEbOT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL16UpdatePredRedefsRN4llvm12MachineInstrERNS2_12LivePhysRegsEE3$_0EclINS2_16MCSubRegIteratorEEEbT_.exit.thread.i.i.i.i.i.i", %bb.n, %"_ZN4llvm6any_ofINS_14iterator_rangeINS_16MCSubRegIteratorEEEZL16UpdatePredRedefsRNS_12MachineInstrERNS_12LivePhysRegsEE3$_0EEbOT_T0_.exit", %_ZNK4llvm9SparseSetIttNS_8identityEhE5countERKt.exit.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %.03167, i64 16 ; 2 uses
  %.not33 = icmp eq ptr %i.dd, %i.ac
  br i1 %.not33, label %._crit_edge70.loopexit, label %bb.j
}

declare void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i32) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12LivePhysRegs11stepForwardERKNS_12MachineInstrERNS_15SmallVectorImplISt4pairItPKNS_14MachineOperandEEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 2) #23
  %i.e = load ptr, ptr %0, align 8, !tbaa !87
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.f
  store i16 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !88
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !88
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr12isSafeToMoveERb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock18mayHaveInlineAsmBrEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock11isSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, %4
  %i.b = icmp eq ptr %1, %4
  %or.cond.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond.i, label %_ZN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb1ELb1EvLb0EvEELb0ELb0EEERS8_SD_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %3, ptr %4) #23
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i = load i64, ptr %3, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %4, ptr %i.i, align 8, !tbaa !384
  %.0.copyload.i.i.i.i21.i.i.i.i.i = load i64, ptr %3, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i = load i64, ptr %4, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i, 7
  %i.l = or disjoint i64 %i.k, %i.j
  store i64 %i.l, ptr %4, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i = load i64, ptr %1, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i, -8 ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !384
  %.0.copyload.i.i.i.i24.i.i.i.i.i = load i64, ptr %3, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i, 7
  %i.q = or disjoint i64 %i.p, %i.m
  store i64 %i.q, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !384
  %.0.copyload.i.i.i.i25.i.i.i.i.i = load i64, ptr %1, align 8
  %i.s = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i, 7
  %i.t = or disjoint i64 %i.s, %i.e
  store i64 %i.t, ptr %1, align 8
  br label %_ZN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb1ELb1EvLb0EvEELb0ELb0EEERS8_SD_SD_.exit

_ZN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb1ELb1EvLb0EvEELb0ELb0EEERS8_SD_SD_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN4llvm17MachineBasicBlock18setSuccProbabilityEPPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i32) local_unnamed_addr #6

declare void @_ZN4llvm17MachineBasicBlock9moveAfterEPS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_111IfConverter21blockNeverFallThroughERNS0_6BBInfoE(i16 %.0.val, ptr %.16.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = and i16 %.0.val, 16
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %.preheader.preheader, label %0

.preheader.preheader:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !322  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.16.val, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !390
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.g = icmp eq ptr %i.c, %i.f
  br i1 %i.g, label %.critedge, label %bb.b

0:                                                ; preds = %bb.a
  %1 = and i16 %.0.val, 64
  %.not5 = icmp eq i16 %1, 0
  br label %.critedge

bb.b:                                             ; preds = %.preheader.preheader
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock11isSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360) %.16.val, ptr noundef nonnull %i.c) #23
  %not. = xor i1 %i.h, true
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.preheader.preheader, %0
  %.1 = phi i1 [ %.not5, %0 ], [ %not., %bb.b ], [ true, %.preheader.preheader ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111IfConverter22IfConvertDiamondCommonERNS0_6BBInfoES2_S2_jjbbbb(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr noundef nonnull align 8 dereferenceable(328) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9) unnamed_addr #3 align 2 {
bb.a:
  %10 = alloca %"struct.std::pair.438", align 8   ; 3 uses
  %11 = alloca %"class.llvm::MCRegister", align 4 ; 4 uses
  %12 = alloca %"struct.std::pair.438", align 8   ; 3 uses
  %13 = alloca %"class.llvm::MCRegister", align 4 ; 4 uses
  %14 = alloca %"class.llvm::SmallVector.40", align 8 ; 9 uses
  %15 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 10 uses
  %16 = alloca %"class.llvm::SmallVector.405", align 8 ; 8 uses
  %17 = alloca %"class.llvm::SmallSet", align 8   ; 15 uses
  %18 = alloca %"class.llvm::SmallSet", align 8   ; 14 uses
  %19 = alloca %"class.llvm::SmallVector.415", align 8 ; 10 uses
  %i.a = load i16, ptr %2, align 8
  %i.b = trunc i16 %i.a to i1
  %i.c = load i16, ptr %3, align 8
  %i.d = trunc i16 %i.c to i1
  %or.cond352 = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond352, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !381  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !381  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !68
  %i.n = icmp ugt i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = load i16, ptr %1, align 8
  %i.p = and i16 %i.o, -5
  store i16 %i.p, ptr %1, align 8
  %i.q = load i16, ptr %2, align 8
  %i.r = and i16 %i.q, -5
  store i16 %i.r, ptr %2, align 8
  %i.s = load i16, ptr %3, align 8
  %i.t = and i16 %i.s, -5
  store i16 %i.t, ptr %3, align 8
  br label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 217
  %i.v = load i8, ptr %i.u, align 1, !tbaa !411, !range !36, !noundef !37
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.y = load ptr, ptr %i.x, align 8
  %.not.i = icmp ne ptr %i.y, null
  %or.cond.not.i = select i1 %i.w, i1 true, i1 %.not.i
  br i1 %or.cond.not.i, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit

_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 330
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !412, !range !36, !noundef !37
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 217
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !411, !range !36, !noundef !37
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i158 = icmp ne ptr %i.ag, null
  %or.cond.not.i159 = select i1 %i.ae, i1 true, i1 %.not.i158
  br i1 %or.cond.not.i159, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit160

_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit160: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 330
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !412, !range !36, !noundef !37
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit160
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !68
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ao
  call void @_ZN4llvm11SmallVectorINS_14MachineOperandELj4EEC2IPS1_vEET_S5_(ptr noundef nonnull align 8 dereferenceable(144) %14, ptr noundef %i.al, ptr noundef %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !240 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 848
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(112) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %14) #23 ; 0 uses
  %.not = xor i1 %6, true
  %or.cond = or i1 %7, %.not
  br i1 %or.cond, label %bb.h, label %.critedge150

bb.h:                                             ; preds = %bb.g
  %or.cond3 = or i1 %6, %7
  br i1 %or.cond3, label %.critedge148, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !391
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !391
  %i.ba = icmp ugt i32 %i.ax, %i.az
  br i1 %i.ba, label %.critedge150, label %.critedge148

.critedge150:                                     ; preds = %bb.g, %bb.i
  br label %.critedge148

.critedge148:                                     ; preds = %bb.h, %.critedge150, %bb.i
  %.0341 = phi ptr [ %14, %bb.i ], [ %i.ak, %.critedge150 ], [ %14, %bb.h ]
  %.0340 = phi ptr [ %i.ak, %bb.i ], [ %14, %.critedge150 ], [ %i.ak, %bb.h ]
  %.0339 = phi ptr [ %3, %bb.i ], [ %2, %.critedge150 ], [ %3, %bb.h ] ; 5 uses
  %.0338 = phi ptr [ %2, %bb.i ], [ %3, %.critedge150 ], [ %2, %bb.h ] ; 4 uses
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !240 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !381
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 312
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noundef nonnull align 8 dereferenceable(360) %i.bd, ptr noundef null) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !391
  %i.bk = sub i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !391
  %i.bl = getelementptr inbounds nuw i8, ptr %.0338, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !381 ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0339, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !381 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !241
  call void @_ZN4llvm12LivePhysRegs4initERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 8 dereferenceable(316) %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !243
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !314
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 320
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !315
  %i.bx = and i64 %i.bw, 4
  %.not358 = icmp eq i64 %i.bx, 0
  br i1 %.not358, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge148
  call void @_ZN4llvm12LivePhysRegs21addLiveInsNoPristinesERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 8 dereferenceable(360) %i.bm) #23
  call void @_ZN4llvm12LivePhysRegs21addLiveInsNoPristinesERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 8 dereferenceable(360) %i.bo) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge148
  %i.by = call ptr @_ZN4llvm17MachineBasicBlock21getFirstNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %i.bm, i1 noundef zeroext false) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.bz = call ptr @_ZN4llvm17MachineBasicBlock21getFirstNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %i.bo, i1 noundef zeroext false) #23 ; 3 uses
  store ptr %i.bz, ptr %15, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0338, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !391
  %i.cc = sub i32 %i.cb, %4
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !391
  %i.cd = getelementptr inbounds nuw i8, ptr %.0339, i64 4 ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !391
  %i.cf = sub i32 %i.ce, %4
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !391
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 8 uses
  %i.ch = icmp eq i32 %4, 0                       ; 2 uses
  %i.ci = icmp eq ptr %i.by, %i.cg
  %or.cond354383 = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond354383, label %select.unfold.preheader, label %.lr.ph

select.unfold.preheader:                          ; preds = %bb.k
  br i1 %i.ch, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit170._crit_edge, label %.lr.ph388

.lr.ph388:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %select.unfold.preheader
  %.sroa.0313.0.lcssa483 = phi ptr [ %i.by, %select.unfold.preheader ], [ %i.cz, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  br label %bb.l

.lr.ph:                                           ; preds = %bb.k, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.0132385 = phi i32 [ %spec.select151, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ 0, %bb.k ]
  %.sroa.0313.0384 = phi ptr [ %i.cz, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %i.by, %bb.k ] ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0313.0384, i64 52
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !419
  %i.cn = add i32 %i.cm, -19
  %switch.i = icmp ult i32 %i.cn, -5
  %i.co = zext i1 %switch.i to i32
  %spec.select151 = add nuw i32 %.0132385, %i.co  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0313.0384) ]
end_hunk_1
