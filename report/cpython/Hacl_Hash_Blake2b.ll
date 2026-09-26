Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Hash_Blake2b?download=true
inline.NumInlined: 123
inline.NumDeleted: 15
begin_hunk_0_@update_block:bb.a
  %i.aye = xor i64 %i.aya, %i.axg                 ; 2 uses
  %i.ayf = xor i64 %i.ayb, %i.axh                 ; 2 uses
  %i.ayg = xor i64 %i.ayc, %i.axi                 ; 2 uses
  %i.ayh = xor i64 %i.ayd, %i.axj                 ; 2 uses
  %i.ayi = tail call i64 @llvm.fshl.i64(i64 %i.aye, i64 %i.aye, i64 1) ; 2 uses
  %i.ayj = tail call i64 @llvm.fshl.i64(i64 %i.ayf, i64 %i.ayf, i64 1) ; 2 uses
  %i.ayk = tail call i64 @llvm.fshl.i64(i64 %i.ayg, i64 %i.ayg, i64 1) ; 2 uses
  %i.ayl = tail call i64 @llvm.fshl.i64(i64 %i.ayh, i64 %i.ayh, i64 1) ; 2 uses
  %i.aym = add i64 %i.ayj, %i.axo
  %i.ayn = add i64 %i.ayk, %i.axp
  %i.ayo = add i64 %i.ayl, %i.axq
  %i.ayp = add i64 %i.ayi, %i.axr
  %i.ayq = add i64 %i.aym, %.val15061             ; 2 uses
  %i.ayr = add i64 %i.ayn, %.val15062             ; 2 uses
  %i.ays = add i64 %i.ayo, %.val15051             ; 2 uses
  %i.ayt = add i64 %i.ayp, %.val15057             ; 2 uses
  %i.ayu = xor i64 %i.ayq, %i.axz                 ; 2 uses
  %i.ayv = xor i64 %i.ayr, %i.axw                 ; 2 uses
  %i.ayw = xor i64 %i.ays, %i.axx                 ; 2 uses
  %i.ayx = xor i64 %i.ayt, %i.axy                 ; 2 uses
  %i.ayy = tail call i64 @llvm.fshl.i64(i64 %i.ayu, i64 %i.ayu, i64 32) ; 2 uses
  %i.ayz = tail call i64 @llvm.fshl.i64(i64 %i.ayv, i64 %i.ayv, i64 32) ; 2 uses
  %i.aza = tail call i64 @llvm.fshl.i64(i64 %i.ayw, i64 %i.ayw, i64 32) ; 2 uses
  %i.azb = tail call i64 @llvm.fshl.i64(i64 %i.ayx, i64 %i.ayx, i64 32) ; 2 uses
  %i.azc = add i64 %i.ayy, %i.ayc                 ; 2 uses
  %i.azd = add i64 %i.ayz, %i.ayd                 ; 2 uses
  %i.aze = add i64 %i.aza, %i.aya                 ; 2 uses
  %i.azf = add i64 %i.azb, %i.ayb                 ; 2 uses
  %i.azg = xor i64 %i.azc, %i.ayj                 ; 2 uses
  %i.azh = xor i64 %i.azd, %i.ayk                 ; 2 uses
  %i.azi = xor i64 %i.aze, %i.ayl                 ; 2 uses
  %i.azj = xor i64 %i.azf, %i.ayi                 ; 2 uses
  %i.azk = tail call i64 @llvm.fshl.i64(i64 %i.azg, i64 %i.azg, i64 40) ; 2 uses
  %i.azl = tail call i64 @llvm.fshl.i64(i64 %i.azh, i64 %i.azh, i64 40) ; 2 uses
  %i.azm = tail call i64 @llvm.fshl.i64(i64 %i.azi, i64 %i.azi, i64 40) ; 2 uses
  %i.azn = tail call i64 @llvm.fshl.i64(i64 %i.azj, i64 %i.azj, i64 40) ; 2 uses
  %i.azo = add i64 %i.azk, %i.ayq
  %i.azp = add i64 %i.azl, %i.ayr
  %i.azq = add i64 %i.azm, %i.ays
  %i.azr = add i64 %i.azn, %i.ayt
  %i.azs = add i64 %i.azo, %.val15050             ; 3 uses
  store i64 %i.azs, ptr %0, align 8, !tbaa !12
  %i.azt = add i64 %i.azp, %.val15060             ; 2 uses
  store i64 %i.azt, ptr %i.af, align 8, !tbaa !12
  %i.azu = add i64 %i.azq, %.val15055             ; 2 uses
  store i64 %i.azu, ptr %i.ak, align 8, !tbaa !12
  %i.azv = add i64 %i.azr, %.val15059             ; 2 uses
  store i64 %i.azv, ptr %i.ap, align 8, !tbaa !12
  %i.azw = xor i64 %i.azs, %i.ayy                 ; 2 uses
  %i.azx = xor i64 %i.azt, %i.ayz                 ; 2 uses
  %i.azy = xor i64 %i.azu, %i.aza                 ; 2 uses
  %i.azz = xor i64 %i.azv, %i.azb                 ; 2 uses
  %i.baa = tail call i64 @llvm.fshl.i64(i64 %i.azw, i64 %i.azw, i64 48) ; 2 uses
  %i.bab = tail call i64 @llvm.fshl.i64(i64 %i.azx, i64 %i.azx, i64 48) ; 2 uses
  %i.bac = tail call i64 @llvm.fshl.i64(i64 %i.azy, i64 %i.azy, i64 48) ; 2 uses
  %i.bad = tail call i64 @llvm.fshl.i64(i64 %i.azz, i64 %i.azz, i64 48) ; 2 uses
  %i.bae = add i64 %i.baa, %i.azc                 ; 2 uses
  %i.baf = add i64 %i.bab, %i.azd                 ; 2 uses
  %i.bag = add i64 %i.bac, %i.aze                 ; 2 uses
  %i.bah = add i64 %i.bad, %i.azf                 ; 2 uses
  %i.bai = xor i64 %i.bae, %i.azk                 ; 2 uses
  %i.baj = xor i64 %i.baf, %i.azl                 ; 2 uses
  %i.bak = xor i64 %i.bag, %i.azm                 ; 2 uses
  %i.bal = xor i64 %i.bah, %i.azn                 ; 2 uses
  %i.bam = tail call i64 @llvm.fshl.i64(i64 %i.bai, i64 %i.bai, i64 1)
  %i.ban = tail call i64 @llvm.fshl.i64(i64 %i.baj, i64 %i.baj, i64 1)
  %i.bao = tail call i64 @llvm.fshl.i64(i64 %i.bak, i64 %i.bak, i64 1)
  %i.bap = tail call i64 @llvm.fshl.i64(i64 %i.bal, i64 %i.bal, i64 1)
  store i64 %i.bap, ptr %i.ab, align 8, !tbaa !12
  store i64 %i.bam, ptr %i.ah, align 8, !tbaa !12
  store i64 %i.ban, ptr %i.am, align 8, !tbaa !12
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
  %i.v = zext i8 %.sroa.0.0.copyload.i to i64
  %i.w = zext i8 %.sroa.5.0.copyload.i to i64
  %i.x = shl nuw nsw i64 %i.w, 16
  %i.y = zext i8 %.sroa.6.0.copyload.i to i64
  %i.z = shl nuw nsw i64 %i.y, 24
  %i.aa = zext i32 %.sroa.7.0.copyload.i to i64
  %i.ab = shl nuw i64 %i.aa, 32
  %i.ac = or disjoint i64 %.pre-phi.i, %i.v
  %i.ad = add nuw nsw i64 %i.x, %i.ac
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = xor i64 %i.af, 7640891576956012808
  %i.ah = xor i64 %.sroa.8.0.copyload.i, -4942790177534073029
  %i.ai = xor i64 %i.l, 4354685564936845355
  %i.aj = getelementptr i8, ptr %i.f, i64 8
  %i.ak = getelementptr i8, ptr %i.f, i64 16
  %i.al = getelementptr i8, ptr %i.f, i64 24
  %i.am = load <2 x i64>, ptr %.sroa.1181.0.copyload.i, align 1
  %i.an = xor <2 x i64> %i.am, <i64 5840696475078001361, i64 -7276294671716946913>
  %i.ao = getelementptr i8, ptr %i.f, i64 48
  %i.ap = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %i.aq = xor <2 x i64> %i.ap, <i64 2270897969802886507, i64 6620516959819538809>
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !12
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !12
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !12
  store i64 -6534734903238641935, ptr %i.al, align 8, !tbaa !12
  store <2 x i64> %i.an, ptr %i.m, align 8, !tbaa !12
  store <2 x i64> %i.aq, ptr %i.ao, align 8, !tbaa !12
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
  %i.g = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 32
  %i.h = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 64
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 96
  store i64 7640891576956012808, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 72
  store i64 -4942790177534073029, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 80
  store i64 4354685564936845355, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 88
  store i64 -6534734903238641935, ptr %i.l, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.i, align 8, !tbaa !12
  %i.m = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 104
  store i64 -7276294671716946913, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 112
  store i64 2270897969802886507, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 120
  store i64 6620516959819538809, ptr %i.o, align 8, !tbaa !12
  %i.p = xor i64 %.sroa.0.1.insert.insert, 7640891576939301128
  store i64 %i.p, ptr %.sroa.7130.0.copyload.i, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 8
  store i64 -4942790177534073029, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 16
  store i64 4354685564936845355, ptr %i.r, align 8, !tbaa !12
  %i.s = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 24
  store i64 -6534734903238641935, ptr %i.s, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.g, align 8, !tbaa !12
  %i.t = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 40
  store i64 -7276294671716946913, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 48
  store i64 2270897969802886507, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr i8, ptr %.sroa.7130.0.copyload.i, i64 56
  store i64 6620516959819538809, ptr %i.v, align 8, !tbaa !12
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_reset(ptr nofree noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #9 {
_Py_LibHacl_Hacl_Hash_Blake2b_reset_with_key.exit:
  %.sroa.8121.i.i = alloca [13 x i8], align 1     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8121.i.i)
  %.sroa.6129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8121.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6129.0..sroa_idx.i.i, i64 13, i1 false)
  %.sroa.7130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.4.0.copyload.i.i to i64
  %i.a = xor i64 %.sroa.0.0.insert.ext.i, 7640891576939301128
  %.sroa.9132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x ptr>, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !24
  %.sroa.7130.0.copyload.i.i = load ptr, ptr %.sroa.7130.0..sroa_idx.i.i, align 8, !tbaa !19 ; 16 uses
  %i.c = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 32
  %i.d = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 64
  %i.e = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 96
  store i64 7640891576956012808, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 72
  store i64 -4942790177534073029, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 80
  store i64 4354685564936845355, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 88
  store i64 -6534734903238641935, ptr %i.h, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.e, align 8, !tbaa !12
  %i.i = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 104
  store i64 -7276294671716946913, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 112
  store i64 2270897969802886507, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 120
  store i64 6620516959819538809, ptr %i.k, align 8, !tbaa !12
  store i64 %i.a, ptr %.sroa.7130.0.copyload.i.i, align 8, !tbaa !12
  %i.l = getelementptr i8, ptr %.sroa.7130.0.copyload.i.i, i64 8
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_Blake2b_update:bb.a
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.053, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21 ; 5 uses
  %.197 = select i1 %or.cond, i64 128, i64 %i.d
  %i.af = getelementptr i8, ptr %.sroa.466.0.copyload, i64 %.197
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %1, i64 %i.ad, i1 false)
  %i.ag = add i64 %.sroa.3153.0.copyload, %i.ad   ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.053, i64 24, i1 false), !tbaa.struct !25
  store ptr %.sroa.466.0.copyload, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21
  store i64 %i.ag, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !12
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.ah = and i64 %i.ag, 127                      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = icmp ne i64 %i.ag, 0
  %or.cond12 = and i1 %i.aj, %i.ai
  %i.ak = trunc nuw nsw i64 %i.ah to i32
  %.0190 = select i1 %or.cond12, i32 128, i32 %i.ak ; 2 uses
  %i.al = icmp eq i32 %.0190, 0
  br i1 %i.al, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %bb.f
  %i.am = zext nneg i32 %.0190 to i64
  %i.an = sub i64 %i.ag, %i.am                    ; 3 uses
  %i.ao = add i64 %i.an, 128
  %i.ap = sub i64 -129, %i.an
  %i.aq = and i64 %i.an, %i.ap
  %i.ar = lshr i64 %i.aq, 63
  tail call fastcc void @update_block(ptr noundef %.sroa.451.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.ao, i64 %i.ar, ptr noundef readonly %.sroa.466.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213: ; preds = %.lr.ph.i209, %bb.f
  %i.as = sub nuw i32 %2, %i.h                    ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = and i64 %i.at, 127                      ; 2 uses
  %.not224 = icmp eq i64 %i.au, 0
  %i.av = trunc nuw nsw i64 %i.au to i32
  %.0187 = select i1 %.not224, i32 128, i32 %i.av
  %i.aw = sub i32 %i.as, %.0187                   ; 2 uses
  %i.ax = lshr i32 %i.aw, 7                       ; 2 uses
  %i.ay = and i32 %i.aw, -128                     ; 2 uses
  %i.az = sub i32 %i.as, %i.ay
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr i8, ptr %i.ae, i64 %i.ba
  %.not.i216 = icmp eq i32 %i.ax, 0
  br i1 %.not.i216, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, label %.lr.ph.preheader.i217

.lr.ph.preheader.i217:                            ; preds = %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213
  %wide.trip.count.i218 = zext nneg i32 %i.ax to i64
  br label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219, %.lr.ph.preheader.i217
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.preheader.i217 ], [ %indvars.iv.next.i221, %.lr.ph.i219 ] ; 2 uses
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 3 uses
  %i.bc = shl nuw nsw i64 %indvars.iv.next.i221, 7
  %i.bd = add i64 %i.bc, %i.ag                    ; 2 uses
  %i.be = xor i64 %i.bd, -1
  %i.bf = and i64 %i.ag, %i.be
  %i.bg = lshr i64 %i.bf, 63
  %i.bh = shl nuw nsw i64 %indvars.iv.i220, 7
  %i.bi = getelementptr i8, ptr %i.ae, i64 %i.bh
  tail call fastcc void @update_block(ptr noundef %.sroa.451.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.bd, i64 %i.bg, ptr noundef readonly %i.bi)
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i218
  br i1 %exitcond.not.i222, label %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, label %.lr.ph.i219, !llvm.loop !0

