Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_112xpath_string6appendERKS2_PNS1_15xpath_allocatorE:bb.a
  %.not20 = icmp ne i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !205
  %i.g = trunc nuw i8 %i.f to i1                  ; 4 uses
  %or.cond = select i1 %.not20, i1 true, i1 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !205
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %or.cond26 = select i1 %or.cond, i1 true, i1 %i.j
  br i1 %or.cond26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !268
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator10reallocateEPvmm.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !274
  br label %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #50
  br label %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit

_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit: ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 4 uses
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !274
  br label %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit27

bb.h:                                             ; preds = %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #50
  br label %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit27

_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit27: ; preds = %bb.g, %bb.h
  %i.r = phi i64 [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  %i.s = add i64 %i.r, %i.n                       ; 4 uses
  %i.t = and i64 %i.n, -8
  %i.u = add i64 %i.t, 8                          ; 2 uses
  br i1 %i.g, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit27
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !224
  %.pre30.i = load ptr, ptr %2, align 8, !tbaa !223 ; 2 uses
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.pre30.i, i64 8
  %.pre32.i = load i64, ptr %.phi.trans.insert31.i, align 8, !tbaa !250
  %i.v = and i64 %i.s, -8
  %.pre33.i = add i64 %i.v, 8
  br label %bb.k

bb.i:                                             ; preds = %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit27
  %i.w = and i64 %i.s, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !224  ; 2 uses
  %i.aa = sub i64 %i.z, %i.u
  %i.ab = add i64 %i.aa, %i.x                     ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !223   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !250 ; 2 uses
  %.not24.i = icmp ugt i64 %i.ab, %i.ae
  br i1 %.not24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !224
  br label %bb.t

bb.k:                                             ; preds = %bb.i, %._crit_edge.i
  %i.af = phi ptr [ null, %._crit_edge.i ], [ %i.c, %bb.i ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre33.i, %._crit_edge.i ], [ %i.x, %bb.i ] ; 3 uses
  %i.ag = phi i64 [ %.pre32.i, %._crit_edge.i ], [ %i.ae, %bb.i ]
  %i.ah = phi ptr [ %.pre30.i, %._crit_edge.i ], [ %i.ac, %bb.i ]
  %i.ai = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = add i64 %i.ai, %.pre-phi.i              ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ak, %i.ag
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i

bb.m:                                             ; preds = %bb.k
  %i.an = add i64 %.pre-phi.i, 1024
  %i.ao = tail call i64 @llvm.umax.i64(i64 %i.an, i64 4096) ; 2 uses
  %i.ap = add i64 %i.ao, 16
  %i.aq = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ar = tail call noundef ptr %i.aq(i64 noundef %i.ap), !inline_history !51 ; 5 uses
  %.not23.i.i = icmp eq ptr %i.ar, null
  br i1 %.not23.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.at, null
  br i1 %.not24.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator10reallocateEPvmm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.at, align 1, !tbaa !251
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator10reallocateEPvmm.exit

bb.p:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %2, align 8, !tbaa !223
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !240
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ao, ptr %i.av, align 8, !tbaa !250
  store ptr %i.ar, ptr %2, align 8, !tbaa !223
  store i64 %.pre-phi.i, ptr %i.aj, align 8, !tbaa !224
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i: ; preds = %bb.p, %bb.l
  %.1.i.i = phi ptr [ %i.am, %bb.l ], [ %i.aw, %bb.p ] ; 5 uses
  br i1 %i.g, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i, ptr nonnull readonly align 1 %i.af, i64 %i.u, i1 false)
  %i.ax = load ptr, ptr %2, align 8, !tbaa !223
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !240 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = icmp eq ptr %i.az, %i.af
  br i1 %i.ba, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !240 ; 2 uses
  %.not26.i = icmp eq ptr %i.bb, null
  br i1 %.not26.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.bc(ptr noundef nonnull %i.ay), !inline_history !52
  %i.bd = load ptr, ptr %2, align 8, !tbaa !223
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !240
  br label %bb.t

