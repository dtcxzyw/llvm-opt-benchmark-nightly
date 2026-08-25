Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmWriter?download=true
begin_hunk_0_@_ZN4llvm7objcopy4wasm6Writer19createSectionHeaderERKNS1_7SectionERm:bb.a

bb.l:                                             ; preds = %._crit_edge.i
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 0) #11 ; 0 uses
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit

bb.m:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.bb, ptr %i.j, align 8, !tbaa !34
  store i8 0, ptr %i.ay, align 1, !tbaa !36
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit: ; preds = %bb.l, %bb.m, %bb.i
  br i1 %i.q, label %bb.n, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.n:                                             ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i26, %bb.n
  %.019.i20 = phi i64 [ %i.bd, %bb.n ], [ %i.be, %_ZN4llvm11raw_ostreamlsEc.exit.i26 ] ; 2 uses
  %i.be = lshr i64 %.019.i20, 7                   ; 2 uses
  %.not.i22.not = icmp eq i64 %i.be, 0            ; 2 uses
  %i.bf = trunc i64 %.019.i20 to i8               ; 2 uses
  %i.bg = or i8 %i.bf, -128
  %.0.i24 = select i1 %.not.i22.not, i8 %i.bf, i8 %i.bg ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !34  ; 3 uses
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !35
  %.not.i.i25 = icmp ult ptr %i.bh, %i.bi
  br i1 %.not.i.i25, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %.0.i24) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i26

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bk, ptr %i.j, align 8, !tbaa !34
  store i8 %.0.i24, ptr %i.bh, align 1, !tbaa !36
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i26

_ZN4llvm11raw_ostreamlsEc.exit.i26:               ; preds = %bb.q, %bb.p
  br i1 %.not.i22.not, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit38, label %bb.o, !llvm.loop !43

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit38: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i26
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.bl, align 8, !tbaa !46 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %i.bc, align 8, !tbaa !38 ; 5 uses
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ugt i64 %.sroa.2.0.copyload, %i.bq
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit38
  %i.bs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.s:                                             ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit38
  %.not.i39 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i39, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.2.0.copyload
  store ptr %i.bu, ptr %i.j, align 8, !tbaa !34
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.t, %bb.s, %bb.r, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit
  %i.bv = load i64, ptr %2, align 8, !tbaa !38
  %i.bw = zext i8 %.0.i17 to i64
  %i.bx = add nuw nsw i64 %i.bw, 1
  %i.by = add i64 %i.bx, %i.bv
  store i64 %i.by, ptr %2, align 8, !tbaa !38
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZN4llvm14getULEB128SizeEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4llvm7objcopy4wasm6Writer8finalizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.llvm::SmallVector", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47, !nonnull !42, !align !56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40
  tail call void @_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k)
  %i.l = load ptr, ptr %0, align 8, !tbaa !47, !nonnull !42, !align !56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 2 uses
  %.not8 = icmp eq ptr %i.n, %i.p
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit, %bb.a
  %.0.lcssa = phi i64 [ 8, %bb.a ], [ %i.ag, %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit
  %.010 = phi i64 [ 8, %.lr.ph ], [ %i.ag, %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit ]
  %.sroa.05.09 = phi ptr [ %i.n, %.lr.ph ], [ %i.ah, %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @_ZN4llvm7objcopy4wasm6Writer19createSectionHeaderERKNS1_7SectionERm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.09, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !62   ; 8 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.w, ptr %i.u, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 8, ptr %i.y, align 8, !tbaa !13
  %i.z = load i64, ptr %i.s, align 8, !tbaa !12
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !62
  br label %_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit.i.i

_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit.i.i:     ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !62
  br label %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit.i.i, %bb.e
  %i.ad = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.t
  br i1 %i.ae, label %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE9push_backEOS2_.exit
  call void @free(ptr noundef %i.ad) #11
  br label %_ZN4llvm11SmallVectorIcLj8EED2Ev.exit

_ZN4llvm11SmallVectorIcLj8EED2Ev.exit:            ; preds = %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE9push_backEOS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.af = load i64, ptr %i.a, align 8, !tbaa !38
  %i.ag = add i64 %i.af, %.010                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.p
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %0, align 8, !tbaa !64     ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE11_M_allocateEm.exit.i, label %bb.g

_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #13 ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not9.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE11_M_allocateEm.exit.i ] ; 8 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i.i.i, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  store i64 8, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !12   ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  %i.u = icmp eq ptr %.012.i.i.i.i.i, %.0810.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = or i1 %i.u, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = icmp ugt i64 %i.t, 8
  br i1 %i.v, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull %i.p, i64 noundef %i.t, i64 noundef 1) #11
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.pre.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !8
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i, %bb.d
  %i.w = phi ptr [ %.pre.i.i.i.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.x = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.t, %bb.d ]
  %i.y = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.x, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i
  store i64 %i.t, ptr %i.q, align 8, !tbaa !12
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !65

_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !64    ; 3 uses
  %.pre8 = load ptr, ptr %i.j, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre, %.pre8
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, %_ZSt8_DestroyIN4llvm11SmallVectorIcLj8EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN4llvm11SmallVectorIcLj8EEEEvPT_.exit.i.i ], [ %.pre, %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i, align 8, !tbaa !8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt8_DestroyIN4llvm11SmallVectorIcLj8EEEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.ab) #11
  br label %_ZSt8_DestroyIN4llvm11SmallVectorIcLj8EEEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvm11SmallVectorIcLj8EEEEvPT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ae, %.pre8
  br i1 %.not.i.i7, label %_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !66

