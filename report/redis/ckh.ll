inline.NumInlined: 64
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.emap_s = type { %struct.rtree_s }
%struct.rtree_s = type { ptr, %struct.malloc_mutex_s, [262144 x %struct.rtree_node_elm_s] }
%struct.malloc_mutex_s = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.mutex_prof_data_t, %union.pthread_mutex_t, %struct.atomic_b_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.atomic_b_t = type { i8 }
%struct.rtree_node_elm_s = type { %struct.atomic_p_t }
%struct.atomic_p_t = type { ptr }
%struct.arena_config_s = type { ptr, i8 }
%struct.rtree_contents_s = type { ptr, %struct.rtree_metadata_s }
%struct.rtree_metadata_s = type { i32, i32, i8, i8 }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }

@je_sz_large_pad = external local_unnamed_addr global i64, align 8
@je_sz_index2size_tab = external local_unnamed_addr global [235 x i64], align 16
@je_sz_size2index_tab = external local_unnamed_addr global [0 x i8], align 1
@je_arena_emap_global = external global %struct.emap_s, align 8
@je_arenas = external local_unnamed_addr global [0 x %struct.atomic_p_t], align 8
@je_arena_config_default = external constant %struct.arena_config_s, align 8

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_ckh_new(ptr noundef %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  store i64 42, ptr %1, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !15
  %i.b = urem i64 %2, 3
  %i.c = xor i64 %i.b, 3
  %i.d = add i64 %i.c, %2
  %i.e = udiv i64 %i.d, 3
  %i.f = shl i64 %i.e, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ %i.j, %bb.b ]     ; 3 uses
  %i.g = zext i32 %.0 to i64                      ; 3 uses
  %i.h = shl nuw i64 1, %i.g
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = add i32 %.0, 1
  br i1 %i.i, label %bb.b, label %bb.c, !llvm.loop !16

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %.0, -2                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.k, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %3, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.o, align 8, !tbaa !21
  %i.p = shl i64 16, %i.g                         ; 6 uses
  %i.q = icmp ult i64 %i.p, 14337
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw nsw i64 %i.p, 48
  %i.s = and i64 %i.r, 32704                      ; 4 uses
  %i.t = icmp samesign ult i64 %i.s, 4097
  br i1 %i.t, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.u = lshr exact i64 %i.s, 3
  %i.v = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24
  br label %sz_s2u.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = shl nuw nsw i64 %i.s, 1
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ab, i1 true) ; 2 uses
  %notmask.i29 = ashr exact i64 -1152921504606846976, %i.ac
  %i.ad = lshr i64 1152921504606846975, %i.ac
  %i.ae = add nuw nsw i64 %i.s, %i.ad
  %i.af = and i64 %i.ae, %notmask.i29
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.e, %bb.f
  %.0.i25 = phi i64 [ %i.z, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = icmp ult i64 %.0.i25, 16384
  br i1 %i.ag, label %sz_sa2u.exit, label %.thread

bb.g:                                             ; preds = %bb.c
  %i.ah = icmp ult i64 %i.p, 16385
  br i1 %i.ah, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ugt i64 %i.p, 8070450532247928832
  br i1 %i.ai, label %sz_s2u.exit27, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.aj = shl i64 32, %i.g
  %i.ak = add i64 %i.aj, -1
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ak, i1 true)
  %i.am = sub nsw i64 60, %i.al
  %notmask.i = shl nsw i64 -1, %i.am              ; 2 uses
  %i.an = xor i64 %notmask.i, -1
  %i.ao = add nuw nsw i64 %i.p, %i.an
  %i.ap = and i64 %i.ao, %notmask.i
  br label %sz_s2u.exit27

sz_s2u.exit27:                                    ; preds = %bb.i, %bb.h
  %.0.i28 = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.aq = icmp ult i64 %.0.i28, %i.p
  br i1 %i.aq, label %sz_sa2u.exit.thread, label %.thread

.thread:                                          ; preds = %sz_s2u.exit, %sz_s2u.exit27, %bb.g
  %.0.i = phi i64 [ %.0.i28, %sz_s2u.exit27 ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit ] ; 2 uses
  %i.ar = load i64, ptr @je_sz_large_pad, align 8, !tbaa !24
  %i.as = xor i64 %.0.i, -1
  %i.at = icmp ugt i64 %i.ar, %i.as
  %..0.i = select i1 %i.at, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %sz_s2u.exit, %.thread
  %.018.i = phi i64 [ %..0.i, %.thread ], [ %.0.i25, %sz_s2u.exit ] ; 2 uses
  %i.au = add nsw i64 %.018.i, -8070450532247928833
  %i.av = icmp ult i64 %i.au, -8070450532247928832
  br i1 %i.av, label %sz_sa2u.exit.thread, label %bb.j, !prof !26

