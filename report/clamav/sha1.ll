Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/sha1?download=true
inline.NumInlined: 20
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z13SHA1TransformPjS_PKhb:bb.a
  %i.afu = add i32 %i.aft, %i.aen
  %i.afv = add i32 %i.afu, %i.afn
  %i.afw = add i32 %i.afv, %i.afs                 ; 5 uses
  %i.afx = tail call i32 @llvm.fshl.i32(i32 %i.aey, i32 %i.aey, i32 30) ; 3 uses
  %i.afy = xor i32 %i.afx, %i.afl
  %i.afz = xor i32 %i.afy, %i.afk
  %i.aga = xor i32 %i.zf, %i.yd
  %i.agb = xor i32 %i.aga, %i.acl
  %i.agc = xor i32 %i.agb, %i.aet                 ; 2 uses
  %i.agd = tail call i32 @llvm.fshl.i32(i32 %i.agc, i32 %i.agc, i32 1) ; 4 uses
  store i32 %i.agd, ptr %i.av, align 4, !tbaa !9
  %i.age = tail call i32 @llvm.fshl.i32(i32 %i.afw, i32 %i.afw, i32 5)
  %i.agf = add i32 %i.agd, -899497514
  %i.agg = add i32 %i.agf, %i.aez
  %i.agh = add i32 %i.agg, %i.afz
  %i.agi = add i32 %i.agh, %i.age                 ; 5 uses
  %i.agj = tail call i32 @llvm.fshl.i32(i32 %i.afk, i32 %i.afk, i32 30) ; 3 uses
  %i.agk = xor i32 %i.agj, %i.afx
  %i.agl = xor i32 %i.agk, %i.afw
  %i.agm = xor i32 %i.zt, %i.yr
  %i.agn = xor i32 %i.agm, %i.acx
  %i.ago = xor i32 %i.agn, %i.aff                 ; 2 uses
  %i.agp = tail call i32 @llvm.fshl.i32(i32 %i.ago, i32 %i.ago, i32 1) ; 4 uses
  store i32 %i.agp, ptr %i.bh, align 4, !tbaa !9
  %i.agq = tail call i32 @llvm.fshl.i32(i32 %i.agi, i32 %i.agi, i32 5)
  %i.agr = add i32 %i.agp, -899497514
  %i.ags = add i32 %i.agr, %i.afl
  %i.agt = add i32 %i.ags, %i.agl
  %i.agu = add i32 %i.agt, %i.agq                 ; 5 uses
  %i.agv = tail call i32 @llvm.fshl.i32(i32 %i.afw, i32 %i.afw, i32 30) ; 3 uses
  %i.agw = xor i32 %i.agv, %i.agj
  %i.agx = xor i32 %i.agw, %i.agi
  %i.agy = xor i32 %i.aah, %i.zf
  %i.agz = xor i32 %i.agy, %i.adj
  %i.aha = xor i32 %i.agz, %i.afr                 ; 2 uses
  %i.ahb = tail call i32 @llvm.fshl.i32(i32 %i.aha, i32 %i.aha, i32 1) ; 4 uses
  store i32 %i.ahb, ptr %i.bt, align 4, !tbaa !9
  %i.ahc = tail call i32 @llvm.fshl.i32(i32 %i.agu, i32 %i.agu, i32 5)
  %i.ahd = add i32 %i.ahb, -899497514
  %i.ahe = add i32 %i.ahd, %i.afx
  %i.ahf = add i32 %i.ahe, %i.agx
  %i.ahg = add i32 %i.ahf, %i.ahc                 ; 5 uses
  %i.ahh = tail call i32 @llvm.fshl.i32(i32 %i.agi, i32 %i.agi, i32 30) ; 3 uses
  %i.ahi = xor i32 %i.ahh, %i.agv
  %i.ahj = xor i32 %i.ahi, %i.agu
  %i.ahk = xor i32 %i.aav, %i.zt
  %i.ahl = xor i32 %i.ahk, %i.adv
  %i.ahm = xor i32 %i.ahl, %i.agd                 ; 2 uses
  %i.ahn = tail call i32 @llvm.fshl.i32(i32 %i.ahm, i32 %i.ahm, i32 1) ; 4 uses
  store i32 %i.ahn, ptr %i.cf, align 4, !tbaa !9
  %i.aho = tail call i32 @llvm.fshl.i32(i32 %i.ahg, i32 %i.ahg, i32 5)
  %i.ahp = add i32 %i.ahn, -899497514
  %i.ahq = add i32 %i.ahp, %i.agj
  %i.ahr = add i32 %i.ahq, %i.ahj
  %i.ahs = add i32 %i.ahr, %i.aho                 ; 5 uses
  %i.aht = tail call i32 @llvm.fshl.i32(i32 %i.agu, i32 %i.agu, i32 30) ; 3 uses
  %i.ahu = xor i32 %i.aht, %i.ahh
  %i.ahv = xor i32 %i.ahu, %i.ahg
  %i.ahw = xor i32 %i.abj, %i.aah
  %i.ahx = xor i32 %i.ahw, %i.aeh
  %i.ahy = xor i32 %i.ahx, %i.agp                 ; 2 uses
  %i.ahz = tail call i32 @llvm.fshl.i32(i32 %i.ahy, i32 %i.ahy, i32 1) ; 4 uses
  store i32 %i.ahz, ptr %i.cr, align 4, !tbaa !9
  %i.aia = tail call i32 @llvm.fshl.i32(i32 %i.ahs, i32 %i.ahs, i32 5)
  %i.aib = add i32 %i.ahz, -899497514
  %i.aic = add i32 %i.aib, %i.agv
  %i.aid = add i32 %i.aic, %i.ahv
  %i.aie = add i32 %i.aid, %i.aia                 ; 5 uses
  %i.aif = tail call i32 @llvm.fshl.i32(i32 %i.ahg, i32 %i.ahg, i32 30) ; 3 uses
  %i.aig = xor i32 %i.aif, %i.aht
  %i.aih = xor i32 %i.aig, %i.ahs
  %i.aii = xor i32 %i.abx, %i.aav
  %i.aij = xor i32 %i.aii, %i.aet
  %i.aik = xor i32 %i.aij, %i.ahb                 ; 2 uses
  %i.ail = tail call i32 @llvm.fshl.i32(i32 %i.aik, i32 %i.aik, i32 1) ; 3 uses
  store i32 %i.ail, ptr %i.dd, align 4, !tbaa !9
  %i.aim = tail call i32 @llvm.fshl.i32(i32 %i.aie, i32 %i.aie, i32 5)
  %i.ain = add i32 %i.ail, -899497514
  %i.aio = add i32 %i.ain, %i.ahh
  %i.aip = add i32 %i.aio, %i.aih
  %i.aiq = tail call i32 @llvm.fshl.i32(i32 %i.ahs, i32 %i.ahs, i32 30) ; 3 uses
  %i.air = xor i32 %i.aiq, %i.aif
  %i.ais = xor i32 %i.air, %i.aie
  %i.ait = xor i32 %i.acl, %i.abj
  %i.aiu = xor i32 %i.ait, %i.aff
  %i.aiv = xor i32 %i.aiu, %i.ahn                 ; 2 uses
  %i.aiw = tail call i32 @llvm.fshl.i32(i32 %i.aiv, i32 %i.aiv, i32 1) ; 3 uses
  store i32 %i.aiw, ptr %i.dp, align 4, !tbaa !9
  %i.aix = add i32 %i.aiw, -899497514
  %i.aiy = add i32 %i.aix, %i.aht
  %i.aiz = add i32 %i.aiy, %i.ais
  %i.aja = tail call i32 @llvm.fshl.i32(i32 %i.aie, i32 %i.aie, i32 30) ; 3 uses
  %i.ajb = xor i32 %i.acx, %i.abx
  %i.ajc = xor i32 %i.ajb, %i.afr
  %i.ajd = xor i32 %i.ajc, %i.ahz                 ; 2 uses
  %i.aje = tail call i32 @llvm.fshl.i32(i32 %i.ajd, i32 %i.ajd, i32 1) ; 3 uses
  store i32 %i.aje, ptr %i.eb, align 4, !tbaa !9
  %i.ajf = xor i32 %i.adj, %i.acl
  %i.ajg = xor i32 %i.ajf, %i.agd
  %i.ajh = xor i32 %i.ajg, %i.ail                 ; 2 uses
  %i.aji = tail call i32 @llvm.fshl.i32(i32 %i.ajh, i32 %i.ajh, i32 1) ; 3 uses
  store i32 %i.aji, ptr %i.en, align 4, !tbaa !9
  %i.ajj = add i32 %i.aji, -899497514
  %i.ajk = add i32 %i.ajj, %i.aiq
  %i.ajl = xor i32 %i.adv, %i.acx
  %i.ajm = xor i32 %i.ajl, %i.agp
  %i.ajn = xor i32 %i.ajm, %i.aiw                 ; 2 uses
  %i.ajo = tail call i32 @llvm.fshl.i32(i32 %i.ajn, i32 %i.ajn, i32 1) ; 3 uses
  store i32 %i.ajo, ptr %i.ez, align 4, !tbaa !9
  %i.ajp = xor i32 %i.aeh, %i.adj
  %i.ajq = xor i32 %i.ajp, %i.ahb
  %i.ajr = xor i32 %i.ajq, %i.aje                 ; 2 uses
  %i.ajs = tail call i32 @llvm.fshl.i32(i32 %i.ajr, i32 %i.ajr, i32 1) ; 2 uses
  store i32 %i.ajs, ptr %i.fl, align 4, !tbaa !9
  %i.ajt = add i32 %i.ajs, -899497514
  %i.aju = xor i32 %i.aet, %i.adv
  %i.ajv = xor i32 %i.aju, %i.ahn
  %i.ajw = xor i32 %i.ajv, %i.aji                 ; 2 uses
  %i.ajx = tail call i32 @llvm.fshl.i32(i32 %i.ajw, i32 %i.ajw, i32 1) ; 2 uses
  store i32 %i.ajx, ptr %i.fx, align 4, !tbaa !9
  %i.ajy = xor i32 %i.aff, %i.aeh
  %i.ajz = xor i32 %i.ajy, %i.ahz
  %i.aka = xor i32 %i.ajz, %i.ajo                 ; 2 uses
  %i.akb = tail call i32 @llvm.fshl.i32(i32 %i.aka, i32 %i.aka, i32 1) ; 2 uses
  store i32 %i.akb, ptr %i.gj, align 4, !tbaa !9
  %i.akc = load i32, ptr %0, align 4, !tbaa !8
  %i.akd = add i32 %i.akc, -899497514
  %i.ake = add i32 %i.akd, %i.akb
  %i.akf = add i32 %i.aip, %i.aim                 ; 5 uses
  %i.akg = tail call i32 @llvm.fshl.i32(i32 %i.akf, i32 %i.akf, i32 5)
  %i.akh = add i32 %i.aiz, %i.akg                 ; 5 uses
  %i.aki = xor i32 %i.aja, %i.aiq
  %i.akj = xor i32 %i.aki, %i.akf
  %i.akk = tail call i32 @llvm.fshl.i32(i32 %i.akh, i32 %i.akh, i32 5)
  %i.akl = add i32 %i.aje, -899497514
  %i.akm = add i32 %i.akl, %i.aif
  %i.akn = add i32 %i.akm, %i.akj
  %i.ako = add i32 %i.akn, %i.akk                 ; 5 uses
  %i.akp = tail call i32 @llvm.fshl.i32(i32 %i.akf, i32 %i.akf, i32 30) ; 3 uses
  %i.akq = xor i32 %i.akp, %i.aja
  %i.akr = xor i32 %i.akq, %i.akh
  %i.aks = tail call i32 @llvm.fshl.i32(i32 %i.ako, i32 %i.ako, i32 5)
  %i.akt = add i32 %i.ajk, %i.akr
  %i.aku = add i32 %i.akt, %i.aks                 ; 5 uses
  %i.akv = tail call i32 @llvm.fshl.i32(i32 %i.akh, i32 %i.akh, i32 30) ; 3 uses
  %i.akw = xor i32 %i.akv, %i.akp
  %i.akx = xor i32 %i.akw, %i.ako
  %i.aky = tail call i32 @llvm.fshl.i32(i32 %i.aku, i32 %i.aku, i32 5)
  %i.akz = add i32 %i.ajo, -899497514
  %i.ala = add i32 %i.akz, %i.aja
  %i.alb = add i32 %i.ala, %i.akx
  %i.alc = add i32 %i.alb, %i.aky                 ; 5 uses
  %i.ald = tail call i32 @llvm.fshl.i32(i32 %i.ako, i32 %i.ako, i32 30) ; 3 uses
  %i.ale = xor i32 %i.ald, %i.akv
  %i.alf = xor i32 %i.ale, %i.aku
  %i.alg = tail call i32 @llvm.fshl.i32(i32 %i.alc, i32 %i.alc, i32 5)
  %i.alh = add i32 %i.ajt, %i.akp
  %i.ali = add i32 %i.alh, %i.alf
  %i.alj = add i32 %i.ali, %i.alg                 ; 5 uses
  %i.alk = tail call i32 @llvm.fshl.i32(i32 %i.aku, i32 %i.aku, i32 30) ; 3 uses
  %i.all = xor i32 %i.alk, %i.ald
  %i.alm = xor i32 %i.all, %i.alc
  %i.aln = tail call i32 @llvm.fshl.i32(i32 %i.alj, i32 %i.alj, i32 5)
  %i.alo = add i32 %i.ajx, -899497514
  %i.alp = add i32 %i.alo, %i.akv
  %i.alq = add i32 %i.alp, %i.alm
  %i.alr = add i32 %i.alq, %i.aln                 ; 3 uses
  %i.als = tail call i32 @llvm.fshl.i32(i32 %i.alc, i32 %i.alc, i32 30) ; 2 uses
  %i.alt = xor i32 %i.als, %i.alk
  %i.alu = xor i32 %i.alt, %i.alj
  %i.alv = tail call i32 @llvm.fshl.i32(i32 %i.alr, i32 %i.alr, i32 5)
  %i.alw = tail call i32 @llvm.fshl.i32(i32 %i.alj, i32 %i.alj, i32 30)
  %i.alx = add i32 %i.ake, %i.ald
  %i.aly = add i32 %i.alx, %i.alu
  %i.alz = add i32 %i.aly, %i.alv
  store i32 %i.alz, ptr %0, align 4, !tbaa !8
  %i.ama = load <4 x i32>, ptr %i.b, align 4, !tbaa !8
  %i.amb = insertelement <4 x i32> poison, i32 %i.alr, i64 0
  %i.amc = insertelement <4 x i32> %i.amb, i32 %i.alw, i64 1
  %i.amd = insertelement <4 x i32> %i.amc, i32 %i.als, i64 2
  %i.ame = insertelement <4 x i32> %i.amd, i32 %i.alk, i64 3
  %i.amf = add <4 x i32> %i.ame, %i.ama
  store <4 x i32> %i.amf, ptr %i.b, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z9sha1_initP12sha1_context(ptr nofree noundef writeonly captures(none) initializes((0, 20), (24, 32)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !12
  store i64 -1167088121787636991, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1167088121787636990, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.b, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z12sha1_processP12sha1_contextPKhm(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = and i64 %i.c, 63                         ; 5 uses
  %i.e = add i64 %i.c, %2
  store i64 %i.e, ptr %i.b, align 8, !tbaa !12
  %i.f = add i64 %i.d, %2
  %i.g = icmp ugt i64 %i.f, 63
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.j = sub nuw nsw i64 64, %i.d                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.j, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @_Z13SHA1TransformPjS_PKhb(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i1 noundef zeroext true)
  %i.k = xor i64 %i.d, 127
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02426 = phi i64 [ %i.n, %.lr.ph ], [ %i.j, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.02426
  call void @_Z13SHA1TransformPjS_PKhb(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, i1 noundef zeroext false)
  %i.n = add i64 %.02426, 64                      ; 2 uses
  %i.o = add i64 %.02426, 127
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.024.lcssa = phi i64 [ %i.j, %bb.b ], [ %i.n, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.1 = phi i64 [ %.024.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.0 = phi i64 [ 0, %._crit_edge ], [ %i.d, %bb.a ]
  %i.q = icmp ugt i64 %2, %.1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.u = sub nuw i64 %2, %.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z18sha1_process_rar29P12sha1_contextPKhm(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = and i64 %i.c, 63                         ; 5 uses
  %i.e = add i64 %i.c, %2
  store i64 %i.e, ptr %i.b, align 8, !tbaa !12
  %i.f = add i64 %i.d, %2
  %i.g = icmp ugt i64 %i.f, 63
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.j = sub nuw nsw i64 64, %i.d                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.j, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @_Z13SHA1TransformPjS_PKhb(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i1 noundef zeroext true)
  %i.k = xor i64 %i.d, 127
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.03134 = phi i64 [ %i.n, %.lr.ph ], [ %i.j, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.03134 ; 2 uses
  call void @_Z13SHA1TransformPjS_PKhb(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.m, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !tbaa !8
  %i.n = add i64 %.03134, 64                      ; 2 uses
  %i.o = add i64 %.03134, 127
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.031.lcssa = phi i64 [ %i.j, %bb.b ], [ %i.n, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.1 = phi i64 [ %.031.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.030 = phi i64 [ 0, %._crit_edge ], [ %i.d, %bb.a ]
  %i.q = icmp ugt i64 %2, %.1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.030
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.u = sub nuw i64 %2, %.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z9sha1_doneP12sha1_contextPj(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 63                         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.h = and i64 %i.c, 63
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  store i8 -128, ptr %i.i, align 1, !tbaa !9
  %.not = icmp eq i32 %i.g, 56
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i32 %i.e, 55
  br i1 %i.j, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not34 = icmp eq i32 %i.e, 63
  br i1 %.not34, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = and i64 %i.c, 63
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %scevgep = getelementptr i8, ptr %i.l, i64 33
  %narrow = xor i32 %i.e, 63
  %i.m = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 range(i64 0, 64) %i.m, i1 false), !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  call void @_Z13SHA1TransformPjS_PKhb(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.130 = phi i32 [ 0, %._crit_edge ], [ %i.g, %bb.b ] ; 2 uses
  %i.n = zext nneg i32 %.130 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %i.p = sub nuw nsw i32 56, %.130
  %i.q = zext nneg i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 0, i64 %i.q, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.r = shl i64 %i.c, 3                          ; 2 uses
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %i.v, ptr %i.u, align 8, !tbaa !8
  %i.w = trunc i64 %i.r to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.w)
  store i32 %i.y, ptr %i.x, align 4, !tbaa !8
  call void @_Z13SHA1TransformPjS_PKhb(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i1 noundef zeroext true)
  %i.z = load i32, ptr %0, align 8, !tbaa !8
  store i32 %i.z, ptr %1, align 4, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !8
  store i64 0, ptr %i.b, align 8, !tbaa !12
  store i64 -1167088121787636991, ptr %0, align 8
  store i64 1167088121787636990, ptr %i.ad, align 8
  store i32 -1009589776, ptr %i.aj, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTS12sha1_context", !4, i64 0, !10, i64 24, !4, i64 32}
!12 = !{!11, !10, i64 24}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
end_hunk_0
