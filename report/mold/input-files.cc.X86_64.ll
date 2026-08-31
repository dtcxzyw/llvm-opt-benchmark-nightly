Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN4mold10ObjectFileINS_6X86_64EE19initialize_sectionsERNS_7ContextIS1_EE:bb.a
bb.av:                                            ; preds = %.lr.ph247, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread
  %.0246 = phi i64 [ 0, %.lr.ph247 ], [ %i.mm, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [64 x i8], ptr %i.bb, i64 %.0246 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %.0.copyload.i188 = load i32, ptr %i.li, align 1
  switch i32 %.0.copyload.i188, label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread [
    i32 4, label %bb.aw
    i32 1073741844, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 44
  %.0.copyload.i190 = load i32, ptr %i.lj, align 1
  %i.lk = zext i32 %.0.copyload.i190 to i64
  %i.ll = load ptr, ptr %i.bc, align 8, !tbaa !266
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lk
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !549 ; 2 uses
  %or.cond.i191 = icmp slt i32 %i.ln, 1
  br i1 %or.cond.i191, label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lo = add nsw i32 %i.ln, -1
  %i.lp = zext nneg i32 %i.lo to i64              ; 2 uses
  %i.lq = load ptr, ptr %i.bd, align 8, !tbaa !570, !noalias !571 ; 2 uses
  %i.lr = load ptr, ptr %i.be, align 8, !tbaa !149, !noalias !571
  %i.ls = load ptr, ptr %i.bf, align 8, !tbaa !148, !noalias !571
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = sdiv exact i64 %i.lv, 80
  %i.lx = add nsw i64 %i.lw, %i.lp                ; 5 uses
  %i.ly = icmp sgt i64 %i.lx, -1
  br i1 %i.ly, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.lz = icmp samesign ult i64 %i.lx, 6
  br i1 %i.lz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ma = getelementptr inbounds nuw [80 x i8], ptr %i.lq, i64 %i.lp
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit

bb.ba:                                            ; preds = %bb.ay
  %i.mb = udiv i64 %i.lx, 6
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ax
  %i.mc = xor i64 %i.lx, -1
  %i.md = udiv i64 %i.mc, 6
  %i.me = xor i64 %i.md, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.mf = phi i64 [ %i.mb, %bb.ba ], [ %i.me, %bb.bb ] ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.mf
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !147, !noalias !571
  %.idx.i.i.i.i.i = mul i64 %i.mf, -480
  %i.mi = getelementptr i8, ptr %i.mh, i64 %.idx.i.i.i.i.i
  %i.mj = getelementptr [80 x i8], ptr %i.mi, i64 %i.lx
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit

_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit: ; preds = %bb.az, %bb.bc
  %.0.i192 = phi ptr [ %i.ma, %bb.az ], [ %i.mj, %bb.bc ] ; 2 uses
  %.not = icmp eq ptr %.0.i192, null
  br i1 %.not, label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit
  %i.mk = trunc i64 %.0246 to i32
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i192, i64 52
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !574
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread

_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread: ; preds = %bb.av, %bb.aw, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit, %bb.bd
  %i.mm = add nuw nsw i64 %.0246, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.mm, %i.le
  br i1 %exitcond.not, label %._crit_edge, label %bb.av, !llvm.loop !577
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10ObjectFileINS_6X86_64EE24initialize_local_symbolsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !66
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !70   ; 3 uses
  %i.g = icmp sgt i64 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.m = load i32, ptr %i.l, align 8, !tbaa !156
  %i.n = icmp eq ptr %i.i, %i.k
  %i.o = icmp eq i32 %i.m, 0
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.s = load ptr, ptr %i.r, align 8
  br i1 %i.p, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread, %.lr.ph
  %.0.lcssa = phi i64 [ %i.f, %.lr.ph ], [ %spec.select, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread ] ; 2 uses
  %i.t = icmp ugt i64 %.0.lcssa, 214748364
  br i1 %i.t, label %bb.b, label %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i

bb.b:                                             ; preds = %._crit_edge
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 8589934592)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.72) ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i: ; preds = %.preheader, %._crit_edge
  %.0.lcssa115 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 1, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.y = mul nuw nsw i64 %.0.lcssa115, 40
  %i.z = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef %i.y, i64 noundef 8) #14 ; 5 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i
  %.07.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.z, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i ] ; 5 uses
  %.056.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.0.lcssa115, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.07.i.i.i.i, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.aa, align 4, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 28
  store i16 -1, ptr %i.ab, align 4, !tbaa !578
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ac, i8 0, i64 6, i1 false)
  %i.ad = add nsw i64 %.056.i.i.i.i, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 40
  %i.af = icmp samesign ugt i64 %.056.i.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit, !llvm.loop !579

