Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi13xml_attributeaSEy:bb.a
  br i1 %.not.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_117set_value_integerIyPcmEEbRT0_RT1_mT_b.exit.i, label %bb.c, !llvm.loop !35

_ZN4pugi4impl12_GLOBAL__N_117set_value_integerIyPcmEEbRT0_RT1_mT_b.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 45, ptr %i.g, align 1, !tbaa !30
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %.010.i.i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 16, ptr noundef nonnull %.010.i.i.i, i64 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %_ZN4pugi13xml_attribute9set_valueEy.exit

_ZN4pugi13xml_attribute9set_valueEy.exit:         ; preds = %bb.a, %_ZN4pugi4impl12_GLOBAL__N_117set_value_integerIyPcmEEbRT0_RT1_mT_b.exit.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi13xml_attribute9set_valueEy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 63
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.010.i.i = phi ptr [ %i.c, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %.0.i.i = phi i64 [ %1, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.d = urem i64 %.0.i.i, 10
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, 48
  %i.g = getelementptr inbounds i8, ptr %.010.i.i, i64 -1 ; 2 uses
  store i8 %i.f, ptr %.010.i.i, align 1, !tbaa !30
  %i.h = udiv i64 %.0.i.i, 10
  %.not.i.i = icmp ult i64 %.0.i.i, 10
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_117set_value_integerIyPcmEEbRT0_RT1_mT_b.exit, label %bb.c, !llvm.loop !35

_ZN4pugi4impl12_GLOBAL__N_117set_value_integerIyPcmEEbRT0_RT1_mT_b.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 45, ptr %i.g, align 1, !tbaa !30
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %.010.i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 16, ptr noundef nonnull %.010.i.i, i64 noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4pugi4impl12_GLOBAL__N_117set_value_integerIyPcmEEbRT0_RT1_mT_b.exit
  %.0 = phi i1 [ %i.n, %_ZN4pugi4impl12_GLOBAL__N_117set_value_integerIyPcmEEbRT0_RT1_mT_b.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi13xml_attribute8set_nameEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #50
  %i.d = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 32, ptr noundef nonnull %1, i64 noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i64 noundef range(i64 16, 33) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = and i64 %i.c, %2
  %.not44 = icmp eq i64 %i.d, 0
  br i1 %.not44, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.c, 8
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !42
  %i.l = zext i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = sub nuw nsw i64 -40, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n ; 9 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !45   ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = zext i16 %i.q to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i64 [ %i.t, %bb.d ], [ %i.v, %bb.e ]
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.y = icmp eq ptr %i.o, %i.x
  br i1 %i.y, label %bb.g, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.ac = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.aa, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.af = add i64 %i.ae, %i.w                     ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ah = icmp eq i64 %i.af, %i.ac
  br i1 %i.ah, label %bb.i, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.al, align 8, !tbaa !49
  br label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !51
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !52
  %i.ar = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !53
  tail call void %i.ar(ptr noundef nonnull %i.o), !inline_history !54
  br label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit

_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !41
  %i.as = xor i64 %2, -1
  %i.at = load i64, ptr %1, align 8, !tbaa !36
  %i.au = and i64 %i.at, %i.as
  store i64 %i.au, ptr %1, align 8, !tbaa !36
  br label %bb.z

bb.l:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %0, align 8, !tbaa !41    ; 3 uses
  %.not = icmp ne ptr %i.av, null
  %.pre = load i64, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.aw = and i64 %.pre, 64
  %.not.i = icmp eq i64 %i.aw, 0
  %or.cond = select i1 %.not, i1 %.not.i, i1 false
  br i1 %or.cond, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.av) #50 ; 4 uses
  %i.ay = and i64 %.pre, %2
  %i.az = icmp eq i64 %i.ay, 0
  %.not56 = icmp ult i64 %i.ax, %4                ; 2 uses
  br i1 %i.az, label %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not56, label %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp ult i64 %i.ax, 32
  br i1 %i.ba, label %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread51, label %.split

.split:                                           ; preds = %bb.o
  %i.bb = sub i64 %i.ax, %4
  %i.bc = lshr i64 %i.ax, 1
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread51, label %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread

_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit: ; preds = %bb.m
  br i1 %.not56, label %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread, label %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread51

_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread51: ; preds = %bb.o, %.split, %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %3, i64 %4, i1 false)
  %i.be = load ptr, ptr %0, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %4
  store i8 0, ptr %i.bf, align 1, !tbaa !30
  br label %bb.z

_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread: ; preds = %bb.n, %.split, %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit, %bb.l
  %i.bg = lshr i64 %.pre, 8
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37 ; 4 uses
  %i.bk = add i64 %4, 12                          ; 3 uses
  %i.bl = and i64 %i.bk, -8                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 32728
  br i1 %i.bp, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.thread.i, !prof !55

_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !47 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bn
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !49
  br label %bb.p

_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread
  %i.bt = call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_113xml_allocator19allocate_memory_oobEmRPNS1_15xml_memory_pageE(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 noundef range(i64 0, -7) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i45 = icmp eq ptr %i.bt, null
  br i1 %.not.i45, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_stringEm.exit, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit._crit_edge.i

_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit._crit_edge.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %bb.p

_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_stringEm.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.z

bb.p:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.thread.i, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit._crit_edge.i
  %i.bu = phi ptr [ %i.bq, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.thread.i ], [ %.pre.i, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit._crit_edge.i ]
  %.0.i15.i = phi ptr [ %i.bs, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit.thread.i ], [ %i.bt, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_memoryEmRPNS1_15xml_memory_pageE.exit._crit_edge.i ] ; 4 uses
  %i.bv = ptrtoint ptr %.0.i15.i to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %reass.sub = sub i64 %i.bv, %i.bw
  %i.bx = add i64 %reass.sub, 524248
  %i.by = lshr i64 %i.bx, 3
  %i.bz = trunc i64 %i.by to i16
  store i16 %i.bz, ptr %.0.i15.i, align 2, !tbaa !42
  %i.ca = icmp ult i64 %i.bk, 524288
  %i.cb = lshr i64 %i.bk, 3
  %i.cc = trunc i64 %i.cb to i16
  %i.cd = select i1 %i.ca, i16 %i.cc, i16 0
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 2
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cf, ptr align 1 %3, i64 %4, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %4
  store i8 0, ptr %i.cg, align 1, !tbaa !30
  %i.ch = load i64, ptr %1, align 8, !tbaa !36
  %i.ci = and i64 %i.ch, %2
  %.not43 = icmp eq i64 %i.ci, 0
  br i1 %.not43, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit49, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !42
  %i.cm = zext i16 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = sub nuw nsw i64 -40, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.ck, i64 %i.co ; 9 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cj, i64 -2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !45 ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !46
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cv = zext i16 %i.cr to i64
  %i.cw = shl nuw nsw i64 %i.cv, 3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cx = phi i64 [ %i.cu, %bb.r ], [ %i.cw, %bb.s ]
  %i.cy = load ptr, ptr %i.bj, align 8, !tbaa !47
  %i.cz = icmp eq ptr %i.cp, %i.cy
  br i1 %i.cz, label %bb.u, label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %bb.t
  %.phi.trans.insert.i.i47 = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.pre.i.i48 = load i64, ptr %.phi.trans.insert.i.i47, align 8, !tbaa !46
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.da = load i64, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.da, ptr %i.db, align 8, !tbaa !46
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i46
  %i.dc = phi i64 [ %.pre.i.i48, %._crit_edge.i.i46 ], [ %i.da, %bb.u ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !50
  %i.df = add i64 %i.de, %i.cx                    ; 2 uses
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dh = icmp eq i64 %i.df, %i.dc
  br i1 %i.dh, label %bb.w, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit49

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !51 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.bm, align 8, !tbaa !49
  br label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit49

bb.y:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !52 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dj, ptr %i.dn, align 8, !tbaa !51
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !52
  %i.dq = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !53
  tail call void %i.dq(ptr noundef nonnull %i.cp), !inline_history !54
  br label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit49

_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit49: ; preds = %bb.y, %bb.x, %bb.v, %bb.p
  store ptr %i.cf, ptr %0, align 8, !tbaa !41
  %i.dr = load i64, ptr %1, align 8, !tbaa !36
  %i.ds = or i64 %i.dr, %2
  store i64 %i.ds, ptr %1, align 8, !tbaa !36
  br label %bb.z

bb.z:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_stringEm.exit, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit49, %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread51, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit
  %.2 = phi i1 [ true, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit ], [ true, %_ZN4pugi4impl12_GLOBAL__N_119strcpy_insitu_allowImEEbmRKT_mPc.exit.thread51 ], [ true, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit49 ], [ false, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator15allocate_stringEm.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi13xml_attribute8set_nameEPKcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 32, ptr noundef %1, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi13xml_attribute8set_nameESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 32, ptr noundef %2, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi13xml_attribute9set_valueEPKcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_119get_buffer_encodingENS_12xml_encodingEPKvm:bb.a

bb.af:                                            ; preds = %.thread.i, %bb.ae, %bb.y
  %.0.i = phi i32 [ 1, %.thread.i ], [ 9, %bb.y ], [ 9, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_121guess_buffer_encodingEPKhm.exit

_ZN4pugi4impl12_GLOBAL__N_121guess_buffer_encodingEPKhm.exit: ; preds = %bb.af, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 5, %bb.b ], [ 2, %bb.c ], [ 3, %bb.k ], [ %0, %bb.a ], [ 1, %bb.d ], [ %.0.i, %bb.af ], [ 6, %bb.e ], [ 5, %bb.f ], [ %.mux.i, %bb.g ], [ %.mux128.mux.i, %bb.l ], [ 1, %bb.h ], [ 6, %bb.i ], [ 5, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_126parse_declaration_encodingEPKhmRS3_Rm(ptr noundef %0, i64 noundef range(i64 4, 0) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #26 {
bb.a:
  %i.a = icmp ult i64 %1, 6
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1, !tbaa !30
  %i.e = icmp eq i8 %i.d, 108
  %i.f = icmp eq i32 %i.b, 1836597052
  %op.rdx = and i1 %i.f, %i.e
  br i1 %op.rdx, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !30
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = and i8 %i.k, 8
  %.not = icmp ne i8 %i.l, 0
  %i.m = icmp ugt i64 %1, 7
  %or.cond = and i1 %.not, %i.m
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.x
  %i.n = phi i64 [ %i.bu, %bb.x ], [ 7, %bb.c ]   ; 3 uses
  %.0108160 = phi i64 [ %i.n, %bb.x ], [ 6, %bb.c ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.0108160
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  switch i8 %i.p, label %bb.x [
    i8 63, label %.critedge
    i8 101, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30
  %i.s = icmp eq i8 %i.r, 110
  br i1 %i.s, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %.not124 = icmp ult i64 %.0108160, %1
  br i1 %.not124, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i64 %.0108160, 2                 ; 2 uses
  %.not126 = icmp ult i64 %i.t, %1
  br i1 %.not126, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %.not127 = icmp eq i8 %i.v, 99
  br i1 %.not127, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i64 %.0108160, 3                 ; 2 uses
  %.not128 = icmp ult i64 %i.w, %1
  br i1 %.not128, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30
  %.not129 = icmp eq i8 %i.y, 111
  br i1 %.not129, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.z = add nuw i64 %.0108160, 4                 ; 2 uses
  %.not130 = icmp ult i64 %i.z, %1
  br i1 %.not130, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30
  %.not131 = icmp eq i8 %i.ab, 100
  br i1 %.not131, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.0108160, 5                ; 2 uses
  %.not132 = icmp ult i64 %i.ac, %1
  br i1 %.not132, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30
  %.not133 = icmp eq i8 %i.ae, 105
  br i1 %.not133, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.af = add nuw i64 %.0108160, 6                ; 2 uses
  %.not134 = icmp ult i64 %i.af, %1
  br i1 %.not134, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30
  %.not135 = icmp eq i8 %i.ah, 110
  br i1 %.not135, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ai = add nuw i64 %.0108160, 7                ; 2 uses
  %.not136 = icmp ult i64 %i.ai, %1
  br i1 %.not136, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !30
  %.not137 = icmp eq i8 %i.ak, 103
  %i.al = add nuw i64 %.0108160, 8                ; 2 uses
  %i.am = icmp ult i64 %i.al, %1
  %or.cond167 = select i1 %.not137, i1 %i.am, i1 false
  br i1 %or.cond167, label %.lr.ph163, label %.critedge

.lr.ph163:                                        ; preds = %bb.q, %bb.r
  %.0162 = phi i64 [ %i.at, %bb.r ], [ %i.al, %bb.q ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.0162
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !30  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !30
  %i.as = and i8 %i.ar, 8
  %.not138 = icmp eq i8 %i.as, 0
  br i1 %.not138, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph163
  %i.at = add i64 %.0162, 1                       ; 2 uses
  %exitcond176.not = icmp eq i64 %i.at, %1
  br i1 %exitcond176.not, label %.critedge, label %.lr.ph163, !llvm.loop !565

bb.s:                                             ; preds = %.lr.ph163
  %.not140 = icmp eq i8 %i.ao, 61
  %.1210 = add nuw i64 %.0162, 1                  ; 2 uses
  %i.au = icmp ult i64 %.1210, %1
  %or.cond214 = select i1 %.not140, i1 %i.au, i1 false
  br i1 %or.cond214, label %.lr.ph213, label %.critedge

.preheader:                                       ; preds = %.lr.ph213
  %.1 = add nuw i64 %.1212, 1                     ; 2 uses
  %i.av = icmp ult i64 %.1, %1
  br i1 %i.av, label %.lr.ph213, label %.critedge, !llvm.loop !566

.lr.ph213:                                        ; preds = %bb.s, %.preheader
  %.1212 = phi i64 [ %.1, %.preheader ], [ %.1210, %bb.s ] ; 3 uses
  %.1.in211 = phi i64 [ %.1212, %.preheader ], [ %.0162, %bb.s ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.1212
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !30  ; 3 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !30
  %i.bb = and i8 %i.ba, 8
  %.not141 = icmp eq i8 %i.bb, 0
  br i1 %.not141, label %bb.t, label %.preheader, !llvm.loop !566

bb.t:                                             ; preds = %.lr.ph213
  %i.bc = icmp eq i8 %i.ax, 34
  %i.bd = select i1 %i.bc, i32 34, i32 39         ; 2 uses
  %i.be = zext i8 %i.ax to i32
  %.not143 = icmp eq i32 %i.bd, %i.be
  br i1 %.not143, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bf = add nuw i64 %.1.in211, 2                ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store ptr %i.bg, ptr %2, align 8, !tbaa !41
  %i.bh = icmp ult i64 %i.bf, %1
  br i1 %i.bh, label %.lr.ph165, label %.critedge4

.lr.ph165:                                        ; preds = %bb.u, %bb.v
  %.2164 = phi i64 [ %i.bo, %bb.v ], [ %i.bf, %bb.u ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.2164
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !30
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !30
  %i.bn = and i8 %i.bm, 64
  %.not144 = icmp eq i8 %i.bn, 0
  br i1 %.not144, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph165
  %i.bo = add i64 %.2164, 1                       ; 2 uses
  %exitcond177.not = icmp eq i64 %i.bo, %1
  br i1 %exitcond177.not, label %.critedge4, label %.lr.ph165, !llvm.loop !567

.critedge4:                                       ; preds = %bb.v, %bb.u
  %.2.lcssa = phi i64 [ %i.bf, %bb.u ], [ %1, %bb.v ]
  %i.bp = sub i64 %.2.lcssa, %i.bf
  store i64 %i.bp, ptr %3, align 8, !tbaa !36
  br label %.critedge

bb.w:                                             ; preds = %.lr.ph165
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.2164
  %i.br = sub i64 %.2164, %i.bf
  store i64 %i.br, ptr %3, align 8, !tbaa !36
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !30
  %i.bt = zext i8 %i.bs to i32
  %.not146 = icmp eq i32 %i.bd, %i.bt
  br label %.critedge

bb.x:                                             ; preds = %.lr.ph, %bb.d
  %i.bu = add nuw i64 %i.n, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !568

.critedge:                                        ; preds = %bb.x, %.lr.ph, %bb.r, %.preheader, %bb.f, %bb.i, %bb.h, %bb.k, %bb.j, %bb.m, %bb.l, %bb.o, %bb.n, %bb.q, %bb.p, %bb.s, %bb.g, %bb.e, %bb.w, %.critedge4, %bb.t, %bb.a, %bb.b, %bb.c
  %.4 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ %.not146, %bb.w ], [ false, %bb.r ], [ false, %bb.t ], [ false, %.preheader ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %.critedge4 ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %bb.x ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE12parse_simpleEPcc(ptr nofree noundef captures(ret: address, provenance) %0, i8 noundef signext %1) unnamed_addr #26 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.1.be, %.backedge ] ; 9 uses
  %i.a = load i8, ptr %.1, align 1, !tbaa !30     ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !30
  %i.e = and i8 %i.d, 2
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.split.loop.exit31, !prof !169

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !30    ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !30
  %i.k = and i8 %i.j, 2
  %.not21 = icmp eq i8 %i.k, 0
  br i1 %.not21, label %bb.d, label %.split.loop.exit31.split.loop.exit47, !prof !169

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  %i.q = and i8 %i.p, 2
  %.not22 = icmp eq i8 %i.q, 0
  br i1 %.not22, label %bb.e, label %.split.loop.exit31.split.loop.exit44, !prof !169

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = and i8 %i.v, 2
  %.not23 = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not23, label %.backedge, label %.split.loop.exit31.split.loop.exit50, !prof !169

.backedge:                                        ; preds = %bb.e, %bb.g
  %.1.be = phi ptr [ %i.x, %bb.e ], [ %i.ae, %bb.g ]
  br label %bb.b, !llvm.loop !569

.split.loop.exit31.split.loop.exit44:             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit31

.split.loop.exit31.split.loop.exit47:             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit31

.split.loop.exit31.split.loop.exit50:             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 3
  br label %.split.loop.exit31

.split.loop.exit31:                               ; preds = %bb.b, %.split.loop.exit31.split.loop.exit50, %.split.loop.exit31.split.loop.exit47, %.split.loop.exit31.split.loop.exit44
  %i.ab = phi i8 [ %i.g, %.split.loop.exit31.split.loop.exit47 ], [ %i.m, %.split.loop.exit31.split.loop.exit44 ], [ %i.s, %.split.loop.exit31.split.loop.exit50 ], [ %i.a, %bb.b ] ; 2 uses
  %.2.ph = phi ptr [ %i.z, %.split.loop.exit31.split.loop.exit47 ], [ %i.y, %.split.loop.exit31.split.loop.exit44 ], [ %i.aa, %.split.loop.exit31.split.loop.exit50 ], [ %.1, %bb.b ] ; 3 uses
  %i.ac = icmp eq i8 %i.ab, %1
  br i1 %i.ac, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.f

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %.split.loop.exit31
  store i8 0, ptr %.2.ph, align 1, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.loopexit

bb.f:                                             ; preds = %.split.loop.exit31
  %.not24 = icmp eq i8 %i.ab, 0
  br i1 %.not24, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

.loopexit:                                        ; preds = %bb.f, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.019 = phi ptr [ %i.ad, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ null, %bb.f ]
  ret ptr %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE12parse_simpleEPcc(ptr noundef %0, i8 noundef signext %1) unnamed_addr #19 align 2 {
bb.a:
  %2 = alloca %"struct.pugi::impl::(anonymous namespace)::gap", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.1.be, %.backedge ] ; 9 uses
  %i.a = load i8, ptr %.1, align 1, !tbaa !30     ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !30
  %i.e = and i8 %i.d, 2
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.split.loop.exit33, !prof !169

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !30    ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !30
  %i.k = and i8 %i.j, 2
  %.not24 = icmp eq i8 %i.k, 0
  br i1 %.not24, label %bb.d, label %.split.loop.exit33.split.loop.exit50, !prof !169

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  %i.q = and i8 %i.p, 2
  %.not25 = icmp eq i8 %i.q, 0
  br i1 %.not25, label %bb.e, label %.split.loop.exit33.split.loop.exit47, !prof !169

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = and i8 %i.v, 2
  %.not26 = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not26, label %.backedge, label %.split.loop.exit33.split.loop.exit53, !prof !169

.backedge:                                        ; preds = %bb.e, %bb.i, %bb.j
  %.1.be = phi ptr [ %i.x, %bb.e ], [ %i.an, %bb.i ], [ %i.ao, %bb.j ]
  br label %bb.b, !llvm.loop !570

.split.loop.exit33.split.loop.exit47:             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit33

.split.loop.exit33.split.loop.exit50:             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit33

.split.loop.exit33.split.loop.exit53:             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 3
  br label %.split.loop.exit33

.split.loop.exit33:                               ; preds = %bb.b, %.split.loop.exit33.split.loop.exit53, %.split.loop.exit33.split.loop.exit50, %.split.loop.exit33.split.loop.exit47
  %i.ab = phi i8 [ %i.g, %.split.loop.exit33.split.loop.exit50 ], [ %i.m, %.split.loop.exit33.split.loop.exit47 ], [ %i.s, %.split.loop.exit33.split.loop.exit53 ], [ %i.a, %bb.b ] ; 2 uses
  %.2.ph = phi ptr [ %i.z, %.split.loop.exit33.split.loop.exit50 ], [ %i.y, %.split.loop.exit33.split.loop.exit47 ], [ %i.aa, %.split.loop.exit33.split.loop.exit53 ], [ %.1, %bb.b ] ; 6 uses
  %i.ac = icmp eq i8 %i.ab, %1
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.split.loop.exit33
  %i.ad = load ptr, ptr %2, align 8, !tbaa !571   ; 4 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !573
  %i.ag = sub i64 0, %i.af                        ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %.2.ph to i64
  %i.aj = ptrtoint ptr %i.ad to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds i8, ptr %.2.ph, i64 %i.ag
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.al, %bb.g ], [ %.2.ph, %bb.f ]
  store i8 0, ptr %.0.i, align 1, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.loopexit

bb.h:                                             ; preds = %.split.loop.exit33
end_hunk_1
