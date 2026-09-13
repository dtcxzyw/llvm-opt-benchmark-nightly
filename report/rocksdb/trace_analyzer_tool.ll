Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/trace_analyzer_tool?download=true
inline.NumInlined: 5310
inline.NumDeleted: 2090
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7rocksdb13TraceAnalyzer6HandleERKNS_28IteratorSeekQueryTraceRecordEPSt10unique_ptrINS_17TraceRecordResultESt14default_deleteIS5_EE:bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.m = load ptr, ptr %2, align 8, !tbaa !157
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(312) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.q = load ptr, ptr %2, align 8, !tbaa !157
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call { ptr, i64 } %i.s(ptr noundef nonnull align 8 dereferenceable(312) %2) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  store ptr %i.u, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = extractvalue { ptr, i64 } %i.t, 1
  store i64 %i.w, ptr %i.v, align 8
  call void @_ZN7rocksdb13TraceAnalyzer20OutputAnalysisResultENS_18TraceOperationTypeEmjRKNS_5SliceEm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1476) %1, i32 noundef %.8, i64 noundef %i.l, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13TraceAnalyzer6HandleERKNS_24MultiGetQueryTraceRecordEPSt10unique_ptrINS_17TraceRecordResultESt14default_deleteIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1476) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree readnone captures(none) %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.114", align 16  ; 18 uses
  %5 = alloca %"class.std::vector.273", align 16  ; 17 uses
  %6 = alloca %"class.std::vector.178", align 16  ; 12 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::vector.114", align 16  ; 3 uses
  %8 = alloca %"class.std::vector.273", align 16  ; 3 uses
  %9 = alloca %"class.std::vector.178", align 16  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !383
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !383
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.e = load ptr, ptr %2, align 8, !tbaa !157
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.114") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.h = load ptr, ptr %2, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.273") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !281  ; 2 uses
  %i.m = load ptr, ptr %4, align 16, !tbaa !215   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !390
  %i.t = load ptr, ptr %5, align 16, !tbaa !388
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = icmp ugt i64 %i.q, %i.x
  br i1 %i.y, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %puts7 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !390
  %i.aa = load ptr, ptr %5, align 16, !tbaa !388
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 4 uses
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !281 ; 6 uses
  %i.ag = load ptr, ptr %4, align 16, !tbaa !215  ; 9 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 7 uses
  %i.al = icmp ugt i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.am = sub nuw nsw i64 %i.ae, %i.ak            ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !216
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.ah
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = icmp ult i64 %i.ak, 2305843009213693952
  call void @llvm.assume(i1 %i.as)
  %i.at = xor i64 %i.ak, 2305843009213693951      ; 2 uses
  %i.au = icmp ule i64 %i.ar, %i.at
  call void @llvm.assume(i1 %i.au)
  %.not28.i = icmp ult i64 %i.ar, %i.am
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.af, align 4, !tbaa !58
  %i.av = getelementptr i8, ptr %i.af, i64 4      ; 3 uses
  %i.aw = add nsw i64 %i.am, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.e
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.aw, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.ay, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.av, %bb.e ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %i.k, align 8, !tbaa !281
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.f:                                             ; preds = %bb.d
  %i.az = icmp ult i64 %i.at, %i.am
  br i1 %i.az, label %.invoke, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.f
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.am)
  %i.ba = add nuw nsw i64 %.sroa.speculated.i.i, %i.ak
  %i.bb = call i64 @llvm.umin.i64(i64 %i.ba, i64 2305843009213693951) ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #30
          to label %.noexc35 unwind label %bb.l   ; 5 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.aj ; 3 uses
  store i32 0, ptr %i.be, align 4, !tbaa !58
  %i.bf = add nsw i64 %i.am, -1                   ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc35
  %i.bh = getelementptr i8, ptr %i.be, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bh, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !58
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc35
  %i.bi = icmp sgt i64 %i.aj, 0
  br i1 %i.bi, label %bb.g, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.g, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.ag, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.bj = load ptr, ptr %i.an, align 16, !tbaa !216
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bl) #27
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.bd, ptr %4, align 16, !tbaa !215
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.am ; 2 uses
  store ptr %i.bm, ptr %i.k, align 8, !tbaa !281
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bn, ptr %i.an, align 16, !tbaa !216
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.i:                                             ; preds = %bb.c
  %i.bo = icmp ult i64 %i.ae, %i.ak
  br i1 %i.bo, label %bb.j, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, %i.bp
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.bp, ptr %i.k, align 8, !tbaa !281
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.k:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit31

