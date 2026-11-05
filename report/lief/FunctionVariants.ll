Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/FunctionVariants?download=true
inline.NumInlined: 3571
inline.NumDeleted: 1188
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4LIEF5MachO16FunctionVariants11parse_entryERNS_12BinaryStreamEm:bb.a
  store i64 %i.af, ptr %i.d, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ag = zext i32 %i.ae to i64
  store i64 0, ptr %i.c, align 8, !tbaa !72
  %.not57.not = icmp eq i32 %i.ae, 0
  br i1 %.not57.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit17
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.ptr55 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %.ptr53 = getelementptr inbounds nuw i8, ptr %10, i64 9
  %.ptr = getelementptr inbounds nuw i8, ptr %10, i64 10
  %.ptr54 = getelementptr inbounds nuw i8, ptr %10, i64 11
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.o
  %i.ar = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.o ] ; 2 uses
  %i.as = icmp ugt i64 %i.ar, %2
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.263) #26
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.au, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 3, ptr nonnull @.str.14, i64 35)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.av = load i64, ptr %8, align 8
  store i64 %i.av, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load <2 x ptr>, ptr %i.v, align 8, !tbaa !110
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !110
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !147
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !147
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ba, align 8, !tbaa !143
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !135 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %i.bc = load ptr, ptr %1, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call i64 %i.be(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %4, i64 noundef %i.bb, i64 noundef 8, i64 noundef 0) #26, !inline_history !386
  %i.bg = and i64 %i.bf, 4294967296
  %i.bh = load i64, ptr %4, align 8
  store i64 %i.bb, ptr %i.d, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details21runtime_table_entry_tEEENS_6resultIT_EEv.exit.thread, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details21runtime_table_entry_tEEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readINS_5MachO7details21runtime_table_entry_tEEENS_6resultIT_EEv.exit.thread: ; preds = %bb.h
  store i64 1, ptr %9, align 8
  store i8 0, ptr %.sroa.26.0..sroa_idx, align 8
  %i.bi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.263) #26
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 1, ptr nonnull @.str.15, i64 55, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bk = load i64, ptr %8, align 8
  store i64 %i.bk, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load <2 x ptr>, ptr %i.v, align 8, !tbaa !110
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !110
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.aq, align 8, !tbaa !147
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !147
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bp, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.p

_ZNK4LIEF12BinaryStream4readINS_5MachO7details21runtime_table_entry_tEEENS_6resultIT_EEv.exit: ; preds = %bb.h
  %i.bq = add i64 %i.bb, 8
  store i64 %i.bq, ptr %i.d, align 8, !tbaa !135
  store i64 %i.bh, ptr %9, align 8
  store i8 1, ptr %.sroa.26.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @_ZN4LIEF5MachO16FunctionVariants17RuntimeTableEntryC1ERKNS0_7details21runtime_table_entry_tE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 4 dereferenceable(8) %9) #26
  %.029.val32.i.i.i.i = load i8, ptr %.ptr55, align 8, !tbaa !53
  %i.br = icmp eq i8 %.029.val32.i.i.i.i, 0
  br i1 %i.br, label %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details21runtime_table_entry_tEEENS_6resultIT_EEv.exit
  %.val31.i.i.i.i = load i8, ptr %.ptr53, align 1, !tbaa !53
  %i.bs = icmp eq i8 %.val31.i.i.i.i, 0
  br i1 %i.bs, label %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val30.i.i.i.i = load i8, ptr %.ptr, align 2, !tbaa !53
  %i.bt = icmp eq i8 %.val30.i.i.i.i, 0
  br i1 %i.bt, label %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i = load i8, ptr %.ptr54, align 1, !tbaa !53
  %i.bu = icmp eq i8 %.val.i.i.i.i, 0
  %spec.select = select i1 %i.bu, i64 3, i64 4
  br label %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit

