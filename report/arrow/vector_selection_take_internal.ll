Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/vector_selection_take_internal?download=true
inline.NumInlined: 4651
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !243
  %i.q = sub nsw i64 %i.p, %i.n                   ; 4 uses
  %i.r = xor i64 %i.m, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.r, i1 false) ; 8 uses
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = lshr i64 %i.m, %i.s
  store i64 %i.u, ptr %i.e, align 8, !tbaa !245
  %i.v = add nuw nsw i32 %i.h, %i.t               ; 2 uses
  %i.w = sub nsw i32 %i.d, %i.v
  store i32 %i.w, ptr %i.c, align 8, !tbaa !246
  %i.x = sub nsw i64 %i.n, %i.s                   ; 7 uses
  store i64 %i.x, ptr %i.i, align 8, !tbaa !244
  %.not25 = icmp eq i64 %i.s, 0
  br i1 %.not25, label %.thread48, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit
  %.not26 = icmp eq i32 %i.d, %i.v
  br i1 %.not26, label %bb.h, label %bb.n

.thread48:                                        ; preds = %..thread48_crit_edge, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit.thread
  %.promoted.i = phi i64 [ %.promoted.i.pre, %..thread48_crit_edge ], [ %i.x, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit ], [ %i.l, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE14FindCurrentRunEv.exit.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp sgt i64 %.promoted.i, 63
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !prof !1086

.lr.ph.i:                                         ; preds = %.thread48
  %.promoted18.i = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ab = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %bb.e ] ; 3 uses
  %i.ac = phi ptr [ %.promoted18.i, %.lr.ph.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.ac, align 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !247
  store i64 %.0.copyload.i.i, ptr %i.aa, align 8, !tbaa !245
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.copyload.i.i, i1 false) ; 4 uses
  %i.af = icmp samesign ult i64 %i.ae, 64
  br i1 %i.af, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.ag = trunc nuw nsw i64 %i.ae to i32
  %i.ah = lshr exact i64 %.0.copyload.i.i, %i.ae
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !245
  %i.ai = sub nuw nsw i32 64, %i.ag
  store i32 %i.ai, ptr %i.c, align 8, !tbaa !246
  %i.aj = sub nuw nsw i64 %i.ab, %i.ae
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.ak = add nsw i64 %i.ab, -64                  ; 3 uses
  store i64 %i.ak, ptr %i.y, align 8, !tbaa !244
  %i.al = icmp sgt i64 %i.ab, 127
  br i1 %i.al, label %bb.d, label %._crit_edge.i, !prof !1087

._crit_edge.i:                                    ; preds = %bb.e, %.thread48
  %.pr = phi i64 [ %.promoted.i, %.thread48 ], [ %i.ak, %bb.e ] ; 7 uses
  %i.am = icmp sgt i64 %.pr, 0
  br i1 %i.am, label %bb.f, label %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !124
  %i.an = add nuw nsw i64 %.pr, 7
  %i.ao = lshr i64 %i.an, 3                       ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !247   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.ap, i64 %i.ao, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.aq, ptr %0, align 8, !tbaa !247
  %.0..0..0..0..0..0..0..0..i.i = load i64, ptr %i.b, align 8, !tbaa !124
  %notmask.i.i.i = shl nsw i64 -1, %.pr
  %i.ar = xor i64 %notmask.i.i.i, -1
  %i.as = and i64 %.0..0..0..0..0..0..0..0..i.i, %i.ar ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = trunc nuw nsw i64 %.pr to i32
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.as, i1 false)
  %.sroa.speculated12.i = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %.pr) ; 3 uses
  %.sroa.speculated.i = trunc nuw nsw i64 %.sroa.speculated12.i to i32
  %i.aw = lshr i64 %i.as, %.sroa.speculated12.i
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !245
  %i.ax = sub nsw i32 %i.au, %.sroa.speculated.i
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !246
  %i.ay = sub nsw i64 %.pr, %.sroa.speculated12.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %.thread.i
  %.sink.i = phi i64 [ %i.aj, %.thread.i ], [ %i.ay, %bb.f ] ; 2 uses
  store i64 %.sink.i, ptr %i.y, align 8, !tbaa !244
  br label %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit

