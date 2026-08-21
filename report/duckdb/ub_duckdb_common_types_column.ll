Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types_column?download=true
inline.NumInlined: 5543
inline.NumDeleted: 2531
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm:bb.a
bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19ColumnDataAllocator13AllocateBlockEm(ptr dead_on_unwind noalias writable sret(%"class.duckdb::BufferHandle") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::BlockMetaData", align 8 ; 14 uses
  %4 = alloca %"class.duckdb::shared_ptr.398", align 16 ; 4 uses
  %5 = alloca %"class.duckdb::shared_ptr.398", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb19ColumnDataAllocator16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(176) %1) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 %i.e) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i32 0, ptr %3, align 8, !tbaa !105
  %i.h = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.f)
          to label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit unwind label %bb.aa

_ZN6duckdb11NumericCastIjmvEET_T0_.exit:          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind writable sret(%"class.duckdb::BufferHandle") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef zeroext 6, i64 noundef %i.f, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.aa

bb.b:                                             ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %i.s = load <2 x ptr>, ptr %0, align 8, !tbaa !101
  store <2 x ptr> %i.s, ptr %4, align 16, !tbaa !101
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.d, %bb.e
  invoke void @_ZN6duckdb13BlockMetaData9SetHandleERNS_16ManagedResultSetENS_10shared_ptrINS_11BlockHandleELb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.ac

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !54   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !58
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24, !inline_history !95
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24, !inline_history !95
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i13 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %bb.j ], [ %i.am, %bb.k ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.an, label %bb.l, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, !prof !60

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !110
  %.not.i.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit
  %i.at = load i64, ptr %3, align 8
  store i64 %i.at, ptr %i.aq, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr null, ptr %i.av, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load <2 x ptr>, ptr %i.g, align 8, !tbaa !101
  store ptr null, ptr %i.aw, align 8, !tbaa !54
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !101
  store ptr null, ptr %i.g, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !101
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.bc, ptr %i.ap, align 8, !tbaa !49
  br label %_ZNSt6vectorIN6duckdb13BlockMetaDataESaIS1_EE9push_backEOS1_.exit

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit
  invoke void @_ZNSt6vectorIN6duckdb13BlockMetaDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZNSt6vectorIN6duckdb13BlockMetaDataESaIS1_EE9push_backEOS1_.exit unwind label %bb.ab

_ZNSt6vectorIN6duckdb13BlockMetaDataESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.m, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !42
  %.not = icmp eq i64 %i.be, -1
  br i1 %.not, label %bb.ag, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb13BlockMetaDataESaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bf = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK6duckdb13BlockMetaData9GetHandleEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.398") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.bf)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.bg = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !82, !nonnull !64, !align !94
  %i.bj = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.s unwind label %bb.ae      ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not.i.i14 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i14, label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = lshr i64 %i.bj, 1
  %i.bl = or i64 %i.bk, %i.bj                     ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = or i64 %i.bm, %i.bl                     ; 2 uses
  %i.bo = lshr i64 %i.bn, 4
  %i.bp = or i64 %i.bo, %i.bn                     ; 2 uses
  %i.bq = lshr i64 %i.bp, 8
  %i.br = or i64 %i.bq, %i.bp                     ; 2 uses
  %i.bs = lshr i64 %i.br, 16
  %i.bt = or i64 %i.bs, %i.br                     ; 2 uses
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = or i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, 285870213051386505
  %i.bx = lshr i64 %i.bw, 55
  %.0..sroa_stride.i.i = and i64 %i.bx, 504
  %.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %.0..sroa_stride.i.i
  %i.by = load i64, ptr %.0..sroa_idx.i.i, align 8, !tbaa !103
  %i.bz = add i64 %i.by, 1
  br label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit

_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit: ; preds = %bb.t, %bb.s
  %.0.i.neg.i = phi i64 [ %i.bz, %bb.t ], [ 0, %bb.s ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  store atomic i64 %.0.i.neg.i, ptr %i.ca seq_cst, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !54 ; 8 uses
  %.not.i.i.i15 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i15, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit19, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cd, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !58
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #24, !inline_history !95
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !51
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #24, !inline_history !95
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit19

bb.w:                                             ; preds = %bb.u
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i16 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i16, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i17

bb.y:                                             ; preds = %bb.w
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i17: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i18 = phi i32 [ %i.cg, %bb.x ], [ %i.cq, %bb.y ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i18, 1
  br i1 %i.cr, label %bb.z, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit19, !prof !60

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #24
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit19

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit19: ; preds = %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i17, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ag

bb.aa:                                            ; preds = %bb.a, %_ZN6duckdb11NumericCastIjmvEET_T0_.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ab:                                            ; preds = %bb.n
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ac:                                            ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  br label %bb.ar

bb.ad:                                            ; preds = %bb.p, %bb.o
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.r, %bb.q
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.ae ], [ %i.cv, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ar

bb.ag:                                            ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit19, %_ZNSt6vectorIN6duckdb13BlockMetaDataESaIS1_EE9push_backEOS1_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !111
  %i.cz = add i64 %i.cy, %i.f
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !111
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !50 ; 4 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i20, label %_ZN6duckdb8weak_ptrINS_11BlockHandleELb1EED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 12 ; 3 uses
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i21 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i21, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !3  ; 2 uses
  %i.df = add nsw i32 %i.de, -1
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dg = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.de, %bb.ai ], [ %i.dg, %bb.aj ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.ak, label %_ZN6duckdb8weak_ptrINS_11BlockHandleELb1EED2Ev.exit.i

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #24, !inline_history !112
  br label %_ZN6duckdb8weak_ptrINS_11BlockHandleELb1EED2Ev.exit.i

_ZN6duckdb8weak_ptrINS_11BlockHandleELb1EED2Ev.exit.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !54 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i1.i, label %_ZN6duckdb13BlockMetaDataD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb8weak_ptrINS_11BlockHandleELb1EED2Ev.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dn, align 8, !tbaa !56
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !58
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #24, !inline_history !113
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #24, !inline_history !113
  br label %_ZN6duckdb13BlockMetaDataD2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i2.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i.i2.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i

bb.ap:                                            ; preds = %bb.an
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i4.i = phi i32 [ %i.dq, %bb.ao ], [ %i.ea, %bb.ap ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i4.i, 1
  br i1 %i.eb, label %bb.aq, label %_ZN6duckdb13BlockMetaDataD2Ev.exit, !prof !60

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #24
  br label %_ZN6duckdb13BlockMetaDataD2Ev.exit

_ZN6duckdb13BlockMetaDataD2Ev.exit:               ; preds = %_ZN6duckdb8weak_ptrINS_11BlockHandleELb1EED2Ev.exit.i, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.ar:                                            ; preds = %bb.af, %bb.ac, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.ct, %bb.ab ], [ %i.cu, %bb.ac ]
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ar ], [ %i.cs, %bb.aa ]
  call void @_ZN6duckdb13BlockMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb19ColumnDataAllocator16GetBufferManagerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_0
