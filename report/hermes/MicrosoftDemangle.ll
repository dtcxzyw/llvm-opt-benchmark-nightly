Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/MicrosoftDemangle?download=true
inline.NumInlined: 804
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a
  store ptr %i.jl, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i86

_ZN10StringView12consumeFrontEc.exit.thread.i86:  ; preds = %bb.aw, %_ZNK10StringView10startsWithEc.exit.i.i85, %bb.av
  %i.jm = phi ptr [ %i.jl, %bb.aw ], [ %i.jh, %_ZNK10StringView10startsWithEc.exit.i.i85 ], [ %i.jh, %bb.av ] ; 5 uses
  %i.jn = phi i8 [ 64, %bb.aw ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i85 ], [ 0, %bb.av ] ; 3 uses
  %i.jo = icmp eq ptr %i.jm, %i.ik
  br i1 %i.jo, label %_ZN10StringView12consumeFrontEc.exit7.thread.i88, label %_ZNK10StringView10startsWithEc.exit.i6.i87

_ZNK10StringView10startsWithEc.exit.i6.i87:       ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i86
  %i.jp = load i8, ptr %i.jm, align 1, !tbaa !15
  %i.jq = icmp eq i8 %i.jp, 73
  br i1 %i.jq, label %bb.ax, label %_ZN10StringView12consumeFrontEc.exit7.thread.i88

bb.ax:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i87
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 1 ; 2 uses
  store ptr %i.jr, ptr %1, align 8, !tbaa !55
  %i.js = or disjoint i8 %i.jn, 32
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i88

_ZN10StringView12consumeFrontEc.exit7.thread.i88: ; preds = %bb.ax, %_ZNK10StringView10startsWithEc.exit.i6.i87, %_ZN10StringView12consumeFrontEc.exit.thread.i86
  %i.jt = phi ptr [ %i.jr, %bb.ax ], [ %i.jm, %_ZNK10StringView10startsWithEc.exit.i6.i87 ], [ %i.jm, %_ZN10StringView12consumeFrontEc.exit.thread.i86 ] ; 3 uses
  %i.ju = phi i8 [ %i.js, %bb.ax ], [ %i.jn, %_ZNK10StringView10startsWithEc.exit.i6.i87 ], [ %i.jn, %_ZN10StringView12consumeFrontEc.exit.thread.i86 ] ; 3 uses
  %i.jv = icmp eq ptr %i.jt, %i.ik
  br i1 %i.jv, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90, label %_ZNK10StringView10startsWithEc.exit.i8.i89

_ZNK10StringView10startsWithEc.exit.i8.i89:       ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i88
  %i.jw = load i8, ptr %i.jt, align 1, !tbaa !15
  %i.jx = icmp eq i8 %i.jw, 70
  br i1 %i.jx, label %bb.ay, label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90

bb.ay:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i8.i89
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store ptr %i.jy, ptr %1, align 8, !tbaa !55
  %i.jz = or i8 %i.ju, 16
  br label %_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit90: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i88, %_ZNK10StringView10startsWithEc.exit.i8.i89, %bb.ay
  %i.ka = phi i8 [ %i.jz, %bb.ay ], [ %i.ju, %_ZNK10StringView10startsWithEc.exit.i8.i89 ], [ %i.ju, %_ZN10StringView12consumeFrontEc.exit7.thread.i88 ]
  %i.kb = or i8 %i.ka, %.sroa.0181.0.extract.trunc
  store i8 %i.kb, ptr %i.ih, align 4, !tbaa !91
  %i.kc = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1), !inline_history !148
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink14.i104, i64 32
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !100
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.az:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.thread4.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 1 ; 5 uses
  store ptr %i.ke, ptr %1, align 8, !tbaa !40
  %i.kf = icmp eq ptr %i.ke, %.sroa.28.0.copyload
  br i1 %i.kf, label %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split, label %_ZNK10StringView10startsWithEc.exit.i.i127

