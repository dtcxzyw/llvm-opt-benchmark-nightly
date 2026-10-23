Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Hash_Blake2b?download=true
inline.NumInlined: 123
inline.NumDeleted: 15
begin_hunk_0_@update_block:bb.a
  store i64 %i.bao, ptr %i.ar, align 8, !tbaa !12
  store i64 %i.bag, ptr %i.bg, align 8, !tbaa !12
  store i64 %i.bah, ptr %i.bj, align 8, !tbaa !12
  store i64 %i.bae, ptr %i.bm, align 8, !tbaa !12
  store i64 %i.baf, ptr %i.bp, align 8, !tbaa !12
  store i64 %i.bab, ptr %i.p, align 8, !tbaa !12
  store i64 %i.bac, ptr %i.s, align 8, !tbaa !12
  store i64 %i.bad, ptr %i.v, align 8, !tbaa !12
  store i64 %i.baa, ptr %i.y, align 8, !tbaa !12
  %i.baq = getelementptr i8, ptr %1, i64 32       ; 3 uses
  %i.bar = load i64, ptr %1, align 8, !tbaa !12
  %i.bas = xor i64 %i.azs, %i.bar                 ; 2 uses
  store i64 %i.bas, ptr %1, align 8, !tbaa !12
  %i.bat = getelementptr i8, ptr %1, i64 8        ; 3 uses
  %i.bau = load i64, ptr %i.bat, align 8, !tbaa !12
  %i.bav = load i64, ptr %i.af, align 8, !tbaa !12
  %i.baw = xor i64 %i.bav, %i.bau                 ; 2 uses
  store i64 %i.baw, ptr %i.bat, align 8, !tbaa !12
  %i.bax = getelementptr i8, ptr %1, i64 16       ; 3 uses
  %i.bay = load i64, ptr %i.bax, align 8, !tbaa !12
  %i.baz = load i64, ptr %i.ak, align 8, !tbaa !12
  %i.bba = xor i64 %i.baz, %i.bay                 ; 2 uses
  store i64 %i.bba, ptr %i.bax, align 8, !tbaa !12
  %i.bbb = getelementptr i8, ptr %1, i64 24       ; 3 uses
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !12
  %i.bbd = load i64, ptr %i.ap, align 8, !tbaa !12
  %i.bbe = xor i64 %i.bbd, %i.bbc                 ; 2 uses
  store i64 %i.bbe, ptr %i.bbb, align 8, !tbaa !12
  %i.bbf = load i64, ptr %i.bg, align 8, !tbaa !12
  %i.bbg = xor i64 %i.bbf, %i.bas
  store i64 %i.bbg, ptr %1, align 8, !tbaa !12
  %i.bbh = load i64, ptr %i.bj, align 8, !tbaa !12
  %i.bbi = xor i64 %i.bbh, %i.baw
  store i64 %i.bbi, ptr %i.bat, align 8, !tbaa !12
  %i.bbj = load i64, ptr %i.bm, align 8, !tbaa !12
  %i.bbk = xor i64 %i.bbj, %i.bba
  store i64 %i.bbk, ptr %i.bax, align 8, !tbaa !12
  %i.bbl = load i64, ptr %i.bp, align 8, !tbaa !12
  %i.bbm = xor i64 %i.bbl, %i.bbe
  store i64 %i.bbm, ptr %i.bbb, align 8, !tbaa !12
  %i.bbn = load i64, ptr %i.baq, align 8, !tbaa !12
  %i.bbo = load i64, ptr %i.ab, align 8, !tbaa !12
  %i.bbp = xor i64 %i.bbo, %i.bbn                 ; 2 uses
  store i64 %i.bbp, ptr %i.baq, align 8, !tbaa !12
  %i.bbq = getelementptr i8, ptr %1, i64 40       ; 3 uses
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !12
  %i.bbs = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.bbt = xor i64 %i.bbs, %i.bbr                 ; 2 uses
  store i64 %i.bbt, ptr %i.bbq, align 8, !tbaa !12
  %i.bbu = getelementptr i8, ptr %1, i64 48       ; 3 uses
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !12
  %i.bbw = load i64, ptr %i.am, align 8, !tbaa !12
  %i.bbx = xor i64 %i.bbw, %i.bbv                 ; 2 uses
  store i64 %i.bbx, ptr %i.bbu, align 8, !tbaa !12
  %i.bby = getelementptr i8, ptr %1, i64 56       ; 3 uses
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !12
  %i.bca = load i64, ptr %i.ar, align 8, !tbaa !12
  %i.bcb = xor i64 %i.bca, %i.bbz                 ; 2 uses
  store i64 %i.bcb, ptr %i.bby, align 8, !tbaa !12
  %i.bcc = load i64, ptr %i.p, align 8, !tbaa !12
  %i.bcd = xor i64 %i.bcc, %i.bbp
  store i64 %i.bcd, ptr %i.baq, align 8, !tbaa !12
  %i.bce = load i64, ptr %i.s, align 8, !tbaa !12
  %i.bcf = xor i64 %i.bce, %i.bbt
  store i64 %i.bcf, ptr %i.bbq, align 8, !tbaa !12
  %i.bcg = load i64, ptr %i.v, align 8, !tbaa !12
  %i.bch = xor i64 %i.bcg, %i.bbx
  store i64 %i.bch, ptr %i.bbu, align 8, !tbaa !12
  %i.bci = load i64, ptr %i.y, align 8, !tbaa !12
  %i.bcj = xor i64 %i.bci, %i.bcb
  store i64 %i.bcj, ptr %i.bby, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_update_last(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 128)) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3, i64 %4, i64 %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = zext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr i8, ptr %7, i64 %i.b
  %i.d = zext i32 %6 to i64                       ; 2 uses
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.f, i64 %i.d, i1 false)
  %i.g = add i64 %4, %i.b                         ; 2 uses
  %i.h = xor i64 %i.g, -1
  %i.i = and i64 %4, %i.h
  %i.j = lshr i64 %i.i, 63
  %i.k = add i64 %i.j, %5
  call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext %3, i64 %i.g, i64 %i.k, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_finish(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr i8, ptr %2, i64 32
  %i.d = load <2 x i64>, ptr %2, align 8, !tbaa !12
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr i8, ptr %2, i64 16
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !12
  store <2 x i64> %i.g, ptr %i.e, align 16
  %i.h = load <2 x i64>, ptr %i.c, align 8, !tbaa !12
  store <2 x i64> %i.h, ptr %i.b, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr i8, ptr %2, i64 48
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !12
  store <2 x i64> %i.k, ptr %i.i, align 16
  %i.l = zext i32 %0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.l, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.02.0.copyload = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.43.0.copyload = load i8, ptr %.sroa.43.0..sroa_idx, align 1, !tbaa !14 ; 3 uses
  %.sroa.4.0.insert.ext = zext i8 %.sroa.02.0.copyload to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.01.0.insert.ext = zext i8 %.sroa.43.0.copyload to i16
  %i.a = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.01.0.insert.ext
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %malloc_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 17 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #16
  br label %.critedge.i

.critedge.i:                                      ; preds = %.thread.i, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %malloc_raw.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #18 ; 9 uses
  %cond.i = icmp eq ptr %i.h, null
  br i1 %cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i8 %.sroa.43.0.copyload, 0    ; 2 uses
  %.0185.i = select i1 %.not.i, i64 0, i64 128
  %i.i = zext i1 %1 to i8
  store i16 %i.a, ptr %i.h, align 8
  %.sroa.0109.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 %i.i, ptr %.sroa.0109.sroa.4.0..sroa_idx.i, align 2, !tbaa !16
  %.sroa.0109.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0109.sroa.5.0..sroa_idx.i, i8 0, i64 5, i1 false)
  %.sroa.0109.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0109.sroa.6.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.0109.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0109.sroa.7.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4110.0..sroa_idx.i, align 8, !tbaa !21
  %.sroa.5111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.0185.i, ptr %.sroa.5111.0..sroa_idx.i, align 8, !tbaa !12
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #16
  tail call void @free(ptr noundef nonnull %i.f) #16
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %malloc_raw.exit

