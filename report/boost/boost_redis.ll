Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/boost_redis?download=true
inline.NumInlined: 16494
inline.NumDeleted: 6231
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5boost5redis5resp35parseINS0_11any_adapterEEEbRNS1_6parserERKSt17basic_string_viewIcSt11char_traitsIcEERT_RNS_6system10error_codeE:bb.a
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread20, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost5redis5resp36parser4doneEv.exit.thread
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %_ZNK5boost6system10error_codecvbEv.exit, label %.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.e
  %i.ai = load i32, ptr %3, align 8, !tbaa !329
  %.not32 = icmp eq i32 %i.ai, 0
  br i1 %.not32, label %_ZNK5boost6system10error_codecvbEv.exit.thread20, label %.thread

_ZNK5boost6system10error_codecvbEv.exit.thread20: ; preds = %_ZNK5boost5redis5resp36parser4doneEv.exit.thread, %_ZNK5boost6system10error_codecvbEv.exit
  %i.aj = load i8, ptr %i.x, align 8, !tbaa !399, !range !266, !noundef !267
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit, label %.thread

_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4, !tbaa !396
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !262
  %.not.i.i.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i14, label %bb.f, label %_ZN5boost5redis11any_adapter7on_nodeERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeE.exit

bb.f:                                             ; preds = %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit
  call void @_ZSt25__throw_bad_function_callv() #51
  unreachable

_ZN5boost5redis11any_adapter7on_nodeERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeE.exit: ; preds = %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !307
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !2171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = load i64, ptr %i.w, align 8, !tbaa !264 ; 2 uses
  %i.ao = and i64 %i.an, 1
  %.not.i.i15 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i15, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN5boost5redis11any_adapter7on_nodeERKNS0_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS_6system10error_codeE.exit
  %i.ap = icmp eq i64 %i.an, 1
  br i1 %i.ap, label %bb.h, label %.thread24

.thread24:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %3, align 8, !tbaa !329
  %i.ar = icmp eq i32 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br i1 %i.ar, label %.backedge.backedge, label %.loopexit

.backedge.backedge:                               ; preds = %bb.h, %.critedge
  br label %.backedge

.thread:                                          ; preds = %_ZNK5boost6system10error_codecvbEv.exit, %_ZNK5boost6system10error_codecvbEv.exit.thread20, %bb.e
  %.1.ph = phi i1 [ true, %_ZNK5boost6system10error_codecvbEv.exit ], [ false, %_ZNK5boost6system10error_codecvbEv.exit.thread20 ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %.loopexit

bb.i:                                             ; preds = %_ZNK5boost5redis5resp36parser4doneEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  store i32 17, ptr %5, align 8, !tbaa !394
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 4, !tbaa !396
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !262
  %.not.i.i.i18 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i18, label %bb.j, label %_ZN5boost5redis11any_adapter7on_doneEv.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #51
  unreachable

_ZN5boost5redis11any_adapter7on_doneEv.exit:      ; preds = %bb.i
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !307
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !2172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.thread24, %.thread, %_ZN5boost5redis11any_adapter7on_doneEv.exit
  %.2 = phi i1 [ true, %.thread24 ], [ true, %_ZN5boost5redis11any_adapter7on_doneEv.exit ], [ %.1.ph, %.thread ], [ true, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @_ZNK5boost5redis6detail11read_buffer12get_commitedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !383  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !382
  %i.h = sub i64 %i.g, %i.d
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %i.e, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZN5boost5redis6detail11read_buffer7consumeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !382
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !383  ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.e) ; 2 uses
  %i.f = add i64 %spec.select, %i.d
  store i64 %i.f, ptr %i.c, align 8, !tbaa !383
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK5boost5redis5resp36parser12get_consumedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !384
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN5boost5redis5resp36parser5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 68), (72, 80)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !385
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) @_ZN5boost5redis5resp36parser13default_sizesE, i64 48, i1 false), !tbaa.struct !386
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %i.b, align 8, !tbaa !387
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 17, ptr %i.c, align 8, !tbaa !388
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.d, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5redis5resp39flat_treeC2ERKS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  store ptr null, ptr %0, align 8, !tbaa !2177, !alias.scope !2176
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !407, !noalias !2176 ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !407, !alias.scope !2176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i = icmp eq i64 %i.c, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !alias.scope !2176
  br i1 %.not.i, label %_ZN5boost5redis5resp36detail14copy_constructERKNS2_11flat_bufferE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i.i = phi i64 [ %i.g, %.preheader.i ], [ 512, %bb.a ] ; 4 uses
  %i.f = icmp ult i64 %.0.i.i, %i.c
  %i.g = shl i64 %.0.i.i, 1
  br i1 %i.f, label %.preheader.i, label %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i, !llvm.loop !6