_ZNK10StringView10startsWithEc.exit.i.i127:       ; preds = %bb.az
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !15  ; 2 uses
  %i.kh = icmp eq i8 %i.kg, 63
  br i1 %i.kh, label %bb.ba, label %_ZN10StringView12consumeFrontEc.exit.i128

bb.ba:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i127
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 2 ; 2 uses
  store ptr %i.ki, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split

_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split: ; preds = %bb.az, %bb.ba
  %.ph = phi ptr [ %i.ke, %bb.az ], [ %i.ki, %bb.ba ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !15
  br label %_ZN10StringView12consumeFrontEc.exit.i128

_ZN10StringView12consumeFrontEc.exit.i128:        ; preds = %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split, %_ZNK10StringView10startsWithEc.exit.i.i127
  %i.kj = phi i8 [ %.pr, %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split ], [ %i.kg, %_ZNK10StringView10startsWithEc.exit.i.i127 ] ; 4 uses
  %i.kk = phi ptr [ %.ph, %_ZN10StringView12consumeFrontEc.exit.i128thread-pre-split ], [ %i.ke, %_ZNK10StringView10startsWithEc.exit.i.i127 ] ; 5 uses
  %i.kl = icmp ne ptr %i.kk, %.sroa.28.0.copyload
  tail call void @llvm.assume(i1 %i.kl)
  %i.km = sext i8 %i.kj to i32
  %isdigittmp.i.i130 = add nsw i32 %i.km, -48
  %isdigit.i.i131 = icmp ult i32 %isdigittmp.i.i130, 10
  br i1 %isdigit.i.i131, label %bb.bb, label %.lr.ph.preheader.i132

bb.bb:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.i128
  %i.kn = sext i8 %i.kj to i64
  %i.ko = add nsw i64 %i.kn, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143

.lr.ph.preheader.i132:                            ; preds = %_ZN10StringView12consumeFrontEc.exit.i128
  %i.kp = ptrtoint ptr %i.kk to i64
  %i.kq = sub i64 %i.dl, %i.kp
  %i.kr = icmp eq i8 %i.kj, 64
  br i1 %i.kr, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.preheader.i132, %.lr.ph.i133
  %i.ks = phi i8 [ %i.kz, %.lr.ph.i133 ], [ %i.kj, %.lr.ph.preheader.i132 ] ; 2 uses
  %.03656.i135250 = phi i64 [ %i.kw, %.lr.ph.i133 ], [ 0, %.lr.ph.preheader.i132 ]
  %.02557.i134249 = phi i64 [ %i.kx, %.lr.ph.i133 ], [ 0, %.lr.ph.preheader.i132 ]
  %i.kt = add nsw i8 %i.ks, -65
  %or.cond.i136 = icmp slt i8 %i.ks, 81
  tail call void @llvm.assume(i1 %or.cond.i136)
  %i.ku = shl i64 %.03656.i135250, 4
  %i.kv = zext nneg i8 %i.kt to i64
  %i.kw = add nuw nsw i64 %i.ku, %i.kv            ; 2 uses
  %i.kx = add nuw i64 %.02557.i134249, 1          ; 4 uses
  %exitcond.not.i142 = icmp ne i64 %i.kx, %i.kq
  tail call void @llvm.assume(i1 %exitcond.not.i142)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !15  ; 2 uses
  %i.la = icmp eq i8 %i.kz, 64
  br i1 %i.la, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, label %.lr.ph.i133

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit: ; preds = %.lr.ph.i133, %.lr.ph.preheader.i132
  %.02557.i134.lcssa = phi i64 [ 0, %.lr.ph.preheader.i132 ], [ %i.kx, %.lr.ph.i133 ]
  %.03656.i135.lcssa = phi i64 [ 0, %.lr.ph.preheader.i132 ], [ %i.kw, %.lr.ph.i133 ]
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.02557.i134.lcssa
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit, %bb.bb
  %.pn = phi ptr [ %i.kk, %bb.bb ], [ %i.lb, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit ]
  %.sroa.0.4.i138 = phi i64 [ %i.ko, %bb.bb ], [ %.03656.i135.lcssa, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143.loopexit ] ; 4 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge, ptr %1, align 8, !tbaa !55
  %i.lc = icmp ne i64 %.sroa.0.4.i138, 0
  tail call void @llvm.assume(i1 %i.lc)
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !34 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !31
  %i.lg = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !35
  %i.lj = add i64 %i.lg, 7
  %i.lk = add i64 %i.lj, %i.li
  %i.ll = and i64 %i.lk, -8                       ; 2 uses
  %reass.sub.i126 = sub i64 %i.ll, %i.lg
  %i.lm = add i64 %reass.sub.i126, 32             ; 2 uses
  store i64 %i.lm, ptr %i.lh, align 8, !tbaa !35
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !33
  %i.lp = icmp ult i64 %i.lm, %i.lo
  br i1 %i.lp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143
  %i.lq = inttoptr i64 %i.ll to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit143
  %i.lr = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.ls = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.ls, ptr %i.lr, align 8, !tbaa !31
  %i.lt = load ptr, ptr %i.ld, align 8, !tbaa !34
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store i64 4096, ptr %i.lv, align 8, !tbaa !33
  store ptr %i.lr, ptr %i.ld, align 8, !tbaa !34
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 32, ptr %i.lw, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bc, %bb.bd
  %.sink13.i = phi ptr [ %i.ls, %bb.bd ], [ %i.lq, %bb.bc ] ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  store i32 16, ptr %i.lx, align 8, !tbaa !58
  %i.ly = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 12 ; 2 uses
  store i8 0, ptr %i.ly, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle13ArrayTypeNodeE, i64 16), ptr %.sink13.i, align 8, !tbaa !20
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i8 0, i64 16, i1 false)
  %i.ma = load ptr, ptr %i.ld, align 8, !tbaa !34 ; 3 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !31
  %i.mc = ptrtoint ptr %i.mb to i64               ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !35
  %i.mf = add i64 %i.mc, 7
  %i.mg = add i64 %i.mf, %i.me
  %i.mh = and i64 %i.mg, -8                       ; 2 uses
  %reass.sub.i123 = sub i64 %i.mh, %i.mc
  %i.mi = add i64 %reass.sub.i123, 16             ; 2 uses
  store i64 %i.mi, ptr %i.md, align 8, !tbaa !35
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !33
  %i.ml = icmp ult i64 %i.mi, %i.mk
  br i1 %i.ml, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit
  %i.mm = inttoptr i64 %i.mh to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125

