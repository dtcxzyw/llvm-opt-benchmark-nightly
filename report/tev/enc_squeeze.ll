Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_squeeze?download=true
inline.NumInlined: 287
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE6insertENS_11__wrap_iterIPKS2_EEOS2_:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw [88 x i8], ptr %storemerge.i, i64 %.0.i
  store ptr %i.ch, ptr %i.by, align 8, !tbaa !44
  call void @_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(84) %2) #14
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !52 ; 3 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %.not13.i.i = icmp eq ptr %1, %i.cj
  br i1 %.not13.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEEC2EmmS5_.exit, %.lr.ph.i.i
  %i.ck = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %i.ci, %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEEC2EmmS5_.exit ] ; 4 uses
  %.sroa.18.014.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %i.e, %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEEC2EmmS5_.exit ] ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -88 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -88 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.cl, ptr noundef nonnull align 8 dereferenceable(84) %i.cm, i64 24, i1 false)
  %i.cn = getelementptr inbounds i8, ptr %i.ck, i64 -64
  %i.co = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -64
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.co) #13
  %i.cp = getelementptr inbounds i8, ptr %i.ck, i64 -40
  %i.cq = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -40
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !36
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !36
  %i.cs = getelementptr inbounds i8, ptr %i.ck, i64 -32
  %i.ct = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cs, ptr noundef nonnull align 8 dereferenceable(28) %i.ct, i64 28, i1 false)
  %.not.i.i = icmp eq ptr %i.cm, %i.cj
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !65

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i: ; preds = %.lr.ph.i.i, %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEEC2EmmS5_.exit
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.ci, %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEEC2EmmS5_.exit ], [ %i.cl, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.cg, align 8, !tbaa !52
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !43  ; 3 uses
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !51 ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.cu
  br i1 %.not12.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, %.lr.ph.i14.i
  %.014.i.i = phi ptr [ %i.dd, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ] ; 5 uses
  %.01113.i.i = phi ptr [ %i.de, %.lr.ph.i14.i ], [ %i.cv, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.01113.i.i, ptr noundef nonnull align 8 dereferenceable(84) %.014.i.i, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cx) #13
  %i.cy = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 48
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !36
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !36
  %i.db = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.db, ptr noundef nonnull align 8 dereferenceable(28) %i.dc, i64 28, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 88 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 88 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.dd, %i.cu
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !66

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre.i = load ptr, ptr %i.cg, align 8, !tbaa !44
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !44
  br label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit: ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i
  %i.df = phi ptr [ %i.cu, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ], [ %.pre, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i ] ; 3 uses
  %i.dg = phi ptr [ %.sroa.2.0.copyload.i.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ], [ %.pre.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i ]
  %.011.lcssa.i.i = phi ptr [ %i.cv, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ], [ %i.de, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorIN3jxl7ChannelEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i ]
  %i.dh = load ptr, ptr %0, align 8, !tbaa !44    ; 5 uses
  store ptr %i.dg, ptr %0, align 8, !tbaa !44
  store ptr %i.dh, ptr %i.cg, align 8, !tbaa !44
  store ptr %.011.lcssa.i.i, ptr %i.f, align 8, !tbaa !44
  store ptr %i.df, ptr %i.cf, align 8, !tbaa !44
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.dj = load ptr, ptr %i.by, align 8, !tbaa !44
  store ptr %i.dj, ptr %i.h, align 8, !tbaa !44
  store ptr %i.di, ptr %i.by, align 8, !tbaa !44
  store ptr %i.dh, ptr %3, align 8, !tbaa !50
  %.not2.i.i.i.i = icmp eq ptr %i.dh, %i.df
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit, %.lr.ph.i.i.i.i
  %i.dk = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %i.df, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -88
  store ptr %i.dl, ptr %i.cf, align 8, !tbaa !51
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -64
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dm) #13
  %i.dn = load ptr, ptr %i.cf, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dh, %i.dn
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.ithread-pre-split, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.ithread-pre-split: ; preds = %.lr.ph.i.i.i.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !50
  br label %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i