bb.j:                                             ; preds = %sz_sa2u.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !23
  %i.ay = icmp sgt i8 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.m, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.az = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.l, label %tsdn_witness_tsdp_get.exit, !prof !25

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #15
  br label %tsdn_witness_tsdp_get.exit

bb.m:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.n, label %tsdn_witness_tsdp_get.exit, !prof !25

bb.n:                                             ; preds = %bb.m
  %i.bf = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext true) #15 ; 7 uses
  %i.bg = load i8, ptr %0, align 1, !tbaa !29, !range !31, !noundef !32
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.o, label %tsdn_witness_tsdp_get.exit

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not43.i.i = icmp eq ptr %i.bl, %i.bf
  br i1 %.not43.i.i, label %tsdn_witness_tsdp_get.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef %i.bf) #15
  br label %tsdn_witness_tsdp_get.exit

bb.r:                                             ; preds = %bb.o
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef %i.bf) #15
  br label %tsdn_witness_tsdp_get.exit

tsdn_witness_tsdp_get.exit:                       ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.r
  %.0.i.i34 = phi ptr [ %i.bf, %bb.r ], [ %i.bd, %bb.m ], [ %i.bf, %bb.n ], [ %i.bf, %bb.p ], [ %i.bf, %bb.q ], [ %i.bb, %bb.l ], [ %i.az, %bb.k ]
  %i.bm = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i.i34, i64 noundef range(i64 1, 8070450532247928833) %.018.i, i64 noundef 64, i1 noundef zeroext true, ptr noundef null) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.bm, null               ; 2 uses
  br i1 %.not.i, label %ipallocztm.exit, label %emap_alloc_ctx_lookup.exit, !prof !25

emap_alloc_ctx_lookup.exit:                       ; preds = %tsdn_witness_tsdp_get.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i64 noundef %i.bo)
  %i.bp = load ptr, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.val = load i64, ptr %i.bp, align 8, !tbaa !46
  %i.bq = and i64 %.val, 4095
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bq
  %i.bs = load atomic ptr, ptr %i.br monotonic, align 8
  %i.bt = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i64 noundef %i.bo)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.bt, 0
  %i.bu = and i64 %.fca.0.extract.i, 4294967295
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.by = atomicrmw add ptr %i.bx, i64 %i.bw monotonic, align 8 ; 0 uses
  br label %ipallocztm.exit

ipallocztm.exit:                                  ; preds = %tsdn_witness_tsdp_get.exit, %emap_alloc_ctx_lookup.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.bm, ptr %i.bz, align 8, !tbaa !49
  br label %sz_sa2u.exit.thread

sz_sa2u.exit.thread:                              ; preds = %sz_s2u.exit27, %ipallocztm.exit, %sz_sa2u.exit
  %.023 = phi i1 [ true, %sz_sa2u.exit ], [ %.not.i, %ipallocztm.exit ], [ true, %sz_s2u.exit27 ]
  ret i1 %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @je_ckh_delete(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %4 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = icmp eq ptr %0, null                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %4) #15
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i3 = phi ptr [ %4, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.e = ptrtoint ptr %i.b to i64                 ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %0, ptr noundef nonnull %.0.i3, i64 noundef %i.e)
  %i.f = load ptr, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.val = load i64, ptr %i.f, align 8, !tbaa !46
  %i.g = and i64 %.val, 4095
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.g
  %i.i = load atomic ptr, ptr %i.h monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  br i1 %i.c, label %bb.d, label %bb.e, !prof !25

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #15
  br label %emap_alloc_ctx_lookup.exit

bb.e:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_alloc_ctx_lookup.exit

emap_alloc_ctx_lookup.exit:                       ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %3, %bb.d ], [ %i.j, %bb.e ]
  %i.k = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.e)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.l = and i64 %.fca.0.extract.i, 4294967295
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.p = atomicrmw sub ptr %i.o, i64 %i.n monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  br i1 %i.c, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %emap_alloc_ctx_lookup.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #15
  br label %emap_alloc_ctx_lookup.exit.i

bb.g:                                             ; preds = %emap_alloc_ctx_lookup.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_alloc_ctx_lookup.exit.i

emap_alloc_ctx_lookup.exit.i:                     ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %2, %bb.f ], [ %i.q, %bb.g ]
  %i.r = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.e)
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.r, 1
  %i.s = and i32 %.fca.1.extract.i.i, 256
  %.not.i = icmp eq i32 %i.s, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !25

bb.h:                                             ; preds = %emap_alloc_ctx_lookup.exit.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %i.b) #15
  br label %arena_dalloc_no_tcache.exit

bb.i:                                             ; preds = %emap_alloc_ctx_lookup.exit.i
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %i.b)
  br label %arena_dalloc_no_tcache.exit

