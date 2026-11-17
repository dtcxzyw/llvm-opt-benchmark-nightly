Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_124convert_number_to_stringEdPNS1_15xpath_allocatorE:bb.a
  %i.ax = add i64 %i.ao, 1024
  %i.ay = call i64 @llvm.umax.i64(i64 %i.ax, i64 4096) ; 2 uses
  %i.az = add i64 %i.ay, 16
  %i.ba = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.bb = call noundef ptr %i.ba(i64 noundef %i.az), !inline_history !53 ; 5 uses
  %.not23.i = icmp eq ptr %i.bb, null
  br i1 %.not23.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !225 ; 2 uses
  %.not24.i = icmp eq ptr %i.bd, null
  br i1 %.not24.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bd, align 1, !tbaa !251
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %2, align 8, !tbaa !223
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !240
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.ay, ptr %i.bf, align 8, !tbaa !250
  store ptr %i.bb, ptr %2, align 8, !tbaa !223
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !224
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit: ; preds = %bb.l, %bb.h
  %.1.i = phi ptr [ %i.aw, %bb.h ], [ %i.bg, %bb.l ] ; 5 uses
  %i.bh = fcmp olt double %1, 0.000000e+00
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 45, ptr %.1.i, align 1, !tbaa !86
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %.0 = phi ptr [ %i.bi, %bb.m ], [ %.1.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit ] ; 5 uses
  %i.bj = icmp slt i32 %i.ai, 0
  br i1 %i.bj, label %.loopexit46, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i32 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.149.prol = phi ptr [ %i.bl, %.lr.ph.prol ], [ %.0, %.lr.ph.preheader ] ; 3 uses
  %.03248.prol = phi i32 [ %i.bm, %.lr.ph.prol ], [ %i.aj, %.lr.ph.preheader ]
  %.03547.prol = phi ptr [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ], [ %.idx.i.sroa.sel.sroa.sel, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bk = load i8, ptr %.03547.prol, align 1, !tbaa !86 ; 2 uses
  %.not20.not.prol.not = icmp ne i8 %i.bk, 0      ; 2 uses
  %spec.select.idx.sroa.sel.idx.prol.sroa.sel.idx = zext i1 %.not20.not.prol.not to i64
  %spec.select.idx.sroa.sel.idx.prol.sroa.sel = getelementptr inbounds nuw i8, ptr %.03547.prol, i64 %spec.select.idx.sroa.sel.idx.prol.sroa.sel.idx ; 3 uses
  %spec.select44.prol = select i1 %.not20.not.prol.not, i8 %i.bk, i8 48
  %i.bl = getelementptr inbounds nuw i8, ptr %.149.prol, i64 1 ; 3 uses
  store i8 %spec.select44.prol, ptr %.149.prol, align 1, !tbaa !86
  %i.bm = add nsw i32 %.03248.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !731

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.149.unr = phi ptr [ %.0, %.lr.ph.preheader ], [ %i.bl, %.lr.ph.prol ]
  %.03248.unr = phi i32 [ %i.aj, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %.03547.unr = phi ptr [ %.idx.i.sroa.sel.sroa.sel, %.lr.ph.preheader ], [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ]
  %.149.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.149.prol, %.lr.ph.prol ]
  %spec.select.idx.sroa.sel.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ]
  %.lcssa97.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bl, %.lr.ph.prol ]
  %i.bn = icmp ult i32 %i.ai, 3
  br i1 %i.bn, label %.loopexit46.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.149 = phi ptr [ %i.bv, %.lr.ph ], [ %.149.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.03248 = phi i32 [ %i.bw, %.lr.ph ], [ %.03248.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.03547 = phi ptr [ %spec.select.idx.sroa.sel.3, %.lr.ph ], [ %.03547.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bo = load i8, ptr %.03547, align 1, !tbaa !86 ; 2 uses
  %.not20.not.not = icmp ne i8 %i.bo, 0           ; 2 uses
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not20.not.not to i64
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.03547, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %spec.select44 = select i1 %.not20.not.not, i8 %i.bo, i8 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.149, i64 1
  store i8 %spec.select44, ptr %.149, align 1, !tbaa !86
  %i.bq = load i8, ptr %spec.select.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !86 ; 2 uses
  %.not20.not.1 = icmp ne i8 %i.bq, 0             ; 2 uses
  %spec.select.idx.sroa.sel.idx.1 = zext i1 %.not20.not.1 to i64
  %spec.select.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.idx.sroa.sel, i64 %spec.select.idx.sroa.sel.idx.1 ; 2 uses
  %spec.select44.1 = select i1 %.not20.not.1, i8 %i.bq, i8 48
  %i.br = getelementptr inbounds nuw i8, ptr %.149, i64 2
  store i8 %spec.select44.1, ptr %i.bp, align 1, !tbaa !86
  %i.bs = load i8, ptr %spec.select.idx.sroa.sel.1, align 1, !tbaa !86 ; 2 uses
  %.not20.not.2.not = icmp ne i8 %i.bs, 0         ; 2 uses
  %spec.select.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %.not20.not.2.not to i64
  %spec.select.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.1, i64 %spec.select.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %spec.select44.2 = select i1 %.not20.not.2.not, i8 %i.bs, i8 48
  %i.bt = getelementptr inbounds nuw i8, ptr %.149, i64 3
  store i8 %spec.select44.2, ptr %i.br, align 1, !tbaa !86
  %i.bu = load i8, ptr %spec.select.idx.sroa.sel.idx.2.sroa.sel, align 1, !tbaa !86 ; 2 uses
  %.not20.not.3 = icmp ne i8 %i.bu, 0             ; 2 uses
  %spec.select.idx.sroa.sel.idx.3 = zext i1 %.not20.not.3 to i64
  %spec.select.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.idx.2.sroa.sel, i64 %spec.select.idx.sroa.sel.idx.3 ; 2 uses
  %spec.select44.3 = select i1 %.not20.not.3, i8 %i.bu, i8 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.149, i64 4 ; 2 uses
  store i8 %spec.select44.3, ptr %i.bt, align 1, !tbaa !86
  %i.bw = add nsw i32 %.03248, -4
  %i.bx = icmp sgt i32 %.03248, 4
  br i1 %i.bx, label %.lr.ph, label %.loopexit46.thread.unr-lcssa, !llvm.loop !732

.loopexit46:                                      ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  store i8 48, ptr %.0, align 1, !tbaa !86
  %i.bz = load i8, ptr %.idx.i.sroa.sel.sroa.sel, align 1, !tbaa !86
  %.not21 = icmp eq i8 %i.bz, 0
  br i1 %.not21, label %.loopexit, label %bb.o

.loopexit46.thread.unr-lcssa:                     ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.149, i64 3
  br label %.loopexit46.thread

.loopexit46.thread:                               ; preds = %.lr.ph.prol.loopexit, %.loopexit46.thread.unr-lcssa
  %.149.lcssa = phi ptr [ %.149.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ca, %.loopexit46.thread.unr-lcssa ]
  %spec.select.idx.sroa.sel.lcssa = phi ptr [ %spec.select.idx.sroa.sel.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.idx.sroa.sel.3, %.loopexit46.thread.unr-lcssa ] ; 2 uses
  %.lcssa97 = phi ptr [ %.lcssa97.unr, %.lr.ph.prol.loopexit ], [ %i.bv, %.loopexit46.thread.unr-lcssa ] ; 2 uses
  %i.cb = load i8, ptr %spec.select.idx.sroa.sel.lcssa, align 1, !tbaa !86
  %.not2176 = icmp eq i8 %i.cb, 0
  br i1 %.not2176, label %.loopexit, label %.thread

.thread:                                          ; preds = %.loopexit46.thread
  store i8 46, ptr %.lcssa97, align 1, !tbaa !86
  %.35283 = getelementptr i8, ptr %.149.lcssa, i64 2
  br label %.preheader

bb.o:                                             ; preds = %.loopexit46
  store i8 46, ptr %i.by, align 1, !tbaa !86
  %.352 = getelementptr i8, ptr %.0, i64 2        ; 2 uses
  %.not = icmp eq i32 %i.ai, -1
  br i1 %.not, label %.preheader, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %bb.o
  %i.cc = sub nuw nsw i32 -2, %i.ai
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.352, i8 48, i64 %i.ce, i1 false), !tbaa !86
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.cd
  %scevgep = getelementptr i8, ptr %i.cf, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.thread, %.lr.ph55.preheader, %bb.o
  %.2377784 = phi ptr [ %.idx.i.sroa.sel.sroa.sel, %bb.o ], [ %.idx.i.sroa.sel.sroa.sel, %.lr.ph55.preheader ], [ %spec.select.idx.sroa.sel.lcssa, %.thread ] ; 2 uses
  %.3.lcssa = phi ptr [ %.352, %bb.o ], [ %scevgep, %.lr.ph55.preheader ], [ %.35283, %.thread ] ; 2 uses
  %i.cg = load i8, ptr %.2377784, align 1, !tbaa !86 ; 2 uses
  %.not2257 = icmp eq i8 %i.cg, 0
  br i1 %.not2257, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %i.ch = phi i8 [ %i.ck, %.lr.ph60 ], [ %i.cg, %.preheader ]
  %.459 = phi ptr [ %i.cj, %.lr.ph60 ], [ %.3.lcssa, %.preheader ] ; 2 uses
  %.33858 = phi ptr [ %i.ci, %.lr.ph60 ], [ %.2377784, %.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.33858, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.459, i64 1 ; 2 uses
  store i8 %i.ch, ptr %.459, align 1, !tbaa !86
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !86  ; 2 uses
  %.not22 = icmp eq i8 %i.ck, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph60, !llvm.loop !733

.loopexit:                                        ; preds = %.lr.ph60, %.loopexit46.thread, %.preheader, %.loopexit46
  %.5 = phi ptr [ %i.by, %.loopexit46 ], [ %.3.lcssa, %.preheader ], [ %.lcssa97, %.loopexit46.thread ], [ %i.cj, %.lr.ph60 ] ; 2 uses
  store i8 0, ptr %.5, align 1, !tbaa !86
  %i.cl = ptrtoint ptr %.5 to i64
  %i.cm = ptrtoint ptr %.1.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.k, %.loopexit
  %.1.i.sink = phi ptr [ %.1.i, %.loopexit ], [ @.str, %bb.k ], [ @.str, %bb.j ]
  %.sink88 = phi i8 [ 1, %.loopexit ], [ 0, %bb.k ], [ 0, %bb.j ]
  %.sink = phi i64 [ %i.cn, %.loopexit ], [ 0, %bb.k ], [ 0, %bb.j ]
  store ptr %.1.i.sink, ptr %0, align 8, !tbaa !268
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink88, ptr %i.co, align 8, !tbaa !273
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.cp, align 8, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define internal fastcc ptr @_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_(ptr nofree readonly captures(address_is_null) %.0.val, ptr %0, i64 %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 12 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 10 uses
  %.fr13 = freeze i64 %1                          ; 3 uses
  %.fr = freeze ptr %0                            ; 2 uses
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %.loopexit.sink.split, label %_ZNK4pugi8xml_node15first_attributeEv.exit

_ZNK4pugi8xml_node15first_attributeEv.exit:       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.b)
  %i.c = load ptr, ptr %3, align 8                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.c, ptr %4, align 8
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %.loopexit.sink.split, label %_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph

_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph:     ; preds = %_ZNK4pugi8xml_node15first_attributeEv.exit
  %.not.i5 = icmp eq ptr %.fr, null
  br i1 %.not.i5, label %_ZNK4pugi13xml_attribute4nameEv.exit.i.us.preheader, label %_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph.split

_ZNK4pugi13xml_attribute4nameEv.exit.i.us.preheader: ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph
  %.promoted35 = load ptr, ptr %4, align 1
  br label %_ZNK4pugi13xml_attribute4nameEv.exit.i.us

_ZNK4pugi13xml_attribute4nameEv.exit.i.us:        ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i.us.preheader, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us
  %5 = phi ptr [ %i.z, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us ], [ %.promoted35, %_ZNK4pugi13xml_attribute4nameEv.exit.i.us.preheader ]
  %storemerge3.us = phi ptr [ %i.z, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us ], [ %i.c, %_ZNK4pugi13xml_attribute4nameEv.exit.i.us.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %storemerge3.us, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not5.i.i.us = icmp eq ptr %i.e, null
  %i.f = select i1 %.not5.i.i.us, ptr @.str, ptr %i.e ; 6 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !86
  %i.h = icmp eq i8 %i.g, 120
  br i1 %i.h, label %.lr.ph.i.1.i.us, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us

.lr.ph.i.1.i.us:                                  ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i.us
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !86
  %i.k = icmp eq i8 %i.j, 109
  br i1 %i.k, label %.lr.ph.i.2.i.us, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us

.lr.ph.i.2.i.us:                                  ; preds = %.lr.ph.i.1.i.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !86
  %i.n = icmp eq i8 %i.m, 108
  br i1 %i.n, label %.lr.ph.i.3.i.us, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us

.lr.ph.i.3.i.us:                                  ; preds = %.lr.ph.i.2.i.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !86
  %i.q = icmp eq i8 %i.p, 110
  br i1 %i.q, label %.lr.ph.i.4.i.us, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us

.lr.ph.i.4.i.us:                                  ; preds = %.lr.ph.i.3.i.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !86
  %i.t = icmp eq i8 %i.s, 115
  br i1 %i.t, label %_ZNK4pugi4impl12_GLOBAL__N_123namespace_uri_predicateclENS_13xml_attributeE.exit.us, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us

_ZNK4pugi4impl12_GLOBAL__N_123namespace_uri_predicateclENS_13xml_attributeE.exit.us: ; preds = %.lr.ph.i.4.i.us
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !86
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.loopexit.loopexit, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us

_ZNK4pugi13xml_attribute14next_attributeEv.exit.us: ; preds = %_ZNK4pugi4impl12_GLOBAL__N_123namespace_uri_predicateclENS_13xml_attributeE.exit.us, %.lr.ph.i.4.i.us, %.lr.ph.i.3.i.us, %.lr.ph.i.2.i.us, %.lr.ph.i.1.i.us, %_ZNK4pugi13xml_attribute4nameEv.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge3.us, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.y)
  %i.z = load ptr, ptr %2, align 8                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i4.us = icmp eq ptr %i.z, null
  br i1 %.not.i4.us, label %.loopexit.sink.split.loopexit, label %_ZNK4pugi13xml_attribute4nameEv.exit.i.us, !llvm.loop !736

_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph.split: ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph
  %.not14.i.i = icmp eq i64 %.fr13, 0
  br i1 %.not14.i.i, label %_ZNK4pugi13xml_attribute4nameEv.exit.i.us4.preheader, label %_ZNK4pugi13xml_attribute4nameEv.exit.i

_ZNK4pugi13xml_attribute4nameEv.exit.i.us4.preheader: ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph.split
  %.promoted = load ptr, ptr %4, align 1
  br label %_ZNK4pugi13xml_attribute4nameEv.exit.i.us4

_ZNK4pugi13xml_attribute4nameEv.exit.i.us4:       ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i.us4.preheader, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11
  %6 = phi ptr [ %i.az, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11 ], [ %.promoted, %_ZNK4pugi13xml_attribute4nameEv.exit.i.us4.preheader ]
  %storemerge3.us5 = phi ptr [ %i.az, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11 ], [ %i.c, %_ZNK4pugi13xml_attribute4nameEv.exit.i.us4.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge3.us5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87 ; 2 uses
  %.not5.i.i.us6 = icmp eq ptr %i.ab, null
  %i.ac = select i1 %.not5.i.i.us6, ptr @.str, ptr %i.ab ; 7 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !86
  %i.ae = icmp eq i8 %i.ad, 120
  br i1 %i.ae, label %.lr.ph.i.1.i.us7, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11

.lr.ph.i.1.i.us7:                                 ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i.us4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !86
  %i.ah = icmp eq i8 %i.ag, 109
  br i1 %i.ah, label %.lr.ph.i.2.i.us8, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11

.lr.ph.i.2.i.us8:                                 ; preds = %.lr.ph.i.1.i.us7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !86
  %i.ak = icmp eq i8 %i.aj, 108
  br i1 %i.ak, label %.lr.ph.i.3.i.us9, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11

.lr.ph.i.3.i.us9:                                 ; preds = %.lr.ph.i.2.i.us8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !86
  %i.an = icmp eq i8 %i.am, 110
  br i1 %i.an, label %.lr.ph.i.4.i.us10, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11

.lr.ph.i.4.i.us10:                                ; preds = %.lr.ph.i.3.i.us9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !86
  %i.aq = icmp eq i8 %i.ap, 115
  br i1 %i.aq, label %bb.b, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11

bb.b:                                             ; preds = %.lr.ph.i.4.i.us10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !86
  %i.at = icmp eq i8 %i.as, 58
  br i1 %i.at, label %._crit_edge.i.i.us, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11

._crit_edge.i.i.us:                               ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.av = load i8, ptr %i.au, align 1, !tbaa !86
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %.loopexit.loopexit30, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11

_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11: ; preds = %._crit_edge.i.i.us, %bb.b, %.lr.ph.i.4.i.us10, %.lr.ph.i.3.i.us9, %.lr.ph.i.2.i.us8, %.lr.ph.i.1.i.us7, %_ZNK4pugi13xml_attribute4nameEv.exit.i.us4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge3.us5, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !83
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ay)
  %i.az = load ptr, ptr %2, align 8               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i4.us12 = icmp eq ptr %i.az, null
  br i1 %.not.i4.us12, label %.loopexit.sink.split.loopexit31, label %_ZNK4pugi13xml_attribute4nameEv.exit.i.us4, !llvm.loop !736

_ZNK4pugi13xml_attribute4nameEv.exit.i:           ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph.split, %_ZNK4pugi13xml_attribute14next_attributeEv.exit
  %storemerge3 = phi ptr [ %i.cf, %_ZNK4pugi13xml_attribute14next_attributeEv.exit ], [ %i.c, %_ZNK4pugi13xml_attribute4nameEv.exit.i.lr.ph.split ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge3, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bb, null
  %i.bc = select i1 %.not5.i.i, ptr @.str, ptr %i.bb ; 7 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !86
  %i.be = icmp eq i8 %i.bd, 120
  br i1 %i.be, label %.lr.ph.i.1.i, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

.lr.ph.i.1.i:                                     ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !86
  %i.bh = icmp eq i8 %i.bg, 109
  br i1 %i.bh, label %.lr.ph.i.2.i, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !86
  %i.bk = icmp eq i8 %i.bj, 108
  br i1 %i.bk, label %.lr.ph.i.3.i, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.2.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !86
  %i.bn = icmp eq i8 %i.bm, 110
  br i1 %i.bn, label %.lr.ph.i.4.i, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

.lr.ph.i.4.i:                                     ; preds = %.lr.ph.i.3.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !86
  %i.bq = icmp eq i8 %i.bp, 115
  br i1 %i.bq, label %bb.c, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

bb.c:                                             ; preds = %.lr.ph.i.4.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !86
  %i.bt = icmp eq i8 %i.bs, 58
  br i1 %i.bt, label %.lr.ph.i8.i.preheader, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

.lr.ph.i8.i.preheader:                            ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 6 ; 2 uses
  br label %.lr.ph.i8.i

bb.d:                                             ; preds = %.lr.ph.i8.i
  %i.bv = add nuw i64 %.01013.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bv, %.fr13
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i8.i, !llvm.loop !20

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.preheader, %bb.d
  %.01013.i.i = phi i64 [ %i.bv, %bb.d ], [ 0, %.lr.ph.i8.i.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.01013.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !86
  %i.by = getelementptr inbounds nuw i8, ptr %.fr, i64 %.01013.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !86
  %.not.i9.i = icmp eq i8 %i.bx, %i.bz
  br i1 %.not.i9.i, label %bb.d, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

._crit_edge.i.i.loopexit:                         ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.fr13
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !86
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %.loopexit, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

_ZNK4pugi13xml_attribute14next_attributeEv.exit:  ; preds = %.lr.ph.i8.i, %.lr.ph.i.1.i, %.lr.ph.i.2.i, %.lr.ph.i.3.i, %.lr.ph.i.4.i, %bb.c, %_ZNK4pugi13xml_attribute4nameEv.exit.i, %._crit_edge.i.i.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge3, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !83
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ce)
  %i.cf = load ptr, ptr %2, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.cf, ptr %4, align 8
  %.not.i4 = icmp eq ptr %i.cf, null
  br i1 %.not.i4, label %.loopexit.sink.split, label %_ZNK4pugi13xml_attribute4nameEv.exit.i, !llvm.loop !736

.loopexit.sink.split.loopexit:                    ; preds = %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us
  store ptr %i.z, ptr %4, align 1
  br label %.loopexit.sink.split

.loopexit.sink.split.loopexit31:                  ; preds = %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11
  store ptr %i.az, ptr %4, align 1
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZNK4pugi13xml_attribute14next_attributeEv.exit, %.loopexit.sink.split.loopexit31, %.loopexit.sink.split.loopexit, %_ZNK4pugi8xml_node15first_attributeEv.exit, %bb.a
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZNK4pugi4impl12_GLOBAL__N_123namespace_uri_predicateclENS_13xml_attributeE.exit.us
  store ptr %5, ptr %4, align 1
  br label %.loopexit

.loopexit.loopexit30:                             ; preds = %._crit_edge.i.i.us
  store ptr %6, ptr %4, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i.i.loopexit, %.loopexit.loopexit30, %.loopexit.loopexit, %.loopexit.sink.split
  %i.cg = load ptr, ptr %4, align 8
  ret ptr %i.cg
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw6appendEPKNS_10xpath_nodeES5_PNS1_15xpath_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !270  ; 5 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !277
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 4
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = ashr exact i64 %i.q, 4
  %i.s = add nsw i64 %i.i, %i.r                   ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.n
  br i1 %i.t, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.u = shl i64 %i.s, 4                          ; 4 uses
  %i.v = add i64 %i.m, 7
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %.not.i = icmp eq ptr %i.e, null                ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !224 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre30.i = load ptr, ptr %3, align 8, !tbaa !223 ; 2 uses
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.pre30.i, i64 8
  %.pre32.i = load i64, ptr %.phi.trans.insert31.i, align 8, !tbaa !250
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = sub i64 %.pre.i, %i.w
  %i.y = add i64 %i.x, %i.u                       ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !223    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !250 ; 2 uses
  %.not24.i = icmp ugt i64 %i.y, %i.ab
  br i1 %.not24.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.y, ptr %.phi.trans.insert.i, align 8, !tbaa !224
  br label %bb.o

bb.f:                                             ; preds = %bb.d, %._crit_edge.i
  %i.ac = phi i64 [ %.pre32.i, %._crit_edge.i ], [ %i.ab, %bb.d ]
  %i.ad = phi ptr [ %.pre30.i, %._crit_edge.i ], [ %i.z, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = add i64 %.pre.i, %i.u                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.ac
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pre.i
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add i64 %i.u, 1024
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 4096) ; 2 uses
  %i.ak = add i64 %i.aj, 16
  %i.al = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.am = tail call noundef ptr %i.al(i64 noundef %i.ak), !inline_history !51 ; 5 uses
  %.not23.i.i = icmp eq ptr %i.am, null
  br i1 %.not23.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.ao, null
  br i1 %.not24.i.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ao, align 1, !tbaa !251
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !250
  store ptr %i.am, ptr %3, align 8, !tbaa !223
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i: ; preds = %bb.k, %bb.g
  %.1.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.ar, %bb.k ] ; 5 uses
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i, ptr nonnull readonly align 1 %i.e, i64 %i.w, i1 false)
  %i.as = load ptr, ptr %3, align 8, !tbaa !223
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !240 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = icmp eq ptr %i.au, %i.e
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !240 ; 2 uses
  %.not26.i = icmp eq ptr %i.aw, null
  br i1 %.not26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.ax(ptr noundef nonnull %i.at), !inline_history !52
  %i.ay = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !240
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i, %bb.m, %bb.n, %bb.l
  %.1.i.ph = phi ptr [ %.1.i.i, %bb.l ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %.1.i.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i ], [ %i.e, %bb.e ] ; 2 uses
  store ptr %.1.i.ph, ptr %i.d, align 8, !tbaa !270
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 %i.h ; 3 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !271
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.q
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !277
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  %i.bb = phi ptr [ %i.az, %bb.o ], [ %i.c, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bb, ptr align 8 %1, i64 %i.q, i1 false)
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.q
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !271
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.p, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw17remove_duplicatesEPNS1_15xpath_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %3 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !275
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !270
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre53 = load ptr, ptr %.phi.trans.insert52, align 8, !tbaa !271 ; 2 uses
  %.pre54 = ptrtoint ptr %.pre53 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !270  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 32
  br i1 %i.j, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store ptr %1, ptr %3, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !266
  %i.l = lshr exact i64 %i.i, 4
  %i.m = lshr i64 %i.i, 5
  %i.n = add nuw nsw i64 %i.l, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i64 [ 1, %bb.c ], [ %i.p, %bb.d ]   ; 4 uses
  %i.o = icmp ult i64 %.029, %i.n
  %i.p = shl i64 %.029, 1
  br i1 %i.o, label %bb.d, label %bb.e, !llvm.loop !737

bb.e:                                             ; preds = %bb.d
  %i.q = shl i64 %.029, 3                         ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !224  ; 2 uses
  %i.t = add i64 %i.s, %i.q                       ; 2 uses
end_hunk_0