_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit: ; preds = %bb.k, %bb.j, %bb.i, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details21runtime_table_entry_tEEENS_6resultIT_EEv.exit
  %.pn10.i = phi i64 [ %spec.select, %bb.k ], [ 0, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details21runtime_table_entry_tEEENS_6resultIT_EEv.exit ], [ 1, %bb.i ], [ 2, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bv = load i32, ptr %8, align 8, !tbaa !109
  call void @_ZN4LIEF5MachO20get_high_level_flagsEN3tcb4spanIKhLm18446744073709551615EEENS0_16FunctionVariants12RuntimeTable4KINDE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %11, ptr nonnull %.ptr55, i64 %.pn10.i, i32 noundef %i.bv)
  %i.bw = load ptr, ptr %11, align 8, !tbaa !121  ; 2 uses
  %i.bx = load ptr, ptr %i.ah, align 8, !tbaa !122 ; 2 uses
  %i.by = load ptr, ptr %i.ai, align 8, !tbaa !123 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.bz = load ptr, ptr %i.aj, align 8, !tbaa !121 ; 3 uses
  %i.ca = load ptr, ptr %i.al, align 8, !tbaa !123
  store ptr %i.bw, ptr %i.aj, align 8, !tbaa !121
  store ptr %i.bx, ptr %i.ak, align 8, !tbaa !122
  store ptr %i.by, ptr %i.al, align 8, !tbaa !123
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #28
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !121
  %.pre59 = load ptr, ptr %i.ak, align 8, !tbaa !122
  %.pre60 = load ptr, ptr %i.al, align 8, !tbaa !123
  br label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit

_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit: ; preds = %bb.l, %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit
  %i.ce = phi ptr [ %.pre60, %bb.l ], [ %i.by, %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit ]
  %i.cf = phi ptr [ %.pre59, %bb.l ], [ %i.bx, %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit ]
  %i.cg = phi ptr [ %.pre, %bb.l ], [ %i.bw, %_ZN4LIEF5MachO18get_relevant_flagsEN3tcb4spanIKhLm18446744073709551615EEE.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 12, i1 false)
  store ptr %i.cg, ptr %i.am, align 8, !tbaa !121
  store ptr %i.cf, ptr %i.an, align 8, !tbaa !122
  store ptr %i.ce, ptr %i.ao, align 8, !tbaa !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ch = load ptr, ptr %i.ap, align 8, !tbaa !144 ; 5 uses
  %i.ci = load ptr, ptr %i.aq, align 8, !tbaa !147
  %.not.i.i.i18 = icmp eq ptr %i.ch, %i.ci
  br i1 %.not.i.i.i18, label %_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit, label %_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit.thread

_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit.thread: ; preds = %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ch, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load <2 x ptr>, ptr %i.am, align 8, !tbaa !80
  store <2 x ptr> %i.ck, ptr %i.cj, align 8, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !123
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.cn = load ptr, ptr %i.ap, align 8, !tbaa !144
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store ptr %i.co, ptr %i.ap, align 8, !tbaa !144
  br label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit20

_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit: ; preds = %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit
  call void @_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %12)
  %.pr = load ptr, ptr %i.am, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit20, label %bb.m

bb.m:                                             ; preds = %_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit
  %i.cp = load ptr, ptr %i.ao, align 8, !tbaa !123
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %.pr to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cs) #28
  br label %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit20

_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit20: ; preds = %_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit.thread, %bb.m, %_ZN4LIEF5MachO16FunctionVariants12RuntimeTable3addENS1_17RuntimeTableEntryE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ct = load ptr, ptr %i.aj, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit20
  %i.cu = load ptr, ptr %i.al, align 8, !tbaa !123
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt6vectorIN4LIEF5MachO16FunctionVariants17RuntimeTableEntry5FLAGSESaIS4_EED2Ev.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.cy = add nuw nsw i64 %i.ar, 1                ; 3 uses
  store i64 %i.cy, ptr %i.c, align 8, !tbaa !72
  %.not = icmp samesign ult i64 %i.cy, %i.ag
  br i1 %.not, label %bb.f, label %._crit_edge, !llvm.loop !387

bb.p:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details21runtime_table_entry_tEEENS_6resultIT_EEv.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN4LIEF5MachO16FunctionVariants12RuntimeTableD2Ev.exit

._crit_edge:                                      ; preds = %bb.o, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.cz = load i64, ptr %8, align 8
  store i64 %i.cz, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load <2 x ptr>, ptr %i.v, align 8, !tbaa !110
  store <2 x ptr> %i.db, ptr %i.da, align 8, !tbaa !110
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !147
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !147
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.df, align 8, !tbaa !143
  br label %_ZN4LIEF5MachO16FunctionVariants12RuntimeTableD2Ev.exit