_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i: ; preds = %.preheader.i
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #52, !noalias !2176 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !397, !alias.scope !2176
  store i64 %.0.i.i, ptr %i.d, align 8, !tbaa !408, !alias.scope !2176
  store i64 1, ptr %i.e, align 8, !tbaa !409, !alias.scope !2176
  %i.i = load ptr, ptr %1, align 8, !tbaa !397, !noalias !2176 ; 2 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !407, !noalias !2176 ; 3 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c, !prof !410

bb.b:                                             ; preds = %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.i, i64 %i.j, i1 false), !noalias !2176
  br label %_ZN5boost5redis5resp36detail14copy_constructERKNS2_11flat_bufferE.exit

bb.c:                                             ; preds = %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.d, label %_ZN5boost5redis5resp36detail14copy_constructERKNS2_11flat_bufferE.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.i, align 1, !tbaa !230, !noalias !2176
  store i8 %i.m, ptr %i.h, align 1, !tbaa !230, !noalias !2176
  br label %_ZN5boost5redis5resp36detail14copy_constructERKNS2_11flat_bufferE.exit

_ZN5boost5redis5resp36detail14copy_constructERKNS2_11flat_bufferE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !413  ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !414  ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i, label %.noexc8, label %bb.e

bb.e:                                             ; preds = %_ZN5boost5redis5resp36detail14copy_constructERKNS2_11flat_bufferE.exit
  %2 = sdiv exact i64 %i.u, 40
  %i.v = icmp ugt i64 %2, 230584300921369395
  br i1 %i.v, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !302

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #51
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #52
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE8allocateEmPKv.exit.i.i.i.i, %_ZN5boost5redis5resp36detail14copy_constructERKNS2_11flat_bufferE.exit
  %i.x = phi ptr [ null, %_ZN5boost5redis5resp36detail14copy_constructERKNS2_11flat_bufferE.exit ], [ %i.w, %_ZNSt15__new_allocatorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 7 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !414
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !413
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !415
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !416 ; 2 uses
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !416 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc8, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.x, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !418
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2175

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %.noexc8 ], [ %i.ae, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.y, align 8, !tbaa !413
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !tbaa !232
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !232
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !423
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !423
  %i.al = load ptr, ptr %0, align 8, !tbaa !397
  %.not13.i = icmp eq ptr %i.x, %.0.lcssa.i.i.i.i.i
  br i1 %.not13.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit
  %i.am = load ptr, ptr %1, align 8, !tbaa !397
  %i.an = ptrtoint ptr %i.am to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !424
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !425
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.an
  %i.av = getelementptr inbounds i8, ptr %i.al, i64 %i.au
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !397
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 40 ; 2 uses
  %.not.i9 = icmp eq ptr %i.aw, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i9, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, label %bb.f

_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit: ; preds = %bb.h, %.loopexit
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %0, align 8, !tbaa !397   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ay) #53
  br label %_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit

_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN5boost5redis5resp39flat_treeaSERKS2_(ptr noundef nonnull returned align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !408  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !407  ; 3 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 512)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %.sroa.speculated.i.i, %bb.c ], [ %i.g, %bb.d ] ; 4 uses
  %i.f = icmp ult i64 %.0.i.i, %i.d
  %i.g = shl i64 %.0.i.i, 1
  br i1 %i.f, label %bb.d, label %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i, !llvm.loop !6

_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i: ; preds = %bb.d
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #52
  %i.i = load ptr, ptr %0, align 8, !tbaa !397    ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !397
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #53
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  store i64 %.0.i.i, ptr %i.a, align 8, !tbaa !408
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !409
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !409
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !407
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i, %bb.b
  %i.m = phi i64 [ %.pre.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !397    ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !397    ; 2 uses
  %i.p = icmp sgt i64 %i.m, 1
  br i1 %i.p, label %bb.f, label %bb.g, !prof !410

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.n, i64 %i.m, i1 false)
  br label %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.m, 1
  br i1 %i.q, label %bb.h, label %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit

bb.h:                                             ; preds = %bb.g
  %i.r = load i8, ptr %i.n, align 1, !tbaa !230
  store i8 %i.r, ptr %i.o, align 1, !tbaa !230
  br label %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit

_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.s = load i64, ptr %i.c, align 8, !tbaa !407
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !407
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u) ; 0 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !397
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !416  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !416 ; 2 uses
  %.not13.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not13.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit
  %i.ab = load ptr, ptr %1, align 8, !tbaa !397
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.010.014.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.al, %bb.k ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !424
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !425
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !397
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.aa
  br i1 %.not.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, label %bb.i

