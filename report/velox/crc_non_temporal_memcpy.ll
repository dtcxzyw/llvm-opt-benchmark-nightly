Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/crc_non_temporal_memcpy?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngineD0Ev = comdat any

$_ZN4absl12lts_2024011612crc_internal15CrcMemcpyEngineD2Ev = comdat any

$_ZN4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngineD0Ev = comdat any

$_ZTIN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE = comdat any

$_ZTSN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE = comdat any

@_ZTVN4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngineE = local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngineE, ptr @_ZN4absl12lts_2024011612crc_internal15CrcMemcpyEngineD2Ev, ptr @_ZN4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngineD0Ev, ptr @_ZNK4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngine7ComputeEPvPKvmNS0_8crc32c_tE] }, align 8
@_ZTIN4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngineE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngineE, ptr @_ZTIN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngineE = constant [64 x i8] c"N4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngineE\00", align 1
@_ZTIN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE = linkonce_odr constant [53 x i8] c"N4absl12lts_2024011612crc_internal15CrcMemcpyEngineE\00", comdat, align 1
@_ZTVN4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngineE = local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngineE, ptr @_ZN4absl12lts_2024011612crc_internal15CrcMemcpyEngineD2Ev, ptr @_ZN4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngineD0Ev, ptr @_ZNK4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngine7ComputeEPvPKvmNS0_8crc32c_tE] }, align 8
@_ZTIN4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngineE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngineE, ptr @_ZTIN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE }, align 8
@_ZTSN4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngineE = constant [67 x i8] c"N4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngineE\00", align 1