bb.bf:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_13ArrayTypeNodeEJEEEPT_DpOT0_.exit
  %i.mn = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.mo = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.mo, ptr %i.mn, align 8, !tbaa !31
  %i.mp = load ptr, ptr %i.ld, align 8, !tbaa !34
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  store ptr %i.mp, ptr %i.mq, align 8, !tbaa !32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store i64 4096, ptr %i.mr, align 8, !tbaa !33
  store ptr %i.mn, ptr %i.ld, align 8, !tbaa !34
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i64 16, ptr %i.ms, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125: ; preds = %bb.be, %bb.bf
  %.sink.i124 = phi ptr [ %i.mo, %bb.bf ], [ %i.mm, %bb.be ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i124, i8 0, i64 16, i1 false)
  %invariant.op = add i64 %.sroa.0.4.i138, -1
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125, %bb.br
  %.032.i253 = phi i64 [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125 ], [ %3, %bb.br ] ; 2 uses
  %.033.i252 = phi ptr [ %.sink.i124, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit125 ], [ %.235.i.ph, %bb.br ] ; 3 uses
  %i.mu = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.mv = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !41 ; 3 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZN10StringView12consumeFrontEc.exit.i118, label %_ZNK10StringView10startsWithEc.exit.i.i117

_ZNK10StringView10startsWithEc.exit.i.i117:       ; preds = %bb.bg
  %i.mx = load i8, ptr %i.mu, align 1, !tbaa !15
  %i.my = icmp eq i8 %i.mx, 63
  br i1 %i.my, label %bb.bh, label %_ZN10StringView12consumeFrontEc.exit.i118

