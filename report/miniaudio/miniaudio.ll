Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_node_uninit:bb.a
  %i.bo = atomicrmw volatile xchg ptr %i.bd, i64 0 seq_cst, align 8 ; 0 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !974
  store i8 0, ptr %i.ao, align 2, !tbaa !975
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 56 ; 2 uses
  %i.bq = load atomic i32, ptr %i.bp seq_cst, align 8
  %.not1921.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not1921.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.bs = load atomic i32, ptr %i.br seq_cst, align 8
  %.not2022.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not2022.i.i.i, label %ma_node_input_bus_detach__no_output_bus_lock.exit.i.i, label %.lr.ph23.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bt = load atomic i32, ptr %i.bp seq_cst, align 8
  %.not19.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not19.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !83

.lr.ph23.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph23.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bu = load atomic i32, ptr %i.br seq_cst, align 8
  %.not20.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not20.i.i.i, label %ma_node_input_bus_detach__no_output_bus_lock.exit.i.i, label %.lr.ph23.i.i.i, !llvm.loop !84

ma_node_input_bus_detach__no_output_bus_lock.exit.i.i: ; preds = %.lr.ph23.i.i.i, %.preheader.i.i.i, %ma_node_output_bus_lock.exit.i.i
  %i.bv = load ptr, ptr %i.v, align 8, !tbaa !973
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %i.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic volatile i32 0, ptr %i.bx release, align 4
  br label %ma_node_detach_output_bus.exit.i

ma_node_detach_output_bus.exit.i:                 ; preds = %ma_node_input_bus_detach__no_output_bus_lock.exit.i.i, %ma_node_get_output_bus_count.exit.i16.i, %.lr.ph.i
  %i.by = load atomic volatile i64, ptr %i.m seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2673

._crit_edge.i:                                    ; preds = %ma_node_detach_output_bus.exit.i, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !968
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next.i, %i.ca
  br i1 %i.cb, label %bb.c, label %ma_node_detach_full.exit, !llvm.loop !2674

ma_node_detach_full.exit:                         ; preds = %._crit_edge.i, %ma_node_detach_all_output_buses.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !966
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %ma_free.exit, label %bb.j

bb.j:                                             ; preds = %ma_node_detach_full.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !976 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %ma_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i6 = icmp eq ptr %1, null
  br i1 %.not.i6, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !132 ; 2 uses
  %.not9.i = icmp eq ptr %i.ci, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %1, align 8, !tbaa !126
  tail call void %i.ci(ptr noundef nonnull %i.cf, ptr noundef %i.cj) #55, !inline_history !133
  br label %ma_free.exit

bb.n:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.cf) #55
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %ma_node_detach_full.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @ma_node_graph_uninit(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @ma_node_uninit(ptr noundef nonnull %i.b, ptr noundef %1)
  tail call void @ma_node_uninit(ptr noundef nonnull %0, ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !955  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %1, align 8, !tbaa !126
  tail call void %i.f(ptr noundef nonnull %i.d, ptr noundef %i.g) #55, !inline_history !133
  br label %ma_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #55
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.d, %bb.e, %bb.f
  store ptr null, ptr %i.c, align 8, !tbaa !955
  br label %bb.g

bb.g:                                             ; preds = %ma_free.exit, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !957  ; 3 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i, label %ma_stack_uninit.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !126
  tail call void %i.k(ptr noundef nonnull %i.i, ptr noundef %i.l) #55, !inline_history !2675
  br label %ma_stack_uninit.exit

bb.k:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.i) #55
  br label %ma_stack_uninit.exit

ma_stack_uninit.exit:                             ; preds = %bb.i, %bb.j, %bb.k
  store ptr null, ptr %i.h, align 8, !tbaa !957
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %ma_stack_uninit.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @ma_node_graph_get_endpoint(ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.0 = select i1 %i.a, ptr null, ptr %i.b
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_node_graph_read_pcm_frames(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.e = load i32, ptr %i.d, align 4, !tbaa !967
  %.not.i.not = icmp eq i32 %i.e, 0
  br i1 %.not.i.not, label %ma_node_get_output_channels.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !973
  %i.h = getelementptr i8, ptr %i.g, i64 9
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !977
  %i.i = zext i8 %.val.i to i32
  br label %ma_node_get_output_channels.exit

ma_node_get_output_channels.exit:                 ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.i, %bb.e ], [ 0, %bb.d ]   ; 3 uses
  %i.j = shl nuw nsw i32 %.0.i, 2
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.not103 = icmp eq i64 %2, 0
  br i1 %.not103, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %ma_node_get_output_channels.exit, %.backedge
  %.068101 = phi i64 [ %.068.be, %.backedge ], [ 0, %ma_node_get_output_channels.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.q = sub nuw i64 %2, %.068101                 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.q, i64 4294967295) ; 2 uses
  %i.r = mul i64 %.068101, %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 3 uses
  %i.t = load i32, ptr %i.l, align 8, !tbaa !2676 ; 2 uses
  %.not82 = icmp eq i32 %i.t, 0
  br i1 %.not82, label %bb.f, label %.split

.split:                                           ; preds = %.lr.ph
  %i.u = trunc nuw i64 %spec.store.select to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.u) ; 4 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !955
  %i.w = mul i32 %spec.select, %.0.i
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.v, i64 %i.y, i1 false)
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !955  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.x
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !2676
  %i.ac = sub i32 %i.ab, %spec.select
  %i.ad = mul i32 %i.ac, %.0.i
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.z, ptr align 4 %i.aa, i64 %i.af, i1 false)
  %i.ag = load i32, ptr %i.l, align 8, !tbaa !2676
  %i.ah = sub i32 %i.ag, %spec.select
  store i32 %i.ah, ptr %i.l, align 8, !tbaa !2676
  %i.ai = zext i32 %spec.select to i64
  %i.aj = add i64 %.068101, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.backedge