; Function Attrs: mustprogress uwtable
define i32 @_ZNK4absl12lts_2024011612crc_internal26CrcNonTemporalMemcpyEngine7ComputeEPvPKvmNS0_8crc32c_tE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, i32 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i64 %3, 8192
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit
  %i.b = phi i64 [ %i.ba, %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit ], [ 8192, %bb.a ] ; 3 uses
  %.sroa.026.046 = phi i32 [ %i.d, %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit ], [ %4, %bb.a ]
  %.045 = phi i64 [ %i.b, %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.045 ; 4 uses
  %i.d = tail call i32 @_ZN4absl12lts_2024011612crc_internal20ExtendCrc32cInternalENS0_8crc32c_tESt17basic_string_viewIcSt11char_traitsIcEE(i32 %.sroa.026.046, i64 8192, ptr %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.045 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %5 = ptrtoint ptr %i.e to i64
  %6 = and i64 %5, 63                             ; 3 uses
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %7 = sub nuw nsw i64 64, %6                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 %7, i1 false), !alias.scope !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %7
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %7
  %8 = or disjoint i64 %6, 8128
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.050.i = phi i64 [ 8192, %.lr.ph ], [ %8, %bb.b ] ; 4 uses
  %.034.i = phi ptr [ %i.c, %.lr.ph ], [ %i.g, %bb.b ] ; 7 uses
  %.0.i = phi ptr [ %i.e, %.lr.ph ], [ %i.f, %bb.b ] ; 7 uses
  tail call void @llvm.x86.sse.sfence(), !noalias !8
  %i.h = add nsw i64 %.050.i, -64                 ; 2 uses
  %i.i = and i64 %i.h, 64
  %lcmp.mod.not.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.j = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.034.i)
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i, i64 16
  %i.l = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %.034.i, i64 32
  %i.n = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %.034.i, i64 48
  %i.p = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.o)
  store <16 x i8> %i.j, ptr %.0.i, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store <16 x i8> %i.l, ptr %i.q, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store <16 x i8> %i.n, ptr %i.r, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store <16 x i8> %i.p, ptr %i.s, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.t = getelementptr inbounds nuw i8, ptr %.034.i, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.v = add nsw i64 %.050.i, -64                 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.03654.i.unr = phi ptr [ %.0.i, %bb.c ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %.03753.i.unr = phi ptr [ %.034.i, %bb.c ], [ %i.t, %.prol.loopexit.unr-lcssa ]
  %.15152.i.unr = phi i64 [ %.050.i, %bb.c ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  %.lcssa62.unr = phi i64 [ poison, %bb.c ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  %i.w = icmp ult i64 %i.h, 64
  br i1 %i.w, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.03654.i = phi ptr [ %i.au, %.new ], [ %.03654.i.unr, %.prol.loopexit ] ; 9 uses
  %.03753.i = phi ptr [ %i.at, %.new ], [ %.03753.i.unr, %.prol.loopexit ] ; 9 uses
  %.15152.i = phi i64 [ %i.av, %.new ], [ %.15152.i.unr, %.prol.loopexit ]
  %i.x = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.03753.i)
  %i.y = getelementptr inbounds nuw i8, ptr %.03753.i, i64 16
  %i.z = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %.03753.i, i64 32
  %i.ab = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03753.i, i64 48
  %i.ad = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ac)
  store <16 x i8> %i.x, ptr %.03654.i, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.ae = getelementptr inbounds nuw i8, ptr %.03654.i, i64 16
  store <16 x i8> %i.z, ptr %i.ae, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.af = getelementptr inbounds nuw i8, ptr %.03654.i, i64 32
  store <16 x i8> %i.ab, ptr %i.af, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.ag = getelementptr inbounds nuw i8, ptr %.03654.i, i64 48
  store <16 x i8> %i.ad, ptr %i.ag, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.ah = getelementptr inbounds nuw i8, ptr %.03753.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.03654.i, i64 64
  %i.aj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ah)
  %i.ak = getelementptr inbounds nuw i8, ptr %.03753.i, i64 80
  %i.al = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %.03753.i, i64 96
  %i.an = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %.03753.i, i64 112
  %i.ap = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ao)
  store <16 x i8> %i.aj, ptr %i.ai, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.aq = getelementptr inbounds nuw i8, ptr %.03654.i, i64 80
  store <16 x i8> %i.al, ptr %i.aq, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.03654.i, i64 96
  store <16 x i8> %i.an, ptr %i.ar, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.as = getelementptr inbounds nuw i8, ptr %.03654.i, i64 112
  store <16 x i8> %i.ap, ptr %i.as, align 16, !tbaa !13, !alias.scope !14, !noalias !8, !nontemporal !15
  %i.at = getelementptr inbounds nuw i8, ptr %.03753.i, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %.03654.i, i64 128
  %i.av = add nsw i64 %.15152.i, -128             ; 3 uses
  %i.aw = icmp ugt i64 %i.av, 63
  br i1 %i.aw, label %.new, label %.unr-lcssa, !llvm.loop !16

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa62 = phi i64 [ %.lcssa62.unr, %.prol.loopexit ], [ %i.av, %.new ] ; 2 uses
  tail call void @llvm.x86.sse.sfence()
  %.not40.i = icmp eq i64 %.lcssa62, 0
  br i1 %.not40.i, label %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit, label %bb.d

bb.d:                                             ; preds = %.unr-lcssa
  %i.ax = and i64 %.050.i, -64                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.034.i, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.ay, i64 %.lcssa62, i1 false), !alias.scope !11
  br label %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit

_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit: ; preds = %.unr-lcssa, %bb.d
  %i.ba = add i64 %i.b, 8192                      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %3
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit ] ; 4 uses
  %.sroa.026.0.lcssa = phi i32 [ %4, %bb.a ], [ %i.d, %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit ] ; 2 uses
  %i.bc = icmp ult i64 %.0.lcssa, %3
  br i1 %i.bc, label %bb.e, label %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit42