arena_dalloc_no_tcache.exit:                      ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @je_ckh_count(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @je_ckh_iter(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19
  %i.d = add i32 %i.c, 2
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %.017.highbits27 = lshr i64 %i.a, %i.e
  %.not29 = icmp eq i64 %.017.highbits27, 0
  br i1 %.not29, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.01728 = phi i64 [ %i.a, %.lr.ph ], [ %i.o, %bb.h ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.01728
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %2, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.01728
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  store ptr %i.m, ptr %3, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = add i64 %.01728, 1
  store i64 %i.n, ptr %1, align 8, !tbaa !24
  br label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.o = add i64 %.01728, 1                       ; 2 uses
  %.017.highbits = lshr i64 %i.o, %i.e
  %.not30 = icmp eq i64 %.017.highbits, 0
  br i1 %.not30, label %bb.b, label %.loopexit, !llvm.loop !54

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.g
  %i.p = phi i1 [ false, %bb.g ], [ true, %bb.a ], [ true, %bb.h ]
  ret i1 %i.p
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_ckh_insert(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !52
  store ptr %3, ptr %i.d, align 8, !tbaa !52
  %i.e = call fastcc zeroext i1 @ckh_try_insert(ptr noundef %1, ptr noundef %i.c, ptr noundef %i.d)
  br i1 %i.e, label %.lr.ph, label %ckh_grow.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %ckh_grow.exit
  %i.o = load i32, ptr %i.f, align 4, !tbaa !19   ; 2 uses
  %i.p = add i32 %i.o, 2
  br label %bb.c

bb.c:                                             ; preds = %arena_dalloc_no_tcache.exit.i, %bb.b
  %.029.i = phi i32 [ %i.p, %bb.b ], [ %i.q, %arena_dalloc_no_tcache.exit.i ] ; 2 uses
  %i.q = add i32 %.029.i, 1                       ; 2 uses
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = shl i64 16, %i.r                         ; 6 uses
  %i.t = icmp ult i64 %i.s, 14337
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %i.s, 48
  %i.v = and i64 %i.u, 32704                      ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, 4097
  br i1 %i.w, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.x = lshr exact i64 %i.v, 3
  %i.y = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  br label %sz_s2u.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = shl nuw nsw i64 %i.v, 1
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %notmask.i37.i = ashr exact i64 -1152921504606846976, %i.af
  %i.ag = lshr i64 1152921504606846975, %i.af
  %i.ah = add nuw nsw i64 %i.ag, %i.v
  %i.ai = and i64 %i.ah, %notmask.i37.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %bb.f, %bb.e
  %.0.i33.i = phi i64 [ %i.ac, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %i.aj = icmp ult i64 %.0.i33.i, 16384
  br i1 %i.aj, label %sz_sa2u.exit.i, label %.thread.i

bb.g:                                             ; preds = %bb.c
  %i.ak = icmp ult i64 %i.s, 16385
  br i1 %i.ak, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ugt i64 %i.s, 8070450532247928832
  br i1 %i.al, label %sz_s2u.exit35.i, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.am = shl i64 32, %i.r
  %i.an = add i64 %i.am, -1
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.an, i1 true)
  %i.ap = sub nsw i64 60, %i.ao
  %notmask.i.i = shl nsw i64 -1, %i.ap            ; 2 uses
  %i.aq = xor i64 %notmask.i.i, -1
  %i.ar = add nuw nsw i64 %i.s, %i.aq
  %i.as = and i64 %i.ar, %notmask.i.i
  br label %sz_s2u.exit35.i

sz_s2u.exit35.i:                                  ; preds = %bb.i, %bb.h
  %.0.i36.i = phi i64 [ %i.as, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.at = icmp ult i64 %.0.i36.i, %i.s
  br i1 %i.at, label %ckh_grow.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %sz_s2u.exit35.i, %bb.g, %sz_s2u.exit.i
  %.0.i.i = phi i64 [ %.0.i36.i, %sz_s2u.exit35.i ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit.i ] ; 2 uses
  %i.au = load i64, ptr @je_sz_large_pad, align 8, !tbaa !24
  %i.av = xor i64 %.0.i.i, -1
  %i.aw = icmp ugt i64 %i.au, %i.av
  %..0.i.i = select i1 %i.aw, i64 0, i64 %.0.i.i
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread.i, %sz_s2u.exit.i
  %.018.i.i = phi i64 [ %..0.i.i, %.thread.i ], [ %.0.i33.i, %sz_s2u.exit.i ] ; 2 uses
  %i.ax = add nsw i64 %.018.i.i, -8070450532247928833
  %i.ay = icmp ult i64 %i.ax, -8070450532247928832
  br i1 %i.ay, label %ckh_grow.exit.thread, label %bb.j, !prof !26

bb.j:                                             ; preds = %sz_sa2u.exit.i
  %i.az = load i8, ptr %i.g, align 1, !tbaa !23
  %i.ba = icmp sgt i8 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.m, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.bb = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.l, label %tsdn_witness_tsdp_get.exit43.i, !prof !25

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #15
  br label %tsdn_witness_tsdp_get.exit43.i

bb.m:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !27  ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %tsdn_witness_tsdp_get.exit43.i, !prof !25

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext true) #15 ; 7 uses
  %i.bh = load i8, ptr %0, align 1, !tbaa !29, !range !31, !noundef !32
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.o, label %tsdn_witness_tsdp_get.exit43.i

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not43.i.i.i = icmp eq ptr %i.bj, %i.bg
  br i1 %.not43.i.i.i, label %tsdn_witness_tsdp_get.exit43.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef %i.bg) #15
  br label %tsdn_witness_tsdp_get.exit43.i

bb.r:                                             ; preds = %bb.o
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef %i.bg) #15
  br label %tsdn_witness_tsdp_get.exit43.i

tsdn_witness_tsdp_get.exit43.i:                   ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k
  %.0.i.i64.i = phi ptr [ %i.bg, %bb.r ], [ %i.be, %bb.m ], [ %i.bg, %bb.n ], [ %i.bg, %bb.p ], [ %i.bg, %bb.q ], [ %i.bd, %bb.l ], [ %i.bb, %bb.k ]
  %i.bk = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i.i64.i, i64 noundef range(i64 1, 8070450532247928833) %.018.i.i, i64 noundef 64, i1 noundef zeroext true, ptr noundef null) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %ckh_grow.exit.thread, label %bb.s, !prof !25

bb.s:                                             ; preds = %tsdn_witness_tsdp_get.exit43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.bl)
  %i.bm = load ptr, ptr %4, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.val63.i = load i64, ptr %i.bm, align 8, !tbaa !46
  %i.bn = and i64 %.val63.i, 4095
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bn
  %i.bp = load atomic ptr, ptr %i.bo monotonic, align 8
  %i.bq = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.bl)
  %.fca.0.extract.i58.i = extractvalue { i64, i32 } %i.bq, 0
  %i.br = and i64 %.fca.0.extract.i58.i, 4294967295
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.bv = atomicrmw add ptr %i.bu, i64 %i.bt monotonic, align 8 ; 0 uses
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !49  ; 5 uses
  store ptr %i.bk, ptr %i.m, align 8, !tbaa !49
  %i.bx = add i32 %.029.i, -1
  store i32 %i.bx, ptr %i.f, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.by = load i64, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !15
  %.not22.i.i = icmp eq i64 %i.by, 0
  br i1 %.not22.i.i, label %emap_alloc_ctx_lookup.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.v
  %.021.i.i = phi i64 [ %.1.i.i, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.01520.i.i = phi i64 [ %i.cf, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.01520.i.i ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50 ; 2 uses
  %.not.i65.i = icmp eq ptr %i.ca, null
  br i1 %.not.i65.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !52
  %i.cd = call fastcc zeroext i1 @ckh_try_insert(ptr noundef %1, ptr noundef %i.a, ptr noundef %i.b)
  br i1 %i.cd, label %emap_alloc_ctx_lookup.exit.i67.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = add nuw i64 %.021.i.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.ce, %bb.u ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cf = add i64 %.01520.i.i, 1
  %i.cg = icmp ult i64 %.1.i.i, %i.by
  br i1 %i.cg, label %.lr.ph.i.i, label %emap_alloc_ctx_lookup.exit.i.i, !llvm.loop !55

emap_alloc_ctx_lookup.exit.i.i:                   ; preds = %bb.s, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ch = ptrtoint ptr %i.bw to i64               ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.ch)
  %i.ci = load ptr, ptr %6, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.val.i = load i64, ptr %i.ci, align 8, !tbaa !46
  %i.cj = and i64 %.val.i, 4095
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cj
  %i.cl = load atomic ptr, ptr %i.ck monotonic, align 8
  %i.cm = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.ch)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.cm, 0
  %i.cn = and i64 %.fca.0.extract.i.i, 4294967295
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cr = atomicrmw sub ptr %i.cq, i64 %i.cp monotonic, align 8 ; 0 uses
  %i.cs = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.ch)
  %.fca.1.extract.i.i.i = extractvalue { i64, i32 } %i.cs, 1
  %i.ct = and i32 %.fca.1.extract.i.i.i, 256
  %.not.i66.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i66.i, label %bb.x, label %bb.w, !prof !25