_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit: ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !71
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.0.lcssa115, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ai = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub nsw i64 %i.ai, %i.aj
  %i.al = sdiv i64 %i.ak, 4
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68 ; 2 uses
  %i.aq = ptrtoint ptr %i.z to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub nsw i64 %i.aq, %i.ar
  %i.at = sdiv i64 %i.as, 4
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !72
  %i.av = load i64, ptr %i.e, align 8, !tbaa !70
  %i.aw = icmp sgt i64 %i.av, 1
  br i1 %i.aw, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  %i.bb = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8 ; 2 uses
  %.not.i51 = icmp eq ptr %i.bb, null
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread
  %.094 = phi i64 [ %spec.select, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread ], [ 1, %.lr.ph ]
  %.03792 = phi i64 [ %i.bx, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread ], [ 1, %.lr.ph ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.03792
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %.0.copyload.i.i.i = load i16, ptr %i.bm, align 1 ; 3 uses
  switch i16 %.0.copyload.i.i.i, label %bb.d [
    i16 -15, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread
    i16 -14, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread
    i16 -1, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.split
  %i.bn = shl nsw i64 %.03792, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bn
  %.0.copyload.i5.i.i = load i32, ptr %i.bo, align 1
  %i.bp = zext i32 %.0.copyload.i5.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.bq = icmp ugt i16 %.0.copyload.i.i.i, -257
  %narrow.i.i = select i1 %i.bq, i16 0, i16 %.0.copyload.i.i.i
  %spec.select.i.i = zext i16 %narrow.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit

_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.bp, %bb.c ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %.zext.i = lshr i64 %.0.i.i, 6
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.zext.i
  %i.bs = and i64 %.0.i.i, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !63
  %i.bv = and i64 %i.bt, %i.bu
  %.fr = freeze i64 %i.bv
  %.not91 = icmp eq i64 %.fr, 0
  %i.bw = zext i1 %.not91 to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread

_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread: ; preds = %.lr.ph.split, %.lr.ph.split, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit
  %.sink = phi i64 [ %i.bw, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit ], [ 1, %.lr.ph.split ], [ 1, %.lr.ph.split ]
  %spec.select = add nuw nsw i64 %.094, %.sink    ; 2 uses
  %i.bx = add nuw nsw i64 %.03792, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !580

bb.e:                                             ; preds = %.lr.ph99, %bb.am
  %.03898 = phi i64 [ 1, %.lr.ph99 ], [ %.139, %bb.am ] ; 3 uses
  %.04095 = phi i64 [ 1, %.lr.ph99 ], [ %i.ja, %bb.am ] ; 8 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %.04095 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 6 ; 3 uses
  %.0.copyload.i.i = load i16, ptr %i.ca, align 1 ; 4 uses
  %i.cb = icmp eq i16 %.0.copyload.i.i, -14
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(14448) %1) #14
  %i.cc = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(992) %0)
  %i.cd = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA23_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.cc, ptr noundef nonnull align 1 dereferenceable(23) @.str.57) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %2) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ce = load ptr, ptr %i.ax, align 8, !tbaa !153 ; 2 uses
  %i.cf = load ptr, ptr %i.ay, align 8, !tbaa !153
  %i.cg = load i32, ptr %i.az, align 8, !tbaa !156
  %i.ch = icmp eq ptr %i.ce, %i.cf
  %i.ci = icmp eq i32 %i.cg, 0
  %i.cj = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %i.cj, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i16 %.0.copyload.i.i, label %bb.j [
    i16 -15, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50.thread
    i16 -1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ck = load ptr, ptr %i.ba, align 8, !tbaa !92
  %i.cl = shl nsw i64 %.04095, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  %.0.copyload.i5.i.i43 = load i32, ptr %i.cm, align 1
  %i.cn = zext i32 %.0.copyload.i5.i.i43 to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50

bb.j:                                             ; preds = %bb.h
  %i.co = icmp ugt i16 %.0.copyload.i.i, -257
  %narrow.i.i48 = select i1 %i.co, i16 0, i16 %.0.copyload.i.i
  %spec.select.i.i49 = zext i16 %narrow.i.i48 to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50

_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50: ; preds = %bb.i, %bb.j
  %.0.i.i45 = phi i64 [ %i.cn, %bb.i ], [ %spec.select.i.i49, %bb.j ] ; 2 uses
  %.zext.i46 = lshr i64 %.0.i.i45, 6
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.zext.i46
  %i.cq = and i64 %.0.i.i45, 63
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = load i64, ptr %i.cp, align 8, !tbaa !63
  %i.ct = and i64 %i.cr, %i.cs
  %.not90 = icmp eq i64 %i.ct, 0
  br i1 %.not90, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50
  %i.cu = load ptr, ptr %i.ao, align 8, !tbaa !68
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.04095 ; 2 uses
  br i1 %.not.i51, label %_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit53, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub nsw i64 %i.bc, %i.cw
  %i.cy = sdiv i64 %i.cx, 4
  %i.cz = trunc i64 %i.cy to i32
  br label %_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit53

_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit53: ; preds = %bb.k, %bb.l
  %storemerge.i52 = phi i32 [ %i.cz, %bb.l ], [ 0, %bb.k ]
  store i32 %storemerge.i52, ptr %i.cv, align 4, !tbaa !72
  br label %bb.am

_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50.thread: ; preds = %bb.g, %bb.h, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50
  %i.da = add nsw i64 %.03898, 1                  ; 2 uses
  %i.db = load ptr, ptr %i.ag, align 8, !tbaa !581 ; 2 uses
  %i.dc = load ptr, ptr %i.ao, align 8, !tbaa !68
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04095 ; 4 uses
  %.not.i54 = icmp eq ptr %i.db, null
  br i1 %.not.i54, label %_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit56, label %bb.m

bb.m:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50.thread
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %.03898
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub nsw i64 %i.df, %i.dg
  %i.di = sdiv i64 %i.dh, 4
  %i.dj = trunc i64 %i.di to i32
  br label %_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit56

_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit56: ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50.thread, %bb.m
  %storemerge.i55 = phi i32 [ %i.dj, %bb.m ], [ 0, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit50.thread ] ; 3 uses
  store i32 %storemerge.i55, ptr %i.dd, align 4, !tbaa !72
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = and i8 %i.dl, 15
  %i.dn = icmp eq i8 %i.dm, 3
  br i1 %i.dn, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit56
  %.0.copyload.i.i57 = load i16, ptr %i.ca, align 1 ; 3 uses
  %i.do = icmp eq i16 %.0.copyload.i.i57, -1
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %i.ba, align 8, !tbaa !92
  %i.dq = shl nsw i64 %.04095, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  %.0.copyload.i5.i = load i32, ptr %i.dr, align 1
  %i.ds = zext i32 %.0.copyload.i5.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit

bb.p:                                             ; preds = %bb.n
  %i.dt = icmp ugt i16 %.0.copyload.i.i57, -257
  %narrow.i = select i1 %i.dt, i16 0, i16 %.0.copyload.i.i57
  %spec.select.i = zext i16 %narrow.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit: ; preds = %bb.o, %bb.p
  %.0.i58 = phi i64 [ %i.ds, %bb.o ], [ %spec.select.i, %bb.p ] ; 2 uses
  %i.du = load ptr, ptr %i.bf, align 8, !tbaa !266
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.0.i58
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !549 ; 2 uses
  %or.cond.i = icmp slt i32 %i.dw, 1
  br i1 %or.cond.i, label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit
  %i.dx = add nsw i32 %i.dw, -1
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = load ptr, ptr %i.bg, align 8, !tbaa !570, !noalias !582 ; 2 uses
  %i.ea = load ptr, ptr %i.bh, align 8, !tbaa !149, !noalias !582
  %i.eb = load ptr, ptr %i.bi, align 8, !tbaa !148, !noalias !582
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = sdiv exact i64 %i.ee, 80
  %i.eg = add nsw i64 %i.ef, %i.dy                ; 5 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  br i1 %i.eh, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ei = icmp samesign ult i64 %i.eg, 6
  br i1 %i.ei, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ej = getelementptr inbounds nuw [80 x i8], ptr %i.dz, i64 %i.dy
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit

bb.t:                                             ; preds = %bb.r
  %i.ek = udiv i64 %i.eg, 6
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.el = xor i64 %i.eg, -1
  %i.em = udiv i64 %i.el, 6
  %i.en = xor i64 %i.em, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.eo = phi i64 [ %i.ek, %bb.t ], [ %i.en, %bb.u ] ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !147, !noalias !582
  %.idx.i.i.i.i.i = mul i64 %i.eo, -480
  %i.er = getelementptr i8, ptr %i.eq, i64 %.idx.i.i.i.i.i
  %i.es = getelementptr [80 x i8], ptr %i.er, i64 %i.eg
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit

_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit: ; preds = %bb.s, %bb.v
  %.0.i59 = phi ptr [ %i.ej, %bb.s ], [ %i.es, %bb.v ] ; 4 uses
  %.not = icmp eq ptr %.0.i59, null
  br i1 %.not, label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i59, i64 48
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !585
  %i.ev = sext i32 %i.eu to i64                   ; 3 uses
  %i.ew = load ptr, ptr %.0.i59, align 8, !tbaa !586, !nonnull !88, !align !587 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !66 ; 2 uses
  %.not.i60 = icmp ugt i64 %i.ey, %i.ev
  br i1 %.not.i60, label %bb.x, label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i: ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 480
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !588
  %i.fb = sub nuw i64 %i.ev, %i.ey
  %i.fc = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.0.copyload.i.i61 = load i64, ptr %i.fd, align 1
  %i.fe = and i64 %.0.copyload.i.i61, 1024
  %.not4.i = icmp eq i64 %i.fe, 0
  %i.ff = select i1 %.not4.i, i64 7, i64 11
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i59, i64 56
  %i.fh = load i16, ptr %i.fg, align 8, !tbaa !589 ; 2 uses
  %i.fi = icmp eq i16 %i.fh, -1
  br i1 %i.fi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !95
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.fn = getelementptr inbounds nuw [64 x i8], ptr %i.fm, i64 %i.ev
  %.0.copyload.i5.i65 = load i32, ptr %i.fn, align 1
  %i.fo = zext i32 %.0.copyload.i5.i65 to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 65535
  %i.fr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fq) #31
  %i.fs = add i64 %i.fr, 65535
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit

bb.z:                                             ; preds = %bb.x
  %i.ft = zext i16 %i.fh to i64
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit

_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread: ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit
  %i.fu = load ptr, ptr %i.bj, align 8, !tbaa !95
  %i.fv = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.fw = getelementptr inbounds nuw [64 x i8], ptr %i.fv, i64 %.0.i58
  %.0.copyload.i = load i32, ptr %i.fw, align 1
  %i.fx = zext i32 %.0.copyload.i to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fx
  %i.fz = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fy) #14
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit

bb.aa:                                            ; preds = %_ZN4mold8ArenaPtrINS_6SymbolINS_6X86_64EEEEaSEPS3_.exit56
  %i.ga = load ptr, ptr %i.bd, align 8, !tbaa !97
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.04095
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !91  ; 2 uses
  %i.gd = icmp ugt i8 %i.gc, -17
  %i.ge = zext i8 %i.gc to i64                    ; 2 uses
  br i1 %i.gd, label %bb.ab, label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.gf = load ptr, ptr %i.be, align 8, !tbaa !95
  %.0.copyload.i.i66 = load i32, ptr %i.bz, align 1
  %i.gg = zext i32 %.0.copyload.i.i66 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gg
  %i.gi = and i64 %i.ge, 15
  %i.gj = shl nuw nsw i64 1, %i.gi
  %i.gk = add nuw nsw i64 %i.gj, 239              ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gl) #31
  %i.gn = add i64 %i.gm, %i.gk
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i, %bb.aa
  %.sroa.084.0.ph = phi i64 [ %i.ge, %bb.aa ], [ %i.ff, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i ]
  %i.go = ptrtoint ptr %i.dd to i64
  %i.gp = sext i32 %storemerge.i55 to i64
  %i.gq = shl nsw i64 %i.gp, 2
  %i.gr = add nsw i64 %i.gq, %i.go
  %i.gs = inttoptr i64 %i.gr to ptr
  br label %bb.ac