bb.bh:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i.i117
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 1 ; 2 uses
  store ptr %i.mz, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontEc.exit.i118

_ZN10StringView12consumeFrontEc.exit.i118:        ; preds = %bb.bh, %_ZNK10StringView10startsWithEc.exit.i.i117, %bb.bg
  %i.na = phi ptr [ %i.mz, %bb.bh ], [ %i.mu, %_ZNK10StringView10startsWithEc.exit.i.i117 ], [ %i.mu, %bb.bg ] ; 6 uses
  %i.nb = icmp eq ptr %i.na, %i.mv
  br i1 %i.nb, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread, label %_ZL15startsWithDigit10StringView.exit.i119

_ZL15startsWithDigit10StringView.exit.i119:       ; preds = %_ZN10StringView12consumeFrontEc.exit.i118
  %i.nc = load i8, ptr %i.na, align 1, !tbaa !15  ; 2 uses
  %i.nd = sext i8 %i.nc to i32
  %isdigittmp.i.i120 = add nsw i32 %i.nd, -48
  %isdigit.i.i121 = icmp ult i32 %isdigittmp.i.i120, 10
  br i1 %isdigit.i.i121, label %bb.bi, label %.lr.ph.preheader.i

bb.bi:                                            ; preds = %_ZL15startsWithDigit10StringView.exit.i119
  %i.ne = sext i8 %i.nc to i64
  %i.nf = add nsw i64 %i.ne, -47
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