bb.f:                                             ; preds = %.lr.ph
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !950 ; 2 uses
  %.not83 = icmp eq i32 %i.ak, 0
  br i1 %.not83, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = icmp ult i64 %i.q, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !955
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.065 = phi i64 [ %spec.store.select, %bb.f ], [ %i.al, %bb.h ], [ %i.al, %bb.g ]
  %.1 = phi ptr [ %i.s, %bb.f ], [ %i.an, %bb.h ], [ %i.s, %bb.g ] ; 2 uses
  %i.ao = atomicrmw xchg ptr %i.o, i32 1 seq_cst, align 8 ; 0 uses
  %i.ap = trunc nuw i64 %.065 to i32
  %i.aq = load atomic i64, ptr %i.p seq_cst, align 8
  %i.ar = call fastcc i32 @ma_node_read_pcm_frames(ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef %.1, i32 noundef %i.ap, ptr noundef %i.a, i64 noundef %i.aq) ; 2 uses
  %i.as = atomicrmw xchg ptr %i.o, i32 0 seq_cst, align 8 ; 0 uses
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !955
  %i.au = icmp eq ptr %.1, %i.at
  %i.av = load i32, ptr %i.a, align 4, !tbaa !118 ; 3 uses
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.av, ptr %i.l, align 8, !tbaa !2676
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aw = zext i32 %i.av to i64
  %i.ax = add i64 %.068101, %i.aw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.169 = phi i64 [ %.068101, %bb.j ], [ %i.ax, %bb.k ] ; 3 uses
  %.not84 = icmp eq i32 %i.ar, 0
  br i1 %.not84, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit

select.unfold:                                    ; preds = %bb.l
  %i.ay = icmp eq i32 %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br i1 %i.ay, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %select.unfold, %.split
  %.068.be = phi i64 [ %.169, %select.unfold ], [ %i.aj, %.split ] ; 3 uses
  %i.az = icmp ult i64 %.068.be, %2
  br i1 %i.az, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.backedge, %select.unfold, %ma_node_get_output_channels.exit, %.thread
  %.272 = phi i32 [ %i.ar, %.thread ], [ 0, %ma_node_get_output_channels.exit ], [ 0, %select.unfold ], [ 0, %.backedge ] ; 2 uses
  %.3 = phi i64 [ %.169, %.thread ], [ 0, %ma_node_get_output_channels.exit ], [ %.068.be, %.backedge ], [ %.169, %select.unfold ] ; 4 uses
  %i.ba = icmp ult i64 %.3, %2
  br i1 %i.ba, label %bb.m, label %ma_silence_pcm_frames.exit