_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit: ; preds = %bb.ab, %bb.z, %bb.y, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread
  %.sroa.084.0 = phi i64 [ %i.fz, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread ], [ %i.gn, %bb.ab ], [ %i.fs, %bb.y ], [ %i.ft, %bb.z ] ; 3 uses
  %i.gt = ptrtoint ptr %i.dd to i64
  %i.gu = sext i32 %storemerge.i55 to i64
  %i.gv = shl nsw i64 %i.gu, 2
  %i.gw = add nsw i64 %i.gv, %i.gt
  %i.gx = inttoptr i64 %i.gw to ptr               ; 2 uses
  %i.gy = icmp slt i64 %.sroa.084.0, 240
  br i1 %i.gy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit
  %i.gz = phi ptr [ %i.gs, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread ], [ %i.gx, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit ]
  %.sroa.084.0117 = phi i64 [ %.sroa.084.0.ph, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.thread ], [ %.sroa.084.0, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit ]
  %i.ha = trunc i64 %.sroa.084.0117 to i8
  br label %_ZN4mold6SymbolINS_6X86_64EE8set_nameESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.ad:                                            ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit
  %i.hb = add nsw i64 %.sroa.084.0, -239
  %i.hc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hb, i1 false)
  %i.hd = sub nuw nsw i64 63, %i.hc
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.hd, i64 15)
  %i.he = trunc nuw nsw i64 %.sroa.speculated.i.i to i8
  %i.hf = or disjoint i8 %i.he, -16
  br label %_ZN4mold6SymbolINS_6X86_64EE8set_nameESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4mold6SymbolINS_6X86_64EE8set_nameESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.ac, %bb.ad
  %i.hg = phi ptr [ %i.gx, %bb.ad ], [ %i.gz, %bb.ac ] ; 5 uses
  %storemerge.i.i = phi i8 [ %i.hf, %bb.ad ], [ %i.ha, %bb.ac ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 35
  store i8 %storemerge.i.i, ptr %i.hh, align 1, !tbaa !57
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub nsw i64 %i.ai, %i.hj
  %i.hl = sdiv i64 %i.hk, 4
  %i.hm = trunc i64 %i.hl to i32
  store i32 %i.hm, ptr %i.hi, align 4, !tbaa !74
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.0.copyload.i70 = load i64, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 %.0.copyload.i70, ptr %i.ho, align 8, !tbaa !590
  %i.hp = trunc i64 %.04095 to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 20
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !76
  %.0.copyload.i.i71 = load i16, ptr %i.ca, align 1 ; 3 uses
  switch i16 %.0.copyload.i.i71, label %bb.af [
    i16 -15, label %bb.am
    i16 -1, label %bb.ae
  ]

end_hunk_0
begin_hunk_1_@_ZN4mold10ObjectFileINS_6X86_64EE26convert_mergeable_sectionsERNS_7ContextIS1_EE:bb.a
  %i.ck = add nsw i64 %.sroa.speculated.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #30 ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  store i64 %i.ca, ptr %i.cq, align 8, !tbaa !705
  %.not10.i.i.i.i = icmp eq ptr %i.ce, %i.cb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.cr = add i64 %i.cf, -8
  %i.cs = sub i64 %i.cr, %i.cg                    ; 2 uses
  %i.ct = lshr i64 %i.cs, 3
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cs, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cp, i64 8
  %i.cv = add i64 %i.cf, -8
  %i.cw = sub i64 %i.cv, %i.cg
  %i.cx = and i64 %i.cw, -8                       ; 2 uses
  %scevgep52 = getelementptr i8, ptr %scevgep, i64 %i.cx
  %scevgep53 = getelementptr i8, ptr %i.ce, i64 8
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.cx
  %bound0 = icmp ult ptr %i.cp, %scevgep54
  %bound1 = icmp ult ptr %i.ce, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cu, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cp, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.ce, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.db ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.ce, i64 %i.db ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.dc = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !705, !alias.scope !713, !noalias !708
  %wide.load56 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !705, !alias.scope !713, !noalias !708
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !705, !alias.scope !716, !noalias !713
  store <2 x i64> %wide.load56, ptr %i.dd, align 8, !tbaa !705, !alias.scope !716, !noalias !713
  %i.de = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !705, !alias.scope !713, !noalias !708
  store <2 x ptr> splat (ptr null), ptr %i.de, align 8, !tbaa !705, !alias.scope !713, !noalias !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !718

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader58

.lr.ph.i.i.i.i.preheader58:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader58, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader58 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader58 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.dg = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !705, !alias.scope !711, !noalias !708
  store i64 %i.dg, ptr %.012.i.i.i.i, align 8, !tbaa !705, !alias.scope !708, !noalias !711
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !705, !alias.scope !711, !noalias !708
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dh, %i.cb
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !719

_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cp, %_ZNKSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i ], [ %i.cz, %middle.block ], [ %i.di, %.lr.ph.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.dk = load ptr, ptr %i.n, align 8, !tbaa !704
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.dm) #28
  br label %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.s
  store ptr %i.cp, ptr %i.l, align 8, !tbaa !707
  store ptr %i.dj, ptr %i.m, align 8, !tbaa !703
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.dn, ptr %i.n, align 8, !tbaa !704
  br label %_ZNSt10unique_ptrIN4mold16MergeableSectionINS0_6X86_64EEESt14default_deleteIS3_EED2Ev.exit24

_ZNSt10unique_ptrIN4mold16MergeableSectionINS0_6X86_64EEESt14default_deleteIS3_EED2Ev.exit24: ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit
  %i.do = phi ptr [ %.pre, %bb.p ], [ %i.cp, %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ]
  %i.dp = phi ptr [ %i.cd, %bb.p ], [ %i.dj, %_ZNSt6vectorISt10unique_ptrIN4mold16MergeableSectionINS1_6X86_64EEESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ]
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 3
  %i.du = trunc i64 %i.dt to i32
  %i.dv = or i32 %i.du, -2147483648
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !266 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.038
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !549
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread

_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit._ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread_crit_edge, %bb.b, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.thread, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit, %_ZNSt10unique_ptrIN4mold16MergeableSectionINS0_6X86_64EEESt14default_deleteIS3_EED2Ev.exit24, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit, %bb.i, %bb.j
  %i.dy = phi ptr [ %.pre40, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit._ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread_crit_edge ], [ %i.o, %bb.b ], [ %i.o, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.thread ], [ %i.o, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit ], [ %i.dw, %_ZNSt10unique_ptrIN4mold16MergeableSectionINS0_6X86_64EEESt14default_deleteIS3_EED2Ev.exit24 ], [ %i.o, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit ], [ %i.o, %bb.i ], [ %i.o, %bb.j ] ; 2 uses
  %i.dz = add nuw nsw i64 %.038, 1                ; 2 uses
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !265
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 2
  %i.ef = icmp slt i64 %i.dz, %i.ee
  br i1 %i.ef, label %bb.b, label %._crit_edge, !llvm.loop !720
}