bb.e:                                             ; preds = %._crit_edge
  %i.bd = sub nuw i64 %3, %.0.lcssa               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa ; 4 uses
  %i.bf = tail call i32 @_ZN4absl12lts_2024011612crc_internal20ExtendCrc32cInternalENS0_8crc32c_tESt17basic_string_viewIcSt11char_traitsIcEE(i32 %.sroa.026.0.lcssa, i64 %i.bd, ptr %i.be) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, 63                       ; 2 uses
  %.not.i31 = icmp eq i64 %i.bi, 0
  br i1 %.not.i31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = sub nuw nsw i64 64, %i.bi
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bj) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.be, i64 %.sroa.speculated.i, i1 false), !alias.scope !22
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.speculated.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.speculated.i
  %i.bm = sub i64 %i.bd, %.sroa.speculated.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.050.i32 = phi i64 [ %i.bd, %bb.e ], [ %i.bm, %bb.f ] ; 6 uses
  %.034.i33 = phi ptr [ %i.be, %bb.e ], [ %i.bl, %bb.f ] ; 8 uses
  %.0.i34 = phi ptr [ %i.bg, %bb.e ], [ %i.bk, %bb.f ] ; 8 uses
  %i.bn = icmp ugt i64 %.050.i32, 63
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.x86.sse.sfence(), !noalias !19
  %i.bo = add i64 %.050.i32, -64                  ; 2 uses
  %i.bp = and i64 %i.bo, 64
  %lcmp.mod69.not.not = icmp eq i64 %i.bp, 0
  br i1 %lcmp.mod69.not.not, label %.prol.loopexit66.unr-lcssa, label %.prol.loopexit66

.prol.loopexit66.unr-lcssa:                       ; preds = %bb.h
  %i.bq = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.034.i33)
  %i.br = getelementptr inbounds nuw i8, ptr %.034.i33, i64 16
  %i.bs = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %.034.i33, i64 32
  %i.bu = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %.034.i33, i64 48
  %i.bw = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bv)
  store <16 x i8> %i.bq, ptr %.0.i34, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i34, i64 16
  store <16 x i8> %i.bs, ptr %i.bx, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i34, i64 32
  store <16 x i8> %i.bu, ptr %i.by, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i34, i64 48
  store <16 x i8> %i.bw, ptr %i.bz, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.ca = getelementptr inbounds nuw i8, ptr %.034.i33, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i34, i64 64
  %i.cc = add i64 %.050.i32, -64                  ; 2 uses
  br label %.prol.loopexit66

.prol.loopexit66:                                 ; preds = %.prol.loopexit66.unr-lcssa, %bb.h
  %.03654.i39.unr = phi ptr [ %.0.i34, %bb.h ], [ %i.cb, %.prol.loopexit66.unr-lcssa ]
  %.03753.i40.unr = phi ptr [ %.034.i33, %bb.h ], [ %i.ca, %.prol.loopexit66.unr-lcssa ]
  %.15152.i41.unr = phi i64 [ %.050.i32, %bb.h ], [ %i.cc, %.prol.loopexit66.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.h ], [ %i.cc, %.prol.loopexit66.unr-lcssa ]
  %i.cd = icmp ult i64 %i.bo, 64
  br i1 %i.cd, label %.unr-lcssa70, label %.new67