bb.g:                                             ; preds = %bb.e
  %i.j = zext i8 %.sroa.43.0.copyload to i64      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr readonly align 1 %2, i64 %i.j, i1 false)
  %i.k = shl nuw nsw i64 %i.j, 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.pre-phi.i = phi i64 [ %i.k, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !10
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.l = zext i16 %.sroa.9.0.copyload.i to i64
  %.sroa.1181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1181.0.copyload.i = load ptr, ptr %.sroa.1181.0..sroa_idx.i, align 8, !tbaa !21
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !21
  %i.m = getelementptr i8, ptr %i.f, i64 32
  %i.n = getelementptr i8, ptr %i.f, i64 64
  %i.o = getelementptr i8, ptr %i.f, i64 96
  store i64 7640891576956012808, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr i8, ptr %i.f, i64 72
  store i64 -4942790177534073029, ptr %i.p, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %i.f, i64 80
  store i64 4354685564936845355, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr i8, ptr %i.f, i64 88
  store i64 -6534734903238641935, ptr %i.r, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.o, align 8, !tbaa !12
  %i.s = getelementptr i8, ptr %i.f, i64 104
  store i64 -7276294671716946913, ptr %i.s, align 8, !tbaa !12
  %i.t = getelementptr i8, ptr %i.f, i64 112
  store i64 2270897969802886507, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr i8, ptr %i.f, i64 120
  store i64 6620516959819538809, ptr %i.u, align 8, !tbaa !12
  %3 = zext i8 %.sroa.0.0.copyload.i to i64
  %4 = zext i8 %.sroa.5.0.copyload.i to i64
  %5 = shl nuw nsw i64 %4, 16
  %i.v = zext i8 %.sroa.6.0.copyload.i to i64
  %6 = shl nuw nsw i64 %i.v, 24
  %i.w = zext i32 %.sroa.7.0.copyload.i to i64
  %i.x = shl nuw i64 %i.w, 32
  %i.y = or disjoint i64 %.pre-phi.i, %3
  %7 = add nuw nsw i64 %5, %i.y
  %8 = add nuw nsw i64 %7, %6
  %i.z = add nuw nsw i64 %8, %i.x
  %i.aa = xor i64 %i.z, 7640891576956012808
  %i.ab = xor i64 %.sroa.8.0.copyload.i, -4942790177534073029
  %i.ac = xor i64 %i.l, 4354685564936845355
  %i.ad = getelementptr i8, ptr %i.f, i64 8
  %i.ae = getelementptr i8, ptr %i.f, i64 16
  %i.af = getelementptr i8, ptr %i.f, i64 24
  %i.ag = load <2 x i64>, ptr %.sroa.1181.0.copyload.i, align 1
  %i.ah = xor <2 x i64> %i.ag, <i64 5840696475078001361, i64 -7276294671716946913>
  %i.ai = getelementptr i8, ptr %i.f, i64 48
  %i.aj = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %i.ak = xor <2 x i64> %i.aj, <i64 2270897969802886507, i64 6620516959819538809>
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !12
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !12
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !12
  store i64 -6534734903238641935, ptr %i.af, align 8, !tbaa !12
  store <2 x i64> %i.ah, ptr %i.m, align 8, !tbaa !12
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !12
  br label %malloc_raw.exit

malloc_raw.exit:                                  ; preds = %.critedge.i, %._crit_edge.i, %bb.f, %bb.a
  %.3.i = phi ptr [ null, %bb.a ], [ null, %.critedge.i ], [ %i.h, %._crit_edge.i ], [ null, %bb.f ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_key(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 64, ptr %2, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !21
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !21
  %i.c = call ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc() local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %0 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store <4 x i8> <i8 64, i8 0, i8 1, i8 1>, ptr %0, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx.i, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !21
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !21
  %i.c = call noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_malloc_with_params_and_key(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key_and_params(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %.sroa.8121.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i)
  %.sroa.6129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7130.0.copyload.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !19 ; 12 uses
  %.sroa.8131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8131.0.copyload.i = load ptr, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !21 ; 3 uses
  %i.a = getelementptr i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i64                      ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.8131.0.copyload.i, i64 %i.d
  %i.f = sub nsw i64 128, %i.d
  %i.g = and i64 %i.f, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8131.0.copyload.i, ptr readonly align 1 %2, i64 %i.d, i1 false)
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.h = zext i16 %.sroa.9.0.copyload.i to i64
  %.sroa.1186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1186.0.copyload.i = load ptr, ptr %.sroa.1186.0..sroa_idx.i, align 8, !tbaa !21
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !21
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 64
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 96
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 72
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 80
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 88
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 104
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 112
  %i.p = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 120
  %i.q = load <2 x i64>, ptr %1, align 8
  store i64 7640891576956012808, ptr %i.i, align 8, !tbaa !12
  store i64 -4942790177534073029, ptr %i.k, align 8, !tbaa !12
  store i64 4354685564936845355, ptr %i.l, align 8, !tbaa !12
  store i64 -6534734903238641935, ptr %i.m, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.j, align 8, !tbaa !12
  store i64 -7276294671716946913, ptr %i.n, align 8, !tbaa !12
  store i64 2270897969802886507, ptr %i.o, align 8, !tbaa !12
  store i64 6620516959819538809, ptr %i.p, align 8, !tbaa !12
  %i.r = xor <2 x i64> %i.q, <i64 7640891576956012808, i64 -4942790177534073029>
  %i.s = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 16
  %i.t = load <2 x i64>, ptr %.sroa.1186.0.copyload.i, align 1
  %i.u = shufflevector <2 x i64> %i.t, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.v = shufflevector <4 x i64> %i.u, <4 x i64> <i64 poison, i64 0, i64 poison, i64 poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.w = insertelement <4 x i64> %i.v, i64 %i.h, i64 0
  %i.x = xor <4 x i64> %i.w, <i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913>
  %i.y = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 48
  %i.z = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %i.aa = xor <2 x i64> %i.z, <i64 2270897969802886507, i64 6620516959819538809>
  store <2 x i64> %i.r, ptr %.sroa.7130.0.copyload.i, align 8, !tbaa !12
  store <4 x i64> %i.x, ptr %i.s, align 8, !tbaa !12
  store <2 x i64> %i.aa, ptr %i.y, align 8, !tbaa !12
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, 0
  %..i = select i1 %.not.i, i64 0, i64 128
  %.sroa.9132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !14
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, i64 13, i1 false)
  store ptr %.sroa.7130.0.copyload.i, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !19
  store ptr %.sroa.8131.0.copyload.i, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !21
  store i64 %..i, ptr %.sroa.9132.0..sroa_idx.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8121.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.sroa.8121.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !14 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !14 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i)
  %.sroa.6129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7130.0.copyload.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i, align 8, !tbaa !19 ; 17 uses
  %.sroa.8131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8131.0.copyload.i = load ptr, ptr %.sroa.8131.0..sroa_idx.i, align 8, !tbaa !21 ; 3 uses
  %i.a = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.a, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.sroa.0.0.copyload.i to i64     ; 4 uses
  %i.c = getelementptr i8, ptr %.sroa.8131.0.copyload.i, i64 %i.b
  %i.d = sub nsw i64 128, %i.b
  %i.e = and i64 %i.d, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 0, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8131.0.copyload.i, ptr readonly align 1 %1, i64 %i.b, i1 false)
  %i.f = shl nuw nsw i64 %i.b, 8
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %..i = phi i64 [ 128, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.1.insert.ext.pre-phi = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.insert.ext = zext i8 %.sroa.4.0.copyload.i to i64
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.ext.pre-phi, %.sroa.0.0.insert.ext
end_hunk_0