declare noundef ptr @_ZN4mold13MergedSectionINS_6X86_64EE12get_instanceERNS_7ContextIS1_EESt17basic_string_viewIcSt11char_traitsIcEERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(14448), i64, ptr, ptr noundef nonnull align 1 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10ObjectFileINS_6X86_64EE23reattach_section_piecesERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !266
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.n = load ptr, ptr %i.m, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread, %.._crit_edge_crit_edge
  %i.o = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.l, %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !265  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %.not192208 = icmp eq ptr %i.r, %i.o
  br i1 %.not192208, label %._crit_edge213, label %.lr.ph212

.lr.ph212:                                        ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread
  %.0201 = phi i64 [ 1, %.lr.ph ], [ %i.cl, %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0201 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !72
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sext i32 %i.ac to i64
  %i.af = shl nsw i64 %i.ae, 2
  %i.ag = add nsw i64 %i.af, %i.ad
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.0201 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %.0.copyload.i.i = load i16, ptr %i.aj, align 1 ; 3 uses
  switch i16 %.0.copyload.i.i, label %bb.d [
    i16 -15, label %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread
    i16 -14, label %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread
    i16 0, label %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread
    i16 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.ak = shl nsw i64 %.0201, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ak
  %.0.copyload.i5.i = load i32, ptr %i.al, align 1
  %i.am = zext i32 %.0.copyload.i5.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.an = icmp ugt i16 %.0.copyload.i.i, -257
  %narrow.i = select i1 %i.an, i16 0, i16 %.0.copyload.i.i
  %spec.select.i = zext i16 %narrow.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.am, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !549 ; 2 uses
  %.not.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i, label %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread, label %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit

_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit: ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit
  %i.aq = and i32 %i.ap, 2147483647
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !705 ; 5 uses
  %.not87 = icmp eq ptr %i.au, null
  br i1 %.not87, label %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !721, !nonnull !88, !align !587
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 368
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !728, !range !87, !noundef !88
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.f, label %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.0.copyload.i = load i64, ptr %i.az, align 1   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !751 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !751
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i, label %_ZN4mold16MergeableSectionINS_6X86_64EE12get_fragmentEl.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bh, %bb.f ] ; 2 uses
  %.sroa.08.010.i.i.i = phi ptr [ %.sroa.08.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bj = lshr i64 %.011.i.i.i, 1                 ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.010.i.i.i, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !549
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp slt i64 %.0.copyload.i, %i.bm      ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bp = xor i64 %i.bj, -1
  %i.bq = add nsw i64 %.011.i.i.i, %i.bp
  %.sroa.08.1.i.i.i = select i1 %i.bn, ptr %.sroa.08.010.i.i.i, ptr %i.bo ; 2 uses
  %.1.i.i.i = select i1 %i.bn, i64 %i.bj, i64 %i.bq ; 2 uses
  %i.br = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.br, label %.lr.ph.i.i.i, label %_ZN4mold16MergeableSectionINS_6X86_64EE12get_fragmentEl.exit, !llvm.loop !752

_ZN4mold16MergeableSectionINS_6X86_64EE12get_fragmentEl.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.08.0.lcssa.i.i.i = phi ptr [ %i.bb, %bb.f ], [ %.sroa.08.1.i.i.i, %.lr.ph.i.i.i ]
  %i.bs = getelementptr inbounds i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 -4
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bf                    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !753
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !754 ; 2 uses
  %.not88 = icmp eq ptr %i.bz, null
  br i1 %.not88, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4mold16MergeableSectionINS_6X86_64EE12get_fragmentEl.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(14448) %1) #14
  %i.cb = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_10ObjectFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(992) %0)
  %i.cc = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA21_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.cb, ptr noundef nonnull align 1 dereferenceable(21) @.str.22)
  %i.cd = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.cc, ptr noundef nonnull align 1 dereferenceable(8) %i.ca) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %2) #29
  unreachable

bb.h:                                             ; preds = %_ZN4mold16MergeableSectionINS_6X86_64EE12get_fragmentEl.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bu
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !549
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 %.0.copyload.i, %i.cg
  %i.ci = ptrtoint ptr %i.bz to i64
  %i.cj = or i64 %i.ci, 2
  store i64 %i.cj, ptr %i.ah, align 8, !tbaa !594
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ch, ptr %i.ck, align 8, !tbaa !590
  br label %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread

_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit.thread: ; preds = %bb.b, %bb.b, %bb.b, %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit, %bb.h, %bb.e, %_ZN4mold17InputSectionTableINS_6X86_64EE13get_mergeableEl.exit
  %i.cl = add nuw i64 %.0201, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !756

._crit_edge213:                                   ; preds = %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread, %._crit_edge
  %.071.lcssa = phi i64 [ 0, %._crit_edge ], [ %.374, %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread ] ; 10 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !69 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = ashr exact i64 %i.ct, 2
  %i.cv = add i64 %i.cu, %.071.lcssa              ; 4 uses
  %i.cw = icmp ugt i64 %i.cv, 2305843009213693951
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge213
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #29
  unreachable

bb.j:                                             ; preds = %._crit_edge213
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !757
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.cs
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = icmp ult i64 %i.db, %i.cv
  br i1 %i.dc, label %bb.k, label %_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE7reserveEm.exit

bb.k:                                             ; preds = %bb.j
  %i.dd = tail call noundef ptr @_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE20_M_allocate_and_copyIPKS5_EEPS5_mT_SD_(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cv, ptr noundef %i.cq, ptr noundef %i.cp) ; 3 uses
  store ptr %i.dd, ptr %i.cn, align 8, !tbaa !68
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ct
  store ptr %i.de, ptr %i.co, align 8, !tbaa !69
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cv
  store ptr %i.df, ptr %i.cx, align 8, !tbaa !757
  br label %_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE7reserveEm.exit