bb.w:                                             ; preds = %emap_alloc_ctx_lookup.exit.i.i
  tail call void @je_arena_dalloc_small(ptr noundef nonnull %0, ptr noundef %i.bw) #15
  br label %ckh_grow.exit

bb.x:                                             ; preds = %emap_alloc_ctx_lookup.exit.i.i
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef nonnull %0, ptr noundef %i.bw)
  br label %ckh_grow.exit

emap_alloc_ctx_lookup.exit.i67.i:                 ; preds = %bb.t
  store i64 %i.by, ptr %i.n, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.cv = ptrtoint ptr %i.cu to i64               ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.cv)
  %i.cw = load ptr, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.val62.i = load i64, ptr %i.cw, align 8, !tbaa !46
  %i.cx = and i64 %.val62.i, 4095
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cx
  %i.cz = load atomic ptr, ptr %i.cy monotonic, align 8
  %i.da = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.cv)
  %.fca.0.extract.i53.i = extractvalue { i64, i32 } %i.da, 0
  %i.db = and i64 %.fca.0.extract.i53.i, 4294967295
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.df = atomicrmw sub ptr %i.de, i64 %i.dd monotonic, align 8 ; 0 uses
  %i.dg = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.cv)
  %.fca.1.extract.i.i69.i = extractvalue { i64, i32 } %i.dg, 1
  %i.dh = and i32 %.fca.1.extract.i.i69.i, 256
  %.not.i70.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i70.i, label %bb.z, label %bb.y, !prof !25