bb.l:                                             ; preds = %.invoke, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit27

bb.m:                                             ; preds = %bb.b
  %i.bs = icmp ult i64 %i.q, %i.x
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !281 ; 5 uses
  %i.bu = load ptr, ptr %4, align 16, !tbaa !215  ; 5 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2                 ; 4 uses
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !390 ; 12 uses
  %i.ca = load ptr, ptr %5, align 16, !tbaa !388  ; 6 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = ashr exact i64 %i.cd, 4                 ; 7 uses
  %i.cf = icmp ugt i64 %i.by, %i.ce
  br i1 %i.cf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %10 = sub nuw nsw i64 %i.by, %i.ce              ; 24 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !389
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.cb
  %i.ck = ashr exact i64 %i.cj, 4                 ; 2 uses
  %i.cl = icmp ult i64 %i.ce, 576460752303423488
  call void @llvm.assume(i1 %i.cl)
  %i.cm = xor i64 %i.ce, 576460752303423487       ; 2 uses
  %i.cn = icmp ule i64 %i.ck, %i.cm
  call void @llvm.assume(i1 %i.cn)
  %.not28.i37 = icmp ult i64 %i.ck, %10
  br i1 %.not28.i37, label %bb.p, label %iter.check

iter.check:                                       ; preds = %bb.o
  %min.iters.check = icmp ult i64 %10, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %10, 16
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.co = and i64 %10, 12
  %n.vec = and i64 %10, -16                       ; 4 uses
  %i.cp = shl i64 %n.vec, 4
  %i.cq = getelementptr i8, ptr %i.bz, i64 %i.cp  ; 2 uses
  %i.cr = and i64 %10, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 4                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cs
  %i.ct = getelementptr i8, ptr %i.bz, i64 %i.cs
  %next.gep79.a = getelementptr i8, ptr %i.ct, i64 64
  %i.cu = getelementptr i8, ptr %i.bz, i64 %i.cs
  %next.gep80.a = getelementptr i8, ptr %i.cu, i64 128
  %i.cv = getelementptr i8, ptr %i.bz, i64 %i.cs
  %next.gep81 = getelementptr i8, ptr %i.cv, i64 192
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep, align 8, !tbaa !44
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep79.a, align 8, !tbaa !44
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep80.a, align 8, !tbaa !44
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep81, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %10, -4                      ; 3 uses
  %i.cx = shl i64 %n.vec83, 4
  %i.cy = getelementptr i8, ptr %i.bz, i64 %i.cx  ; 2 uses
  %i.cz = and i64 %10, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %i.da = shl i64 %index84, 4
  %next.gep85 = getelementptr i8, ptr %i.bz, i64 %i.da
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep85, align 8, !tbaa !44
  %index.next86 = add nuw i64 %index84, 4         ; 2 uses
  %i.db = icmp eq i64 %index.next86, %n.vec83
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !746

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %10, %n.vec83
  br i1 %cmp.n87, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.i.i.i.ph = phi ptr [ %i.bz, %iter.check ], [ %i.cq, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ]
  %.01012.i.i.i.i.ph = phi i64 [ %10, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i ], [ %.01012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  store ptr @.str, ptr %.013.i.i.i.i, align 8, !tbaa !248
  %i.dc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  store i64 0, ptr %i.dc, align 8, !tbaa !249
  %i.dd = add nsw i64 %.01012.i.i.i.i, -1         ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !747

_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.cy, %vec.epilog.middle.block ], [ %i.cq, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa, ptr %i.r, align 8, !tbaa !390
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.df = icmp ult i64 %i.cm, %10
  br i1 %i.df, label %.invoke, label %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.f, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.261) #32
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %.sroa.speculated.i.i38 = call i64 @llvm.umax.i64(i64 %i.ce, i64 %10)
  %i.dg = add nuw nsw i64 %.sroa.speculated.i.i38, %i.ce
  %i.dh = call i64 @llvm.umin.i64(i64 %i.dg, i64 576460752303423487) ; 2 uses
  %i.di = shl nuw nsw i64 %i.dh, 4
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #30
          to label %iter.check106 unwind label %bb.l ; 4 uses