_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.ithread-pre-split, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit
  %i.do = phi ptr [ %.pr, %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.ithread-pre-split ], [ %i.dh, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit ] ; 3 uses
  %.not.i14 = icmp eq ptr %i.do, null
  br i1 %.not.i14, label %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i
  %i.dp = load ptr, ptr %i.by, align 8, !tbaa !44
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #17
  br label %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit, %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEED2Ev.exit
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.e, %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit ], [ %i.ci, %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEED2Ev.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl11FwdVSqueezeERNS_5ImageEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.jxl::StatusOr", align 8     ; 8 uses
  %4 = alloca %"class.jxl::Channel", align 8      ; 14 uses
  %5 = alloca %"class.jxl::StatusOr", align 8     ; 8 uses
  %6 = alloca %"class.jxl::Channel", align 8      ; 11 uses
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.a ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %i.j = add i64 %i.i, 1
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = add nsw i32 %i.o, 1
  call void @_ZN3jxl7Channel6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %3, ptr noundef %i.e, i64 noundef %i.g, i64 noundef %i.k, i32 noundef %i.m, i32 noundef %i.p) #13
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit91

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef nonnull align 8 dereferenceable(92) %3, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #13
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36, !noalias !77
  store i64 %i.x, ptr %i.v, align 8, !tbaa !36, !alias.scope !77
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, ptr noundef nonnull align 8 dereferenceable(28) %i.z, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !29
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !30
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = load i32, ptr %i.l, align 8, !tbaa !31
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !32
  %i.ah = add nsw i32 %i.ag, 1
  call void @_ZN3jxl7Channel6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %5, ptr noundef %i.e, i64 noundef %i.aa, i64 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ah) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %6, ptr noundef nonnull align 8 dereferenceable(92) %5, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am) #13
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !36, !noalias !78
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !36, !alias.scope !78
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aq, ptr noundef nonnull align 8 dereferenceable(28) %i.ar, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  store i32 %i.at, ptr %i.au, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 %i.at, ptr %i.av, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !39 ; 3 uses
  %i.ay = lshr i64 %i.ax, 2                       ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  %.not116 = icmp eq i64 %i.ba, 0
  %.pre.pre = load i64, ptr %i.y, align 8, !tbaa !29 ; 10 uses
  br i1 %.not116, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !38
  %i.bd = shl i64 %i.ax, 1
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !39
  %.not117 = icmp eq i64 %.pre.pre, 0
  %.idx = shl i64 %i.ay, 3                        ; 2 uses
  %.idx89 = mul i64 %i.ay, 12
  br i1 %.not117, label %._crit_edge114, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph113, %._crit_edge.us
  %.086111.us = phi i64 [ %i.bs, %._crit_edge.us ], [ 0, %.lr.ph113 ] ; 5 uses
  %i.bm = mul i64 %i.bd, %.086111.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bm ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bn, i64 64) ]
  %i.bo = mul i64 %i.bh, %.086111.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bp, i64 64) ]
  %i.bq = mul i64 %i.bl, %.086111.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.br, i64 64) ]
  %i.bs = add nuw i64 %.086111.us, 1              ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %i.ba
  %.not90.us = icmp eq i64 %.086111.us, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %_ZN3jxl14SmoothTendencyElll.exit.us
  %.085110.us = phi i64 [ 0, %.lr.ph.us ], [ %i.ea, %_ZN3jxl14SmoothTendencyElll.exit.us ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.085110.us ; 5 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40 ; 3 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %i.ay
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40 ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = icmp sgt i32 %i.bv, %i.bx
  %i.ca = zext i1 %i.bz to i32
  %i.cb = add nsw i32 %i.by, %i.ca
  %i.cc = ashr i32 %i.cb, 1                       ; 8 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.085110.us
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !40
  br i1 %i.bt, label %bb.e, label %7

7:                                                ; preds = %bb.d
  %8 = load i64, ptr %i.h, align 8, !tbaa !30
  %9 = and i64 %8, 1
  %.not87.us = icmp eq i64 %9, 0
  br i1 %.not87.us, label %bb.f, label %10

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %i.bu, i64 %.idx
  %12 = load i32, ptr %11, align 4, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ce = getelementptr i8, ptr %i.bu, i64 %.idx
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !40 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bu, i64 %.idx89
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !40 ; 2 uses
  %i.ci = add nsw i32 %i.ch, %i.cf
  %i.cj = icmp sgt i32 %i.cf, %i.ch
  %i.ck = zext i1 %i.cj to i32
  %i.cl = add nsw i32 %i.ci, %i.ck
  %i.cm = ashr i32 %i.cl, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %10, %7
  %.084.us = phi i32 [ %i.cm, %bb.e ], [ %12, %10 ], [ %i.cc, %7 ] ; 3 uses
  br i1 %.not90.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = sub nsw i64 %.085110.us, %i.ay
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cq = phi i32 [ %i.cp, %bb.g ], [ %i.cc, %bb.f ] ; 3 uses
  %i.cr = sext i32 %i.cq to i64                   ; 4 uses
  %i.cs = sext i32 %i.cc to i64                   ; 6 uses
  %i.ct = sext i32 %.084.us to i64                ; 4 uses
  %.not.i.us = icmp slt i32 %i.cq, %i.cc
  %.not49.i.us = icmp slt i32 %i.cc, %.084.us
  %or.cond.i.us = or i1 %.not49.i.us, %.not.i.us
  br i1 %or.cond.i.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i64 %i.cr, 2
  %.neg52.i.us = mul nsw i64 %i.ct, -3
  %reass.sub = sub nsw i64 %.neg52.i.us, %i.cs
  %i.cv = add nsw i64 %reass.sub, 6
  %i.cw = add nsw i64 %i.cv, %i.cu
  %i.cx = sdiv i64 %i.cw, 12                      ; 2 uses
  %i.cy = and i64 %i.cx, -2
  %i.cz = sub nsw i64 %i.cr, %i.cs
  %i.da = shl nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = icmp sgt i64 %i.cy, %i.da
  %i.dc = or disjoint i64 %i.da, 1
  %spec.select.i.us = select i1 %i.db, i64 %i.dc, i64 %i.cx ; 3 uses
  %i.dd = and i64 %spec.select.i.us, 1
  %i.de = add nsw i64 %i.dd, %spec.select.i.us
  %i.df = sub nsw i64 %i.cs, %i.ct
  %i.dg = shl nuw nsw i64 %i.df, 1                ; 2 uses
  %i.dh = icmp sgt i64 %i.de, %i.dg
  %spec.select55.i.us = select i1 %i.dh, i64 %i.dg, i64 %spec.select.i.us
  br label %_ZN3jxl14SmoothTendencyElll.exit.us

bb.j:                                             ; preds = %bb.h
  %.not50.i.us = icmp sgt i32 %i.cq, %i.cc
  %.not51.i.us = icmp sgt i32 %i.cc, %.084.us
  %or.cond53.i.us = or i1 %.not51.i.us, %.not50.i.us
  br i1 %or.cond53.i.us, label %_ZN3jxl14SmoothTendencyElll.exit.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.di = shl nsw i64 %i.cr, 2
  %.neg.i.us = mul nsw i64 %i.ct, -3
  %reass.sub118 = sub nsw i64 %.neg.i.us, %i.cs
  %i.dj = add nsw i64 %reass.sub118, -6
  %i.dk = add nsw i64 %i.dj, %i.di
  %i.dl = sdiv i64 %i.dk, 12                      ; 3 uses
  %i.dm = and i64 %i.dl, 1
  %i.dn = add nsw i64 %i.dm, %i.dl
  %i.do = sub nsw i64 %i.cr, %i.cs
  %i.dp = shl nsw i64 %i.do, 1                    ; 2 uses
  %i.dq = icmp slt i64 %i.dn, %i.dp
  %i.dr = add nsw i64 %i.dp, -1
  %spec.select54.i.us = select i1 %i.dq, i64 %i.dr, i64 %i.dl ; 2 uses
  %i.ds = and i64 %spec.select54.i.us, -2
  %i.dt = sub nsw i64 %i.cs, %i.ct
  %i.du = shl nsw i64 %i.dt, 1                    ; 2 uses
  %i.dv = icmp slt i64 %i.ds, %i.du
  %spec.select56.i.us = select i1 %i.dv, i64 %i.du, i64 %spec.select54.i.us
  br label %_ZN3jxl14SmoothTendencyElll.exit.us

_ZN3jxl14SmoothTendencyElll.exit.us:              ; preds = %bb.k, %bb.j, %bb.i
  %.2.i.us = phi i64 [ 0, %bb.j ], [ %spec.select56.i.us, %bb.k ], [ %spec.select55.i.us, %bb.i ]
  %i.dw = trunc i64 %.2.i.us to i32
  %i.dx = add i32 %i.bx, %i.dw
  %i.dy = sub i32 %i.bv, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.085110.us
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !40
  %i.ea = add nuw i64 %.085110.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %.pre.pre
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !72

._crit_edge.us:                                   ; preds = %_ZN3jxl14SmoothTendencyElll.exit.us
  %exitcond121.not = icmp eq i64 %i.bs, %i.ba
  br i1 %exitcond121.not, label %._crit_edge114, label %.lr.ph.us, !llvm.loop !73

._crit_edge114:                                   ; preds = %._crit_edge.us, %.lr.ph113, %bb.c
  %13 = load i64, ptr %i.h, align 8, !tbaa !30
  %14 = and i64 %13, 1
  %.not = icmp eq i64 %14, 0
  %.pre124 = load i64, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  br i1 %.not, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %._crit_edge114
  %i.eb = add i64 %.pre124, -1                    ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !38 ; 2 uses
  %i.ee = ptrtoaddr ptr %i.ed to i64
  %i.ef = shl i64 %i.ax, 1                        ; 2 uses
  %i.eg = mul i64 %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eh, i64 64) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !38 ; 2 uses
  %i.ek = ptrtoaddr ptr %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !39 ; 2 uses
  %i.en = mul i64 %i.em, %i.eb
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.en ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eo, i64 64) ]
  %.not119 = icmp eq i64 %.pre.pre, 0
  br i1 %.not119, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check = icmp ult i64 %.pre.pre, 20
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ep = sub i64 %i.em, %i.ef
  %i.eq = mul i64 %i.ep, %i.eb
  %i.er = add i64 %i.eq, %i.ek
  %i.es = sub i64 %i.ee, %i.er
  %diff.check = icmp ugt i64 %i.es, -32
  br i1 %diff.check, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre.pre, -8                  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load = load <4 x i32>, ptr %i.et, align 32, !tbaa !40
  %wide.load129 = load <4 x i32>, ptr %i.eu, align 16, !tbaa !40
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <4 x i32> %wide.load, ptr %i.ev, align 32, !tbaa !40
  store <4 x i32> %wide.load129, ptr %i.ew, align 16, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.pre, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader132