bb.y:                                             ; preds = %emap_alloc_ctx_lookup.exit.i67.i
  tail call void @je_arena_dalloc_small(ptr noundef nonnull %0, ptr noundef %i.cu) #15
  br label %arena_dalloc_no_tcache.exit.i

bb.z:                                             ; preds = %emap_alloc_ctx_lookup.exit.i67.i
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef nonnull %0, ptr noundef %i.cu)
  br label %arena_dalloc_no_tcache.exit.i

arena_dalloc_no_tcache.exit.i:                    ; preds = %bb.z, %bb.y
  store ptr %i.bw, ptr %i.m, align 8, !tbaa !49
  store i32 %i.o, ptr %i.f, align 4, !tbaa !19
  br label %bb.c

ckh_grow.exit:                                    ; preds = %bb.w, %bb.x
  %i.di = call fastcc zeroext i1 @ckh_try_insert(ptr noundef %1, ptr noundef %i.c, ptr noundef %i.d)
  br i1 %i.di, label %bb.b, label %ckh_grow.exit.thread, !llvm.loop !56

ckh_grow.exit.thread:                             ; preds = %ckh_grow.exit, %tsdn_witness_tsdp_get.exit43.i, %sz_s2u.exit35.i, %sz_sa2u.exit.i, %bb.a
  %i.dj = phi i1 [ true, %tsdn_witness_tsdp_get.exit43.i ], [ false, %bb.a ], [ true, %sz_sa2u.exit.i ], [ true, %sz_s2u.exit35.i ], [ false, %ckh_grow.exit ]
  ret i1 %i.dj
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @ckh_try_insert(ptr noundef captures(none) %0, ptr noundef nonnull captures(none) %1, ptr noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = load ptr, ptr %1, align 8, !tbaa !52     ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  call void %i.f(ptr noundef %i.c, ptr noundef nonnull %i.b) #15
  %i.g = load i64, ptr %i.b, align 16, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %i.j = zext nneg i32 %i.i to i64
  %notmask = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask, -1                     ; 2 uses
  %i.l = and i64 %i.g, %i.k
  %i.m = load i64, ptr %0, align 8, !tbaa !24
  %i.n = mul i64 %i.m, 6364136223846793005
  %i.o = add i64 %i.n, 1442695040888963407        ; 3 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !24
  %i.p = lshr i64 %i.o, 62                        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 3 uses
  %.idx.i = shl i64 %i.l, 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 4 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.p ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %ckh_try_bucket_insert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = add nuw nsw i64 %i.p, 1
  %i.w = and i64 %i.v, 3
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %.not20.i = icmp eq ptr %i.y, null
end_hunk_0
begin_hunk_1_@ckh_try_insert:bb.a
  %i.cn = add nuw nsw i64 %i.ci, 1
  %i.co = and i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !50
  %.not20.i.i = icmp eq ptr %i.cq, null
  br i1 %.not20.i.i, label %ckh_try_bucket_insert.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = xor i64 %i.ci, 2
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cr ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  %.not21.i.i = icmp eq ptr %i.ct, null
  br i1 %.not21.i.i, label %ckh_try_bucket_insert.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = add nuw nsw i64 %i.ci, 3
  %i.cv = and i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50
  %.not22.i.i = icmp eq ptr %i.cx, null
  br i1 %.not22.i.i, label %ckh_try_bucket_insert.exit.thread.i, label %ckh_try_bucket_insert.exit.i

ckh_try_bucket_insert.exit.thread.i:              ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.lcssa18.i.i = phi ptr [ %i.cl, %bb.k ], [ %i.cp, %bb.l ], [ %i.cs, %bb.m ], [ %i.cw, %bb.n ] ; 2 uses
  store ptr %i.bs, ptr %.lcssa18.i.i, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %.lcssa18.i.i, i64 8
  store ptr %i.bu, ptr %i.cy, align 8, !tbaa !53
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !15
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !15
  br label %ckh_evict_reloc_insert.exit

ckh_evict_reloc_insert.exit:                      ; preds = %bb.j, %ckh_try_bucket_insert.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.o

bb.o:                                             ; preds = %ckh_try_bucket_insert.exit25, %ckh_try_bucket_insert.exit, %ckh_evict_reloc_insert.exit
  %.0 = phi i1 [ %i.ce, %ckh_evict_reloc_insert.exit ], [ false, %ckh_try_bucket_insert.exit ], [ false, %ckh_try_bucket_insert.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_ckh_remove(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %7 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.c = tail call fastcc i64 @ckh_isearch(ptr noundef %1, ptr noundef %2) ; 4 uses
  %.not = icmp eq i64 %i.c, -1                    ; 2 uses
  br i1 %.not, label %ckh_shrink.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq ptr %3, null
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  store ptr %i.g, ptr %3, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not26 = icmp eq ptr %4, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  store ptr %i.l, ptr %4, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19   ; 5 uses
  %i.u = zext nneg i32 %i.t to i64
  %.highbits = lshr i64 %i.r, %i.u
  %i.v = icmp eq i64 %.highbits, 0
  br i1 %i.v, label %bb.g, label %ckh_shrink.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = icmp ugt i32 %i.t, %i.x
  br i1 %i.y, label %bb.h, label %ckh_shrink.exit

bb.h:                                             ; preds = %bb.g
  %i.z = add i32 %i.t, 1
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = shl i64 16, %i.aa                       ; 6 uses
  %i.ac = icmp ult i64 %i.ab, 14337
  br i1 %i.ac, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ad = add nuw nsw i64 %i.ab, 48
  %i.ae = and i64 %i.ad, 32704                    ; 4 uses
  %i.af = icmp samesign ult i64 %i.ae, 4097
  br i1 %i.af, label %bb.j, label %bb.k, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.ag = lshr exact i64 %i.ae, 3
  %i.ah = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !23
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  br label %sz_s2u.exit.i

bb.k:                                             ; preds = %bb.i
  %i.am = shl nuw nsw i64 %i.ae, 1
  %i.an = add nsw i64 %i.am, -1
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.an, i1 true) ; 2 uses
  %notmask.i29.i = ashr exact i64 -1152921504606846976, %i.ao
  %i.ap = lshr i64 1152921504606846975, %i.ao
  %i.aq = add nuw nsw i64 %i.ap, %i.ae
  %i.ar = and i64 %i.aq, %notmask.i29.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %bb.k, %bb.j
  %.0.i25.i = phi i64 [ %i.al, %bb.j ], [ %i.ar, %bb.k ] ; 2 uses
  %i.as = icmp ult i64 %.0.i25.i, 16384
  br i1 %i.as, label %sz_sa2u.exit.i, label %.thread.i

bb.l:                                             ; preds = %bb.h
  %i.at = icmp ult i64 %i.ab, 16385
  br i1 %i.at, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = icmp ugt i64 %i.ab, 8070450532247928832
  br i1 %i.au, label %sz_s2u.exit27.i, label %bb.n, !prof !25

bb.n:                                             ; preds = %bb.m
  %i.av = shl i64 32, %i.aa
  %i.aw = add i64 %i.av, -1
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aw, i1 true)
  %i.ay = sub nsw i64 60, %i.ax
  %notmask.i.i = shl nsw i64 -1, %i.ay            ; 2 uses
  %i.az = xor i64 %notmask.i.i, -1
  %i.ba = add nuw nsw i64 %i.ab, %i.az
  %i.bb = and i64 %i.ba, %notmask.i.i
  br label %sz_s2u.exit27.i

sz_s2u.exit27.i:                                  ; preds = %bb.n, %bb.m
  %.0.i28.i = phi i64 [ %i.bb, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.bc = icmp ult i64 %.0.i28.i, %i.ab
  br i1 %i.bc, label %ckh_shrink.exit, label %.thread.i

.thread.i:                                        ; preds = %sz_s2u.exit27.i, %bb.l, %sz_s2u.exit.i
  %.0.i.i = phi i64 [ %.0.i28.i, %sz_s2u.exit27.i ], [ 16384, %bb.l ], [ 16384, %sz_s2u.exit.i ] ; 2 uses
  %i.bd = load i64, ptr @je_sz_large_pad, align 8, !tbaa !24
  %i.be = xor i64 %.0.i.i, -1
  %i.bf = icmp ugt i64 %i.bd, %i.be
  %..0.i.i = select i1 %i.bf, i64 0, i64 %.0.i.i
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread.i, %sz_s2u.exit.i
  %.018.i.i = phi i64 [ %..0.i.i, %.thread.i ], [ %.0.i25.i, %sz_s2u.exit.i ] ; 2 uses
  %i.bg = add nsw i64 %.018.i.i, -8070450532247928833
  %i.bh = icmp ult i64 %i.bg, -8070450532247928832
  br i1 %i.bh, label %ckh_shrink.exit, label %bb.o, !prof !26

bb.o:                                             ; preds = %sz_sa2u.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !23
  %i.bk = icmp sgt i8 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %bb.r, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.bl = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.q, label %tsdn_witness_tsdp_get.exit35.i, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.bn = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #15
  br label %tsdn_witness_tsdp_get.exit35.i

bb.r:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !27 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.s, label %tsdn_witness_tsdp_get.exit35.i, !prof !25

bb.s:                                             ; preds = %bb.r
  %i.br = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext true) #15 ; 7 uses
  %i.bs = load i8, ptr %0, align 1, !tbaa !29, !range !31, !noundef !32
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.t, label %tsdn_witness_tsdp_get.exit35.i

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not43.i.i.i = icmp eq ptr %i.bx, %i.br
  br i1 %.not43.i.i.i, label %tsdn_witness_tsdp_get.exit35.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, ptr noundef %i.br) #15
  br label %tsdn_witness_tsdp_get.exit35.i