bb.m:                                             ; preds = %.loopexit
  %i.bb = sub nuw i64 %2, %.3
  %i.bc = mul i64 %i.bb, %i.k                     ; 2 uses
  %.not.i13.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i13.i, label %ma_silence_pcm_frames.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bd = mul i64 %.3, %i.k
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.bg, %ma_zero_memory_default.exit.i.i ], [ %i.be, %.lr.ph.i.preheader ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.bf, %ma_zero_memory_default.exit.i.i ], [ %i.bc, %.lr.ph.i.preheader ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i86 = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i86, label %ma_zero_memory_default.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.n, %.lr.ph.i
  %i.bf = sub nuw i64 %.08.i14.i, %spec.store.select.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %ma_silence_pcm_frames.exit, label %.lr.ph.i, !llvm.loop !7

ma_silence_pcm_frames.exit:                       ; preds = %ma_zero_memory_default.exit.i.i, %bb.m, %.loopexit
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %ma_silence_pcm_frames.exit
  store i64 %.3, ptr %3, align 8, !tbaa !164
  br label %bb.p

bb.p:                                             ; preds = %ma_silence_pcm_frames.exit, %bb.o, %bb.c
  %.073 = phi i32 [ -2, %bb.c ], [ %.272, %bb.o ], [ %.272, %ma_silence_pcm_frames.exit ]
  ret i32 %.073
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @ma_node_get_output_channels(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %ma_node_get_output_bus_count.exit

ma_node_get_output_bus_count.exit:                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !967
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ma_node_get_output_bus_count.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !973
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 9
  %.val = load i8, ptr %i.h, align 1, !tbaa !977
  %i.i = zext i8 %.val to i32
  br label %bb.c

bb.c:                                             ; preds = %ma_node_get_output_bus_count.exit, %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ], [ 0, %ma_node_get_output_bus_count.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ma_node_read_pcm_frames(ptr noundef %0, i32 noundef range(i32 0, 256) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4, i64 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca [254 x ptr], align 16             ; 7 uses
  %i.c = alloca [254 x ptr], align 16             ; 10 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %i.e = alloca i32, align 4                      ; 13 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i32 0, ptr %i.a, align 4, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  store i32 0, ptr %4, align 4, !tbaa !118
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %ma_node_get_state_by_time_range.exit.thread, label %ma_node_get_output_bus_count.exit

ma_node_get_output_bus_count.exit:                ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !967
  %.not = icmp ult i32 %1, %i.j
  br i1 %.not, label %ma_node_get_state.exit.i, label %ma_node_get_state_by_time_range.exit.thread

ma_node_get_state.exit.i:                         ; preds = %ma_node_get_output_bus_count.exit
  %i.k = zext i32 %3 to i64
  %i.l = add i64 %5, %i.k                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load atomic i32, ptr %i.m seq_cst, align 8
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %ma_node_get_state_by_time_range.exit.thread, label %ma_node_get_state_time.exit.i

ma_node_get_state_time.exit.i:                    ; preds = %ma_node_get_state.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = icmp ult i64 %i.q, %5
  br i1 %i.r, label %ma_node_get_state_by_time_range.exit.thread, label %ma_node_get_state_by_time_range.exit

ma_node_get_state_by_time_range.exit:             ; preds = %ma_node_get_state_time.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load atomic i64, ptr %i.s seq_cst, align 8
  %.not314 = icmp ugt i64 %i.t, %i.l
  br i1 %.not314, label %ma_node_get_state_by_time_range.exit.thread, label %ma_node_get_state_time.exit213

ma_node_get_state_time.exit213:                   ; preds = %ma_node_get_state_by_time_range.exit
  %i.u = load atomic i64, ptr %i.s seq_cst, align 8 ; 2 uses
  %i.v = load atomic i64, ptr %i.p seq_cst, align 8 ; 2 uses
  %i.w = icmp uge i64 %5, %i.u
  %i.x = sub i64 %i.u, %5
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = icmp ugt i64 %i.l, %i.v
  %i.aa = sub i64 %i.l, %i.v
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = select i1 %i.z, i32 %i.ab, i32 0        ; 2 uses
  %.not192193 = icmp eq i32 %i.y, 0
  %.not192 = or i1 %i.w, %.not192193
  %.pre349 = load i32, ptr %i.i, align 4, !tbaa !967 ; 4 uses
  br i1 %.not192, label %ma_node_get_output_bus_count.exit223, label %ma_node_get_output_bus_count.exit.i

ma_node_get_output_bus_count.exit.i:              ; preds = %ma_node_get_state_time.exit213
  %spec.select = tail call i32 @llvm.umin.i32(i32 %3, i32 %i.y) ; 4 uses
  %.not.i = icmp ult i32 %1, %.pre349
  br i1 %.not.i, label %ma_node_get_output_channels.exit, label %ma_node_get_output_bus_count.exit.i216

ma_node_get_output_channels.exit:                 ; preds = %ma_node_get_output_bus_count.exit.i
  %i.ad = zext i32 %spec.select to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !973
  %i.ag = zext nneg i32 %1 to i64
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 9
  %.val.i = load i8, ptr %i.ai, align 1, !tbaa !977
  %i.aj = zext i8 %.val.i to i64
  %i.ak = shl nuw nsw i64 %i.ad, 2
  %i.al = mul nuw nsw i64 %i.ak, %i.aj            ; 2 uses
  %.not.i13.i = icmp eq i64 %i.al, 0
  br i1 %.not.i13.i, label %ma_node_get_output_bus_count.exit.i216, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ma_node_get_output_channels.exit, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.an, %ma_zero_memory_default.exit.i.i ], [ %2, %ma_node_get_output_channels.exit ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.am, %ma_zero_memory_default.exit.i.i ], [ %i.al, %ma_node_get_output_channels.exit ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i215 = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i215, label %ma_zero_memory_default.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.b, %.lr.ph.i
  %i.am = sub nuw nsw i64 %.08.i14.i, %spec.store.select.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %ma_node_get_output_bus_count.exit.i216.loopexit, label %.lr.ph.i, !llvm.loop !7

ma_node_get_output_bus_count.exit.i216.loopexit:  ; preds = %ma_zero_memory_default.exit.i.i
  %.pre = load i32, ptr %i.i, align 4, !tbaa !967
  br label %ma_node_get_output_bus_count.exit.i216

ma_node_get_output_bus_count.exit.i216:           ; preds = %ma_node_get_output_bus_count.exit.i, %ma_node_get_output_bus_count.exit.i216.loopexit, %ma_node_get_output_channels.exit
  %6 = phi i32 [ %.pre, %ma_node_get_output_bus_count.exit.i216.loopexit ], [ %.pre349, %ma_node_get_output_channels.exit ], [ %.pre349, %ma_node_get_output_bus_count.exit.i ] ; 2 uses
  %.not.i217 = icmp ult i32 %1, %6
  br i1 %.not.i217, label %bb.c, label %ma_node_get_output_channels.exit220

bb.c:                                             ; preds = %ma_node_get_output_bus_count.exit.i216
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !973
  %i.aq = zext nneg i32 %1 to i64
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 9
  %.val.i219 = load i8, ptr %i.as, align 1, !tbaa !977
  %i.at = zext i8 %.val.i219 to i32
  %i.au = mul i32 %spec.select, %i.at
  %i.av = zext i32 %i.au to i64
  br label %ma_node_get_output_channels.exit220

ma_node_get_output_channels.exit220:              ; preds = %ma_node_get_output_bus_count.exit.i216, %bb.c
  %.0.i218 = phi i64 [ %i.av, %bb.c ], [ 0, %ma_node_get_output_bus_count.exit.i216 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.i218
  %i.ax = sub nuw i32 %3, %spec.select
  br label %ma_node_get_output_bus_count.exit223

ma_node_get_output_bus_count.exit223:             ; preds = %ma_node_get_output_channels.exit220, %ma_node_get_state_time.exit213
  %i.ay = phi i32 [ %6, %ma_node_get_output_channels.exit220 ], [ %.pre349, %ma_node_get_state_time.exit213 ] ; 3 uses
  %.0176 = phi i32 [ %i.ax, %ma_node_get_output_channels.exit220 ], [ %3, %ma_node_get_state_time.exit213 ] ; 2 uses
  %.1170 = phi i32 [ %spec.select, %ma_node_get_output_channels.exit220 ], [ 0, %ma_node_get_state_time.exit213 ]
  %.0164 = phi ptr [ %i.aw, %ma_node_get_output_channels.exit220 ], [ %2, %ma_node_get_state_time.exit213 ] ; 13 uses
  %.not194 = icmp eq i32 %i.ac, 0
  %i.az = tail call i32 @llvm.usub.sat.i32(i32 %.0176, i32 %i.ac)
  %.1177 = select i1 %.not194, i32 %.0176, i32 %i.az ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !968 ; 3 uses
  %i.bc = icmp eq i32 %i.bb, 0                    ; 3 uses
  %i.bd = icmp eq i32 %i.ay, 1
  %or.cond = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %ma_node_get_output_bus_count.exit223
  store i32 0, ptr %i.d, align 4, !tbaa !118
  store i32 %.1177, ptr %i.e, align 4, !tbaa !118
  store ptr %.0164, ptr %i.c, align 16, !tbaa !373
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !978 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !980
  %.not207 = trunc i32 %i.bh to i1
  %.not.i225 = icmp eq i32 %1, 0
  %or.cond400 = and i1 %.not.i225, %.not207
  br i1 %or.cond400, label %ma_node_get_output_channels.exit228, label %ma_silence_pcm_frames.exit237

ma_node_get_output_channels.exit228:              ; preds = %bb.d
  %i.bi = zext i32 %.1177 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !973
  %i.bl = getelementptr i8, ptr %i.bk, i64 9
  %.val.i227 = load i8, ptr %i.bl, align 1, !tbaa !977
  %i.bm = zext i8 %.val.i227 to i64
  %i.bn = shl nuw nsw i64 %i.bi, 2
  %i.bo = mul nuw nsw i64 %i.bn, %i.bm            ; 2 uses
  %.not.i13.i229 = icmp eq i64 %i.bo, 0
  br i1 %.not.i13.i229, label %ma_silence_pcm_frames.exit237, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %ma_node_get_output_channels.exit228, %ma_zero_memory_default.exit.i.i235
  %.0.i15.i231 = phi ptr [ %i.bq, %ma_zero_memory_default.exit.i.i235 ], [ %.0164, %ma_node_get_output_channels.exit228 ] ; 3 uses
  %.08.i14.i232 = phi i64 [ %i.bp, %ma_zero_memory_default.exit.i.i235 ], [ %i.bo, %ma_node_get_output_channels.exit228 ] ; 2 uses
  %spec.store.select.i.i233 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i232, i64 4294967295) ; 3 uses
  %.not.i234 = icmp eq ptr %.0.i15.i231, null
  br i1 %.not.i234, label %ma_zero_memory_default.exit.i.i235, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i230
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i231, i8 0, i64 %spec.store.select.i.i233, i1 false)
  br label %ma_zero_memory_default.exit.i.i235

ma_zero_memory_default.exit.i.i235:               ; preds = %bb.e, %.lr.ph.i230
  %i.bp = sub nuw nsw i64 %.08.i14.i232, %spec.store.select.i.i233 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i15.i231, i64 %spec.store.select.i.i233
  %.not.i.i236 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i236, label %ma_silence_pcm_frames.exit237.loopexit, label %.lr.ph.i230, !llvm.loop !7

ma_silence_pcm_frames.exit237.loopexit:           ; preds = %ma_zero_memory_default.exit.i.i235
  %.pre356 = load ptr, ptr %i.be, align 8, !tbaa !978
  br label %ma_silence_pcm_frames.exit237

ma_silence_pcm_frames.exit237:                    ; preds = %ma_silence_pcm_frames.exit237.loopexit, %ma_node_get_output_channels.exit228, %bb.d
  %i.br = phi ptr [ %.pre356, %ma_silence_pcm_frames.exit237.loopexit ], [ %i.bf, %ma_node_get_output_channels.exit228 ], [ %i.bf, %bb.d ]
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !981 ; 2 uses
  %.not.i238 = icmp eq ptr %i.bs, null
  br i1 %.not.i238, label %ma_node_process_pcm_frames_internal.exit, label %bb.f

bb.f:                                             ; preds = %ma_silence_pcm_frames.exit237
  call void %i.bs(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #55, !inline_history !2677
  %.pre357 = load i32, ptr %i.e, align 4, !tbaa !118
  br label %ma_node_process_pcm_frames_internal.exit

ma_node_process_pcm_frames_internal.exit:         ; preds = %ma_silence_pcm_frames.exit237, %bb.f
  %i.bt = phi i32 [ %.1177, %ma_silence_pcm_frames.exit237 ], [ %.pre357, %bb.f ]
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !118
  br label %ma_node_get_output_bus_count.exit.i301

bb.g:                                             ; preds = %ma_node_get_output_bus_count.exit223
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !978 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !980
  %i.by = and i32 %i.bx, 1
  %.not195 = icmp eq i32 %i.by, 0
  br i1 %.not195, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.0164, ptr %i.c, align 16, !tbaa !373
  store ptr %.0164, ptr %i.b, align 16, !tbaa !373
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !969
  %i.cb = call fastcc i32 @ma_node_input_bus_read_pcm_frames(ptr noundef %0, ptr noundef %i.ca, ptr noundef %.0164, i32 noundef %.1177, ptr noundef %i.a, i64 noundef %5) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.i, label %ma_node_get_output_bus_count.exit.i301

bb.i:                                             ; preds = %bb.h
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !118 ; 3 uses
  store i32 %i.cd, ptr %i.d, align 4, !tbaa !118
  store i32 %i.cd, ptr %i.e, align 4, !tbaa !118
  %.not206 = icmp eq i32 %i.cd, 0
  br i1 %.not206, label %ma_node_get_output_bus_count.exit.i301, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !978
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !981 ; 2 uses
  %.not.i239 = icmp eq ptr %i.cf, null
  br i1 %.not.i239, label %ma_node_get_output_bus_count.exit.i301, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void %i.cf(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #55, !inline_history !2677
  br label %ma_node_get_output_bus_count.exit.i301

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ch = load i16, ptr %i.cg, align 8, !tbaa !982
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %spec.select209 = tail call i32 @llvm.umin.i32(i32 %.1177, i32 %i.ci) ; 3 uses
  store i32 %.1177, ptr %i.f, align 4, !tbaa !118
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2687 ; 2 uses
  %.not196 = icmp eq ptr %i.ck, null
  br i1 %.not196, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = call i32 %i.ck(ptr noundef nonnull %0, i32 noundef %spec.select209, ptr noundef nonnull %i.f) #55 ; 0 uses
  %.pre350 = load i32, ptr %i.f, align 4, !tbaa !118
  %.pre351 = load i16, ptr %i.cg, align 8, !tbaa !982
  %.pre360 = zext i16 %.pre351 to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi361 = phi i32 [ %.pre360, %bb.m ], [ %i.ci, %bb.l ] ; 2 uses
  %i.cm = phi i32 [ %.pre350, %bb.m ], [ %.1177, %bb.l ]
  %i.cn = icmp ugt i32 %i.cm, %.pre-phi361
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %.pre-phi361, ptr %i.f, align 4, !tbaa !118
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !973
  %i.cq = zext nneg i32 %1 to i64                 ; 5 uses
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load atomic i32, ptr %i.cs seq_cst, align 4
  %i.cu = and i32 %i.ct, 1
  %.not197 = icmp eq i32 %i.cu, 0
  br i1 %.not197, label %bb.as, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 5 uses
  store i16 0, ptr %i.cv, align 2, !tbaa !2688
  %.not329 = icmp eq i32 %i.ay, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 5 uses
  %.not199 = icmp eq ptr %.0164, null
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cq
  %wide.trip.count = zext i32 %i.ay to i64
  %wide.trip.count342 = zext i32 %i.bb to i64
  %wide.trip.count347 = zext i32 %i.bb to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.ar, %bb.q
  %.0174 = phi i32 [ 0, %bb.q ], [ %.2, %bb.ar ]  ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !118
  br i1 %.not329, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %ma_node_get_cached_output_ptr.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %ma_node_get_cached_output_ptr.exit ], [ 0, %bb.r ] ; 7 uses
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !973
  %i.dc = getelementptr inbounds nuw [56 x i8], ptr %i.db, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = atomicrmw and ptr %i.dd, i32 -2 seq_cst, align 4 ; 0 uses
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !983 ; 3 uses
  %i.dg = load i32, ptr %i.ba, align 8, !tbaa !968 ; 3 uses
  %.not.i241 = icmp eq i32 %i.dg, 0
  br i1 %.not.i241, label %.preheader.i, label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph
  %i.dh = load i16, ptr %i.cg, align 8, !tbaa !982
  %i.di = zext i16 %i.dh to i64                   ; 5 uses
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !969 ; 5 uses
  %wide.trip.count.i = zext i32 %i.dg to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.dk = icmp ult i32 %i.dg, 4
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph.i242.new

.lr.ph.i242.new:                                  ; preds = %.lr.ph.i242
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.t

.preheader.i.loopexit.unr-lcssa:                  ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i242
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i242 ], [ %indvars.iv.next.i.3, %.preheader.i.loopexit.unr-lcssa ]
end_hunk_0