_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit: ; preds = %bb.k, %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !tbaa !232
  store <2 x i64> %i.ao, ptr %i.an, align 8, !tbaa !232
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !423
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !423
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !414    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !415
  %i.i = load ptr, ptr %0, align 8, !tbaa !414    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.f, 40
  %i.n = icmp ugt i64 %2, 230584300921369395
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i, !prof !302

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #51
  unreachable

_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #52 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -40
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 40
  %i.s = add i64 %.fr.i, 40
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit

_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit: ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !414    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !415
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #53
  br label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !414
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.z, ptr %i.g, align 8, !tbaa !415
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !413
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.f, 40
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !410

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp eq i64 %i.f, 40
  br i1 %i.af, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !tbaa.struct !418
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ad, 40
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !410

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ad, 40
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !tbaa.struct !418
  br label %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ai = load ptr, ptr %1, align 8, !tbaa !414
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !413 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !414
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !413 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ao, %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i, i64 40, i1 false), !tbaa.struct !418
  %i.aq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2178

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE13_M_deallocateEPS8_m.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !414
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !413
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5redis5resp39flat_tree7reserveEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !408  ; 2 uses
  %.not.i = icmp ugt i64 %1, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN5boost5redis5resp36detail4growERNS2_11flat_bufferEmRSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaISB_EE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 512)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %.sroa.speculated.i.i, %bb.b ], [ %i.e, %bb.c ] ; 4 uses
  %i.d = icmp ult i64 %.0.i.i, %1
  %i.e = shl i64 %.0.i.i, 1
  br i1 %i.d, label %bb.c, label %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i, !llvm.loop !6

_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i: ; preds = %bb.c
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #52 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !397    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !407  ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp sgt i64 %i.i, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !410

bb.d:                                             ; preds = %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  %i.l = icmp eq i64 %i.i, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %i.g, align 1, !tbaa !230
  store i8 %i.m, ptr %i.f, align 1, !tbaa !230
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !416  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !416  ; 2 uses
  %.not13.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not13.i.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i, %bb.h
  %.sroa.010.014.i.i = phi ptr [ %i.y, %bb.h ], [ %i.n, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !424
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !425
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.j
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 %i.w
  store ptr %i.x, ptr %i.t, align 8, !tbaa !397
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.p
  br i1 %.not.i.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.loopexit.i, label %.lr.ph.i.i

_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.loopexit.i: ; preds = %bb.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !397
  br label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i

_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i: ; preds = %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.loopexit.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i
  %i.z = phi ptr [ %.pre.i, %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.loopexit.i ], [ %i.g, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i ] ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !397
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #53
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i
  store i64 %.0.i.i, ptr %i.b, align 8, !tbaa !408
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !409
  %i.ac = add i64 %i.ab, 1
end_hunk_0
begin_hunk_1_@_ZN5boost5redis16basic_connectionINS_4asio15any_io_executorEE14run_initiationclINS2_22any_completion_handlerIJFvNS_6system10error_codeEEEEEEEvOT_PKNS0_6configE:bb.a
bb.h:                                             ; preds = %_ZN5boost4asio14async_initiateINS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJS6_ENS0_6detail17initiate_composedINS_5redis6detail6run_opINS0_15any_io_executorEEEFvSF_EJS6_EEEJEEEDTclsr11enable_if_tIXsr11enable_if_tIXsr6detail25are_completion_signaturesIDpT0_EE5valueENSA_31async_result_has_initiate_memfnIT_JSK_EEEEE5valueENS0_12async_resultINSt5decayISM_E4typeEJSK_EEEEE8initiatescT1_fp_scSM_fp0_spscT2_fp1_EEOST_RNS0_13type_identityISM_E4typeEDpOSU_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !277
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !296
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(56) %i.bf)
          to label %bb.m unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #50
  unreachable

bb.j:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !276
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN5boost4asio6detail17initiate_composedINS_5redis6detail6run_opINS0_15any_io_executorEEEFvS6_EJFvNS_6system10error_codeEEEED2Ev.exit4.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !277
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !296
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.bp)
          to label %_ZN5boost4asio6detail17initiate_composedINS_5redis6detail6run_opINS0_15any_io_executorEEEFvS6_EJFvNS_6system10error_codeEEEED2Ev.exit4.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #50
  unreachable