bb.w:                                             ; preds = %bb.t
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, ptr noundef %i.br) #15
  br label %tsdn_witness_tsdp_get.exit35.i

tsdn_witness_tsdp_get.exit35.i:                   ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p
  %.0.i.i56.i = phi ptr [ %i.br, %bb.w ], [ %i.bp, %bb.r ], [ %i.br, %bb.s ], [ %i.br, %bb.u ], [ %i.br, %bb.v ], [ %i.bn, %bb.q ], [ %i.bl, %bb.p ]
  %i.by = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i.i56.i, i64 noundef range(i64 1, 8070450532247928833) %.018.i.i, i64 noundef 64, i1 noundef zeroext true, ptr noundef null) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %ckh_shrink.exit, label %bb.x, !prof !25

bb.x:                                             ; preds = %tsdn_witness_tsdp_get.exit35.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull %0, ptr noundef nonnull %i.bz, i64 noundef %i.ca)
  %i.cb = load ptr, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.val55.i = load i64, ptr %i.cb, align 8, !tbaa !46
  %i.cc = and i64 %.val55.i, 4095
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cc
  %i.ce = load atomic ptr, ptr %i.cd monotonic, align 8
  %i.cf = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, i64 noundef %i.ca)
  %.fca.0.extract.i50.i = extractvalue { i64, i32 } %i.cf, 0
  %i.cg = and i64 %.fca.0.extract.i50.i, 4294967295
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.ck = atomicrmw add ptr %i.cj, i64 %i.ci monotonic, align 8 ; 0 uses
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !49  ; 5 uses
  store ptr %i.by, ptr %i.m, align 8, !tbaa !49
  %i.cm = add i32 %i.t, -1
  store i32 %i.cm, ptr %i.s, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cn = load i64, ptr %i.p, align 8, !tbaa !15  ; 3 uses
  store i64 0, ptr %i.p, align 8, !tbaa !15
  %.not22.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not22.i.i, label %emap_alloc_ctx_lookup.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.aa
  %.021.i.i = phi i64 [ %.1.i.i, %bb.aa ], [ 0, %bb.x ] ; 2 uses
  %.01520.i.i = phi i64 [ %i.cu, %bb.aa ], [ 0, %bb.x ] ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.01520.i.i ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !50 ; 2 uses
  %.not.i57.i = icmp eq ptr %i.cp, null
  br i1 %.not.i57.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !53
  store ptr %i.cr, ptr %i.b, align 8, !tbaa !52
  %i.cs = call fastcc zeroext i1 @ckh_try_insert(ptr noundef %1, ptr noundef %i.a, ptr noundef %i.b)
  br i1 %i.cs, label %emap_alloc_ctx_lookup.exit.i59.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = add nuw i64 %.021.i.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.ct, %bb.z ], [ %.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cu = add i64 %.01520.i.i, 1
  %i.cv = icmp ult i64 %.1.i.i, %i.cn
  br i1 %i.cv, label %.lr.ph.i.i, label %emap_alloc_ctx_lookup.exit.i.i, !llvm.loop !55

emap_alloc_ctx_lookup.exit.i.i:                   ; preds = %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.cw = ptrtoint ptr %i.cl to i64               ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull %0, ptr noundef nonnull %i.bz, i64 noundef %i.cw)
  %i.cx = load ptr, ptr %7, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.val.i = load i64, ptr %i.cx, align 8, !tbaa !46
  %i.cy = and i64 %.val.i, 4095
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cy
  %i.da = load atomic ptr, ptr %i.cz monotonic, align 8
  %i.db = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, i64 noundef %i.cw)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.db, 0
  %i.dc = and i64 %.fca.0.extract.i.i, 4294967295
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !24
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dg = atomicrmw sub ptr %i.df, i64 %i.de monotonic, align 8 ; 0 uses
  %i.dh = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, i64 noundef %i.cw)
  %.fca.1.extract.i.i.i = extractvalue { i64, i32 } %i.dh, 1
  %i.di = and i32 %.fca.1.extract.i.i.i, 256
  %.not.i58.i = icmp eq i32 %i.di, 0
  br i1 %.not.i58.i, label %bb.ac, label %bb.ab, !prof !25