_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4llvm11SmallVectorIcLj8EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exit

_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exit: ; preds = %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE11_M_allocateEm.exit.i, %_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  %2 = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exitthread-pre-split ], [ %.pre, %_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit ], [ %i.d, %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.ai) #14
  br label %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm11SmallVectorIcLj8EEEEvT_S4_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4llvm11SmallVectorIcLj8EEESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7objcopy4wasm6Writer5writeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef i64 @_ZN4llvm7objcopy4wasm6Writer8finalizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67, !nonnull !42, !align !56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef %i.b) #11
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !67, !nonnull !42, !align !56
  %i.i = load ptr, ptr %1, align 8, !tbaa !47, !nonnull !42, !align !56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j, i64 noundef %i.l) #11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.n = load ptr, ptr %1, align 8, !tbaa !47, !nonnull !42, !align !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !69
  store i32 %i.p, ptr %i.a, align 4
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !67, !nonnull !42, !align !56
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull %i.a, i64 noundef 4) #11 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 5
  br label %.lr.ph

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.09 = phi i64 [ %i.ar, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !67, !nonnull !42, !align !56
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.09 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !12
  %i.ag = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef %i.ad, i64 noundef %i.af) #11 ; 0 uses
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !67, !nonnull !42, !align !56
  %i.ai = load ptr, ptr %1, align 8, !tbaa !47, !nonnull !42, !align !56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %.09 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.an, i64 noundef %i.ap) #11 ; 0 uses
  %i.ar = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.z
  br i1 %exitcond.not, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph, !llvm.loop !84
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !64     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
  unreachable

_ZNKSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #13 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 8, ptr %i.t, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !12
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  br label %_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit

_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit:         ; preds = %_ZNKSt6vectorIN4llvm11SmallVectorIcLj8EEESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm11SmallVectorIcLj8EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit, %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit ] ; 8 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZN4llvm11SmallVectorIcLj8EEC2EOS1_.exit ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.x, ptr %.012.i.i.i.i.i, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  store i64 8, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !12 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = icmp eq ptr %.012.i.i.i.i.i, %.0810.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ac, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIcLj8EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp ugt i64 %i.ab, 8
  br i1 %i.ad, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull %i.x, i64 noundef %i.ab, i64 noundef 1) #11
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.pre.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !8
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i, %bb.d
  %i.ae = phi ptr [ %.pre.i.i.i.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.x, %bb.d ]
end_hunk_0