_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit: ; preds = %._crit_edge.i, %.sink.split.i
  %i.az = phi i64 [ %.sink.i, %.sink.split.i ], [ %.pr, %._crit_edge.i ] ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !243
  %i.bd = sub nsw i64 %i.bc, %i.az
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.be = icmp sgt i64 %i.x, 63
  br i1 %i.be, label %bb.i, label %bb.j, !prof !111

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %0, align 8, !tbaa !247   ; 2 uses
  %.0.copyload.i = load i64, ptr %i.bf, align 1   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %0, align 8, !tbaa !247
  store i64 %.0.copyload.i, ptr %i.e, align 8, !tbaa !245
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bh = icmp sgt i64 %i.x, 0
  br i1 %i.bh, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !124
  %i.bi = add nuw nsw i64 %i.x, 7
  %i.bj = lshr i64 %i.bi, 3                       ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !247   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.bk, i64 %i.bj, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store ptr %i.bl, ptr %0, align 8, !tbaa !247
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !124
  %notmask.i.i = shl nsw i64 -1, %i.x
  %i.bm = xor i64 %notmask.i.i, -1
  %i.bn = and i64 %.0..0..0..0..0..0..i, %i.bm    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bn, ptr %i.e, align 8, !tbaa !245
  %i.bo = trunc nuw nsw i64 %i.x to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bp = phi i64 [ %i.bn, %bb.k ], [ %.0.copyload.i, %bb.i ]
  %storemerge = phi i32 [ %i.bo, %bb.k ], [ 64, %bb.i ]
  store i32 %storemerge, ptr %i.c, align 8, !tbaa !246
  %i.bq = and i64 %i.bp, 1
  %.not29 = icmp eq i64 %i.bq, 0
  br i1 %.not29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.12152 = phi i64 [ 0, %bb.g ], [ %i.s, %bb.l ]
  %.2 = phi i64 [ %i.bd, %bb.g ], [ %i.q, %bb.l ]
  %i.br = tail call noundef i64 @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13CountNextOnesEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.bs = add nsw i64 %i.br, %.12152
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.c, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit, %bb.m
  %.sroa.019.1 = phi i64 [ %.2, %bb.m ], [ %i.q, %bb.j ], [ %i.q, %bb.c ], [ 0, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit ], [ %i.q, %bb.l ]
  %.sroa.6.1 = phi i64 [ %i.bs, %bb.m ], [ %i.s, %bb.j ], [ %i.s, %bb.c ], [ 0, %_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13SkipNextZerosEv.exit ], [ %i.s, %bb.l ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.019.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE13CountNextOnesEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !245  ; 3 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = xor i64 %i.c, -1
  %i.e = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.d, i1 true) ; 5 uses
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !244
  %i.i = sub nsw i64 %i.h, %i.e                   ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !244
  %i.j = lshr i64 %i.c, %i.e
  store i64 %i.j, ptr %i.b, align 8, !tbaa !245
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !246  ; 2 uses
  %i.m = sub nsw i32 %i.l, %i.f
  store i32 %i.m, ptr %i.k, align 8, !tbaa !246
  %.not30 = icmp eq i32 %i.l, %i.f
  br i1 %.not30, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !244
  %i.p = add nsw i64 %i.o, -64                    ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !244
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.q, align 8, !tbaa !246
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.promoted = phi i64 [ %i.i, %bb.b ], [ %i.p, %bb.c ]
  %.125 = phi i64 [ %i.e, %bb.b ], [ 64, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted38 = load ptr, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %1 = phi ptr [ %.promoted38, %bb.d ], [ %i.u, %bb.f ] ; 4 uses
  %i.s = phi i64 [ %.promoted, %bb.d ], [ %i.y, %bb.f ] ; 7 uses
  %.226 = phi i64 [ %.125, %bb.d ], [ %i.x, %bb.f ] ; 3 uses
  %i.t = icmp sgt i64 %i.s, 63
  br i1 %i.t, label %bb.f, label %bb.g, !prof !111

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i = load i64, ptr %1, align 1      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !247
  store i64 %.0.copyload.i, ptr %i.b, align 8, !tbaa !245
  %i.v = xor i64 %.0.copyload.i, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.v, i1 false) ; 5 uses
  %i.x = add nuw nsw i64 %i.w, %.226              ; 2 uses
  %i.y = sub nuw nsw i64 %i.s, %i.w               ; 2 uses
  store i64 %i.y, ptr %i.r, align 8, !tbaa !244
  %i.z = icmp samesign ugt i64 %i.w, 63
  br i1 %i.z, label %bb.e, label %.thread, !llvm.loop !1088

.thread:                                          ; preds = %bb.f
  %i.aa = trunc nuw nsw i64 %i.w to i32
  %i.ab = lshr i64 %.0.copyload.i, %i.w
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !245
  %i.ac = sub nuw nsw i32 64, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !246
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp sgt i64 %i.s, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !124
  %i.af = add nuw nsw i64 %i.s, 7
  %i.ag = lshr i64 %i.af, 3                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  store ptr %i.ah, ptr %0, align 8, !tbaa !247
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !124
  %notmask.i.i = shl nsw i64 -1, %i.s
  %i.ai = xor i64 %notmask.i.i, -1
  %i.aj = and i64 %.0..0..0..0..0..0..i, %i.ai    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = trunc nuw nsw i64 %i.s to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = xor i64 %i.aj, -1
  %i.an = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 %i.am, i1 true) ; 4 uses
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = lshr i64 %i.aj, %i.an
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !245
  %i.aq = sub nsw i32 %i.ak, %i.ao
  store i32 %i.aq, ptr %i.al, align 8, !tbaa !246
  %i.ar = sub nsw i64 %i.s, %i.an
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !244
  %i.as = add nuw nsw i64 %i.an, %.226
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g, %bb.h, %bb.b
  %.4 = phi i64 [ %i.x, %.thread ], [ %i.e, %bb.b ], [ %i.as, %bb.h ], [ %.226, %bb.g ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow9ArrayDataEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow9ArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !99
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow9ArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !128
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !1089
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !1089
  br label %_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !105

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !128
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !3
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !105

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1092 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1093 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
end_hunk_0
