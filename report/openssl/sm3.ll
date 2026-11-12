Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/sm3?download=true
begin_hunk_0_@ossl_sm3_block_data_order:bb.a
  %i.cic = tail call i32 @llvm.fshl.i32(i32 %i.chp, i32 %i.chp, i32 12) ; 2 uses
  %i.cid = add i32 %i.cic, -1482130984
  %i.cie = add i32 %i.cid, %i.cib                 ; 2 uses
  %i.cif = tail call i32 @llvm.fshl.i32(i32 %i.cie, i32 %i.cie, i32 7) ; 2 uses
  %i.cig = and i32 %i.chp, %i.cgq
  %i.cih = or i32 %i.chp, %i.cgq
  %i.cii = and i32 %i.cih, %i.chw
  %i.cij = or i32 %i.cii, %i.cig
  %i.cik = xor i32 %i.cif, %i.cic
  %i.cil = xor i32 %i.bwu, %i.brk
  %i.cim = add i32 %i.cgx, %i.cil
  %i.cin = add i32 %i.cim, %i.cij
  %i.cio = add i32 %i.cin, %i.cik                 ; 8 uses
  %i.cip = xor i32 %i.chc, %i.chx
  %i.ciq = and i32 %i.cib, %i.cip
  %i.cir = xor i32 %i.ciq, %i.chx
  %i.cis = add i32 %i.cgy, %i.brk
  %i.cit = add i32 %i.cis, %i.cir
  %i.ciu = add i32 %i.cit, %i.cif                 ; 5 uses
  %i.civ = tail call i32 @llvm.fshl.i32(i32 %i.cgq, i32 %i.cgq, i32 9) ; 2 uses
  %i.ciw = tail call i32 @llvm.fshl.i32(i32 %i.chc, i32 %i.chc, i32 19) ; 3 uses
  %i.cix = tail call i32 @llvm.fshl.i32(i32 %i.ciu, i32 %i.ciu, i32 9)
  %i.ciy = tail call i32 @llvm.fshl.i32(i32 %i.ciu, i32 %i.ciu, i32 17)
  %i.ciz = xor i32 %i.ciy, %i.cix
  %i.cja = xor i32 %i.ciz, %i.ciu                 ; 5 uses
  %i.cjb = tail call i32 @llvm.fshl.i32(i32 %i.cio, i32 %i.cio, i32 12) ; 2 uses
  %i.cjc = add i32 %i.cjb, 1330705329
  %i.cjd = add i32 %i.cjc, %i.cja                 ; 2 uses
  %i.cje = tail call i32 @llvm.fshl.i32(i32 %i.cjd, i32 %i.cjd, i32 7) ; 2 uses
  %i.cjf = and i32 %i.cio, %i.chp
  %i.cjg = or i32 %i.cio, %i.chp
  %i.cjh = and i32 %i.cjg, %i.civ
  %i.cji = or i32 %i.cjh, %i.cjf
  %i.cjj = xor i32 %i.cje, %i.cjb
  %i.cjk = xor i32 %i.bxz, %i.bxy
  %i.cjl = xor i32 %i.cjk, %i.bxx
  %i.cjm = xor i32 %i.cjl, %i.bqb
  %i.cjn = xor i32 %i.cjm, %i.bst
  %i.cjo = xor i32 %i.cjn, %i.bxw
  %i.cjp = add i32 %i.chw, %i.cjo
  %i.cjq = add i32 %i.cjp, %i.cji
  %i.cjr = add i32 %i.cjq, %i.cjj                 ; 8 uses
  %i.cjs = xor i32 %i.cib, %i.ciw
  %i.cjt = and i32 %i.cja, %i.cjs
  %i.cju = xor i32 %i.cjt, %i.ciw
  %i.cjv = add i32 %i.chx, %i.bst
  %i.cjw = add i32 %i.cjv, %i.cju
  %i.cjx = add i32 %i.cjw, %i.cje                 ; 5 uses
  %i.cjy = tail call i32 @llvm.fshl.i32(i32 %i.chp, i32 %i.chp, i32 9) ; 2 uses
  %i.cjz = tail call i32 @llvm.fshl.i32(i32 %i.cib, i32 %i.cib, i32 19) ; 3 uses
  %i.cka = tail call i32 @llvm.fshl.i32(i32 %i.cjx, i32 %i.cjx, i32 9)
  %i.ckb = tail call i32 @llvm.fshl.i32(i32 %i.cjx, i32 %i.cjx, i32 17)
  %i.ckc = xor i32 %i.ckb, %i.cka
  %i.ckd = xor i32 %i.ckc, %i.cjx                 ; 5 uses
  %i.cke = tail call i32 @llvm.fshl.i32(i32 %i.cjr, i32 %i.cjr, i32 12) ; 2 uses
  %i.ckf = add i32 %i.cke, -1633556638
  %i.ckg = add i32 %i.ckf, %i.ckd                 ; 2 uses
  %i.ckh = tail call i32 @llvm.fshl.i32(i32 %i.ckg, i32 %i.ckg, i32 7) ; 2 uses
  %i.cki = and i32 %i.cjr, %i.cio
  %i.ckj = or i32 %i.cjr, %i.cio
  %i.ckk = and i32 %i.ckj, %i.cjy
  %i.ckl = or i32 %i.ckk, %i.cki
  %i.ckm = xor i32 %i.ckh, %i.cke
  %i.ckn = xor i32 %i.bze, %i.bzd
  %i.cko = xor i32 %i.ckn, %i.bzc
  %i.ckp = xor i32 %i.cko, %i.brk
  %i.ckq = xor i32 %i.ckp, %i.buc
  %i.ckr = xor i32 %i.ckq, %i.bzb
  %i.cks = add i32 %i.civ, %i.ckr
  %i.ckt = add i32 %i.cks, %i.ckl
  %i.cku = add i32 %i.ckt, %i.ckm                 ; 5 uses
  %i.ckv = xor i32 %i.cja, %i.cjz
  %i.ckw = and i32 %i.ckd, %i.ckv
  %i.ckx = xor i32 %i.ckw, %i.cjz
  %i.cky = add i32 %i.ciw, %i.buc
  %i.ckz = add i32 %i.cky, %i.ckx
  %i.cla = add i32 %i.ckz, %i.ckh                 ; 5 uses
  %i.clb = tail call i32 @llvm.fshl.i32(i32 %i.cio, i32 %i.cio, i32 9) ; 2 uses
  %i.clc = tail call i32 @llvm.fshl.i32(i32 %i.cja, i32 %i.cja, i32 19) ; 3 uses
  %i.cld = tail call i32 @llvm.fshl.i32(i32 %i.cla, i32 %i.cla, i32 9)
  %i.cle = tail call i32 @llvm.fshl.i32(i32 %i.cla, i32 %i.cla, i32 17)
  %i.clf = xor i32 %i.cle, %i.cld
  %i.clg = xor i32 %i.clf, %i.cla                 ; 3 uses
  %i.clh = tail call i32 @llvm.fshl.i32(i32 %i.cku, i32 %i.cku, i32 12) ; 2 uses
  %i.cli = add i32 %i.clh, 1027854021
  %i.clj = add i32 %i.cli, %i.clg                 ; 2 uses
  %i.clk = tail call i32 @llvm.fshl.i32(i32 %i.clj, i32 %i.clj, i32 7) ; 2 uses
  %i.cll = and i32 %i.cku, %i.cjr
  %i.clm = or i32 %i.cku, %i.cjr
  %i.cln = and i32 %i.clm, %i.clb
  %i.clo = or i32 %i.cln, %i.cll
  %i.clp = xor i32 %i.clk, %i.clh
  %i.clq = xor i32 %i.caj, %i.cai
  %i.clr = xor i32 %i.clq, %i.cah
  %i.cls = xor i32 %i.clr, %i.bst
  %i.clt = xor i32 %i.cls, %i.bvl
  %i.clu = xor i32 %i.clt, %i.cag
  %i.clv = add i32 %i.cjy, %i.clu
  %i.clw = add i32 %i.clv, %i.clo
  %i.clx = add i32 %i.clw, %i.clp
  %i.cly = xor i32 %i.ckd, %i.clc
  %i.clz = and i32 %i.clg, %i.cly
  %i.cma = xor i32 %i.clz, %i.clc
  %i.cmb = add i32 %i.cjz, %i.bvl
  %i.cmc = add i32 %i.cmb, %i.cma
  %i.cmd = add i32 %i.cmc, %i.clk                 ; 5 uses
  %i.cme = tail call i32 @llvm.fshl.i32(i32 %i.cjr, i32 %i.cjr, i32 9)
  %i.cmf = tail call i32 @llvm.fshl.i32(i32 %i.ckd, i32 %i.ckd, i32 19)
  %i.cmg = tail call i32 @llvm.fshl.i32(i32 %i.cmd, i32 %i.cmd, i32 9)
  %i.cmh = tail call i32 @llvm.fshl.i32(i32 %i.cmd, i32 %i.cmd, i32 17)
  %i.cmi = xor i32 %i.clx, %i.o                   ; 2 uses
  store i32 %i.cmi, ptr %0, align 4, !tbaa !14
  %i.cmj = xor i32 %i.cku, %i.n                   ; 2 uses
  store i32 %i.cmj, ptr %i.a, align 4, !tbaa !15
  %i.cmk = xor i32 %i.cme, %i.m                   ; 2 uses
  store i32 %i.cmk, ptr %i.b, align 4, !tbaa !16
  %i.cml = xor i32 %i.clb, %i.l                   ; 2 uses
  store i32 %i.cml, ptr %i.c, align 4, !tbaa !17
  %i.cmm = xor i32 %i.cmh, %i.cmg
  %i.cmn = xor i32 %i.cmm, %i.k
  %i.cmo = xor i32 %i.cmn, %i.cmd                 ; 2 uses
  store i32 %i.cmo, ptr %i.d, align 4, !tbaa !18
  %i.cmp = xor i32 %i.clg, %i.j                   ; 2 uses
  store i32 %i.cmp, ptr %i.e, align 4, !tbaa !19
  %i.cmq = xor i32 %i.cmf, %i.i                   ; 2 uses
  store i32 %i.cmq, ptr %i.f, align 4, !tbaa !20
  %i.cmr = xor i32 %i.clc, %i.h                   ; 2 uses
  store i32 %i.cmr, ptr %i.g, align 4, !tbaa !21
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @ossl_sm3_transform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !12
  %i.b = and i32 %i.a, 32
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 20), align 4, !tbaa !12
  %i.d = and i32 %i.c, 2
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not2, ptr @ossl_sm3_block_data_order, ptr @ossl_hwsm3_block_data_order
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @ossl_sm3_block_data_order, %bb.a ], [ %i.e, %bb.b ]
  tail call void %i.f(ptr noundef %0, ptr noundef %1, i64 noundef 1) #7, !callees !13
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @ossl_sm3_final(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  store i8 -128, ptr %i.e, align 1, !tbaa !22
  %i.f = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.g = icmp ugt i32 %i.c, 55
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.i = sub nsw i64 63, %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.i, i1 false)
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !12
  %i.k = and i32 %i.j, 32
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 20), align 4, !tbaa !12
  %i.m = and i32 %i.l, 2
  %.not108 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not108, ptr @ossl_sm3_block_data_order, ptr @ossl_hwsm3_block_data_order
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ @ossl_sm3_block_data_order, %bb.b ], [ %i.n, %bb.c ]
  tail call void %i.o(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 1) #7, !callees !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.d ], [ %i.f, %bb.a ]     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0
  %i.q = sub nuw nsw i64 56, %.0
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 100
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %2, ptr %i.r, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.w)
  store i32 %3, ptr %i.u, align 4, !tbaa !22
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !12
  %i.y = and i32 %i.x, 32
  %.not109 = icmp eq i32 %i.y, 0
  br i1 %.not109, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 20), align 4, !tbaa !12
  %i.aa = and i32 %i.z, 2
  %.not110 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not110, ptr @ossl_sm3_block_data_order, ptr @ossl_hwsm3_block_data_order
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi ptr [ @ossl_sm3_block_data_order, %bb.e ], [ %i.ab, %bb.f ]
  tail call void %i.ac(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 1) #7, !callees !13
  store i32 0, ptr %i.b, align 4, !tbaa !11
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #7
  %i.ad = load i32, ptr %1, align 4, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  store i32 %i.af, ptr %0, align 1, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  store i32 %i.aj, ptr %i.ae, align 1, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.al)
  store i32 %i.an, ptr %i.ai, align 1, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  store i32 %i.ar, ptr %i.am, align 1, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.av, ptr %i.aq, align 1, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  store i32 %i.az, ptr %i.au, align 1, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bd, ptr %i.ay, align 1, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  store i32 %i.bg, ptr %i.bc, align 1, !tbaa !22
  ret i32 1
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @ossl_sm3_init(ptr nofree noundef writeonly captures(none) initializes((0, 108)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1937774191, i32 1226093241, i32 388252375, i32 -628488704>, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 -1452330820, i32 372324522, i32 -477237683, i32 -1325724082>, ptr %i.b, align 4, !tbaa !12
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"SM3state_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !5, i64 104}
!9 = !{!8, !5, i64 32}
!10 = !{!8, !5, i64 36}
!11 = !{!8, !5, i64 104}
!12 = !{!5, !5, i64 0}
!13 = !{ptr @ossl_hwsm3_block_data_order, ptr @ossl_sm3_block_data_order}
!14 = !{!8, !5, i64 0}
!15 = !{!8, !5, i64 4}
!16 = !{!8, !5, i64 8}
!17 = !{!8, !5, i64 12}
!18 = !{!8, !5, i64 16}
!19 = !{!8, !5, i64 20}
!20 = !{!8, !5, i64 24}
!21 = !{!8, !5, i64 28}
!22 = !{!4, !4, i64 0}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
end_hunk_0
