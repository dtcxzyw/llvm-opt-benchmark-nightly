Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/sha1?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rhash_sha1_process_block:bb.a
  %i.aid = xor i32 %i.aic, %i.agu                 ; 2 uses
  %i.aie = tail call i32 @llvm.fshl.i32(i32 %i.aid, i32 %i.aid, i32 1) ; 3 uses
  %i.aif = tail call i32 @llvm.fshl.i32(i32 %i.ahc, i32 %i.ahc, i32 30) ; 3 uses
  %i.aig = xor i32 %i.aif, %i.aht
  %i.aih = xor i32 %i.aig, %i.aho
  %i.aii = tail call i32 @llvm.fshl.i32(i32 %i.aia, i32 %i.aia, i32 5)
  %i.aij = add i32 %i.aie, -899497514
  %i.aik = add i32 %i.aij, %i.ahh
  %i.ail = add i32 %i.aik, %i.aih
  %i.aim = add i32 %i.ail, %i.aii                 ; 5 uses
  %i.ain = xor i32 %i.aby, %i.aaw
  %i.aio = xor i32 %i.ain, %i.aey
  %i.aip = xor i32 %i.aio, %i.ahg                 ; 2 uses
  %i.aiq = tail call i32 @llvm.fshl.i32(i32 %i.aip, i32 %i.aip, i32 1) ; 3 uses
  %i.air = tail call i32 @llvm.fshl.i32(i32 %i.aho, i32 %i.aho, i32 30) ; 3 uses
  %i.ais = xor i32 %i.air, %i.aif
  %i.ait = xor i32 %i.ais, %i.aia
  %i.aiu = tail call i32 @llvm.fshl.i32(i32 %i.aim, i32 %i.aim, i32 5)
  %i.aiv = add i32 %i.aiq, -899497514
  %i.aiw = add i32 %i.aiv, %i.aht
  %i.aix = add i32 %i.aiw, %i.ait
  %i.aiy = add i32 %i.aix, %i.aiu                 ; 5 uses
  %i.aiz = xor i32 %i.acm, %i.abk
  %i.aja = xor i32 %i.aiz, %i.afk
  %i.ajb = xor i32 %i.aja, %i.ahs                 ; 2 uses
  %i.ajc = tail call i32 @llvm.fshl.i32(i32 %i.ajb, i32 %i.ajb, i32 1) ; 2 uses
  %i.ajd = tail call i32 @llvm.fshl.i32(i32 %i.aia, i32 %i.aia, i32 30) ; 3 uses
  %i.aje = xor i32 %i.ajd, %i.air
  %i.ajf = xor i32 %i.aje, %i.aim
  %i.ajg = tail call i32 @llvm.fshl.i32(i32 %i.aiy, i32 %i.aiy, i32 5)
  %i.ajh = add i32 %i.ajc, -899497514
  %i.aji = add i32 %i.ajh, %i.aif
  %i.ajj = add i32 %i.aji, %i.ajf
  %i.ajk = add i32 %i.ajj, %i.ajg                 ; 5 uses
  %i.ajl = xor i32 %i.ada, %i.aby
  %i.ajm = xor i32 %i.ajl, %i.afw
  %i.ajn = xor i32 %i.ajm, %i.aie                 ; 2 uses
  %i.ajo = tail call i32 @llvm.fshl.i32(i32 %i.ajn, i32 %i.ajn, i32 1) ; 2 uses
  %i.ajp = tail call i32 @llvm.fshl.i32(i32 %i.aim, i32 %i.aim, i32 30) ; 3 uses
  %i.ajq = xor i32 %i.ajp, %i.ajd
  %i.ajr = xor i32 %i.ajq, %i.aiy
  %i.ajs = tail call i32 @llvm.fshl.i32(i32 %i.ajk, i32 %i.ajk, i32 5)
  %i.ajt = add i32 %i.ajo, -899497514
  %i.aju = add i32 %i.ajt, %i.air
  %i.ajv = add i32 %i.aju, %i.ajr
  %i.ajw = add i32 %i.ajv, %i.ajs                 ; 5 uses
  %i.ajx = xor i32 %i.ado, %i.acm
  %i.ajy = xor i32 %i.ajx, %i.agi
  %i.ajz = xor i32 %i.ajy, %i.aiq                 ; 2 uses
  %i.aka = tail call i32 @llvm.fshl.i32(i32 %i.ajz, i32 %i.ajz, i32 1) ; 2 uses
  %i.akb = tail call i32 @llvm.fshl.i32(i32 %i.aiy, i32 %i.aiy, i32 30) ; 3 uses
  %i.akc = xor i32 %i.akb, %i.ajp
  %i.akd = xor i32 %i.akc, %i.ajk
  %i.ake = tail call i32 @llvm.fshl.i32(i32 %i.ajw, i32 %i.ajw, i32 5)
  %i.akf = add i32 %i.aka, -899497514
  %i.akg = add i32 %i.akf, %i.ajd
  %i.akh = add i32 %i.akg, %i.akd
  %i.aki = add i32 %i.akh, %i.ake                 ; 5 uses
  %i.akj = xor i32 %i.aea, %i.ada
  %i.akk = xor i32 %i.akj, %i.agu
  %i.akl = xor i32 %i.akk, %i.ajc                 ; 2 uses
  %i.akm = tail call i32 @llvm.fshl.i32(i32 %i.akl, i32 %i.akl, i32 1) ; 2 uses
  %i.akn = tail call i32 @llvm.fshl.i32(i32 %i.ajk, i32 %i.ajk, i32 30) ; 3 uses
  %i.ako = xor i32 %i.akn, %i.akb
  %i.akp = xor i32 %i.ako, %i.ajw
  %i.akq = tail call i32 @llvm.fshl.i32(i32 %i.aki, i32 %i.aki, i32 5)
  %i.akr = add i32 %i.akm, -899497514
  %i.aks = add i32 %i.akr, %i.ajp
  %i.akt = add i32 %i.aks, %i.akp
  %i.aku = add i32 %i.akt, %i.akq                 ; 5 uses
  %i.akv = xor i32 %i.aem, %i.ado
  %i.akw = xor i32 %i.akv, %i.ahg
  %i.akx = xor i32 %i.akw, %i.ajo                 ; 2 uses
  %i.aky = tail call i32 @llvm.fshl.i32(i32 %i.akx, i32 %i.akx, i32 1) ; 2 uses
  %i.akz = tail call i32 @llvm.fshl.i32(i32 %i.ajw, i32 %i.ajw, i32 30) ; 3 uses
  %i.ala = xor i32 %i.akz, %i.akn
  %i.alb = xor i32 %i.ala, %i.aki
  %i.alc = tail call i32 @llvm.fshl.i32(i32 %i.aku, i32 %i.aku, i32 5)
  %i.ald = add i32 %i.aky, -899497514
  %i.ale = add i32 %i.ald, %i.akb
  %i.alf = add i32 %i.ale, %i.alb
  %i.alg = add i32 %i.alf, %i.alc                 ; 5 uses
  %i.alh = xor i32 %i.aey, %i.aea
  %i.ali = xor i32 %i.alh, %i.ahs
  %i.alj = xor i32 %i.ali, %i.aka                 ; 2 uses
  %i.alk = tail call i32 @llvm.fshl.i32(i32 %i.alj, i32 %i.alj, i32 1)
  %i.all = tail call i32 @llvm.fshl.i32(i32 %i.aki, i32 %i.aki, i32 30) ; 3 uses
  %i.alm = xor i32 %i.all, %i.akz
  %i.aln = xor i32 %i.alm, %i.aku
  %i.alo = tail call i32 @llvm.fshl.i32(i32 %i.alg, i32 %i.alg, i32 5)
  %i.alp = add i32 %i.alk, -899497514
  %i.alq = add i32 %i.alp, %i.akn
  %i.alr = add i32 %i.alq, %i.aln
  %i.als = add i32 %i.alr, %i.alo                 ; 5 uses
  %i.alt = xor i32 %i.afk, %i.aem
  %i.alu = xor i32 %i.alt, %i.aie
  %i.alv = xor i32 %i.alu, %i.akm                 ; 2 uses
  %i.alw = tail call i32 @llvm.fshl.i32(i32 %i.alv, i32 %i.alv, i32 1)
  %i.alx = tail call i32 @llvm.fshl.i32(i32 %i.aku, i32 %i.aku, i32 30) ; 3 uses
  %i.aly = xor i32 %i.alx, %i.all
  %i.alz = xor i32 %i.aly, %i.alg
  %i.ama = tail call i32 @llvm.fshl.i32(i32 %i.als, i32 %i.als, i32 5)
  %i.amb = add i32 %i.alw, -899497514
  %i.amc = add i32 %i.amb, %i.akz
  %i.amd = add i32 %i.amc, %i.alz
  %i.ame = add i32 %i.amd, %i.ama                 ; 3 uses
  %i.amf = xor i32 %i.afw, %i.aey
  %i.amg = xor i32 %i.amf, %i.aiq
  %i.amh = xor i32 %i.amg, %i.aky                 ; 2 uses
  %i.ami = tail call i32 @llvm.fshl.i32(i32 %i.amh, i32 %i.amh, i32 1)
  %i.amj = tail call i32 @llvm.fshl.i32(i32 %i.alg, i32 %i.alg, i32 30) ; 2 uses
  %i.amk = xor i32 %i.amj, %i.alx
  %i.aml = xor i32 %i.amk, %i.als
  %i.amm = tail call i32 @llvm.fshl.i32(i32 %i.ame, i32 %i.ame, i32 5)
  %i.amn = add i32 %i.a, -899497514
  %i.amo = add i32 %i.amn, %i.ami
  %i.amp = add i32 %i.amo, %i.all
  %i.amq = add i32 %i.amp, %i.aml
  %i.amr = add i32 %i.amq, %i.amm
  store i32 %i.amr, ptr %0, align 4, !tbaa !12
  %i.ams = add i32 %i.ame, %i.c
  store i32 %i.ams, ptr %i.b, align 4, !tbaa !12
  %i.amt = tail call i32 @llvm.fshl.i32(i32 %i.als, i32 %i.als, i32 30)
  %i.amu = add i32 %i.amt, %i.e
  store i32 %i.amu, ptr %i.d, align 4, !tbaa !12
  %i.amv = add i32 %i.amj, %i.g
  store i32 %i.amv, ptr %i.f, align 4, !tbaa !12
  %i.amw = add i32 %i.alx, %i.i
  store i32 %i.amw, ptr %i.h, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rhash_sha1_final(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63
  %i.e = and i64 %i.b, 63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  store i8 -128, ptr %i.f, align 1, !tbaa !15
  %.029 = add nuw nsw i32 %i.d, 1                 ; 2 uses
  %i.g = and i32 %.029, 3
  %.not30 = icmp eq i32 %i.g, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = and i64 %i.b, 63                         ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 1
  %i.j = sub i64 2, %i.b
  %i.k = and i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !15
  %i.m = trunc nuw nsw i64 %i.h to i32
  %i.n = add nuw nsw i32 %i.m, 2                  ; 2 uses
  %i.o = and i32 %i.n, 3
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.p = trunc nuw nsw i64 %i.h to i32
  %i.q = add nuw nsw i32 %i.p, 3                  ; 2 uses
  %i.r = and i32 %i.q, 3
  %.not.1 = icmp eq i32 %i.r, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.s = trunc nuw nsw i64 %i.h to i32
  %i.t = add nuw nsw i32 %i.s, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %bb.a
  %.0.lcssa = phi i32 [ %.029, %bb.a ], [ %i.n, %.lr.ph.preheader ], [ %i.q, %.lr.ph.1 ], [ %i.t, %.lr.ph.2 ] ; 4 uses
  %i.u = icmp ugt i32 %.0.lcssa, 56
  br i1 %i.u, label %.preheader, label %bb.b

.preheader:                                       ; preds = %._crit_edge
  %i.v = icmp ult i32 %.0.lcssa, 64
  br i1 %i.v, label %.lr.ph32, label %.thread

.lr.ph32:                                         ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.w, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %.preheader, %.lr.ph32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call fastcc void @rhash_sha1_process_block(ptr noundef nonnull %i.x, ptr noundef nonnull %0)
  br label %.lr.ph36.preheader

bb.b:                                             ; preds = %._crit_edge
  %.not46 = icmp eq i32 %.0.lcssa, 56
  br i1 %.not46, label %._crit_edge37, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %.thread, %bb.b
  %.245 = phi i32 [ 0, %.thread ], [ %.0.lcssa, %bb.b ] ; 2 uses
  %i.y = zext nneg i32 %.245 to i64
  %scevgep40 = getelementptr i8, ptr %0, i64 %i.y
  %narrow = sub nsw i32 52, %.245
  %i.z = zext i32 %narrow to i64
  %2 = add nuw nsw i64 %i.z, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep40, i8 0, i64 %2, i1 false), !tbaa !12
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36.preheader, %bb.b
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ab = lshr i64 %i.aa, 29
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !12
  %.tr = trunc i64 %i.aa to i32
  %i.af = shl i32 %.tr, 3
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call fastcc void @rhash_sha1_process_block(ptr noundef nonnull %i.ai, ptr noundef nonnull %0)
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge37
  tail call void @rhash_swap_copy_str_to_u32(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.ai, i64 noundef 20) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge37
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

declare void @rhash_swap_copy_str_to_u32(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"sha1_ctx", !5, i64 0, !9, i64 64, !5, i64 72}
!11 = !{!10, !9, i64 64}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!5, !5, i64 0}
end_hunk_0