.new67:                                           ; preds = %.prol.loopexit66, %.new67
  %.03654.i39 = phi ptr [ %i.db, %.new67 ], [ %.03654.i39.unr, %.prol.loopexit66 ] ; 9 uses
  %.03753.i40 = phi ptr [ %i.da, %.new67 ], [ %.03753.i40.unr, %.prol.loopexit66 ] ; 9 uses
  %.15152.i41 = phi i64 [ %i.dc, %.new67 ], [ %.15152.i41.unr, %.prol.loopexit66 ]
  %i.ce = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.03753.i40)
  %i.cf = getelementptr inbounds nuw i8, ptr %.03753.i40, i64 16
  %i.cg = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %.03753.i40, i64 32
  %i.ci = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %.03753.i40, i64 48
  %i.ck = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.cj)
  store <16 x i8> %i.ce, ptr %.03654.i39, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.cl = getelementptr inbounds nuw i8, ptr %.03654.i39, i64 16
  store <16 x i8> %i.cg, ptr %i.cl, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.cm = getelementptr inbounds nuw i8, ptr %.03654.i39, i64 32
  store <16 x i8> %i.ci, ptr %i.cm, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.cn = getelementptr inbounds nuw i8, ptr %.03654.i39, i64 48
  store <16 x i8> %i.ck, ptr %i.cn, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.co = getelementptr inbounds nuw i8, ptr %.03753.i40, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %.03654.i39, i64 64
  %i.cq = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.co)
  %i.cr = getelementptr inbounds nuw i8, ptr %.03753.i40, i64 80
  %i.cs = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %.03753.i40, i64 96
  %i.cu = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %.03753.i40, i64 112
  %i.cw = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.cv)
  store <16 x i8> %i.cq, ptr %i.cp, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.cx = getelementptr inbounds nuw i8, ptr %.03654.i39, i64 80
  store <16 x i8> %i.cs, ptr %i.cx, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.cy = getelementptr inbounds nuw i8, ptr %.03654.i39, i64 96
  store <16 x i8> %i.cu, ptr %i.cy, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.cz = getelementptr inbounds nuw i8, ptr %.03654.i39, i64 112
  store <16 x i8> %i.cw, ptr %i.cz, align 16, !tbaa !13, !alias.scope !24, !noalias !19, !nontemporal !15
  %i.da = getelementptr inbounds nuw i8, ptr %.03753.i40, i64 128
  %i.db = getelementptr inbounds nuw i8, ptr %.03654.i39, i64 128
  %i.dc = add i64 %.15152.i41, -128               ; 3 uses
  %i.dd = icmp ugt i64 %i.dc, 63
  br i1 %i.dd, label %.new67, label %.unr-lcssa70, !llvm.loop !16

.unr-lcssa70:                                     ; preds = %.new67, %.prol.loopexit66
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit66 ], [ %i.dc, %.new67 ]
  %i.de = and i64 %.050.i32, -64                  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i34, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.034.i33, i64 %i.de
  tail call void @llvm.x86.sse.sfence()
  br label %bb.i

bb.i:                                             ; preds = %.unr-lcssa70, %bb.g
  %.2.i35 = phi i64 [ %.lcssa, %.unr-lcssa70 ], [ %.050.i32, %bb.g ] ; 2 uses
  %.135.i36 = phi ptr [ %i.dg, %.unr-lcssa70 ], [ %.034.i33, %bb.g ]
  %.1.i37 = phi ptr [ %i.df, %.unr-lcssa70 ], [ %.0.i34, %bb.g ]
  %.not40.i38 = icmp eq i64 %.2.i35, 0
  br i1 %.not40.i38, label %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit42, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.i37, ptr align 1 %.135.i36, i64 %.2.i35, i1 false), !alias.scope !22
  br label %_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit42