bb.t:                                             ; preds = %bb.j, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i, %bb.r, %bb.s, %bb.q
  %.1.i.ph = phi ptr [ %.1.i.i, %bb.q ], [ %.1.i.i, %bb.s ], [ %.1.i.i, %bb.r ], [ %.1.i.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i ], [ %i.c, %bb.j ] ; 4 uses
  %i.be = load i8, ptr %i.e, align 8, !tbaa !273, !range !205, !noundef !123
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %0, align 8, !tbaa !268
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.ph, ptr align 1 %i.bg, i64 %i.n, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 %i.n
  %i.bi = load ptr, ptr %1, align 8, !tbaa !268
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.bi, i64 %i.r, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 %i.s
  store i8 0, ptr %i.bj, align 1, !tbaa !86
  store ptr %.1.i.ph, ptr %0, align 8, !tbaa !268
  store i8 1, ptr %i.e, align 8, !tbaa !273
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.bk, align 8, !tbaa !274
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator10reallocateEPvmm.exit

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator10reallocateEPvmm.exit: ; preds = %bb.o, %bb.n, %bb.v, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #38

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZN4pugi4impl12_GLOBAL__N_113namespace_uriERKNS_10xpath_nodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %2 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !119 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i, label %_ZNK4pugi10xpath_node4nodeEv.exit, label %_ZNK4pugi13xml_attribute4nameEv.exit.i

_ZNK4pugi13xml_attribute4nameEv.exit.i:           ; preds = %bb.a
  %.sroa.0.0.copyload.i7 = load ptr, ptr %0, align 8, !tbaa !115 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.c, null
  %i.d = select i1 %.not5.i.i, ptr @.str, ptr %i.c ; 3 uses
  %i.e = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.d, i32 noundef 58) #50 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.e, null             ; 3 uses
  %3 = select i1 %.not.i6.i, ptr null, ptr %i.d
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %4 = select i1 %.not.i6.i, i64 0, i64 %i.h
  %.not.i720.i = icmp eq ptr %.sroa.0.0.copyload.i7, null
  %or.cond.i = select i1 %.not.i6.i, i1 true, i1 %.not.i720.i
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i, %bb.b
  %.sroa.014.021.i = phi ptr [ %i.l, %bb.b ], [ %.sroa.0.0.copyload.i7, %_ZNK4pugi13xml_attribute4nameEv.exit.i ] ; 2 uses
  %i.i = call fastcc ptr @_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_(ptr nonnull %.sroa.014.021.i, ptr %3, i64 %4) ; 2 uses
  %.not.i8.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i, label %bb.b, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.k)
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i7.i = icmp eq ptr %i.l, null
  br i1 %.not.i7.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i, !llvm.loop !731

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.a
  %i.m = load i64, ptr %0, align 8, !tbaa !115    ; 2 uses
  %.not.i.i10 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i10, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %_ZNK4pugi8xml_node4nameEv.exit.i

_ZNK4pugi8xml_node4nameEv.exit.i:                 ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116  ; 2 uses
  %.not5.i.i11 = icmp eq ptr %i.p, null
  %i.q = select i1 %.not5.i.i11, ptr @.str, ptr %i.p ; 3 uses
  %i.r = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.q, i32 noundef 58) #50 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.r, null             ; 2 uses
  %i.s = select i1 %.not.i4.i, ptr null, ptr %i.q
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = select i1 %.not.i4.i, i64 0, i64 %i.v
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.c, %_ZNK4pugi8xml_node4nameEv.exit.i
  %.sroa.012.019.i = phi ptr [ %i.aa, %bb.c ], [ %i.n, %_ZNK4pugi8xml_node4nameEv.exit.i ] ; 2 uses
  %i.x = call fastcc ptr @_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_(ptr nonnull %.sroa.012.019.i, ptr %i.s, i64 %i.w) ; 2 uses
  %.not.i6.i13 = icmp eq ptr %i.x, null
  br i1 %.not.i6.i13, label %bb.c, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split

bb.c:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.z)
  %i.aa = load ptr, ptr %1, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not.i5.i = icmp eq ptr %i.aa, null
  br i1 %.not.i5.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i12, !llvm.loop !732