_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE7reserveEm.exit: ; preds = %bb.j, %bb.k
  %i.dg = icmp eq i64 %.071.lcssa, 0
  br i1 %i.dg, label %_ZN4moldL16allocate_symbolsINS_6X86_64EEESt4spanINS_6SymbolIT_EELm18446744073709551615EERNS_7ContextIS4_EEl.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE7reserveEm.exit
  %i.dh = icmp ugt i64 %.071.lcssa, 214748364
  br i1 %i.dh, label %bb.m, label %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i

bb.m:                                             ; preds = %bb.l
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i64 noundef 8589934592)
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.72) ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i: ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.dm = mul nuw nsw i64 %.071.lcssa, 40
  %i.dn = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 noundef %i.dm, i64 noundef 8) #14 ; 4 uses
  %xtraiter = and i64 %.071.lcssa, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i, %.lr.ph.i.i.i.i.prol
  %.07.i.i.i.i.prol = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.prol ], [ %i.dn, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i ] ; 5 uses
  %.056.i.i.i.i.prol = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.prol ], [ %.071.lcssa, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.prol, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.07.i.i.i.i.prol, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.do, align 4, !tbaa !76
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.prol, i64 28
  store i16 -1, ptr %i.dp, align 4, !tbaa !578
  %i.dq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.prol, i64 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.dq, i8 0, i64 6, i1 false)
  %i.dr = add nsw i64 %.056.i.i.i.i.prol, -1      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.prol, i64 40 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !758

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i
  %.07.i.i.i.i.unr = phi ptr [ %i.dn, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i ], [ %i.ds, %.lr.ph.i.i.i.i.prol ]
  %.056.i.i.i.i.unr = phi i64 [ %.071.lcssa, %_ZN4mold13ArenaResource8allocateINS_6SymbolINS_6X86_64EEEEEPT_l.exit.i ], [ %i.dr, %.lr.ph.i.i.i.i.prol ]
  %i.dt = icmp ult i64 %.071.lcssa, 4
  br i1 %i.dt, label %_ZN4moldL16allocate_symbolsINS_6X86_64EEESt4spanINS_6SymbolIT_EELm18446744073709551615EERNS_7ContextIS4_EEl.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 17 uses
  %.056.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i ], [ %.056.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.07.i.i.i.i, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.du, align 4, !tbaa !76
  %i.dv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 28
  store i16 -1, ptr %i.dv, align 4, !tbaa !578
  %i.dw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.dw, i8 0, i64 6, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, i8 0, i64 40, i1 false)
end_hunk_1
begin_hunk_2_@_ZN4mold17InputSectionTableINS_6X86_64EE7emplaceERNS_7ContextIS1_EERNS_10ObjectFileIS1_EElSt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.i ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !549
  %i.w = icmp sgt i64 %i.i, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !830
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.aa) #28
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !266
  store ptr %i.x, ptr %i.d, align 8, !tbaa !265
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !830
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.c, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !831
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -80
  %.not.i = icmp eq ptr %i.ad, %i.ag
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  tail call void @_ZN4mold12InputSectionINS_6X86_64EEC1ERNS_7ContextIS1_EERNS_10ObjectFileIS1_EElSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(77) %i.ad, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(992) %2, i64 noundef %3, i64 %4, ptr %5) #14
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !152
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !152
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  call void @_ZNSt5dequeIN4mold12InputSectionINS0_6X86_64EEESaIS3_EE16_M_push_back_auxIJRNS0_7ContextIS2_EERNS0_10ObjectFileIS2_EERlRSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(992) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !570, !noalias !832
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ %.pre.i, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !149, !noalias !832 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 3 uses
  br i1 %i.am, label %bb.k, label %_ZNSt5dequeIN4mold12InputSectionINS0_6X86_64EEESaIS3_EE12emplace_backIJRNS0_7ContextIS2_EERNS0_10ObjectFileIS2_EERlRSt17basic_string_viewIcSt11char_traitsIcEEEEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !147
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 480
  br label %_ZNSt5dequeIN4mold12InputSectionINS0_6X86_64EEESaIS3_EE12emplace_backIJRNS0_7ContextIS2_EERNS0_10ObjectFileIS2_EERlRSt17basic_string_viewIcSt11char_traitsIcEEEEERS3_DpOT_.exit