bb.ab:                                            ; preds = %emap_alloc_ctx_lookup.exit.i.i
  tail call void @je_arena_dalloc_small(ptr noundef nonnull %0, ptr noundef %i.cl) #15
  br label %ckh_shrink.exit

bb.ac:                                            ; preds = %emap_alloc_ctx_lookup.exit.i.i
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef nonnull %0, ptr noundef %i.cl)
  br label %ckh_shrink.exit

emap_alloc_ctx_lookup.exit.i59.i:                 ; preds = %bb.y
  store i64 %i.cn, ptr %i.p, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.dj = load ptr, ptr %i.m, align 8, !tbaa !49  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.dk = ptrtoint ptr %i.dj to i64               ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull %0, ptr noundef nonnull %i.bz, i64 noundef %i.dk)
  %i.dl = load ptr, ptr %6, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.val54.i = load i64, ptr %i.dl, align 8, !tbaa !46
  %i.dm = and i64 %.val54.i, 4095
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.dm
  %i.do = load atomic ptr, ptr %i.dn monotonic, align 8
  %i.dp = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, i64 noundef %i.dk)
  %.fca.0.extract.i45.i = extractvalue { i64, i32 } %i.dp, 0
  %i.dq = and i64 %.fca.0.extract.i45.i, 4294967295
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.du = atomicrmw sub ptr %i.dt, i64 %i.ds monotonic, align 8 ; 0 uses
  %i.dv = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, i64 noundef %i.dk)
  %.fca.1.extract.i.i61.i = extractvalue { i64, i32 } %i.dv, 1
  %i.dw = and i32 %.fca.1.extract.i.i61.i, 256
  %.not.i62.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i62.i, label %bb.ae, label %bb.ad, !prof !25