_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split: ; preds = %.lr.ph.i, %.lr.ph.i12
  %.lcssa.sink = phi ptr [ %i.x, %.lr.ph.i12 ], [ %i.i, %.lr.ph.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.lcssa.sink, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !85 ; 2 uses
  %.not5.i8.i = icmp eq ptr %i.ac, null
  %i.ad = select i1 %.not5.i8.i, ptr @.str, ptr %i.ac
  br label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit

_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit: ; preds = %bb.b, %bb.c, %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split, %_ZNK4pugi10xpath_node4nodeEv.exit, %_ZNK4pugi13xml_attribute4nameEv.exit.i
  %i.ae = phi ptr [ %i.ad, %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split ], [ @.str, %_ZNK4pugi13xml_attribute4nameEv.exit.i ], [ @.str, %_ZNK4pugi10xpath_node4nodeEv.exit ], [ @.str, %bb.c ], [ @.str, %bb.b ]
  ret ptr %i.ae
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 9), (16, 24)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = and i64 %i.d, -8                         ; 2 uses
  %i.f = add i64 %i.e, 8                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !224  ; 2 uses
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !223    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !250
  %.not.i.i = icmp ugt i64 %i.i, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  store i64 %i.i, ptr %i.g, align 8, !tbaa !224
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.e, 1032
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 4096) ; 2 uses
  %i.q = add i64 %i.p, 16
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.s = tail call noundef ptr %i.r(i64 noundef %i.q), !inline_history !733 ; 5 uses
  %.not23.i.i = icmp eq ptr %i.s, null
  br i1 %.not23.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !225  ; 2 uses
  %.not24.i.i = icmp eq ptr %i.u, null
  br i1 %.not24.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 1, !tbaa !251
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %i.v, ptr %i.s, align 8, !tbaa !240
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.p, ptr %i.w, align 8, !tbaa !250
  store ptr %i.s, ptr %3, align 8, !tbaa !223
  store i64 %i.f, ptr %i.g, align 8, !tbaa !224
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.1.i.i = phi ptr [ %i.n, %bb.c ], [ %i.x, %bb.g ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i, ptr readonly align 1 %1, i64 %i.d, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.d
  store i8 0, ptr %i.y, align 1, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.h
  %.1.i.i.sink = phi ptr [ %.1.i.i, %bb.h ], [ @.str, %bb.a ], [ @.str, %bb.f ], [ @.str, %bb.e ]
  %.sink18 = phi i8 [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.sink = phi i64 [ %i.d, %bb.h ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  store ptr %.1.i.i.sink, ptr %0, align 8, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink18, ptr %i.z, align 8, !tbaa !273
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.aa, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_124convert_number_to_stringEdPNS1_15xpath_allocatorE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, double noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile double %1, ptr %i.a, align 8, !tbaa !272
  %.0..0..0..0..0..0..i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %i.c = fcmp oeq double %.0..0..0..0..0..0..i, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0..0..0.1.i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %.0..0..0..0..0..0.2.i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %i.d = fcmp une double %.0..0..0..0..0..0.1.i, %.0..0..0..0..0..0.2.i
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0..0..0..0..0..0.3.i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %i.e = fmul double %.0..0..0..0..0..0.3.i, 2.000000e+00
  %.0..0..0..0..0..0.4.i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %i.f = fcmp oeq double %i.e, %.0..0..0..0..0..0.4.i
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ogt double %1, 0.000000e+00
  %i.h = select i1 %i.g, ptr @.str.104, ptr @.str.105
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.0.i.ph = phi ptr [ %i.h, %bb.d ], [ @.str.102, %bb.a ], [ @.str.103, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.0.i.ph, ptr %0, align 8, !tbaa !268, !alias.scope !741
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !273, !alias.scope !741
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !274, !alias.scope !741
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 noundef 32, ptr noundef nonnull @.str.106, i32 noundef 15, double noundef %1) #49 ; 0 uses
  %i.l = call noundef ptr @strchr(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i32 noundef 101) #50 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !86
  %i.p = load i8, ptr %i.n, align 1, !tbaa !86    ; 2 uses
  %.not25.i = icmp eq i8 %i.p, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.q = phi i8 [ %i.w, %.lr.ph.i ], [ %i.p, %bb.f ]
  %.027.i = phi i32 [ %i.v, %.lr.ph.i ], [ 0, %bb.f ]
  %.02326.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.n, %bb.f ]
  %i.r = mul nsw i32 %.027.i, 10
  %i.s = getelementptr inbounds nuw i8, ptr %.02326.i, i64 1 ; 2 uses
  %i.t = sext i8 %i.q to i32
  %i.u = add nsw i32 %i.t, -48
  %i.v = add i32 %i.u, %i.r                       ; 2 uses
  %i.w = load i8, ptr %i.s, align 1, !tbaa !86    ; 2 uses
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !736
end_hunk_0