iter.check106:                                    ; preds = %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cd ; 9 uses
  %min.iters.check90 = icmp ult i64 %10, 4
  br i1 %min.iters.check90, label %.lr.ph.i.i.i30.i.preheader, label %vector.main.loop.iter.check91

vector.main.loop.iter.check91:                    ; preds = %iter.check106
  %min.iters.check92 = icmp ult i64 %10, 16
  br i1 %min.iters.check92, label %vec.epilog.ph110, label %vector.ph93

vector.ph93:                                      ; preds = %vector.main.loop.iter.check91
  %i.dl = and i64 %10, 12
  %n.vec94 = and i64 %10, -16                     ; 4 uses
  %i.dm = shl i64 %n.vec94, 4
  %i.dn = getelementptr i8, ptr %i.dk, i64 %i.dm
  %i.do = and i64 %10, 15
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next101, %vector.body95 ] ; 2 uses
  %i.dp = shl i64 %index96, 4                     ; 4 uses
  %next.gep97.a = getelementptr i8, ptr %i.dk, i64 %i.dp
  %i.dq = getelementptr i8, ptr %i.dk, i64 %i.dp
  %next.gep98.a = getelementptr i8, ptr %i.dq, i64 64
  %i.dr = getelementptr i8, ptr %i.dk, i64 %i.dp
  %next.gep99.a = getelementptr i8, ptr %i.dr, i64 128
  %i.ds = getelementptr i8, ptr %i.dk, i64 %i.dp
  %next.gep100 = getelementptr i8, ptr %i.ds, i64 192
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep97.a, align 8, !tbaa !44
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep98.a, align 8, !tbaa !44
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep99.a, align 8, !tbaa !44
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep100, align 8, !tbaa !44
  %index.next101 = add nuw i64 %index96, 16       ; 2 uses
  %i.dt = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.dt, label %middle.block102, label %vector.body95, !llvm.loop !748

middle.block102:                                  ; preds = %vector.body95
  %cmp.n103 = icmp eq i64 %10, %n.vec94
  br i1 %cmp.n103, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit35.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block102
  %min.epilog.iters.check109 = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check109, label %.lr.ph.i.i.i30.i.preheader, label %vec.epilog.ph110, !prof !86

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check91, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec94, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check91 ]
  %n.vec111 = and i64 %10, -4                     ; 3 uses
  %i.du = shl i64 %n.vec111, 4
  %i.dv = getelementptr i8, ptr %i.dk, i64 %i.du
  %i.dw = and i64 %10, 3
  br label %vec.epilog.vector.body112

vec.epilog.vector.body112:                        ; preds = %vec.epilog.vector.body112, %vec.epilog.ph110
  %index113 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next115, %vec.epilog.vector.body112 ] ; 2 uses
  %i.dx = shl i64 %index113, 4
  %next.gep114 = getelementptr i8, ptr %i.dk, i64 %i.dx
  store <8 x i64> <i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0, i64 ptrtoint (ptr @.str to i64), i64 0>, ptr %next.gep114, align 8, !tbaa !44
  %index.next115 = add nuw i64 %index113, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next115, %n.vec111
  br i1 %i.dy, label %vec.epilog.middle.block116, label %vec.epilog.vector.body112, !llvm.loop !749

vec.epilog.middle.block116:                       ; preds = %vec.epilog.vector.body112
  %cmp.n117 = icmp eq i64 %10, %n.vec111
  br i1 %cmp.n117, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i.preheader