_ZN5boost4asio6detail17initiate_composedINS_5redis6detail6run_opINS0_15any_io_executorEEEFvS6_EJFvNS_6system10error_codeEEEED2Ev.exit4.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %.pre14 = load ptr, ptr %i.ay, align 8, !tbaa !546
  br label %.body

bb.m:                                             ; preds = %bb.h, %_ZN5boost4asio14async_initiateINS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJS6_ENS0_6detail17initiate_composedINS_5redis6detail6run_opINS0_15any_io_executorEEEFvSF_EJS6_EEEJEEEDTclsr11enable_if_tIXsr11enable_if_tIXsr6detail25are_completion_signaturesIDpT0_EE5valueENSA_31async_result_has_initiate_memfnIT_JSK_EEEEE5valueENS0_12async_resultINSt5decayISM_E4typeEJSK_EEEEE8initiatescT1_fp_scSM_fp0_spscT2_fp1_EEOST_RNS0_13type_identityISM_E4typeEDpOSU_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.bv = load ptr, ptr %i.ay, align 8, !tbaa !546 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i6, label %_ZN5boost4asio24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !563
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !567
  invoke void %i.bx(ptr noundef nonnull %i.bv)
          to label %_ZN5boost4asio24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEED2Ev.exit unwind label %bb.o, !inline_history !27

bb.o:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #50
  unreachable

_ZN5boost4asio24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  ret void

bb.p:                                             ; preds = %_ZN5boost4asio32get_associated_cancellation_slotINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEEEENS0_28associated_cancellation_slotIT_NS0_17cancellation_slotEE4typeERKS8_.exit.thread
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5boost4asio6detail17initiate_composedINS_5redis6detail6run_opINS0_15any_io_executorEEEFvS6_EJFvNS_6system10error_codeEEEED2Ev.exit4.i, %bb.p
  %i.cb = phi ptr [ %i.as, %bb.p ], [ %.pre14, %_ZN5boost4asio6detail17initiate_composedINS_5redis6detail6run_opINS0_15any_io_executorEEEFvS6_EJFvNS_6system10error_codeEEEED2Ev.exit4.i ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.p ], [ %i.bl, %_ZN5boost4asio6detail17initiate_composedINS_5redis6detail6run_opINS0_15any_io_executorEEEFvS6_EJFvNS_6system10error_codeEEEED2Ev.exit4.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %.not.i.i7 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i7, label %_ZN5boost4asio24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEED2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %.body
  %i.cc = load ptr, ptr %i.aw, align 8, !tbaa !563
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !567
  invoke void %i.cd(ptr noundef nonnull %i.cb)
          to label %_ZN5boost4asio24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEED2Ev.exit8 unwind label %bb.r, !inline_history !27

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #50
  unreachable

_ZN5boost4asio24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEED2Ev.exit8: ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(616) ptr @_ZN5boost5redis6configaSERKS1_(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(616) %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !504, !range !266, !noundef !267
  store i8 %i.a, ptr %0, align 8, !tbaa !504
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.u, ptr noundef nonnull align 8 dereferenceable(57) %i.v, i64 57, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.y = load i32, ptr %i.x, align 8
  store i32 %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ab, ptr noundef nonnull align 8 dereferenceable(17) %i.ac, i64 17, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ai = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost5redis7addressESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(188) %i.ag, ptr noundef nonnull align 8 dereferenceable(188) %i.ah) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.am = load i8, ptr %i.al, align 8, !tbaa !568, !range !266, !noundef !267
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i8 %i.am, ptr %i.an, align 8, !tbaa !568
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.aq = load i32, ptr %i.ap, align 8
  store i32 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 496
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.at, ptr noundef nonnull align 8 dereferenceable(17) %i.au, i64 17, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ax = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ay, ptr noundef nonnull align 8 dereferenceable(36) %i.az, i64 36, i1 false)
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !499
  %i.c = load ptr, ptr %1, align 8, !tbaa !497    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !498
  %i.i = load ptr, ptr %0, align 8, !tbaa !497    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.f, 24
  %i.n = icmp ugt i64 %2, 384307168202282325
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE11_M_allocateEm.exit.i, !prof !302

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #51
  unreachable