.lr.ph.preheader.i:                               ; preds = %_ZL15startsWithDigit10StringView.exit.i119
  %i.ng = ptrtoint ptr %i.mv to i64
  %i.nh = ptrtoint ptr %i.na to i64
  %i.ni = sub i64 %i.ng, %i.nh
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %.lr.ph.preheader.i
  %.02557.i = phi i64 [ %i.nq, %bb.bk ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03656.i = phi i64 [ %i.np, %bb.bk ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 %.02557.i
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !15  ; 2 uses
  %i.nl = icmp eq i8 %i.nk, 64
  br i1 %i.nl, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i
  %i.nm = add i8 %i.nk, -65                       ; 2 uses
  %or.cond.i122 = icmp ult i8 %i.nm, 16
  br i1 %or.cond.i122, label %bb.bk, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.nn = shl i64 %.03656.i, 4
  %i.no = zext nneg i8 %i.nm to i64
  %i.np = or disjoint i64 %i.nn, %i.no
  %i.nq = add nuw i64 %.02557.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.nq, %i.ni
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread, label %.lr.ph.i, !llvm.loop !4

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread: ; preds = %bb.bj, %bb.bk, %_ZN10StringView12consumeFrontEc.exit.i118
  store i8 1, ptr %i.mt, align 8, !tbaa !28
  br label %bb.bl

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit: ; preds = %.lr.ph.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.na, i64 %.02557.i
  br label %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit

_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit: ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit, %bb.bi
  %.pn244 = phi ptr [ %i.na, %bb.bi ], [ %i.nr, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %.sroa.0.4.i = phi i64 [ %i.nf, %bb.bi ], [ %.03656.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.loopexit ]
  %storemerge243 = getelementptr inbounds nuw i8, ptr %.pn244, i64 1
  store ptr %storemerge243, ptr %1, align 8, !tbaa !55
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread
  %.sroa.0.4.i223 = phi i64 [ 0, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit.thread ], [ %.sroa.0.4.i, %_ZN12_GLOBAL__N_19Demangler14demangleNumberER10StringView.exit ]
  %i.ns = load ptr, ptr %i.ld, align 8, !tbaa !34 ; 4 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !31 ; 2 uses
  %i.nu = ptrtoint ptr %i.nt to i64               ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !35
  %i.nx = add i64 %i.nu, 7
  %i.ny = add i64 %i.nx, %i.nw
  %i.nz = and i64 %i.ny, -8                       ; 2 uses
  %reass.sub.i116 = sub i64 %i.nz, %i.nu          ; 2 uses
  %i.oa = add i64 %reass.sub.i116, 32             ; 2 uses
  store i64 %i.oa, ptr %i.nv, align 8, !tbaa !35
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !33 ; 2 uses
  %i.od = icmp ult i64 %i.oa, %i.oc
  br i1 %i.od, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oe = inttoptr i64 %i.nz to ptr
  %i.of = add i64 %reass.sub.i116, 39
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit

bb.bn:                                            ; preds = %bb.bl
  %i.og = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.oh = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 3 uses
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !31
  %i.oi = load ptr, ptr %i.ld, align 8, !tbaa !34
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !32
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store i64 4096, ptr %i.ok, align 8, !tbaa !33
  store ptr %i.og, ptr %i.ld, align 8, !tbaa !34
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i64 32, ptr %i.ol, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit: ; preds = %bb.bm, %bb.bn
  %i.om = phi i64 [ 4096, %bb.bn ], [ %i.oc, %bb.bm ]
  %i.on = phi i64 [ 39, %bb.bn ], [ %i.of, %bb.bm ]
  %i.oo = phi ptr [ %i.oh, %bb.bn ], [ %i.nt, %bb.bm ]
  %i.op = phi ptr [ %i.og, %bb.bn ], [ %i.ns, %bb.bm ]
  %.sink20.i = phi ptr [ %i.oh, %bb.bn ], [ %i.oe, %bb.bm ] ; 5 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 8
  store i32 23, ptr %i.oq, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh11ms_demangle18IntegerLiteralNodeE, i64 16), ptr %.sink20.i, align 8, !tbaa !20
  %i.or = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 16
  store i64 %.sroa.0.4.i223, ptr %i.or, align 8, !tbaa !102
  %i.os = getelementptr inbounds nuw i8, ptr %.sink20.i, i64 24
  store i8 0, ptr %i.os, align 8, !tbaa !103
  store ptr %.sink20.i, ptr %.033.i252, align 8, !tbaa !106
  %i.ot = icmp ult i64 %.032.i253, %invariant.op
  br i1 %i.ot, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit
  %i.ou = ptrtoint ptr %i.oo to i64               ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.ow = add i64 %i.on, %i.ou
  %i.ox = and i64 %i.ow, -8                       ; 2 uses
  %reass.sub.i115 = sub i64 %i.ox, %i.ou
  %i.oy = add i64 %reass.sub.i115, 16             ; 2 uses
  store i64 %i.oy, ptr %i.ov, align 8, !tbaa !35
  %i.oz = icmp ult i64 %i.oy, %i.om
  br i1 %i.oz, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pa = inttoptr i64 %i.ox to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.pb = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.pc = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.pc, ptr %i.pb, align 8, !tbaa !31
  %i.pd = load ptr, ptr %i.ld, align 8, !tbaa !34
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !32
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  store i64 4096, ptr %i.pf, align 8, !tbaa !33
  store ptr %i.pb, ptr %i.ld, align 8, !tbaa !34
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i64 16, ptr %i.pg, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit: ; preds = %bb.bp, %bb.bq
  %.sink.i = phi ptr [ %i.pc, %bb.bq ], [ %i.pa, %bb.bp ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink.i, i8 0, i64 16, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %.033.i252, i64 8
  store ptr %.sink.i, ptr %i.ph, align 8, !tbaa !107
  br label %bb.br

bb.br:                                            ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit
  %.235.i.ph = phi ptr [ %.033.i252, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_18IntegerLiteralNodeEJRmRbEEEPT_DpOT0_.exit ], [ %.sink.i, %_ZN4llvh11ms_demangle14ArenaAllocator5allocI8NodeListJEEEPT_DpOT0_.exit ]
  %3 = add nuw i64 %.032.i253, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %3, %.sroa.0.4.i138
  br i1 %exitcond.not, label %.critedge.i, label %bb.bg, !llvm.loop !149

.critedge.i:                                      ; preds = %bb.br
  %i.pi = tail call fastcc noundef ptr @_ZL19nodeListToNodeArrayRN4llvh11ms_demangle14ArenaAllocatorEP8NodeListm(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull %.sink.i124, i64 noundef %.sroa.0.4.i138), !inline_history !150
  store ptr %i.pi, ptr %i.lz, align 8, !tbaa !158
  %i.pj = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !41
  %i.pk = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = sub i64 %i.pl, %i.pm
  %i.po = icmp ult i64 %i.pn, 3
  br i1 %i.po, label %_ZN10StringView12consumeFrontES_.exit114.thread, label %_ZNK10StringView10startsWithES_.exit.i109

_ZNK10StringView10startsWithES_.exit.i109:        ; preds = %.critedge.i
  %i.pp = load i16, ptr %i.pk, align 1
  %i.pq = xor i16 9252, %i.pp
  %i.pr = getelementptr i8, ptr %i.pk, i64 2
  %i.ps = load i8, ptr %i.pr, align 1
  %i.pt = zext i8 %i.ps to i16
  %i.pu = xor i16 67, %i.pt
  %i.pv = or i16 %i.pq, %i.pu
  %i.pw = icmp ne i16 %i.pv, 0
  %i.px = zext i1 %i.pw to i32
  %.not9.i.i.i.i.i.i111 = icmp eq i32 %i.px, 0
  br i1 %.not9.i.i.i.i.i.i111, label %bb.bs, label %_ZN10StringView12consumeFrontES_.exit114.thread

bb.bs:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i109
  %i.py = getelementptr inbounds nuw i8, ptr %i.pk, i64 3
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  store ptr %i.pz, ptr %1, align 8, !tbaa !40
  %i.qa = load i8, ptr %i.py, align 1, !tbaa !15
  %switch.tableidx = add i8 %i.qa, -65            ; 2 uses
  %i.qb = icmp ult i8 %switch.tableidx, 4
  br i1 %i.qb, label %.critedge37.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i8 1, ptr %i.mt, align 8, !tbaa !28
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %bb.bs, %bb.bt
  %.sroa.0.0.i106.ph = phi i8 [ 0, %bb.bt ], [ %switch.tableidx, %bb.bs ]
  store i8 %.sroa.0.0.i106.ph, ptr %i.ly, align 4, !tbaa !66
  br label %_ZN10StringView12consumeFrontES_.exit114.thread

_ZN10StringView12consumeFrontES_.exit114.thread:  ; preds = %.critedge.i, %_ZNK10StringView10startsWithES_.exit.i109, %.critedge37.i
  %i.qc = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0), !inline_history !150
  %i.qd = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 24
  store ptr %i.qc, ptr %i.qd, align 8, !tbaa !159
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

bb.bu:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.thread4.i
  %i.qe = icmp ult i64 %i.dn, 6
  br i1 %i.qe, label %_ZNK10StringView10startsWithES_.exit.thread12.i, label %_ZNK10StringView10startsWithES_.exit.i47

_ZNK10StringView10startsWithES_.exit.i47:         ; preds = %bb.bu
  %i.qf = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.qg = xor i32 943793188, %i.qf
  %i.qh = getelementptr i8, ptr %.sroa.09.0.copyload, i64 4
  %i.qi = load i16, ptr %i.qh, align 1
  %i.qj = zext i16 %i.qi to i32
  %i.qk = xor i32 16448, %i.qj
  %i.ql = or i32 %i.qg, %i.qk
  %i.qm = icmp ne i32 %i.ql, 0
  %i.qn = zext i1 %i.qm to i32
  %.not9.i.i.i.i.i.i49 = icmp eq i32 %i.qn, 0
  br i1 %.not9.i.i.i.i.i.i49, label %bb.bv, label %_ZL14isFunctionType10StringView.exit.thread290

_ZNK10StringView10startsWithES_.exit.thread12.i:  ; preds = %bb.bu
  %i.qo = icmp samesign ult i64 %i.dn, 4
  br i1 %i.qo, label %_ZL14isFunctionType10StringView.exit.thread232, label %_ZL14isFunctionType10StringView.exit

_ZL14isFunctionType10StringView.exit:             ; preds = %_ZNK10StringView10startsWithES_.exit.thread12.i
  %i.qp = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.qq = icmp ne i32 910238756, %i.qp
  %i.qr = zext i1 %i.qq to i32
  %.not9.i.i.i.i.i3.i = icmp eq i32 %i.qr, 0
  br i1 %.not9.i.i.i.i.i3.i, label %_ZNK10StringView10startsWithES_.exit.i54, label %_ZL14isFunctionType10StringView.exit.thread232

_ZL14isFunctionType10StringView.exit.thread290:   ; preds = %_ZNK10StringView10startsWithES_.exit.i47
  %i.qs = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.qt = icmp ne i32 910238756, %i.qs
  %i.qu = zext i1 %i.qt to i32
  %.not9.i.i.i.i.i3.i292 = icmp eq i32 %i.qu, 0
  br i1 %.not9.i.i.i.i.i3.i292, label %_ZNK10StringView10startsWithES_.exit.i54, label %_ZL14isFunctionType10StringView.exit.thread232

bb.bv:                                            ; preds = %_ZNK10StringView10startsWithES_.exit.i47
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 6
  store ptr %i.qv, ptr %1, align 8, !tbaa !55
  %i.qw = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  br label %_ZN12_GLOBAL__N_19Demangler17demangleClassTypeER10StringView.exit

_ZNK10StringView10startsWithES_.exit.i54:         ; preds = %_ZL14isFunctionType10StringView.exit.thread290, %_ZL14isFunctionType10StringView.exit
  %i.qx = load i32, ptr %.sroa.09.0.copyload, align 1
  %i.qy = icmp ne i32 910238756, %i.qx
  %i.qz = zext i1 %i.qy to i32
  %.not9.i.i.i.i.i.i56 = icmp eq i32 %i.qz, 0
  br i1 %.not9.i.i.i.i.i.i56, label %_ZNK10StringView10startsWithES_.exit.thread.i58, label %_ZN10StringView12consumeFrontES_.exit59

_ZNK10StringView10startsWithES_.exit.thread.i58:  ; preds = %_ZNK10StringView10startsWithES_.exit.i54
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 4
  store ptr %i.ra, ptr %1, align 8, !tbaa !55
  br label %_ZN10StringView12consumeFrontES_.exit59

_ZN10StringView12consumeFrontES_.exit59:          ; preds = %_ZNK10StringView10startsWithES_.exit.i54, %_ZNK10StringView10startsWithES_.exit.thread.i58
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !34 ; 3 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !31
  %i.re = ptrtoint ptr %i.rd to i64               ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !35
  %i.rh = add i64 %i.re, 7
  %i.ri = add i64 %i.rh, %i.rg
  %i.rj = and i64 %i.ri, -8                       ; 2 uses
  %reass.sub.i149 = sub i64 %i.rj, %i.re
  %i.rk = add i64 %reass.sub.i149, 56             ; 2 uses
  store i64 %i.rk, ptr %i.rf, align 8, !tbaa !35
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !33
  %i.rn = icmp ult i64 %i.rk, %i.rm
  br i1 %i.rn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit59
  %i.ro = inttoptr i64 %i.rj to ptr
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

bb.bx:                                            ; preds = %_ZN10StringView12consumeFrontES_.exit59
  %i.rp = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 5 uses
  %i.rq = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #20 ; 2 uses
  store ptr %i.rq, ptr %i.rp, align 8, !tbaa !31
  %i.rr = load ptr, ptr %i.rb, align 8, !tbaa !34
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  store ptr %i.rr, ptr %i.rs, align 8, !tbaa !32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  store i64 4096, ptr %i.rt, align 8, !tbaa !33
  store ptr %i.rp, ptr %i.rb, align 8, !tbaa !34
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i64 56, ptr %i.ru, align 8, !tbaa !35
  br label %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit

_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit: ; preds = %bb.bw, %bb.bx
  %.sink19.i150 = phi ptr [ %i.rq, %bb.bx ], [ %i.ro, %bb.bw ] ; 12 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 8
  store i32 3, ptr %i.rv, align 8, !tbaa !58
  %i.rw = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 12
  store i8 0, ptr %i.rw, align 4, !tbaa !91
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvh11ms_demangle21FunctionSignatureNodeE, i64 16), ptr %.sink19.i150, align 8, !tbaa !20
  %i.rx = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 16
  store i32 0, ptr %i.rx, align 8, !tbaa !92
  %i.ry = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 20 ; 2 uses
  store i8 0, ptr %i.ry, align 4, !tbaa !93
  %i.rz = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 22
  store i16 8, ptr %i.rz, align 2, !tbaa !97
  %i.sa = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 24
  store i32 0, ptr %i.sa, align 8, !tbaa !94
  %i.sb = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 32 ; 2 uses
  store ptr null, ptr %i.sb, align 8, !tbaa !88
  %i.sc = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 40
  store i8 0, ptr %i.sc, align 8, !tbaa !95
  %i.sd = getelementptr inbounds nuw i8, ptr %.sink19.i150, i64 48 ; 2 uses
  store ptr null, ptr %i.sd, align 8, !tbaa !96
  %i.se = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 1 ; 3 uses
  store ptr %i.sf, ptr %1, align 8, !tbaa !40
  %i.sg = load i8, ptr %i.se, align 1, !tbaa !15
  %switch.tableidx378 = add i8 %i.sg, -65         ; 2 uses
  %i.sh = icmp ult i8 %switch.tableidx378, 17
  br i1 %i.sh, label %switch.lookup379, label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

switch.lookup379:                                 ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit
  %i.si = zext nneg i8 %switch.tableidx378 to i64
  %switch.gep380 = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.10, i64 %i.si
  %switch.load381 = load i8, ptr %switch.gep380, align 1
  br label %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit

_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit: ; preds = %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit, %switch.lookup379
  %.0.i148 = phi i8 [ %switch.load381, %switch.lookup379 ], [ 0, %_ZN4llvh11ms_demangle14ArenaAllocator5allocINS0_21FunctionSignatureNodeEJEEEPT_DpOT0_.exit ]
  store i8 %.0.i148, ptr %i.ry, align 4, !tbaa !93
  %i.sj = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !41
  %i.sk = icmp eq ptr %i.sf, %i.sj
  br i1 %i.sk, label %bb.by, label %_ZNK10StringView10startsWithEc.exit.i146

_ZNK10StringView10startsWithEc.exit.i146:         ; preds = %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.sl = load i8, ptr %i.sf, align 1, !tbaa !15
  %i.sm = icmp eq i8 %i.sl, 64
  br i1 %i.sm, label %_ZN10StringView12consumeFrontEc.exit147, label %bb.by

_ZN10StringView12consumeFrontEc.exit147:          ; preds = %_ZNK10StringView10startsWithEc.exit.i146
  %i.sn = getelementptr inbounds nuw i8, ptr %i.se, i64 2
  store ptr %i.sn, ptr %1, align 8, !tbaa !55
  br label %_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.exit

bb.by:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i146, %_ZN12_GLOBAL__N_19Demangler25demangleCallingConventionER10StringView.exit
  %i.so = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2), !inline_history !160
  store ptr %i.so, ptr %i.sb, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.exit

_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit147, %bb.by
  %i.sp = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler29demangleFunctionParameterListER10StringView(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !160
  store ptr %i.sp, ptr %i.sd, align 8, !tbaa !96
end_hunk_0