_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223: ; preds = %.lr.ph.i219, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit213
  %i.bj = zext i32 %i.az to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.466.0.copyload, ptr align 1 %i.bb, i64 %i.bj, i1 false)
  %i.bk = add i64 %i.ag, %i.at
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.451.0.copyload, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !19
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223, %bb.c
  %.sroa.4143.0.copyload.sink = phi ptr [ %.sroa.4143.0.copyload, %bb.c ], [ %.sroa.466.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223 ], [ %.sroa.6128.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205 ]
  %.sink = phi i64 [ %i.j, %bb.c ], [ %i.bk, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit223 ], [ %i.ac, %_Py_LibHacl_Hacl_Hash_Blake2b_update_multi.exit205 ]
  store ptr %.sroa.4143.0.copyload.sink, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !21
  store i64 %.sink, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_Blake2b_digest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [16 x i64], align 16              ; 3 uses
  %i.d = alloca [16 x i64], align 16              ; 8 uses
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.460.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !14
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.561.0.copyload = load i8, ptr %.sroa.561.0..sroa_idx, align 2, !tbaa !16
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.450.0.copyload = load ptr, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !19
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.551.0.copyload = load ptr, ptr %.sroa.551.0..sroa_idx, align 8, !tbaa !21
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.652.0.copyload = load i64, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !12 ; 5 uses
  %i.e = and i64 %.sroa.652.0.copyload, 127       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ne i64 %.sroa.652.0.copyload, 0
  %or.cond = and i1 %i.g, %i.f
  %i.h = trunc nuw nsw i64 %i.e to i32
  %.0 = select i1 %or.cond, i32 128, i32 %i.h     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.450.0.copyload, i64 128, i1 false)
  %i.i = and i32 %.0, 127                         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.k, %i.j
  %i.l = zext nneg i32 %i.i to i64
  %.067 = select i1 %or.cond3, i64 128, i64 %i.l
  %i.m = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.n = sub i64 %.sroa.652.0.copyload, %i.m
  %i.o = trunc i8 %.sroa.561.0.copyload to i1
  %i.p = getelementptr i8, ptr %.sroa.551.0.copyload, i64 %i.m
  %i.q = sub nsw i64 0, %.067
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.r, i64 %i.m, i1 false)
  %i.s = xor i64 %.sroa.652.0.copyload, -1
  %i.t = and i64 %i.n, %i.s
  %i.u = lshr i64 %i.t, 63
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.o, i64 %.sroa.652.0.copyload, i64 %i.u, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.x = load <2 x i64>, ptr %i.d, align 16, !tbaa !12
  store <2 x i64> %i.x, ptr %i.a, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 16, !tbaa !12
  store <2 x i64> %i.aa, ptr %i.y, align 16
  %i.ab = load <2 x i64>, ptr %i.w, align 16, !tbaa !12
  store <2 x i64> %i.ab, ptr %i.v, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ae = load <2 x i64>, ptr %i.ad, align 16, !tbaa !12
  store <2 x i64> %i.ae, ptr %i.ac, align 16
  %i.af = zext i8 %.sroa.460.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.af, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.sroa.4.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret i8 %.sroa.4.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, 131072) i24 @_Py_LibHacl_Hacl_Hash_Blake2b_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !16
  %i.a = and i8 %.sroa.5.0.copyload, 1
  %.sroa.3.0.insert.ext = zext nneg i8 %i.a to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %.sroa.4.0.copyload to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.04.0.insert.ext = zext i8 %.sroa.0.0.copyload to i24
  %.sroa.04.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.04.0.insert.ext
  ret i24 %.sroa.04.0.insert.insert
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_free(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !21
  tail call void @free(ptr noundef %.sroa.44.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.068.0.copyload = load i8, ptr %0, align 8, !tbaa !14
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.469.0.copyload = load i8, ptr %.sroa.469.0..sroa_idx, align 1, !tbaa !14
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.570.0.copyload = load i8, ptr %.sroa.570.0..sroa_idx, align 2, !tbaa !16
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.772.0.copyload = load ptr, ptr %.sroa.772.0..sroa_idx, align 8, !tbaa !19
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.873.0.copyload = load ptr, ptr %.sroa.873.0..sroa_idx, align 8, !tbaa !21
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !12
  %i.a = and i8 %.sroa.570.0.copyload, 1
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.873.0.copyload, i64 128, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #17 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #16
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.772.0.copyload, i64 128, i1 false)
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #18 ; 7 uses
  %cond = icmp eq ptr %i.h, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i8 %i.a to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = zext i8 %.sroa.469.0.copyload to i64
  %i.l = shl nuw nsw i64 %i.k, 8
  %i.m = or disjoint i64 %i.j, %i.l
  %i.n = zext i8 %.sroa.068.0.copyload to i64
  %i.o = or disjoint i64 %i.m, %i.n
  store i64 %i.o, ptr %i.h, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #16
  tail call void @free(ptr noundef nonnull %i.f) #16
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.critedge, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %.critedge ], [ null, %bb.f ], [ %i.h, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_hash_with_key(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 8 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %i.d = alloca [16 x i64], align 16              ; 24 uses
  %i.e = alloca [16 x i64], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 7640891576956012808, ptr %i.g, align 16, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 -4942790177534073029, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 4354685564936845355, ptr %i.j, align 16, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 -6534734903238641935, ptr %i.k, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.h, align 16, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 -7276294671716946913, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 2270897969802886507, ptr %i.m, align 16, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 6620516959819538809, ptr %i.n, align 8, !tbaa !12
  %i.o = and i32 %1, 255
  %i.p = shl i32 %5, 8
  %i.q = and i32 %i.p, 65280
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = or disjoint i32 %i.r, 16842752
  %i.t = zext nneg i32 %i.s to i64
  %i.u = xor i64 %i.t, 7640891576956012808
  store i64 %i.u, ptr %i.d, align 16, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -4942790177534073029, ptr %i.v, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 4354685564936845355, ptr %i.w, align 16, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 -6534734903238641935, ptr %i.x, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.f, align 16, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 -7276294671716946913, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i64 2270897969802886507, ptr %i.z, align 16, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 6620516959819538809, ptr %i.aa, align 8, !tbaa !12
  %.not.i = icmp eq i32 %5, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ab = zext i32 %5 to i64                      ; 3 uses
  %i.ac = icmp ugt i32 %5, 127
  %i.ad = sub nsw i64 128, %i.ab
  %i.ae = select i1 %i.ac, i64 0, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ab
  call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 0, i64 %i.ae, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %i.ab, i1 false)
  %i.ag = icmp eq i32 %3, 0                       ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext %i.ag, i1 noundef zeroext false, i64 128, i64 0, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br i1 %i.ag, label %update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @update_blocks(i32 noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 128, ptr noundef readonly %2)
  br label %update.exit

bb.d:                                             ; preds = %bb.a
  %i.ah = lshr i32 %3, 7                          ; 2 uses
  %i.ai = and i32 %3, 127                         ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = icmp ne i32 %i.ah, 0
  %or.cond.i = and i1 %i.aj, %i.ak                ; 2 uses
  %i.al = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %i.ah, %i.al              ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.am = shl nuw nsw i64 %indvars.iv.next.i.i, 7
  %i.an = and i64 %i.am, 4294967168
  %i.ao = shl nuw nsw i64 %indvars.iv.i.i, 7
  %i.ap = and i64 %i.ao, 4294967168
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.an, i64 0, ptr noundef readonly %i.aq)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !0

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ar = zext i32 %3 to i64                      ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 %i.ar
  %i.at = zext nneg i32 %i.ai to i64
  %i.au = select i1 %or.cond.i, i64 128, i64 %i.at ; 2 uses
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr i8, ptr %i.as, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.aw, i64 %i.au, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext false, i64 %i.ar, i64 0, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %update.exit

update.exit:                                      ; preds = %bb.b, %bb.c, %update_blocks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load <2 x i64>, ptr %i.d, align 16, !tbaa !12
  store <2 x i64> %i.ay, ptr %i.b, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load <2 x i64>, ptr %i.w, align 16, !tbaa !12
  store <2 x i64> %i.ba, ptr %i.az, align 16
  %i.bb = load <2 x i64>, ptr %i.f, align 16, !tbaa !12
end_hunk_1