_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #52 ; 3 uses
  %3 = icmp sgt i64 %i.f, 24
  br i1 %3, label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.sink.split, label %bb.e, !prof !410

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE11_M_allocateEm.exit.i
  %i.p = icmp eq i64 %i.f, 24
  br i1 %i.p, label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.sink.split, label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.sink.split: ; preds = %bb.e, %_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE11_M_allocateEm.exit.i
  %.sink = phi i64 [ %i.f, %_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE11_M_allocateEm.exit.i ], [ 24, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %.sink, i1 false)
  br label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.sink.split, %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !497    ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !498
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #53
  br label %_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !497
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8, !tbaa !498
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !499
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp sgt i64 %i.f, 24
  br i1 %i.aa, label %bb.i, label %bb.j, !prof !410

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %i.f, 24
  br i1 %i.ab, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !2619
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.l:                                             ; preds = %bb.g
  %i.ac = icmp sgt i64 %i.z, 24
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !410

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.z, i1 false)
  br label %_ZSt4copyIPN5boost5redis6detail13pubsub_changeES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = icmp eq i64 %i.z, 24
  br i1 %i.ad, label %bb.o, label %_ZSt4copyIPN5boost5redis6detail13pubsub_changeES4_ET0_T_S6_S5_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !2619
  br label %_ZSt4copyIPN5boost5redis6detail13pubsub_changeES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN5boost5redis6detail13pubsub_changeES4_ET0_T_S6_S5_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.ae = load ptr, ptr %1, align 8, !tbaa !497
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !499 ; 3 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !497
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !499
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, 24
  br i1 %i.ap, label %bb.p, label %bb.q, !prof !410

bb.p:                                             ; preds = %_ZSt4copyIPN5boost5redis6detail13pubsub_changeES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr align 8 %i.ak, i64 %i.ao, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.q:                                             ; preds = %_ZSt4copyIPN5boost5redis6detail13pubsub_changeES4_ET0_T_S6_S5_.exit
  %i.aq = icmp eq i64 %i.ao, 24
  br i1 %i.aq, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !tbaa.struct !2619
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseIN5boost5redis6detail13pubsub_changeESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !497
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !499
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis6detail13pubsub_changeESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #26

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_23cancellation_signal_tagEEEPvT_PS2_mm(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  %i.a = add i64 %1, 3                            ; 3 uses
  %i.b = lshr i64 %i.a, 2                         ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader53.preheader

.preheader53.preheader:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305  ; 6 uses
  %.not46 = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not46, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.preheader53.preheader
  %i.e = load i8, ptr %i.d, align 1, !tbaa !230
  %i.f = zext i8 %i.e to i64
  %.not47 = icmp samesign ugt i64 %i.b, %i.f
  br i1 %.not47, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = urem i64 %i.g, %2
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread51, label %.thread

.thread51:                                        ; preds = %bb.e, %bb.c
  %.lcssa66 = phi i64 [ 6, %bb.c ], [ 7, %bb.e ]
  %.lcssa64 = phi ptr [ %i.d, %bb.c ], [ %i.p, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa66
  store ptr null, ptr %i.j, align 8, !tbaa !305
  %i.k = load i8, ptr %.lcssa64, align 1, !tbaa !230
  br label %bb.i

.thread:                                          ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !305  ; 2 uses
  %.not46.1 = icmp eq ptr %i.m, null
  br i1 %.not46.1, label %.preheader.1, label %bb.d

.thread.thread:                                   ; preds = %.preheader53.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !305  ; 3 uses
  %.not46.174 = icmp eq ptr %i.o, null
  br i1 %.not46.174, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.thread.thread, %.thread
  %spec.select76 = phi ptr [ %i.o, %.thread.thread ], [ %i.d, %.thread ]
  %i.p = phi ptr [ %i.o, %.thread.thread ], [ %i.m, %.thread ] ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !230
  %i.r = zext i8 %i.q to i64
  %.not47.1 = icmp samesign ugt i64 %i.b, %i.r
  br i1 %.not47.1, label %.thread.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = urem i64 %i.s, %2
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.thread51, label %.thread.1

.thread.1:                                        ; preds = %bb.e, %bb.d
  %spec.select = select i1 %.not46, i64 7, i64 6
  br label %.preheader.1

.preheader.1:                                     ; preds = %.thread, %.thread.1
  %.lcssa62 = phi i64 [ %spec.select, %.thread.1 ], [ 6, %.thread ]
  %.lcssa = phi ptr [ %spec.select76, %.thread.1 ], [ %i.d, %.thread ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa62
  store ptr null, ptr %i.v, align 8, !tbaa !305
  tail call void @free(ptr noundef nonnull %.lcssa) #49
  br label %.loopexit

.loopexit:                                        ; preds = %.thread.thread, %.preheader.1, %bb.a
  %i.w = and i64 %i.a, -4
  %i.x = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.y = tail call i64 @llvm.umax.i64(i64 %2, i64 16) ; 4 uses
  %i.z = urem i64 %i.x, %i.y                      ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = sub nuw i64 %i.y, %i.z
end_hunk_1