_ZN4absl12lts_2024011612crc_internal25non_temporal_store_memcpyEPvPKvm.exit42: ; preds = %bb.j, %bb.i, %._crit_edge
  %.sroa.026.1 = phi i32 [ %.sroa.026.0.lcssa, %._crit_edge ], [ %i.bf, %bb.i ], [ %i.bf, %bb.j ]
  ret i32 %.sroa.026.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define i32 @_ZNK4absl12lts_2024011612crc_internal29CrcNonTemporalMemcpyAVXEngine7ComputeEPvPKvmNS0_8crc32c_tE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, i32 %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ugt i64 %3, 8192
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit
  %i.b = phi i64 [ %i.av, %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit ], [ 8192, %bb.a ] ; 3 uses
  %.sroa.026.046 = phi i32 [ %i.d, %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit ], [ %4, %bb.a ]
  %.045 = phi i64 [ %i.b, %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.045 ; 4 uses
  %i.d = tail call i32 @_ZN4absl12lts_2024011612crc_internal20ExtendCrc32cInternalENS0_8crc32c_tESt17basic_string_viewIcSt11char_traitsIcEE(i32 %.sroa.026.046, i64 8192, ptr %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.045 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %5 = ptrtoint ptr %i.e to i64
  %6 = and i64 %5, 63                             ; 3 uses
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %7 = sub nuw nsw i64 64, %6                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 %7, i1 false), !alias.scope !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %7
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %7
  %8 = or disjoint i64 %6, 8128
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.044.i = phi i64 [ 8192, %.lr.ph ], [ %8, %bb.b ] ; 4 uses
  %.028.i = phi ptr [ %i.c, %.lr.ph ], [ %i.g, %bb.b ] ; 3 uses
  %.0.i = phi ptr [ %i.e, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  tail call void @llvm.x86.sse.sfence(), !noalias !25
  %i.h = add nsw i64 %.044.i, -64                 ; 2 uses
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 1
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.03048.i.prol = phi ptr [ %i.o, %.prol.preheader ], [ %.028.i, %bb.c ] ; 3 uses
  %.03147.i.prol = phi ptr [ %i.p, %.prol.preheader ], [ %.0.i, %bb.c ] ; 3 uses
  %.14546.i.prol = phi i64 [ %i.q, %.prol.preheader ], [ %.044.i, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %i.k = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.03048.i.prol)
  %i.l = getelementptr inbounds nuw i8, ptr %.03048.i.prol, i64 32
  %i.m = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.l)
  store <32 x i8> %i.k, ptr %.03147.i.prol, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.n = getelementptr inbounds nuw i8, ptr %.03147.i.prol, i64 32
  store <32 x i8> %i.m, ptr %i.n, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.o = getelementptr inbounds nuw i8, ptr %.03048.i.prol, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03147.i.prol, i64 64 ; 2 uses
  %i.q = add nsw i64 %.14546.i.prol, -64          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.03048.i.unr = phi ptr [ %.028.i, %bb.c ], [ %i.o, %.prol.preheader ]
  %.03147.i.unr = phi ptr [ %.0.i, %bb.c ], [ %i.p, %.prol.preheader ]
  %.14546.i.unr = phi i64 [ %.044.i, %bb.c ], [ %i.q, %.prol.preheader ]
  %.lcssa62.unr = phi i64 [ poison, %bb.c ], [ %i.q, %.prol.preheader ]
  %i.r = icmp ult i64 %i.h, 192
  br i1 %i.r, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.03048.i = phi ptr [ %i.ao, %.new ], [ %.03048.i.unr, %.prol.loopexit ] ; 9 uses
  %.03147.i = phi ptr [ %i.ap, %.new ], [ %.03147.i.unr, %.prol.loopexit ] ; 9 uses
  %.14546.i = phi i64 [ %i.aq, %.new ], [ %.14546.i.unr, %.prol.loopexit ]
  %i.s = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.03048.i)
  %i.t = getelementptr inbounds nuw i8, ptr %.03048.i, i64 32
  %i.u = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.t)
  store <32 x i8> %i.s, ptr %.03147.i, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.v = getelementptr inbounds nuw i8, ptr %.03147.i, i64 32
  store <32 x i8> %i.u, ptr %i.v, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.w = getelementptr inbounds nuw i8, ptr %.03048.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.03147.i, i64 64
  %i.y = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %.03048.i, i64 96
  %i.aa = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.z)
  store <32 x i8> %i.y, ptr %i.x, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.ab = getelementptr inbounds nuw i8, ptr %.03147.i, i64 96
  store <32 x i8> %i.aa, ptr %i.ab, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.03048.i, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %.03147.i, i64 128
  %i.ae = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ac)
  %i.af = getelementptr inbounds nuw i8, ptr %.03048.i, i64 160
  %i.ag = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.af)
  store <32 x i8> %i.ae, ptr %i.ad, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.ah = getelementptr inbounds nuw i8, ptr %.03147.i, i64 160
  store <32 x i8> %i.ag, ptr %i.ah, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.03048.i, i64 192
  %i.aj = getelementptr inbounds nuw i8, ptr %.03147.i, i64 192
  %i.ak = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ai)
  %i.al = getelementptr inbounds nuw i8, ptr %.03048.i, i64 224
  %i.am = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.al)
  store <32 x i8> %i.ak, ptr %i.aj, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.an = getelementptr inbounds nuw i8, ptr %.03147.i, i64 224
  store <32 x i8> %i.am, ptr %i.an, align 32, !tbaa !13, !alias.scope !30, !noalias !25, !nontemporal !15
  %i.ao = getelementptr inbounds nuw i8, ptr %.03048.i, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %.03147.i, i64 256
  %i.aq = add nsw i64 %.14546.i, -256             ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, 63
  br i1 %i.ar, label %.new, label %.unr-lcssa, !llvm.loop !33

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa62 = phi i64 [ %.lcssa62.unr, %.prol.loopexit ], [ %i.aq, %.new ] ; 2 uses
  tail call void @llvm.x86.sse.sfence()
  %.not34.i = icmp eq i64 %.lcssa62, 0
  br i1 %.not34.i, label %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit, label %bb.d