_ZNSt5dequeIN4mold12InputSectionINS0_6X86_64EEESaIS3_EE12emplace_backIJRNS0_7ContextIS2_EERNS0_10ObjectFileIS2_EERlRSt17basic_string_viewIcSt11char_traitsIcEEEEERS3_DpOT_.exit: ; preds = %bb.j, %bb.k
  %i.as = phi ptr [ %i.ar, %bb.k ], [ %i.aj, %bb.j ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -80
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !148
  %i.ax = ptrtoint ptr %i.ao to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = lshr exact i64 %i.az, 3
  %i.bb = icmp ne ptr %i.ao, null
  %.neg.i.i = sext i1 %i.bb to i64
  %i.bc = add nsw i64 %i.ba, %.neg.i.i
  %i.bd = mul i64 %i.bc, 6
  %i.be = ptrtoint ptr %i.aj to i64
  %i.bf = ptrtoint ptr %i.al to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 80
  %i.bi = add i64 %i.bd, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !150
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !570
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 80
  %i.bq = add i64 %i.bi, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !63
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !266
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bs
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !549
  ret ptr %i.at
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 -1, ptr %i.a, align 4, !tbaa !549
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !835  ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !836  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.e, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw i64 %i.e, %i.l
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.g, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %i.e, %i.l
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !835
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2660
  %i.r = load i8, ptr %i.q, align 4, !tbaa !837, !range !87, !noundef !88
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2699
  %i.u = load i8, ptr %i.t, align 1, !tbaa !557, !range !87, !noundef !88
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2824
  %i.x = load i8, ptr %i.w, align 8, !tbaa !838, !range !87, !noundef !88
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !70
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 2661
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4moldL28should_write_to_local_symtabINS_6X86_64EEEbRNS_7ContextIT_EERNS_6SymbolIS3_EE.exit
  %.02652 = phi i64 [ 1, %.lr.ph ], [ %i.fp, %_ZN4moldL28should_write_to_local_symtabINS_6X86_64EEEbRNS_7ContextIT_EERNS_6SymbolIS3_EE.exit ] ; 5 uses
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !153 ; 2 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !153
  %i.am = load i32, ptr %i.ae, align 8, !tbaa !156
  %i.an = icmp eq ptr %i.ak, %i.al
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.02652
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %.0.copyload.i.i.i = load i16, ptr %i.as, align 1 ; 3 uses
  switch i16 %.0.copyload.i.i.i, label %bb.k [
    i16 -15, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread
    i16 -14, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread
    i16 -1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.au = shl nsw i64 %.02652, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %.0.copyload.i5.i.i = load i32, ptr %i.av, align 1
  %i.aw = zext i32 %.0.copyload.i5.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp ugt i16 %.0.copyload.i.i.i, -257
  %narrow.i.i = select i1 %i.ax, i16 0, i16 %.0.copyload.i.i.i
  %spec.select.i.i = zext i16 %narrow.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit

_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi i64 [ %i.aw, %bb.j ], [ %spec.select.i.i, %bb.k ] ; 2 uses
  %.zext.i = lshr i64 %.0.i.i, 6
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.zext.i
  %i.az = and i64 %.0.i.i, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !63
  %i.bc = and i64 %i.ba, %i.bb
  %.not51 = icmp eq i64 %i.bc, 0
  br i1 %.not51, label %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread, label %_ZN4moldL28should_write_to_local_symtabINS_6X86_64EEEbRNS_7ContextIT_EERNS_6SymbolIS3_EE.exit

_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread: ; preds = %bb.h, %bb.i, %bb.i, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.02652 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !72
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sext i32 %i.bf to i64
  %i.bi = shl nsw i64 %i.bh, 2
  %i.bj = add nsw i64 %i.bi, %i.bg
  %i.bk = inttoptr i64 %i.bj to ptr               ; 12 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !594 ; 4 uses
  %i.bm = and i64 %i.bl, 3                        ; 2 uses
  %.not3.i.i.i = icmp ne i64 %i.bm, 2
  %i.bn = and i64 %i.bl, -4                       ; 2 uses
  %.not.not17.i = icmp eq i64 %i.bn, 0
  %.not.not.i = or i1 %.not3.i.i.i, %.not.not17.i
  br i1 %.not.not.i, label %bb.l, label %_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit

bb.l:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread
  %.not3.i.i13.i = icmp ne i64 %i.bm, 0
  %.not12.not18.i = icmp eq i64 %i.bl, 0
  %.not12.not.i = or i1 %.not12.not18.i, %.not3.i.i13.i
  br i1 %.not12.not.i, label %_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit.thread, label %_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit

_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit: ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread, %bb.l
  %.sink22.i = phi i64 [ %i.bn, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread ], [ %i.bl, %bb.l ]
  %.sink21.i = phi i64 [ 13, %_ZN4mold10ObjectFileINS_6X86_64EE19is_discarded_comdatERKNS_6ElfSymIS1_EE.exit.thread ], [ 59, %bb.l ]
  %i.bo = inttoptr i64 %.sink22.i to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sink21.i
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !range !87, !noundef !88
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit.thread, label %_ZN4moldL28should_write_to_local_symtabINS_6X86_64EEEbRNS_7ContextIT_EERNS_6SymbolIS3_EE.exit

_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit.thread: ; preds = %bb.l, %_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit
  %i.bs = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !71
  %i.bt = icmp eq ptr %i.bs, %i.bk                ; 2 uses
  br i1 %i.bt, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !74
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sext i32 %i.bv to i64
  %i.by = shl nsw i64 %i.bx, 2
  %i.bz = add nsw i64 %i.by, %i.bw
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !76
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !86
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ce
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i:    ; preds = %bb.m, %_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit.thread
  %.0.i.i.i = phi ptr [ %i.cg, %bb.m ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZZN4mold10ObjectFileINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EEENKUlRNS_6SymbolIS1_EEE_clES8_.exit.thread ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = and i8 %i.ci, 15
  %i.ck = icmp eq i8 %i.cj, 10
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !74
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sext i32 %i.cm to i64
  %i.cp = shl nsw i64 %i.co, 2
  %i.cq = add nsw i64 %i.cp, %i.cn
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !58, !range !87, !noundef !88
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i
  br i1 %i.bt, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !74
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sext i32 %i.cw to i64
  %i.cz = shl nsw i64 %i.cy, 2
  %i.da = add nsw i64 %i.cz, %i.cx
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !76
  %i.df = sext i32 %i.de to i64
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !86
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.df
  br label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i:  ; preds = %bb.p, %bb.o
  %.0.i1.i.i = phi ptr [ %i.dh, %bb.p ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.o ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i1.i.i, i64 4
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = and i8 %i.dj, 15
  %i.dl = icmp eq i8 %i.dk, 3
  br i1 %i.dl, label %_ZN4moldL28should_write_to_local_symtabINS_6X86_64EEEbRNS_7ContextIT_EERNS_6SymbolIS3_EE.exit, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i, %bb.n
  %i.dm = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %i.bk) ; 2 uses
  %i.dn = extractvalue { i64, ptr } %i.dm, 0
  %.not.i.i.i = icmp ult i64 %i.dn, 2
  br i1 %.not.i.i.i, label %bb.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i
  %i.do = extractvalue { i64, ptr } %i.dm, 1
  %i.dp = load i16, ptr %i.do, align 1
  %i.dq = icmp ne i16 %i.dp, 19502
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i
  %i.dt = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %i.bk) ; 2 uses
  %i.du = extractvalue { i64, ptr } %i.dt, 0
  %i.dv = icmp eq i64 %i.du, 3
  br i1 %i.dv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %.thread.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.q
  %i.dw = extractvalue { i64, ptr } %i.dt, 1      ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 1
  %i.dy = xor i16 %i.dx, 12364
  %i.dz = getelementptr i8, ptr %i.dw, i64 2
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i16
  %i.ec = xor i16 %i.eb, 1
  %i.ed = or i16 %i.dy, %i.ec
  %i.ee = icmp ne i16 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i, label %.thread.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.eh = load i8, ptr %i.ah, align 1, !tbaa !839, !range !87, !noundef !88
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZN4moldL28should_write_to_local_symtabINS_6X86_64EEEbRNS_7ContextIT_EERNS_6SymbolIS3_EE.exit, label %bb.r

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i
  %i.ej = load i64, ptr %i.bk, align 8, !tbaa !594 ; 3 uses
  %i.ek = and i64 %i.ej, 3
  %.not3.i.i.i28 = icmp ne i64 %i.ek, 0
  %.not16.i = icmp eq i64 %i.ej, 0
  %.not.i = or i1 %.not16.i, %.not3.i.i.i28
  br i1 %.not.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.en = load i32, ptr %i.em, align 8, !tbaa !585
  %i.eo = sext i32 %i.en to i64                   ; 3 uses
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !586, !nonnull !88, !align !587 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !66 ; 2 uses
  %i.es = icmp ugt i64 %i.er, %i.eo
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !67
  %i.ev = getelementptr inbounds nuw [64 x i8], ptr %i.eu, i64 %i.eo
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 480
  %i.ex = sub nuw i64 %i.eo, %i.er
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !588
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.ey, i64 %i.ex
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i: ; preds = %bb.u, %bb.t
  %.0.i12.i = phi ptr [ %i.ev, %bb.t ], [ %i.ez, %bb.u ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 8
  %.0.copyload.i.i = load i64, ptr %i.fa, align 1
  %i.fb = and i64 %.0.copyload.i.i, 16
  %.not10.i = icmp eq i64 %i.fb, 0
end_hunk_2
begin_hunk_3_@_ZN4mold10SyncStream4emitEv:bb.a
  %.08.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.l ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i1 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !824, !noalias !1137 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.u = load ptr, ptr %1, align 8, !tbaa !54
  %i.v = load i64, ptr %i.h, align 8, !tbaa !55
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.u, i64 noundef %i.v) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !57
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !825
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.a, i64 noundef 1) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.g:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 10) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.g
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !57
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  store i8 1, ptr %i.b, align 8, !tbaa !803
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4mold10SyncStream2muE) #14 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !56

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #30 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !57
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #28
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !54
  store i64 %.0, ptr %i.d, align 8, !tbaa !57
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !55
  store i8 0, ptr %i.c, align 1, !tbaa !57
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !57
  store i8 %i.v, ptr %i.t, align 1, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !55
  %i.x = load ptr, ptr %0, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !954
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !835  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not49 = icmp ult i64 %i.h, %2
  br i1 %.not49, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !549    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !1035

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre76 = load ptr, ptr %i.c, align 8, !tbaa !835
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !549
  store i32 %i.s, ptr %i.d, align 4, !tbaa !549
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = phi ptr [ %.pre76, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.g ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !835
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !1035

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !549
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !549
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %n.vec107 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec107, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph106
  %index111 = phi i64 [ 0, %vector.ph106 ], [ %index.next113, %vector.body110 ] ; 2 uses
  %i.aj = shl i64 %index111, 2
  %next.gep112 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep112, i64 16
  store <4 x i32> %broadcast.splat109, ptr %next.gep112, align 4, !tbaa !549
  store <4 x i32> %broadcast.splat109, ptr %i.ak, align 4, !tbaa !549
  %index.next113 = add nuw i64 %index111, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next113, %n.vec107
  br i1 %i.al, label %middle.block114, label %vector.body110, !llvm.loop !1138

middle.block114:                                  ; preds = %vector.body110
  %cmp.n115 = icmp eq i64 %i.ag, %n.vec107
  br i1 %cmp.n115, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit, %middle.block114
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit ], [ %i.ai, %middle.block114 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !549
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1139

bb.k:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !549
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !549
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.l, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.l ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !549
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1141

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !835
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.m, label %bb.n, !prof !1035

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !835
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.o, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit50

bb.o:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %1, align 4, !tbaa !549
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !549
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %i.be = phi ptr [ %.pre, %bb.m ], [ %.0.i.i.i.i.i, %bb.n ], [ %.0.i.i.i.i.i, %bb.o ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !835
  %.not5.i.i.i51 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i51, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52.preheader

.lr.ph.i.i.i52.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit50
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check92 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check92, label %.lr.ph.i.i.i52.preheader130, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.i.i.i52.preheader
  %n.vec94 = and i64 %i.bj, 9223372036854775800   ; 3 uses
  %i.bk = shl i64 %n.vec94, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert95 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat96 = shufflevector <4 x i32> %broadcast.splatinsert95, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph93
  %index98 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body97 ] ; 2 uses
  %i.bm = shl i64 %index98, 2
  %next.gep99 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep99, i64 16
  store <4 x i32> %broadcast.splat96, ptr %next.gep99, align 4, !tbaa !549
  store <4 x i32> %broadcast.splat96, ptr %i.bn, align 4, !tbaa !549
  %index.next100 = add nuw i64 %index98, 8        ; 2 uses
  %i.bo = icmp eq i64 %index.next100, %n.vec94
  br i1 %i.bo, label %middle.block101, label %vector.body97, !llvm.loop !1142

middle.block101:                                  ; preds = %vector.body97
  %cmp.n102 = icmp eq i64 %i.bj, %n.vec94
  br i1 %cmp.n102, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52.preheader130

.lr.ph.i.i.i52.preheader130:                      ; preds = %.lr.ph.i.i.i52.preheader, %middle.block101
  %.06.i.i.i53.ph = phi ptr [ %1, %.lr.ph.i.i.i52.preheader ], [ %i.bl, %middle.block101 ]
  br label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph.i.i.i52.preheader130, %.lr.ph.i.i.i52
  %.06.i.i.i53 = phi ptr [ %i.bp, %.lr.ph.i.i.i52 ], [ %.06.i.i.i53.ph, %.lr.ph.i.i.i52.preheader130 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i53, align 4, !tbaa !549
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i53, i64 4 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i54, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52, !llvm.loop !1143

end_hunk_3