.lr.ph.preheader132:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.pre.pre, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader132, %.lr.ph.prol
  %.0115.prol = phi i64 [ %i.fb, %.lr.ph.prol ], [ %.0115.ph, %.lr.ph.preheader132 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader132 ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.0115.prol
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !40
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.0115.prol
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !40
  %i.fb = add nuw i64 %.0115.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !75

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader132
  %.0115.unr = phi i64 [ %.0115.ph, %.lr.ph.preheader132 ], [ %i.fb, %.lr.ph.prol ]
  %i.fc = sub i64 %.0115.ph, %.pre.pre
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0115 = phi i64 [ %i.ft, %.lr.ph ], [ %.0115.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.0115
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !40
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.0115
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !40
  %i.fh = add nuw i64 %.0115, 1                   ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !40
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fh
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !40
  %i.fl = add nuw i64 %.0115, 2                   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !40
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fl
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !40
  %i.fp = add nuw i64 %.0115, 3                   ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !40
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fp
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !40
  %i.ft = add nuw i64 %.0115, 4                   ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %i.ft, %.pre.pre
  br i1 %exitcond123.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !76

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.l, %._crit_edge114
  %i.fu = load ptr, ptr %0, align 8, !tbaa !15
  %i.fv = getelementptr inbounds nuw [88 x i8], ptr %i.fu, i64 %i.a ; 7 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  store i64 %.pre.pre, ptr %i.fw, align 8, !tbaa !29
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  store i64 %.pre124, ptr %i.fx, align 8, !tbaa !30
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 72
  %i.ga = load <2 x i32>, ptr %i.fy, align 8, !tbaa !40
  store <2 x i32> %i.ga, ptr %i.fz, align 8, !tbaa !40
  %i.gb = load i32, ptr %i.au, align 8, !tbaa !37
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  store i32 %i.gb, ptr %i.gc, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.fv, ptr noundef nonnull align 8 dereferenceable(84) %4, i64 24, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.ge = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.t) #13 ; 0 uses
  %i.gf = load i64, ptr %i.v, align 8, !tbaa !36
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !36
  %i.gh = load ptr, ptr %0, align 8, !tbaa !15
  %i.gi = sext i32 %2 to i64
  %i.gj = getelementptr inbounds [88 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = call ptr @_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE6insertENS_11__wrap_iterIPKS2_EEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.gj, ptr noundef nonnull align 8 dereferenceable(84) %6) #14 ; 0 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.pr = load i32, ptr %i.ai, align 8, !tbaa !35
  %i.gl = icmp eq i32 %.pr, 0
  br i1 %i.gl, label %bb.m, label %.thread

bb.m:                                             ; preds = %.loopexit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #13
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.m, %.loopexit
  %.sroa.094.0102 = phi i32 [ 0, %bb.m ], [ 0, %.loopexit ], [ %i.aj, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.pr103 = load i32, ptr %i.q, align 8, !tbaa !35
  %i.gm = icmp eq i32 %.pr103, 0
  br i1 %i.gm, label %bb.n, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit91

bb.n:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #13
  br label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit91

_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit91:        ; preds = %bb.a, %.thread, %bb.n
  %.sroa.094.1106 = phi i32 [ %.sroa.094.0102, %bb.n ], [ %.sroa.094.0102, %.thread ], [ %i.r, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.sroa.094.1106
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl10FwdSqueezeERNS_5ImageENSt3__16vectorINS_13SqueezeParamsENS2_9allocatorIS4_EEEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !86     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3jxl24DefaultSqueezeParametersEPNSt3__16vectorINS_13SqueezeParamsENS0_9allocatorIS2_EEEERKNS_5ImageE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %.pre = load ptr, ptr %1, align 8, !tbaa !86
  %.pre73 = load ptr, ptr %i.b, align 8, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre73, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %._crit_edge
  %.sroa.041.066 = phi ptr [ %i.f, %.preheader ], [ %i.at, %._crit_edge ] ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = load ptr, ptr %0, align 8, !tbaa !15
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 88
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call i32 @_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.041.066, i32 noundef %i.o) #13 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.041.066, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !90, !range !91, !noundef !92
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.041.066, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !93, !range !91, !noundef !92
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.041.066, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !94   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.041.066, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !95
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = add i32 %i.ab, -1                       ; 3 uses
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.ae = load ptr, ptr %0, align 8, !tbaa !15
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 88
  %i.aj = trunc i64 %i.ai to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.040 = phi i32 [ %i.aj, %bb.f ], [ %i.ab, %bb.e ]
  %.not63 = icmp ugt i32 %i.y, %i.ac
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ak = sub i32 %.040, %i.y                     ; 2 uses
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.03964.us = phi i32 [ %i.ao, %bb.h ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.al = add i32 %i.ak, %.03964.us
  %i.am = tail call i32 @_ZN3jxl11FwdHSqueezeERNS_5ImageEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.03964.us, i32 noundef %i.al) #14 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.ao = add i32 %.03964.us, 1                   ; 2 uses
  %.not.us = icmp ugt i32 %i.ao, %i.ac
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !81

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.03964 = phi i32 [ %i.as, %bb.i ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.ap = add i32 %i.ak, %.03964
  %i.aq = tail call i32 @_ZN3jxl11FwdVSqueezeERNS_5ImageEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.03964, i32 noundef %i.ap) #14 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.split
  %i.as = add i32 %.03964, 1                      ; 2 uses
  %.not = icmp ugt i32 %i.as, %i.ac
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.i, %bb.h, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.066, i64 24 ; 2 uses
  %.not60 = icmp eq ptr %i.at, %i.e
  br i1 %.not60, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %._crit_edge, %bb.d, %.lr.ph.split, %.lr.ph.split.us, %bb.c
  %.sroa.044.5 = phi i32 [ 1, %bb.c ], [ %i.aq, %.lr.ph.split ], [ %i.am, %.lr.ph.split.us ], [ 0, %._crit_edge ], [ %i.p, %bb.d ]
  ret i32 %.sroa.044.5
}

declare void @_ZN3jxl24DefaultSqueezeParametersEPNSt3__16vectorINS_13SqueezeParamsENS0_9allocatorIS2_EEEERKNS_5ImageE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare i32 @_ZN3jxl22CheckMetaSqueezeParamsERKNS_13SqueezeParamsEi(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNSt3__114__split_bufferIN3jxl7ChannelERNS_9allocatorIS2_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %i.i = icmp ugt ptr %i.g, %i.h
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.k, %i.j
  %i.m = sdiv exact i64 %i.l, 88
  %i.n = add nsw i64 %i.m, 1
  %.neg = sdiv i64 %i.n, -2                       ; 2 uses
  %i.o = getelementptr inbounds [88 x i8], ptr %i.g, i64 %.neg ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.g, %i.b
end_hunk_0