bb.d:                                             ; preds = %.unr-lcssa
  %i.as = and i64 %.044.i, -64                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.028.i, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.at, i64 %.lcssa62, i1 false), !alias.scope !28
  br label %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit

_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit: ; preds = %.unr-lcssa, %bb.d
  %i.av = add i64 %i.b, 8192                      ; 2 uses
  %i.aw = icmp ult i64 %i.av, %3
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit ] ; 4 uses
  %.sroa.026.0.lcssa = phi i32 [ %4, %bb.a ], [ %i.d, %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit ] ; 2 uses
  %i.ax = icmp ult i64 %.0.lcssa, %3
  br i1 %i.ax, label %bb.e, label %_ZN4absl12lts_2024011612crc_internal29non_temporal_store_memcpy_avxEPvPKvm.exit42

bb.e:                                             ; preds = %._crit_edge
  %i.ay = sub nuw i64 %3, %.0.lcssa               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa ; 4 uses
  %i.ba = tail call i32 @_ZN4absl12lts_2024011612crc_internal20ExtendCrc32cInternalENS0_8crc32c_tESt17basic_string_viewIcSt11char_traitsIcEE(i32 %.sroa.026.0.lcssa, i64 %i.ay, ptr %i.az) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 63                       ; 2 uses
  %.not.i31 = icmp eq i64 %i.bd, 0
  br i1 %.not.i31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = sub nuw nsw i64 64, %i.bd
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.be) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.az, i64 %.sroa.speculated.i, i1 false), !alias.scope !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.speculated.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.speculated.i
  %i.bh = sub i64 %i.ay, %.sroa.speculated.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.044.i32 = phi i64 [ %i.ay, %bb.e ], [ %i.bh, %bb.f ] ; 6 uses
  %.028.i33 = phi ptr [ %i.az, %bb.e ], [ %i.bg, %bb.f ] ; 4 uses
  %.0.i34 = phi ptr [ %i.bb, %bb.e ], [ %i.bf, %bb.f ] ; 4 uses
  %i.bi = icmp ugt i64 %.044.i32, 63
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.x86.sse.sfence(), !noalias !35
  %i.bj = add i64 %.044.i32, -64                  ; 2 uses
  %i.bk = lshr i64 %i.bj, 6
  %i.bl = add nuw nsw i64 %i.bk, 1
  %xtraiter68 = and i64 %i.bl, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.prol.loopexit66, label %.prol.preheader65

.prol.preheader65:                                ; preds = %bb.h, %.prol.preheader65
  %.03048.i39.prol = phi ptr [ %i.bq, %.prol.preheader65 ], [ %.028.i33, %bb.h ] ; 3 uses
  %.03147.i40.prol = phi ptr [ %i.br, %.prol.preheader65 ], [ %.0.i34, %bb.h ] ; 3 uses
  %.14546.i41.prol = phi i64 [ %i.bs, %.prol.preheader65 ], [ %.044.i32, %bb.h ]
  %prol.iter70 = phi i64 [ %prol.iter70.next, %.prol.preheader65 ], [ 0, %bb.h ]
  %i.bm = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.03048.i39.prol)
  %i.bn = getelementptr inbounds nuw i8, ptr %.03048.i39.prol, i64 32
  %i.bo = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.bn)
  store <32 x i8> %i.bm, ptr %.03147.i40.prol, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.bp = getelementptr inbounds nuw i8, ptr %.03147.i40.prol, i64 32
  store <32 x i8> %i.bo, ptr %i.bp, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.bq = getelementptr inbounds nuw i8, ptr %.03048.i39.prol, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.03147.i40.prol, i64 64 ; 2 uses
  %i.bs = add i64 %.14546.i41.prol, -64           ; 3 uses
  %prol.iter70.next = add i64 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i64 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %.prol.loopexit66, label %.prol.preheader65, !llvm.loop !41

