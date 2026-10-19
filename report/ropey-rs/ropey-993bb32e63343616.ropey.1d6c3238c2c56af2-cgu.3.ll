Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.3?download=true
inline.NumInlined: 125
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6remove:bb.a
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !alias.scope !319, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #20, !noalias !320
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = zext i8 %i.c to i64                      ; 3 uses
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #20, !noalias !320
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !320
  %i.f = icmp samesign ult i64 %2, 24
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %2 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !321
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !319, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !noalias !320
  %i.l = add nuw nsw i64 %2, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = xor i64 %2, -1
  %i.o = add nsw i64 %i.d, %i.n
  %i.p = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.m, i64 %i.p, i1 false), !alias.scope !319
  %i.q = invoke { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2wCc12Mnjqg_5ropey(i64 noundef range(i64 0, 256) %i.l, i64 noundef range(i64 0, 256) %i.d, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.r = extractvalue { i64, i64 } %i.q, 0        ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.q, 1
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = sub i64 24, %i.t
  %.not.i1 = icmp ugt i64 %2, %i.u
  br i1 %.not.i1, label %bb.g, label %_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6remove.exit, !prof !11

bb.g:                                             ; preds = %.noexc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #20
          to label %.noexc2 unwind label %bb.i

.noexc2:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #20, !noalias !320
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !322
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire, !noalias !321
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !321
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.v

_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6remove.exit: ; preds = %.noexc
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.r
  %i.aa = shl nuw nsw i64 %i.t, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.z, i64 %i.aa, i1 false), !alias.scope !323, !noalias !321
  %i.ab = load i8, ptr %i.b, align 8, !alias.scope !319, !noundef !5
  %i.ac = add i8 %i.ab, -1
  store i8 %i.ac, ptr %i.b, align 8, !alias.scope !319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(968) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.b = load i8, ptr %i.a, align 8, !alias.scope !328, !noundef !5 ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20, !noalias !329
  unreachable

_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.e, ptr %0, align 8, !alias.scope !327
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.f, align 8, !alias.scope !327
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.g, align 8, !alias.scope !327
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %i.h, align 8, !alias.scope !327
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8info_mut(ptr noalias nofree noundef align 8 dereferenceable(968) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i8, ptr %i.a, align 8, !noundef !5  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.c, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef align 8 dereferenceable(968) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i8, ptr %i.a, align 8, !noundef !5  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([968 x i8]) align 8 captures(none) dereferenceable(968) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [968 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.d = load i8, ptr %i.c, align 8, !noundef !5
  %i.e = zext i8 %i.d to i64                      ; 3 uses
  %.not = icmp ugt i64 %2, %i.e
  br i1 %.not, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 960 ; 4 uses
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = sub nuw nsw i64 %i.e, %2
  %.not6 = icmp eq i64 %2, %i.e
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.m, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull align 8 dereferenceable(968) %i.b, i64 968, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %i.i = phi i8 [ 0, %.lr.ph ], [ %i.x, %bb.m ]   ; 2 uses
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.m ]
  %i.j = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6remove(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %1, i64 noundef %2)
          to label %bb.e unwind label %.loopexit

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.j ], [ %lpad.thr_comm.i, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.k = icmp ult i8 %i.i, 24
  br i1 %i.k, label %bb.h, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
          to label %bb.g unwind label %bb.j, !noalias !344

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.l = zext nneg i8 %i.i to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 32, i1 false), !alias.scope !345, !noalias !343
  %i.n = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !346, !noundef !5 ; 2 uses
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = icmp ult i8 %i.n, 24
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.f
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348), !noalias !342
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !349, !noalias !342, !nonnull !5, !noundef !5
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !350
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  fence acquire, !noalias !342
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.h) #22
          to label %.body unwind label %bb.l, !noalias !340

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !351
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.h, align 8, !alias.scope !352, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.o
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !346
  %i.w = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !346, !noundef !5
  %i.x = add i8 %i.w, 1                           ; 2 uses
  store i8 %i.x, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond.not = icmp eq i64 %i.j, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.n:                                             ; preds = %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1008) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCsexYYUdYSQU6_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 1008) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.f = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #19
  br label %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i

_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RINvMso_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE19allocate_for_layoutNCNvMs1m_B6_INtB6_15UniqueArcUninitBH_NtNtB8_5alloc6GlobalE3new0NCB1K_s_0EBN_.exit, !prof !11

bb.d:                                             ; preds = %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #21
  unreachable

_RINvMso_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE19allocate_for_layoutNCNvMs1m_B6_INtB6_15UniqueArcUninitBH_NtNtB8_5alloc6GlobalE3new0NCB1K_s_0EBN_.exit: ; preds = %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.i, align 8
  store i64 8, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1008, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.a = trunc nuw i8 %.sroa.5.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  ret ptr %.sroa.43.0.copyload

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #20
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE8grow_oneB19_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !355
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !355
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !355
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noalias !355, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !9, !noalias !355, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !355
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !355, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !355
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !355
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !355
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEE8grow_oneB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !358
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !358
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !358
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noalias !358, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !9, !noalias !358, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !358
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !358, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !358
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !358
  %i.m = icmp sgt i64 %i.d, -1
end_hunk_0