bb.ad:                                            ; preds = %emap_alloc_ctx_lookup.exit.i59.i
  tail call void @je_arena_dalloc_small(ptr noundef nonnull %0, ptr noundef %i.dj) #15
  br label %arena_dalloc_no_tcache.exit65.i

bb.ae:                                            ; preds = %emap_alloc_ctx_lookup.exit.i59.i
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef nonnull %0, ptr noundef %i.dj)
  br label %arena_dalloc_no_tcache.exit65.i

arena_dalloc_no_tcache.exit65.i:                  ; preds = %bb.ae, %bb.ad
  store ptr %i.cl, ptr %i.m, align 8, !tbaa !49
  store i32 %i.t, ptr %i.s, align 4, !tbaa !19
  br label %ckh_shrink.exit

ckh_shrink.exit:                                  ; preds = %arena_dalloc_no_tcache.exit65.i, %bb.ac, %bb.ab, %tsdn_witness_tsdp_get.exit35.i, %sz_sa2u.exit.i, %sz_s2u.exit27.i, %bb.a, %bb.f, %bb.g
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ckh_isearch(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  call void %i.c(ptr noundef %1, ptr noundef nonnull %i.a) #15
  %i.d = load i64, ptr %i.a, align 16, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = zext nneg i32 %i.f to i64
  %notmask = shl nsw i64 -1, %i.g
  %i.h = xor i64 %notmask, -1
  %i.i = and i64 %i.d, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.k = shl i64 %i.i, 2                          ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.k
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.q = call zeroext i1 %i.p(ptr noundef %1, ptr noundef nonnull %i.o) #15, !inline_history !58
  br i1 %i.q, label %ckh_bucket_search.exit26, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.s = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %.not.1.i = icmp eq ptr %i.u, null
end_hunk_1