.prol.loopexit66:                                 ; preds = %.prol.preheader65, %bb.h
  %.03048.i39.unr = phi ptr [ %.028.i33, %bb.h ], [ %i.bq, %.prol.preheader65 ]
  %.03147.i40.unr = phi ptr [ %.0.i34, %bb.h ], [ %i.br, %.prol.preheader65 ]
  %.14546.i41.unr = phi i64 [ %.044.i32, %bb.h ], [ %i.bs, %.prol.preheader65 ]
  %.lcssa.unr = phi i64 [ poison, %bb.h ], [ %i.bs, %.prol.preheader65 ]
  %i.bt = icmp ult i64 %i.bj, 192
  br i1 %i.bt, label %.unr-lcssa71, label %.new67

.new67:                                           ; preds = %.prol.loopexit66, %.new67
  %.03048.i39 = phi ptr [ %i.cq, %.new67 ], [ %.03048.i39.unr, %.prol.loopexit66 ] ; 9 uses
  %.03147.i40 = phi ptr [ %i.cr, %.new67 ], [ %.03147.i40.unr, %.prol.loopexit66 ] ; 9 uses
  %.14546.i41 = phi i64 [ %i.cs, %.new67 ], [ %.14546.i41.unr, %.prol.loopexit66 ]
  %i.bu = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.03048.i39)
  %i.bv = getelementptr inbounds nuw i8, ptr %.03048.i39, i64 32
  %i.bw = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.bv)
  store <32 x i8> %i.bu, ptr %.03147.i40, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.bx = getelementptr inbounds nuw i8, ptr %.03147.i40, i64 32
  store <32 x i8> %i.bw, ptr %i.bx, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.by = getelementptr inbounds nuw i8, ptr %.03048.i39, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %.03147.i40, i64 64
  %i.ca = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.by)
  %i.cb = getelementptr inbounds nuw i8, ptr %.03048.i39, i64 96
  %i.cc = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.cb)
  store <32 x i8> %i.ca, ptr %i.bz, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.cd = getelementptr inbounds nuw i8, ptr %.03147.i40, i64 96
  store <32 x i8> %i.cc, ptr %i.cd, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.ce = getelementptr inbounds nuw i8, ptr %.03048.i39, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %.03147.i40, i64 128
  %i.cg = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ce)
  %i.ch = getelementptr inbounds nuw i8, ptr %.03048.i39, i64 160
  %i.ci = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ch)
  store <32 x i8> %i.cg, ptr %i.cf, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.cj = getelementptr inbounds nuw i8, ptr %.03147.i40, i64 160
  store <32 x i8> %i.ci, ptr %i.cj, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.ck = getelementptr inbounds nuw i8, ptr %.03048.i39, i64 192
  %i.cl = getelementptr inbounds nuw i8, ptr %.03147.i40, i64 192
  %i.cm = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ck)
  %i.cn = getelementptr inbounds nuw i8, ptr %.03048.i39, i64 224
  %i.co = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.cn)
  store <32 x i8> %i.cm, ptr %i.cl, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
  %i.cp = getelementptr inbounds nuw i8, ptr %.03147.i40, i64 224
  store <32 x i8> %i.co, ptr %i.cp, align 32, !tbaa !13, !alias.scope !40, !noalias !35, !nontemporal !15
end_hunk_0