.lr.ph.i.i.i30.i.preheader:                       ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block116
  %.013.i.i.i31.i.ph = phi ptr [ %i.dk, %iter.check106 ], [ %i.dn, %vec.epilog.iter.check108 ], [ %i.dv, %vec.epilog.middle.block116 ]
  %.01012.i.i.i32.i.ph = phi i64 [ %10, %iter.check106 ], [ %i.do, %vec.epilog.iter.check108 ], [ %i.dw, %vec.epilog.middle.block116 ]
  br label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i.i.i30.i.preheader, %.lr.ph.i.i.i30.i
  %.013.i.i.i31.i = phi ptr [ %i.eb, %.lr.ph.i.i.i30.i ], [ %.013.i.i.i31.i.ph, %.lr.ph.i.i.i30.i.preheader ] ; 3 uses
  %.01012.i.i.i32.i = phi i64 [ %i.ea, %.lr.ph.i.i.i30.i ], [ %.01012.i.i.i32.i.ph, %.lr.ph.i.i.i30.i.preheader ]
  store ptr @.str, ptr %.013.i.i.i31.i, align 8, !tbaa !248
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 8
  store i64 0, ptr %i.dz, align 8, !tbaa !249
  %i.ea = add i64 %.01012.i.i.i32.i, -1           ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 16
  %.not.i.i.i33.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i33.i, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i, !llvm.loop !750

_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit35.i: ; preds = %.lr.ph.i.i.i30.i, %vec.epilog.middle.block116, %middle.block102
  %.not10.i.i.i.i = icmp eq ptr %i.ca, %i.bz
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit35.i, %.lr.ph.i.i.i37.i
  %.012.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i37.i ], [ %i.dj, %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit35.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i37.i ], [ %i.ca, %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit35.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !385, !alias.scope !755
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i38.i = icmp eq ptr %i.ec, %i.bz
  br i1 %.not.i.i.i38.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i37.i, !llvm.loop !754

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i37.i, %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit35.i
  %.not.i40.i = icmp eq ptr %i.ca, null
  br i1 %.not.i40.i, label %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit41.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ee = load ptr, ptr %i.cg, align 16, !tbaa !389
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.ef, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.eg) #27
  br label %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit41.i

_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit41.i: ; preds = %bb.q, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.dj, ptr %5, align 16, !tbaa !388
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %10
  store ptr %i.eh, ptr %i.r, align 8, !tbaa !390
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.ei, ptr %i.cg, align 16, !tbaa !389
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !281
  %.pre41 = load ptr, ptr %4, align 16, !tbaa !215
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.r:                                             ; preds = %bb.n
  %i.ej = icmp ult i64 %i.by, %i.ce
  br i1 %i.ej, label %bb.s, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.bz, %i.ek
  br i1 %.not.i.i10, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.s
  store ptr %i.ek, ptr %i.r, align 8, !tbaa !390
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.s, %bb.r, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit41.i, %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit.i, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.j, %bb.i, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, %bb.m
  %11 = phi ptr [ %i.bu, %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i ], [ %i.bu, %bb.s ], [ %i.bu, %bb.r ], [ %.pre41, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit41.i ], [ %i.bu, %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.ag, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ag, %bb.j ], [ %i.ag, %bb.i ], [ %i.bd, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ], [ %i.ag, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i ], [ %i.m, %bb.m ] ; 2 uses
  %12 = phi ptr [ %i.bt, %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i ], [ %i.bt, %bb.s ], [ %i.bt, %bb.r ], [ %.pre, %_ZNSt12_Vector_baseIN7rocksdb5SliceESaIS1_EE13_M_deallocateEPS1_m.exit41.i ], [ %i.bt, %_ZSt27__uninitialized_default_n_aIPN7rocksdb5SliceEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.bp, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.af, %bb.j ], [ %i.af, %bb.i ], [ %i.bm, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ], [ %.0.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i ], [ %i.l, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !264
  %.not = icmp eq ptr %12, %11
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.el = ptrtoint ptr %11 to i64
  %i.em = ptrtoint ptr %12 to i64
  %i.en = sub i64 %i.em, %i.el
  %i.eo = ashr exact i64 %i.en, 2
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null, i64 noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit unwind label %bb.ac

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ep = load ptr, ptr %2, align 8, !tbaa !157
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke noundef i64 %i.er(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.u unwind label %bb.l

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.et = load <2 x ptr>, ptr %4, align 16, !tbaa !300
  %i.eu = load ptr, ptr %4, align 16, !tbaa !215  ; 6 uses
  store <2 x ptr> %i.et, ptr %7, align 16, !tbaa !300
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !216 ; 3 uses
  store ptr %i.ex, ptr %i.ev, align 16, !tbaa !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ey = load <2 x ptr>, ptr %5, align 16, !tbaa !756
  %i.ez = load ptr, ptr %5, align 16, !tbaa !388  ; 6 uses
  store <2 x ptr> %i.ey, ptr %8, align 16, !tbaa !756
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 16, !tbaa !389 ; 3 uses
  store ptr %i.fc, ptr %i.fa, align 16, !tbaa !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.fd = load <2 x ptr>, ptr %6, align 16, !tbaa !757
  %i.fe = load ptr, ptr %6, align 16, !tbaa !393  ; 6 uses
  store <2 x ptr> %i.fd, ptr %9, align 16, !tbaa !757
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 16, !tbaa !394 ; 3 uses
  store ptr %i.fh, ptr %i.ff, align 16, !tbaa !394
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN7rocksdb13TraceAnalyzer20OutputAnalysisResultENS_18TraceOperationTypeEmSt6vectorIjSaIjEES2_INS_5SliceESaIS5_EES2_ImSaImEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1476) %1, i32 noundef 8, i64 noundef %i.es, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fe to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fk) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.v, %bb.w
  %.not.i.i.i14 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.fl = ptrtoint ptr %i.fc to i64
  %i.fm = ptrtoint ptr %i.ez to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fn) #27
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit:   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.x
  %.not.i.i.i15 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit
  %i.fo = ptrtoint ptr %i.ex to i64
  %i.fp = ptrtoint ptr %i.eu to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fq) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit, %bb.y
  %i.fr = load ptr, ptr %6, align 16, !tbaa !393  ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorImSaImEED2Ev.exit17, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.fs = load ptr, ptr %i.fg, align 16, !tbaa !394
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fv) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit17