bb.q:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.263) #26
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 1, ptr nonnull @.str.13, i64 49)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i32 1, ptr %0, align 8, !tbaa !390
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.di, align 8, !tbaa !143
  %.pre61 = load ptr, ptr %i.v, align 8, !tbaa !145 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre62 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !144 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre61, %.pre62
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %bb.q, %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dq, %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvPT_.exit.i.i.i.i ], [ %.pre61, %bb.q ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvPT_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i23
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !123
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #28
  br label %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvPT_.exit.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i23
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.dq, %.pre62
  br i1 %.not.i.i.i.i24, label %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i23, !llvm.loop !1

_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.v, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exit.i.i

_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exitthread-pre-split.i.i, %bb.q
  %i.dr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exitthread-pre-split.i.i ], [ %.pre61, %bb.q ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF5MachO16FunctionVariants12RuntimeTableD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !147
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #28
  br label %_ZN4LIEF5MachO16FunctionVariants12RuntimeTableD2Ev.exit

_ZN4LIEF5MachO16FunctionVariants12RuntimeTableD2Ev.exit: ; preds = %bb.p, %._crit_edge, %_ZSt8_DestroyIPN4LIEF5MachO16FunctionVariants17RuntimeTableEntryEEvT_S5_.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.t

bb.t:                                             ; preds = %_ZN4LIEF5MachO16FunctionVariants12RuntimeTableD2Ev.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN4LIEF5MachO9to_stringENS0_16FunctionVariants17RuntimeTableEntry5FLAGSE(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  switch i32 %0, label %bb.bt [
    i32 3145728, label %bb.bu
    i32 3145729, label %bb.b
    i32 3145730, label %bb.c
    i32 3145731, label %bb.d
    i32 3145732, label %bb.e
    i32 3145733, label %bb.f
    i32 3145734, label %bb.g
    i32 3145735, label %bb.h
    i32 3145736, label %bb.i
    i32 3145737, label %bb.j
    i32 3145738, label %bb.k
    i32 3145739, label %bb.l
    i32 3145740, label %bb.m
    i32 3145741, label %bb.n
    i32 3145742, label %bb.o
    i32 3145743, label %bb.p
    i32 3145744, label %bb.q
    i32 3145745, label %bb.r
    i32 3145746, label %bb.s
    i32 3145747, label %bb.t
    i32 3145748, label %bb.u
    i32 3145749, label %bb.v
    i32 3145750, label %bb.w
    i32 3145751, label %bb.x
    i32 3145752, label %bb.y
    i32 3145753, label %bb.z
    i32 3145754, label %bb.aa
    i32 3145755, label %bb.ab
    i32 3145756, label %bb.ac
    i32 3145757, label %bb.ad
    i32 3145758, label %bb.ae
    i32 3145759, label %bb.af
    i32 3145760, label %bb.ag
    i32 3145761, label %bb.ah
    i32 3145762, label %bb.ai
    i32 3145763, label %bb.aj
    i32 3145764, label %bb.ak
    i32 3145765, label %bb.al
    i32 3145772, label %bb.am
    i32 3145773, label %bb.an
    i32 3145774, label %bb.ao
    i32 3145775, label %bb.ap
    i32 3145776, label %bb.aq
    i32 3145777, label %bb.ar
    i32 3145778, label %bb.as
    i32 3145779, label %bb.at
    i32 3145780, label %bb.au
    i32 3145781, label %bb.av
    i32 3145782, label %bb.aw
    i32 3145783, label %bb.ax
    i32 3145784, label %bb.ay
    i32 1048576, label %bb.az
    i32 1048577, label %bb.ba
    i32 1048578, label %bb.bb
    i32 1048579, label %bb.bc
    i32 2097152, label %bb.bd
    i32 2097153, label %bb.be
    i32 2097154, label %bb.bf
    i32 2097155, label %bb.bg
    i32 4194304, label %bb.bh
    i32 4194305, label %bb.bi
    i32 4194306, label %bb.bj
    i32 4194307, label %bb.bk
    i32 4194308, label %bb.bl
    i32 4194309, label %bb.bm
    i32 4194310, label %bb.bn
    i32 4194311, label %bb.bo
    i32 4194312, label %bb.bp
    i32 4194313, label %bb.bq
    i32 4194314, label %bb.br
    i32 4194315, label %bb.bs
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  br label %bb.bu

bb.d:                                             ; preds = %bb.a
  br label %bb.bu

bb.e:                                             ; preds = %bb.a
  br label %bb.bu

bb.f:                                             ; preds = %bb.a
  br label %bb.bu

bb.g:                                             ; preds = %bb.a
  br label %bb.bu

bb.h:                                             ; preds = %bb.a
  br label %bb.bu

bb.i:                                             ; preds = %bb.a
  br label %bb.bu

bb.j:                                             ; preds = %bb.a
  br label %bb.bu

bb.k:                                             ; preds = %bb.a
  br label %bb.bu

bb.l:                                             ; preds = %bb.a
  br label %bb.bu

bb.m:                                             ; preds = %bb.a
  br label %bb.bu

bb.n:                                             ; preds = %bb.a
  br label %bb.bu
end_hunk_0