_ZNSt6vectorImSaImEED2Ev.exit17:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.fw = load ptr, ptr %5, align 16, !tbaa !388  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit19, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit17
  %i.fx = load ptr, ptr %i.fb, align 16, !tbaa !389
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #27
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit19

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit19: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit17, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.gb = load ptr, ptr %4, align 16, !tbaa !215  ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEED2Ev.exit21, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit19
  %i.gc = load ptr, ptr %i.ew, align 16, !tbaa !216
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gf) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit21

_ZNSt6vectorIjSaIjEED2Ev.exit21:                  ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit19, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.ac:                                            ; preds = %bb.t
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit27

bb.ad:                                            ; preds = %bb.u
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorImSaImEED2Ev.exit23, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gi = ptrtoint ptr %i.fh to i64
  %i.gj = ptrtoint ptr %i.fe to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.gk) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit23

_ZNSt6vectorImSaImEED2Ev.exit23:                  ; preds = %bb.ad, %bb.ae
  %.not.i.i.i24 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit25, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit23
  %i.gl = ptrtoint ptr %i.fc to i64
  %i.gm = ptrtoint ptr %i.ez to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.gn) #27
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit25

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit25: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit23, %bb.af
  %.not.i.i.i26 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIjSaIjEED2Ev.exit27, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit25
  %i.go = ptrtoint ptr %i.ex to i64
  %i.gp = ptrtoint ptr %i.eu to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.gq) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit27

_ZNSt6vectorIjSaIjEED2Ev.exit27:                  ; preds = %bb.ag, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit25, %bb.ac, %bb.l
  %.pn = phi { ptr, i32 } [ %i.gg, %bb.ac ], [ %i.br, %bb.l ], [ %i.gh, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit25 ], [ %i.gh, %bb.ag ] ; 2 uses
  %i.gr = load ptr, ptr %6, align 16, !tbaa !393  ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorImSaImEED2Ev.exit29, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit27
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gt = load ptr, ptr %i.gs, align 16, !tbaa !394
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gw) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit29

_ZNSt6vectorImSaImEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit27, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.gx = load ptr, ptr %5, align 16, !tbaa !388  ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit31, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit29
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gz = load ptr, ptr %i.gy, align 16, !tbaa !389
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hc) #27
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit31

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit31: ; preds = %bb.ai, %_ZNSt6vectorImSaImEED2Ev.exit29, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit29 ], [ %.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.hd = load ptr, ptr %4, align 16, !tbaa !215  ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIjSaIjEED2Ev.exit33, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit31
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !216
end_hunk_0
