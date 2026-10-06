Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@aes_nohw_decrypt:bb.a
  store <2 x i64> %i.bi, ptr %i.f, align 16, !tbaa !80
  %i.bj = xor <2 x i64> %i.be, %i.ao
  store <2 x i64> %i.bj, ptr %i.j, align 16, !tbaa !80
  %i.bk = bitcast <2 x i64> %i.af to <4 x i32>
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 4)
  %i.bm = bitcast <4 x i32> %i.bl to <2 x i64>
  %i.bn = xor <2 x i64> %i.af, %i.bm
  %i.bo = and <2 x i64> %i.bn, splat (i64 1085102592571150095) ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = shl nuw <4 x i32> %i.bp, splat (i32 4)
  %i.br = bitcast <4 x i32> %i.bq to <2 x i64>
  %i.bs = xor <2 x i64> %i.af, %i.br
  store <2 x i64> %i.bs, ptr %i.g, align 16, !tbaa !80
  %i.bt = xor <2 x i64> %i.bo, %i.af
  store <2 x i64> %i.bt, ptr %i.k, align 16, !tbaa !80
  %i.bu = bitcast <2 x i64> %i.ap to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 4)
  %i.bw = bitcast <4 x i32> %i.bv to <2 x i64>
  %i.bx = xor <2 x i64> %i.ap, %i.bw
  %i.by = and <2 x i64> %i.bx, splat (i64 1085102592571150095) ; 2 uses
  %i.bz = bitcast <2 x i64> %i.by to <4 x i32>
  %i.ca = shl nuw <4 x i32> %i.bz, splat (i32 4)
  %i.cb = bitcast <4 x i32> %i.ca to <2 x i64>
  %i.cc = xor <2 x i64> %i.ap, %i.cb
  store <2 x i64> %i.cc, ptr %i.h, align 16, !tbaa !80
  %i.cd = xor <2 x i64> %i.by, %i.ap
  store <2 x i64> %i.cd, ptr %i.l, align 16, !tbaa !80
  %i.ce = add nuw nsw i64 %.01113.i, 1
  %exitcond.not = icmp eq i64 %.01113.i, %i.c
  br i1 %exitcond.not, label %_ZL26aes_nohw_expand_round_keysP17AES_NOHW_SCHEDULEPK10aes_key_st.exit, label %.preheader.i, !llvm.loop !0

_ZL26aes_nohw_expand_round_keysP17AES_NOHW_SCHEDULEPK10aes_key_st.exit: ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %.sroa.0.0.copyload.i4 = load <2 x i64>, ptr %0, align 1 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.phi.trans.insert12.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.phi.trans.insert14.i = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.phi.trans.insert18.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %.phi.trans.insert20.i = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.cf = bitcast <2 x i64> %.sroa.0.0.copyload.i4 to <4 x i32> ; 3 uses
  %i.cg = lshr <4 x i32> %i.cf, splat (i32 1)
  %.inner = and <4 x i32> %i.cg, splat (i32 1431655765) ; 2 uses
  %i.ch = shl nuw <4 x i32> %.inner, splat (i32 1)
  %i.ci = bitcast <4 x i32> %i.ch to <2 x i64>
  %i.cj = xor <2 x i64> %.sroa.0.0.copyload.i4, %i.ci ; 2 uses
  %i.ck = bitcast <2 x i64> %i.cj to <4 x i32>    ; 2 uses
  %i.cl = lshr <4 x i32> %i.ck, splat (i32 2)
  %.inner12 = and <4 x i32> %i.cl, splat (i32 858993459) ; 2 uses
  %i.cm = shl nuw <4 x i32> %.inner12, splat (i32 2)
  %i.cn = bitcast <4 x i32> %i.cm to <2 x i64>
  %i.co = xor <2 x i64> %i.cj, %i.cn              ; 2 uses
  %i.cp = lshr <4 x i32> %i.cf, splat (i32 3)
  %.inner13 = and <4 x i32> %i.cp, splat (i32 286331153) ; 2 uses
  %i.cq = shl nuw nsw <4 x i32> %.inner13, splat (i32 2)
  %.inner14 = xor <4 x i32> %.inner, %i.cq        ; 2 uses
  %i.cr = bitcast <2 x i64> %i.co to <4 x i32>
  %i.cs = lshr <4 x i32> %i.cr, splat (i32 4)
  %i.ct = bitcast <4 x i32> %i.cs to <2 x i64>
  %i.cu = and <2 x i64> %i.ct, splat (i64 1085102592571150095) ; 2 uses
  %i.cv = bitcast <2 x i64> %i.cu to <4 x i32>
  %i.cw = shl nuw <4 x i32> %i.cv, splat (i32 4)
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = xor <2 x i64> %i.co, %i.cx
  store <2 x i64> %i.cy, ptr %4, align 16, !tbaa !80
  store <2 x i64> %i.cu, ptr %.phi.trans.insert14.i, align 16, !tbaa !80
  %i.cz = lshr <4 x i32> %.inner14, splat (i32 4)
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.db = and <2 x i64> %i.da, splat (i64 361700864190383365) ; 2 uses
  %i.dc = bitcast <2 x i64> %i.db to <4 x i32>
  %i.dd = shl nuw nsw <4 x i32> %i.dc, splat (i32 4)
  %.inner17 = xor <4 x i32> %.inner14, %i.dd
  store <4 x i32> %.inner17, ptr %.phi.trans.insert.i, align 16, !tbaa !80
  store <2 x i64> %i.db, ptr %.phi.trans.insert16.i, align 16, !tbaa !80
  %i.de = lshr <4 x i32> %i.ck, splat (i32 6)
  %i.df = bitcast <4 x i32> %i.de to <2 x i64>
  %i.dg = and <2 x i64> %i.df, splat (i64 217020518514230019) ; 2 uses
  %i.dh = bitcast <2 x i64> %i.dg to <4 x i32>
  %i.di = shl nuw nsw <4 x i32> %i.dh, splat (i32 4)
  %.inner19 = xor <4 x i32> %.inner12, %i.di
  store <4 x i32> %.inner19, ptr %.phi.trans.insert10.i, align 16, !tbaa !80
  store <2 x i64> %i.dg, ptr %.phi.trans.insert18.i, align 16, !tbaa !80
  %i.dj = lshr <4 x i32> %i.cf, splat (i32 7)
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = and <2 x i64> %i.dk, splat (i64 72340172838076673) ; 2 uses
  %i.dm = bitcast <2 x i64> %i.dl to <4 x i32>
  %i.dn = shl nuw nsw <4 x i32> %i.dm, splat (i32 4)
  %.inner21 = xor <4 x i32> %.inner13, %i.dn
  store <4 x i32> %.inner21, ptr %.phi.trans.insert12.i, align 16, !tbaa !80
  store <2 x i64> %i.dl, ptr %.phi.trans.insert20.i, align 16, !tbaa !80
  call fastcc void @_ZL22aes_nohw_decrypt_batchPK17AES_NOHW_SCHEDULEmP14AES_NOHW_BATCH(ptr noundef %3, i64 noundef %i.c, ptr noundef %4)
  %.sroa.0.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16
  %.sroa.0.i.sroa.6.0.copyload6 = load <4 x i32>, ptr %.phi.trans.insert.i, align 16
  %.sroa.0.i.sroa.8.0.copyload = load <2 x i64>, ptr %.phi.trans.insert10.i, align 16
  %.sroa.0.i.sroa.10.0.copyload7 = load <4 x i32>, ptr %.phi.trans.insert12.i, align 16
  %.sroa.0.i.sroa.12.0.copyload = load <2 x i64>, ptr %.phi.trans.insert14.i, align 16
  %.sroa.0.i.sroa.14.0.copyload8 = load <4 x i32>, ptr %.phi.trans.insert16.i, align 16
  %.sroa.0.i.sroa.16.0.copyload = load <2 x i64>, ptr %.phi.trans.insert18.i, align 16
  %.sroa.0.i.sroa.18.0.copyload9 = load <4 x i32>, ptr %.phi.trans.insert20.i, align 16, !tbaa !80
  %i.do = shl <4 x i32> %.sroa.0.i.sroa.6.0.copyload6, splat (i32 1)
  %i.dp = bitcast <4 x i32> %i.do to <2 x i64>
  %i.dq = and <2 x i64> %i.dp, splat (i64 -6148914691236517206)
  %i.dr = and <2 x i64> %.sroa.0.i.sroa.0.0.copyload, splat (i64 6148914691236517205)
  %i.ds = or disjoint <2 x i64> %i.dq, %i.dr      ; 2 uses
  %i.dt = shl <4 x i32> %.sroa.0.i.sroa.10.0.copyload7, splat (i32 1)
  %i.du = bitcast <4 x i32> %i.dt to <2 x i64>
  %i.dv = and <2 x i64> %i.du, splat (i64 2459565876494606882)
  %i.dw = and <2 x i64> %.sroa.0.i.sroa.8.0.copyload, splat (i64 1229782938247303441)
  %i.dx = or disjoint <2 x i64> %i.dv, %i.dw
  %i.dy = shl <4 x i32> %.sroa.0.i.sroa.14.0.copyload8, splat (i32 1)
  %i.dz = bitcast <4 x i32> %i.dy to <2 x i64>
  %i.ea = and <2 x i64> %i.dz, splat (i64 -6148914691236517206)
  %i.eb = and <2 x i64> %.sroa.0.i.sroa.12.0.copyload, splat (i64 6148914691236517205)
  %i.ec = or disjoint <2 x i64> %i.ea, %i.eb
  %i.ed = shl <4 x i32> %.sroa.0.i.sroa.18.0.copyload9, splat (i32 1)
  %i.ee = bitcast <4 x i32> %i.ed to <2 x i64>
  %i.ef = and <2 x i64> %i.ee, splat (i64 2459565876494606882)
  %i.eg = and <2 x i64> %.sroa.0.i.sroa.16.0.copyload, splat (i64 1229782938247303441)
  %i.eh = or disjoint <2 x i64> %i.ef, %i.eg
  %i.ei = bitcast <2 x i64> %i.ds to <4 x i32>
  %i.ej = lshr <4 x i32> %i.ei, splat (i32 2)
  %i.ek = bitcast <4 x i32> %i.ej to <2 x i64>
  %.masked = and <2 x i64> %i.ek, splat (i64 3689348814741910323)
  %i.el = xor <2 x i64> %.masked, %i.dx
  %i.em = bitcast <2 x i64> %i.el to <4 x i32>
  %i.en = shl nuw <4 x i32> %i.em, splat (i32 2)
  %i.eo = bitcast <4 x i32> %i.en to <2 x i64>
  %i.ep = xor <2 x i64> %i.ds, %i.eo              ; 2 uses
  %i.eq = bitcast <2 x i64> %i.ec to <4 x i32>    ; 2 uses
  %i.er = lshr <4 x i32> %i.eq, splat (i32 2)
  %i.es = bitcast <4 x i32> %i.er to <2 x i64>
  %.masked10 = and <2 x i64> %i.es, splat (i64 3689348814741910323)
  %i.et = xor <2 x i64> %.masked10, %i.eh
  %i.eu = bitcast <2 x i64> %i.et to <4 x i32>
  %i.ev = shl <4 x i32> %i.eu, splat (i32 6)
  %i.ew = shl <4 x i32> %i.eq, splat (i32 4)
  %i.ex = bitcast <2 x i64> %i.ep to <4 x i32>
  %i.ey = xor <4 x i32> %i.ew, %i.ex
  %i.ez = xor <4 x i32> %i.ev, %i.ey
  %i.fa = bitcast <4 x i32> %i.ez to <2 x i64>
  %i.fb = and <2 x i64> %i.fa, splat (i64 -1085102592571150096)
  %i.fc = xor <2 x i64> %i.fb, %i.ep
  store <2 x i64> %i.fc, ptr %1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef range(i32 1, 3) i32 @BCM_aes_set_encrypt_key(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 7 uses
  %i.b = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.c = alloca [1 x <2 x i64>], align 16         ; 5 uses
  %i.d = alloca [1 x <2 x i64>], align 16         ; 6 uses
  %i.e = alloca [1 x <2 x i64>], align 16         ; 4 uses
  switch i32 %1, label %_ZL22aes_nohw_setup_key_128P10aes_key_stPKh.exit [
    i32 128, label %bb.b
    i32 192, label %bb.d
    i32 256, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 10, ptr %i.f, align 4, !tbaa !79
  %.sroa.0.0.copyload29.i = load <2 x i64>, ptr %0, align 1 ; 2 uses
  store <2 x i64> %.sroa.0.0.copyload29.i, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.032.i = phi i64 [ 1, %bb.b ], [ %i.ab, %bb.c ] ; 3 uses
  %.sroa.0.031.i = phi <2 x i64> [ %.sroa.0.0.copyload29.i, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.e, <2 x i64> %.sroa.0.031.i)
  %i.g = getelementptr i8, ptr @_ZL13aes_nohw_rcon, i64 %.032.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !80
  %i.j = zext i8 %i.i to i32
  %i.k = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.j, i64 0
  %i.l = bitcast <4 x i32> %i.k to <2 x i64>
  %i.m = load <4 x i32>, ptr %i.e, align 16, !tbaa !80 ; 2 uses
  %i.n = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.m, <4 x i32> %i.m, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.o = bitcast <4 x i32> %i.n to <16 x i8>
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = xor <2 x i64> %i.l, %i.q
  %.reass.i = xor <2 x i64> %i.r, %.sroa.0.031.i  ; 2 uses
  %i.s = bitcast <2 x i64> %.reass.i to <16 x i8> ; 3 uses
  %i.t = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.u = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.v = xor <16 x i8> %i.t, %i.u
  %i.w = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.x = xor <16 x i8> %i.v, %i.w
  %i.y = bitcast <16 x i8> %i.x to <2 x i64>
  %i.z = xor <2 x i64> %.reass.i, %i.y            ; 2 uses
  %.idx.i = shl nuw nsw i64 %.032.i, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  store <2 x i64> %i.z, ptr %i.aa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %i.ab = add nuw nsw i64 %.032.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, 11
  br i1 %exitcond.not.i, label %_ZL22aes_nohw_setup_key_128P10aes_key_stPKh.exit, label %bb.c, !llvm.loop !1

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 12, ptr %i.ac, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 1
  store i64 %i.ae, ptr %i.c, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0147.i = phi ptr [ %i.b, %bb.d ], [ %.0138146.i, %bb.e ] ; 7 uses
  %.0138146.i = phi ptr [ %i.c, %bb.d ], [ %.0147.i, %bb.e ] ; 10 uses
  %.0140145.i = phi i64 [ 0, %bb.d ], [ %i.cz, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %.0138.val.i = load <2 x i64>, ptr %.0138146.i, align 16, !tbaa !80
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.d, <2 x i64> %.0138.val.i)
  %i.af = shl nuw nsw i64 %.0140145.i, 1
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZL13aes_nohw_rcon, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !80
  %i.ai = zext i8 %i.ah to i32
  %i.aj = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.ai, i64 0
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = load <2 x i64>, ptr %.0138146.i, align 16, !tbaa !80
  %i.am = load <2 x i64>, ptr %.0147.i, align 16  ; 2 uses
  %i.an = xor <2 x i64> %i.am, %i.ak
  %i.ao = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.an, <2 x i32> <i32 1, i32 2>
  %i.ap = or <2 x i64> %i.al, %i.ao               ; 2 uses
  store <2 x i64> %i.ap, ptr %.0138146.i, align 16, !tbaa !80
  %i.aq = load <4 x i32>, ptr %i.d, align 16, !tbaa !80 ; 2 uses
  %i.ar = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aq, <4 x i32> %i.aq, <4 x i32> <i32 24, i32 24, i32 24, i32 poison>)
  %i.as = bitcast <4 x i32> %i.ar to <16 x i8>
  %i.at = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.as, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.au = bitcast <16 x i8> %i.at to <2 x i64>
  %i.av = and <2 x i64> %i.au, <i64 0, i64 4294967295>
  %i.aw = xor <2 x i64> %i.av, %i.ap              ; 2 uses
  %i.ax = bitcast <2 x i64> %i.aw to <16 x i8>
  %i.ay = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ax, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.az = bitcast <16 x i8> %i.ay to <2 x i64>
  %i.ba = and <2 x i64> %i.az, <i64 0, i64 -4294967296>
  %i.bb = xor <2 x i64> %i.ba, %i.aw              ; 2 uses
  store <2 x i64> %i.bb, ptr %.0138146.i, align 16, !tbaa !80
  %i.bc = bitcast <2 x i64> %i.am to <16 x i8>
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %.cast144.i = bitcast <2 x i64> %i.bb to <16 x i8> ; 2 uses
  %i.be = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.cast144.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bf = or <16 x i8> %i.be, %i.bd
  %i.bg = shufflevector <16 x i8> %.cast144.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bh = xor <16 x i8> %i.bf, %i.bg              ; 4 uses
  %i.bi = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bh, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bh, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bk = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bl = xor <16 x i8> %i.bi, %i.bj
  %i.bm = xor <16 x i8> %i.bl, %i.bk
  %i.bn = xor <16 x i8> %i.bm, %i.bh
  store <16 x i8> %i.bn, ptr %.0147.i, align 16, !tbaa !80
  %.idx.i7 = mul nuw nsw i64 %.0140145.i, 48
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i7 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, ptr noundef nonnull align 16 dereferenceable(16) %.0138146.i, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 16 dereferenceable(16) %.0147.i, i64 16, i1 false)
  %.0.val.i = load <2 x i64>, ptr %.0147.i, align 16, !tbaa !80
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.d, <2 x i64> %.0.val.i)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !80
  %i.bt = zext i8 %i.bs to i32
  %i.bu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bt, i64 0
  %i.bv = bitcast <4 x i32> %i.bu to <2 x i64>
  %i.bw = load <16 x i8>, ptr %.0138146.i, align 16, !tbaa !80
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.by = load <16 x i8>, ptr %.0147.i, align 16, !tbaa !80 ; 2 uses
  %i.bz = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.by, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ca = or <16 x i8> %i.bz, %i.bx
  %i.cb = bitcast <16 x i8> %i.ca to <2 x i64>
  %i.cc = xor <2 x i64> %i.cb, %i.bv              ; 2 uses
  store <2 x i64> %i.cc, ptr %.0138146.i, align 16, !tbaa !80
  %i.cd = load <4 x i32>, ptr %i.d, align 16, !tbaa !80 ; 2 uses
  %i.ce = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cd, <4 x i32> %i.cd, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.cf = bitcast <4 x i32> %i.ce to <16 x i8>
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  %i.ci = xor <2 x i64> %i.cc, %i.ch              ; 2 uses
  %i.cj = bitcast <2 x i64> %i.ci to <16 x i8>    ; 3 uses
  %i.ck = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cj, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cl = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cm = xor <16 x i8> %i.ck, %i.cl
  %i.cn = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.co = xor <16 x i8> %i.cm, %i.cn
  %i.cp = bitcast <16 x i8> %i.co to <2 x i64>
  %i.cq = xor <2 x i64> %i.ci, %i.cp              ; 2 uses
  store <2 x i64> %i.cq, ptr %.0138146.i, align 16, !tbaa !80
  %i.cr = shufflevector <16 x i8> %i.by, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %.cast.i = bitcast <2 x i64> %i.cq to <16 x i8>
  %i.cs = shufflevector <16 x i8> %.cast.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ct = xor <16 x i8> %i.cs, %i.cr              ; 2 uses
  %i.cu = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ct, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cv = xor <16 x i8> %i.cu, %i.ct
  %i.cw = bitcast <16 x i8> %i.cv to <2 x i64>
  %i.cx = and <2 x i64> %i.cw, <i64 -1, i64 0>
  store <2 x i64> %i.cx, ptr %.0147.i, align 16, !tbaa !80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cy, ptr noundef nonnull align 16 dereferenceable(16) %.0138146.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.cz = add nuw nsw i64 %.0140145.i, 1          ; 2 uses
  %exitcond.not.i8 = icmp eq i64 %i.cz, 4
  br i1 %exitcond.not.i8, label %_ZL22aes_nohw_setup_key_192P10aes_key_stPKh.exit, label %bb.e, !llvm.loop !390

_ZL22aes_nohw_setup_key_192P10aes_key_stPKh.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %_ZL22aes_nohw_setup_key_128P10aes_key_stPKh.exit

bb.f:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 14, ptr %i.da, align 4, !tbaa !79
  %.sroa.055.0.copyload58.i = load <2 x i64>, ptr %0, align 1 ; 2 uses
  store <2 x i64> %.sroa.055.0.copyload58.i, ptr %2, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload54.i = load <2 x i64>, ptr %i.db, align 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x i64> %.sroa.0.0.copyload54.i, ptr %i.dc, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.063.i = phi i64 [ 2, %bb.f ], [ %i.el, %bb.h ] ; 4 uses
  %.sroa.0.062.i = phi <2 x i64> [ %.sroa.0.0.copyload54.i, %bb.f ], [ %i.ej, %bb.h ] ; 2 uses
  %.sroa.055.061.i = phi <2 x i64> [ %.sroa.055.0.copyload58.i, %bb.f ], [ %i.dw, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.a, <2 x i64> %.sroa.0.062.i)
  %i.dd = lshr exact i64 %.063.i, 1
  %i.de = getelementptr i8, ptr @_ZL13aes_nohw_rcon, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !80
  %i.dh = zext i8 %i.dg to i32
  %i.di = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dh, i64 0
  %i.dj = bitcast <4 x i32> %i.di to <2 x i64>
  %i.dk = load <4 x i32>, ptr %i.a, align 16, !tbaa !80 ; 2 uses
  %i.dl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dk, <4 x i32> %i.dk, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.dm = bitcast <4 x i32> %i.dl to <16 x i8>
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.do = bitcast <16 x i8> %i.dn to <2 x i64>
  %invariant.op.i9 = xor <2 x i64> %.sroa.055.061.i, %i.dj
  %.reass.i10 = xor <2 x i64> %invariant.op.i9, %i.do ; 2 uses
  %i.dp = bitcast <2 x i64> %.reass.i10 to <16 x i8> ; 3 uses
  %i.dq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dp, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.dr = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ds = xor <16 x i8> %i.dq, %i.dr
  %i.dt = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.du = xor <16 x i8> %i.ds, %i.dt
  %i.dv = bitcast <16 x i8> %i.du to <2 x i64>
  %i.dw = xor <2 x i64> %.reass.i10, %i.dv        ; 3 uses
  %.idx.i11 = shl nuw nsw i64 %.063.i, 4
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i11 ; 2 uses
  store <2 x i64> %i.dw, ptr %i.dx, align 4
  %.not.i = icmp eq i64 %.063.i, 14
  br i1 %.not.i, label %_ZL22aes_nohw_setup_key_256P10aes_key_stPKh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.a, <2 x i64> %i.dw)
  %i.dy = load <16 x i8>, ptr %i.a, align 16, !tbaa !80
  %i.dz = shufflevector <16 x i8> %i.dy, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ea = bitcast <16 x i8> %i.dz to <2 x i64>
  %i.eb = xor <2 x i64> %.sroa.0.062.i, %i.ea     ; 2 uses
  %i.ec = bitcast <2 x i64> %i.eb to <16 x i8>    ; 3 uses
  %i.ed = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ec, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ee = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ec, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ef = xor <16 x i8> %i.ed, %i.ee
  %i.eg = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ec, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.eh = xor <16 x i8> %i.ef, %i.eg
  %i.ei = bitcast <16 x i8> %i.eh to <2 x i64>
  %i.ej = xor <2 x i64> %i.eb, %i.ei              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <2 x i64> %i.ej, ptr %i.ek, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.el = add nuw nsw i64 %.063.i, 2
  br label %bb.g

_ZL22aes_nohw_setup_key_256P10aes_key_stPKh.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZL22aes_nohw_setup_key_128P10aes_key_stPKh.exit

_ZL22aes_nohw_setup_key_128P10aes_key_stPKh.exit: ; preds = %bb.c, %bb.a, %_ZL22aes_nohw_setup_key_256P10aes_key_stPKh.exit, %_ZL22aes_nohw_setup_key_192P10aes_key_stPKh.exit
  %.0 = phi i32 [ 0, %_ZL22aes_nohw_setup_key_256P10aes_key_stPKh.exit ], [ 1, %bb.a ], [ 0, %_ZL22aes_nohw_setup_key_192P10aes_key_stPKh.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef range(i32 1, 3) i32 @BCM_aes_set_decrypt_key(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @aes_nohw_set_decrypt_key(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef nonnull ptr @aes_ctr_set_key(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %4 to i32
  %i.b = shl nsw i32 %i.a, 3
  %i.c = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %3, i32 noundef %i.b, ptr noundef %0) ; 0 uses
  %.not26 = icmp eq ptr %1, null
  br i1 %.not26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @aes_nohw_encrypt, ptr %2, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret ptr @aes_nohw_ctr32_encrypt_blocks
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @aes_nohw_ctr32_encrypt_blocks(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #1 {
bb.a:
  %.sroa.0.i = alloca [8 x <2 x i64>], align 16   ; 20 uses
  %5 = alloca %struct.AES_NOHW_SCHEDULE, align 16 ; 4 uses
  %i.a = alloca [128 x i8], align 16              ; 20 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %6 = alloca %struct.AES_NOHW_BATCH, align 16    ; 16 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = zext i32 %i.e to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.b
  %.01113.i = phi i64 [ 0, %bb.b ], [ %i.ch, %.preheader.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %.01113.i, 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %.01113.i ; 8 uses
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %i.g, align 4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.p = bitcast <2 x i64> %.sroa.0.0.copyload.i to <4 x i32>
  %i.q = lshr <4 x i32> %i.p, splat (i32 1)
  %i.r = bitcast <4 x i32> %i.q to <2 x i64>
  %i.s = xor <2 x i64> %.sroa.0.0.copyload.i, %i.r
  %i.t = and <2 x i64> %i.s, splat (i64 6148914691236517205) ; 2 uses
  %i.u = bitcast <2 x i64> %i.t to <4 x i32>
  %i.v = shl nuw <4 x i32> %i.u, splat (i32 1)
  %i.w = bitcast <4 x i32> %i.v to <2 x i64>
  %i.x = xor <2 x i64> %.sroa.0.0.copyload.i, %i.w ; 4 uses
  %i.y = xor <2 x i64> %i.t, %.sroa.0.0.copyload.i ; 4 uses
  %i.z = bitcast <2 x i64> %i.x to <4 x i32>
  %i.aa = lshr <4 x i32> %i.z, splat (i32 2)
  %i.ab = bitcast <4 x i32> %i.aa to <2 x i64>
  %i.ac = xor <2 x i64> %i.x, %i.ab
  %i.ad = and <2 x i64> %i.ac, splat (i64 3689348814741910323) ; 2 uses
  %i.ae = bitcast <2 x i64> %i.ad to <4 x i32>
  %i.af = shl nuw <4 x i32> %i.ae, splat (i32 2)
  %i.ag = bitcast <4 x i32> %i.af to <2 x i64>
  %i.ah = xor <2 x i64> %i.x, %i.ag               ; 4 uses
  %i.ai = xor <2 x i64> %i.ad, %i.x               ; 4 uses
  %i.aj = bitcast <2 x i64> %i.y to <4 x i32>
  %i.ak = lshr <4 x i32> %i.aj, splat (i32 2)
  %i.al = bitcast <4 x i32> %i.ak to <2 x i64>
  %i.am = xor <2 x i64> %i.y, %i.al
  %i.an = and <2 x i64> %i.am, splat (i64 3689348814741910323) ; 2 uses
  %i.ao = bitcast <2 x i64> %i.an to <4 x i32>
  %i.ap = shl nuw <4 x i32> %i.ao, splat (i32 2)
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>
  %i.ar = xor <2 x i64> %i.y, %i.aq               ; 4 uses
  %i.as = xor <2 x i64> %i.an, %i.y               ; 4 uses
  %i.at = bitcast <2 x i64> %i.ah to <4 x i32>
  %i.au = lshr <4 x i32> %i.at, splat (i32 4)
  %i.av = bitcast <4 x i32> %i.au to <2 x i64>
  %i.aw = xor <2 x i64> %i.ah, %i.av
  %i.ax = and <2 x i64> %i.aw, splat (i64 1085102592571150095) ; 2 uses
  %i.ay = bitcast <2 x i64> %i.ax to <4 x i32>
  %i.az = shl nuw <4 x i32> %i.ay, splat (i32 4)
  %i.ba = bitcast <4 x i32> %i.az to <2 x i64>
  %i.bb = xor <2 x i64> %i.ah, %i.ba
  store <2 x i64> %i.bb, ptr %i.h, align 16, !tbaa !80
  %i.bc = xor <2 x i64> %i.ax, %i.ah
  store <2 x i64> %i.bc, ptr %i.l, align 16, !tbaa !80
  %i.bd = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.be = lshr <4 x i32> %i.bd, splat (i32 4)
  %i.bf = bitcast <4 x i32> %i.be to <2 x i64>
  %i.bg = xor <2 x i64> %i.ar, %i.bf
  %i.bh = and <2 x i64> %i.bg, splat (i64 1085102592571150095) ; 2 uses
  %i.bi = bitcast <2 x i64> %i.bh to <4 x i32>
  %i.bj = shl nuw <4 x i32> %i.bi, splat (i32 4)
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>
  %i.bl = xor <2 x i64> %i.ar, %i.bk
  store <2 x i64> %i.bl, ptr %i.i, align 16, !tbaa !80
  %i.bm = xor <2 x i64> %i.bh, %i.ar
  store <2 x i64> %i.bm, ptr %i.m, align 16, !tbaa !80
  %i.bn = bitcast <2 x i64> %i.ai to <4 x i32>
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 4)
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = xor <2 x i64> %i.ai, %i.bp
  %i.br = and <2 x i64> %i.bq, splat (i64 1085102592571150095) ; 2 uses
  %i.bs = bitcast <2 x i64> %i.br to <4 x i32>
  %i.bt = shl nuw <4 x i32> %i.bs, splat (i32 4)
  %i.bu = bitcast <4 x i32> %i.bt to <2 x i64>
  %i.bv = xor <2 x i64> %i.ai, %i.bu
  store <2 x i64> %i.bv, ptr %i.j, align 16, !tbaa !80
  %i.bw = xor <2 x i64> %i.br, %i.ai
  store <2 x i64> %i.bw, ptr %i.n, align 16, !tbaa !80
  %i.bx = bitcast <2 x i64> %i.as to <4 x i32>
  %i.by = lshr <4 x i32> %i.bx, splat (i32 4)
end_hunk_0
begin_hunk_1_@bn_rand_range_words:bb.a
  %i.h = or i64 %i.g, %i.c                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p                        ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.02732.i ; 2 uses
  %i.t = sub nuw i64 %3, %.02732.i
  %i.u = shl i64 %i.t, 3                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.u, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.d, %bb.e
  %i.w = shl i64 %.02732.i, 3                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.s, i64 -8       ; 4 uses
  %i.y = icmp eq i64 %1, 0
  br i1 %i.y, label %.lr.ph.i.i.preheader.i.us, label %_ZL14OPENSSL_memsetPvim.exit.split.preheader

_ZL14OPENSSL_memsetPvim.exit.split.preheader:     ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.z = xor i64 %indvar, -1
  %i.aa = add i64 %3, %i.z                        ; 3 uses
  %cond = icmp eq i64 %.02732.i, 1
  %min.iters.check = icmp ult i64 %i.aa, 4
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ab = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.f

_ZL14OPENSSL_memsetPvim.exit.split.us:            ; preds = %._crit_edge.loopexit.i.i.i.us
  %i.ac = add nsw i32 %i.ad, -1                   ; 2 uses
  %.not14.us = icmp eq i32 %i.ac, 0
  br i1 %.not14.us, label %.split.us, label %.lr.ph.i.i.preheader.i.us, !llvm.loop !984

.lr.ph.i.i.preheader.i.us:                        ; preds = %_ZL14OPENSSL_memsetPvim.exit, %_ZL14OPENSSL_memsetPvim.exit.split.us
  %i.ad = phi i32 [ %i.ac, %_ZL14OPENSSL_memsetPvim.exit.split.us ], [ 99, %_ZL14OPENSSL_memsetPvim.exit ]
  %i.ae = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef %i.w, ptr noundef %4) ; 0 uses
  %i.af = load i64, ptr %i.x, align 8, !tbaa !96
  %i.ag = and i64 %i.af, %i.r
  store i64 %i.ag, ptr %i.x, align 8, !tbaa !96
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us, %.lr.ph.i.i.preheader.i.us
  %.04353.i.i.i.us = phi i64 [ %i.aw, %.lr.ph.i.i.i.us ], [ 0, %.lr.ph.i.i.preheader.i.us ]
  %.04452.i.i.i.us = phi i64 [ %i.ax, %.lr.ph.i.i.i.us ], [ 0, %.lr.ph.i.i.preheader.i.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04452.i.i.i.us
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !96 ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04452.i.i.i.us
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !96 ; 3 uses
  %i.al = icmp eq i64 %i.ai, %i.ak
  %.neg.i.i.i.i.i.i.us = sext i1 %i.al to i64
  %i.am = xor i64 %i.ak, %i.ai
  %i.an = sub i64 %i.ai, %i.ak
  %i.ao = xor i64 %i.an, %i.ai
  %i.ap = or i64 %i.ao, %i.am
  %i.aq = xor i64 %i.ap, %i.ai
  %.neg.i.i.i.i.i.us = ashr i64 %i.aq, 63
  %i.ar = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.us) #38, !srcloc !108
  %i.as = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.i.us) #38, !srcloc !108 ; 2 uses
  %i.at = and i64 %i.as, %.04353.i.i.i.us
  %i.au = xor i64 %i.as, -1
  %i.av = and i64 %i.ar, %i.au
  %i.aw = or disjoint i64 %i.at, %i.av            ; 2 uses
  %i.ax = add nuw i64 %.04452.i.i.i.us, 1         ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.ax, %.02732.i
  br i1 %exitcond.not.i.i.i.us, label %._crit_edge.loopexit.i.i.i.us, label %.lr.ph.i.i.i.us, !llvm.loop !9

._crit_edge.loopexit.i.i.i.us:                    ; preds = %.lr.ph.i.i.i.us
  %i.ay = trunc i64 %i.aw to i32
  %i.az = lshr i32 %i.ay, 31
  %i.ba = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.az) #38, !srcloc !128
  %.not15.us = icmp eq i32 %i.ba, 0
  br i1 %.not15.us, label %_ZL14OPENSSL_memsetPvim.exit.split.us, label %.loopexit, !llvm.loop !984

_ZL14OPENSSL_memsetPvim.exit.split:               ; preds = %bn_in_range_words.exit
  %i.bb = add nsw i32 %i.bc, -1                   ; 2 uses
  %.not14 = icmp eq i32 %i.bb, 0
  br i1 %.not14, label %.split.us, label %bb.f, !llvm.loop !984

.split.us:                                        ; preds = %_ZL14OPENSSL_memsetPvim.exit.split, %_ZL14OPENSSL_memsetPvim.exit.split.us
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.11, i32 noundef 175) #36
  br label %.loopexit

bb.f:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit.split.preheader, %_ZL14OPENSSL_memsetPvim.exit.split
  %i.bc = phi i32 [ 99, %_ZL14OPENSSL_memsetPvim.exit.split.preheader ], [ %i.bb, %_ZL14OPENSSL_memsetPvim.exit.split ]
  %i.bd = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef %i.w, ptr noundef %4) ; 0 uses
  %i.be = load i64, ptr %i.x, align 8, !tbaa !96
  %i.bf = and i64 %i.be, %i.r
  store i64 %i.bf, ptr %i.x, align 8, !tbaa !96
  br i1 %cond, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader59, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bl, %vector.body ], [ zeroinitializer, %.lr.ph.i.i.preheader ]
  %vec.phi57 = phi <2 x i64> [ %i.bm, %vector.body ], [ zeroinitializer, %.lr.ph.i.i.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %wide.load = load <2 x i64>, ptr %i.bh, align 8, !tbaa !96
  %wide.load58 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !96
  %i.bj = freeze <2 x i64> %wide.load
  %i.bk = freeze <2 x i64> %wide.load58
  %i.bl = or <2 x i64> %i.bj, %vec.phi            ; 2 uses
  %i.bm = or <2 x i64> %i.bk, %vec.phi57          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !985

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader59

.lr.ph.i.i.preheader59:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.019.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01318.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa52 = phi i64 [ %i.bo, %middle.block ], [ %i.bt, %.lr.ph.i.i ]
  %i.bp = icmp eq i64 %.lcssa52, 0
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %.013.lcssa.i.i = phi i1 [ true, %bb.f ], [ %i.bp, %._crit_edge.loopexit.i.i ]
  %i.bq = load i64, ptr %0, align 8, !tbaa !96    ; 4 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader59, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ %.019.i.i.ph, %.lr.ph.i.i.preheader59 ] ; 2 uses
  %.01318.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %.01318.i.i.ph, %.lr.ph.i.i.preheader59 ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !96
  %.fr21.i.i = freeze i64 %i.bs
  %i.bt = or i64 %.fr21.i.i, %.01318.i.i          ; 2 uses
  %i.bu = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bu, %.02732.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !986

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i
  %.04353.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i ], [ 0, %._crit_edge.i.i ]
  %.04452.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ 0, %._crit_edge.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04452.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !96 ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04452.i.i.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !96 ; 3 uses
  %i.bz = icmp eq i64 %i.bw, %i.by
  %.neg.i.i.i.i.i.i = sext i1 %i.bz to i64
  %i.ca = xor i64 %i.by, %i.bw
  %i.cb = sub i64 %i.bw, %i.by
  %i.cc = xor i64 %i.cb, %i.bw
  %i.cd = or i64 %i.cc, %i.ca
  %i.ce = xor i64 %i.cd, %i.bw
  %.neg.i.i.i.i.i = ashr i64 %i.ce, 63
  %i.cf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !108
  %i.cg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.ch = and i64 %i.cg, %.04353.i.i.i
  %i.ci = xor i64 %i.cg, -1
  %i.cj = and i64 %i.cf, %i.ci
  %i.ck = or disjoint i64 %i.ch, %i.cj            ; 2 uses
  %i.cl = add nuw i64 %.04452.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cl, %.02732.i
  br i1 %exitcond.not.i.i.i, label %bn_in_range_words.exit, label %.lr.ph.i.i.i, !llvm.loop !9

bn_in_range_words.exit:                           ; preds = %.lr.ph.i.i.i
  %i.cm = trunc i64 %i.ck to i32
  %i.cn = lshr i32 %i.cm, 31
  %i.co = sub i64 %i.bq, %1
  %i.cp = xor i64 %i.co, %i.bq
  %i.cq = xor i64 %i.bq, %1
  %i.cr = or i64 %i.cp, %i.cq
  %i.cs = xor i64 %i.cr, %i.bq
  %.neg.i.i17.i.i = ashr i64 %i.cs, 63
  %i.ct = trunc nsw i64 %.neg.i.i17.i.i to i32
  %i.cu = xor i32 %i.ct, -1
  %spec.select = select i1 %.013.lcssa.i.i, i32 %i.cu, i32 -1
  %i.cv = and i32 %i.cn, %spec.select
  %i.cw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cv) #38, !srcloc !128
  %.not15 = icmp eq i32 %i.cw, 0
  br i1 %.not15, label %_ZL14OPENSSL_memsetPvim.exit.split, label %.loopexit, !llvm.loop !984

.loopexit:                                        ; preds = %bn_in_range_words.exit, %._crit_edge.loopexit.i.i.i.us, %_ZL16bn_range_to_maskPmS_mPKmm.exit.thread, %.split.us
  %.1 = phi i32 [ 0, %_ZL16bn_range_to_maskPmS_mPKmm.exit.thread ], [ 0, %.split.us ], [ 1, %._crit_edge.loopexit.i.i.i.us ], [ 1, %bn_in_range_words.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %3 = alloca %"struct.(anonymous namespace)::rand_thread_state", align 8 ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 4 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @CRYPTO_get_fork_generation() #36 ; 4 uses
  %i.h = tail call i32 @rand_fork_unsafe_buffering_enabled() #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.i = icmp ne i64 %i.g, 0
  %i.j = icmp ne i32 %i.h, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @CRYPTO_sysrand(ptr noundef nonnull %i.a, i64 noundef 32) #36
  %i.l = load <16 x i8>, ptr %i.a, align 16, !tbaa !80
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre100 = load i8, ptr %.phi.trans.insert99, align 16, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = phi i8 [ 0, %bb.c ], [ %.pre100, %bb.d ]
  %i.n = phi <16 x i8> [ zeroinitializer, %bb.c ], [ %i.l, %bb.d ]
  %i.o = load <16 x i8>, ptr %2, align 1, !tbaa !80
  %i.p = xor <16 x i8> %i.n, %i.o
  store <16 x i8> %i.p, ptr %i.a, align 16, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %5 = load <4 x i8>, ptr %i.s, align 1, !tbaa !80
  %6 = load <4 x i8>, ptr %4, align 1
  %i.u = load <16 x i8>, ptr %i.q, align 1, !tbaa !80
  %i.v = load <8 x i8>, ptr %i.t, align 8, !tbaa !80
  %i.w = shufflevector <4 x i8> %5, <4 x i8> %6, <16 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = insertelement <16 x i8> %i.w, i8 %i.m, i64 0
  %i.y = shufflevector <8 x i8> %i.v, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <16 x i8> %i.x, <16 x i8> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = xor <16 x i8> %i.z, %i.u
  store <16 x i8> %i.aa, ptr %i.r, align 16, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ab = call ptr @CRYPTO_get_thread_local(i32 noundef 1) #36 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ad = call ptr @OPENSSL_zalloc(i64 noundef 312) #36 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call i32 @CRYPTO_set_thread_local(i32 noundef 1, ptr noundef nonnull %i.ad, ptr noundef nonnull @_ZL22rand_thread_state_freePv) #36
  %.not56 = icmp eq i32 %i.af, 0
  br i1 %.not56, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.046 = phi ptr [ %3, %bb.h ], [ %i.ad, %bb.g ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.046, i64 300
  store i32 0, ptr %i.ag, align 4, !tbaa !989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  call void @CRYPTO_sysrand_for_seed(ptr noundef nonnull %i.b, i64 noundef 48) #36
  %i.ah = call i32 @CTR_DRBG_init(ptr noundef nonnull %.046, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 0)
  %.not57 = icmp eq i32 %i.ah, 0
  br i1 %.not57, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @abort() #37
  unreachable

.thread:                                          ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.046, i64 296
  store i32 0, ptr %i.ai, align 8, !tbaa !990
  %i.aj = getelementptr inbounds nuw i8, ptr %.046, i64 288
  store i64 %i.g, ptr %i.aj, align 8, !tbaa !991
  %i.ak = getelementptr inbounds nuw i8, ptr %.046, i64 304
  store i32 %i.h, ptr %i.ak, align 8, !tbaa !992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.al = getelementptr inbounds nuw i8, ptr %.046, i64 296
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %.pre102 = load i32, ptr %.phi.trans.insert101, align 8, !tbaa !990
  %i.am = icmp ugt i32 %.pre102, 4095
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 296 ; 2 uses
  br i1 %i.am, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ao = phi ptr [ %i.al, %.thread ], [ %i.an, %bb.k ] ; 3 uses
  %.1109 = phi ptr [ %.046, %.thread ], [ %i.ab, %bb.k ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1109, i64 288
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !991
  %.not58 = icmp eq i64 %i.aq, %i.g
  br i1 %.not58, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.1109, i64 304
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !992
  %.not59 = icmp eq i32 %i.as, %i.h
  br i1 %.not59, label %.peel.begin, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.at = phi ptr [ %i.ao, %bb.m ], [ %i.ao, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %.1110 = phi ptr [ %.1109, %bb.m ], [ %.1109, %bb.l ], [ %i.ab, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @CRYPTO_sysrand_for_seed(ptr noundef nonnull %i.d, i64 noundef 48) #36
  %i.au = call i32 @CTR_DRBG_reseed(ptr noundef nonnull %.1110, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef 0)
  %.not60 = icmp eq i32 %i.au, 0
  br i1 %.not60, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @abort() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %i.at, align 8, !tbaa !990
  %i.av = getelementptr inbounds nuw i8, ptr %.1110, i64 288
  store i64 %i.g, ptr %i.av, align 8, !tbaa !991
  %i.aw = getelementptr inbounds nuw i8, ptr %.1110, i64 304
  store i32 %i.h, ptr %i.aw, align 8, !tbaa !992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.m, %bb.p
  %i.ax = phi ptr [ %i.ao, %bb.m ], [ %i.at, %bb.p ] ; 4 uses
  %.1108 = phi ptr [ %.1109, %bb.m ], [ %.1110, %bb.p ] ; 4 uses
  %spec.store.select.peel = call i64 @llvm.umin.i64(i64 %1, i64 65536) ; 3 uses
  %i.ay = call i32 @CTR_DRBG_generate(ptr noundef nonnull %.1108, ptr noundef %0, i64 noundef %spec.store.select.peel, ptr noundef nonnull %i.a, i64 noundef 32)
  %.not63.peel = icmp eq i32 %i.ay, 0
  br i1 %.not63.peel, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.peel.begin
  %i.az = sub nuw i64 %1, %spec.store.select.peel ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !990
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !990
  %.not61.peel = icmp eq i64 %i.az, 0
  br i1 %.not61.peel, label %.loopexit69, label %.peel.next

.peel.next:                                       ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %spec.store.select.peel
  br label %bb.r

bb.r:                                             ; preds = %.peel.next, %bb.s
  %.04966 = phi i64 [ %i.az, %.peel.next ], [ %i.bf, %bb.s ] ; 2 uses
  %.05065 = phi ptr [ %i.bc, %.peel.next ], [ %i.be, %bb.s ] ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %.04966, i64 65536) ; 3 uses
  %i.bd = call i32 @CTR_DRBG_generate(ptr noundef nonnull %.1108, ptr noundef %.05065, i64 noundef %spec.store.select, ptr noundef nonnull %i.a, i64 noundef 0)
  %.not63 = icmp eq i32 %i.bd, 0
  br i1 %.not63, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.r, %.peel.begin
  call void @abort() #37
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %.05065, i64 %spec.store.select
  %i.bf = sub nuw i64 %.04966, %spec.store.select ; 2 uses
  %i.bg = load i32, ptr %i.ax, align 8, !tbaa !990
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !990
  %.not61 = icmp eq i64 %i.bf, 0
  br i1 %.not61, label %.loopexit69, label %bb.r, !llvm.loop !987

.loopexit69:                                      ; preds = %bb.s, %bb.q
  %i.bi = icmp eq ptr %.1108, %3
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit69
  call void @OPENSSL_cleanse(ptr noundef nonnull %.1108, i64 noundef 288) #36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_rand_range(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @BN_rand_range_ex(ptr noundef %0, i64 noundef 0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_pseudo_rand_range(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call range(i32 0, 2) i32 @BN_rand_range_ex(ptr noundef %0, i64 noundef 0, ptr noundef readonly %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @bn_rshift_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 63                           ; 3 uses
  %i.b = lshr i32 %2, 6                           ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 16 uses
  %.not = icmp ugt i64 %3, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw nsw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.e, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.d:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.a, 0
  br i1 %i.f, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.g = add i64 %3, -1                           ; 4 uses
  %i.h = icmp ugt i64 %i.g, %i.c
  %i.i = zext nneg i32 %i.a to i64                ; 5 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = sub nuw nsw i32 64, %i.a
  %i.k = zext nneg i32 %i.j to i64                ; 4 uses
end_hunk_1
begin_hunk_2_@boringssl_self_test_mlkem:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not1 = icmp eq i32 %i.u, 0
  br i1 %.not1, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_14fips15encap_self_testEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  store ptr @_ZN5mlkem12_GLOBAL__N_14fips24kExpectedPrivateKeyBytesE, ptr %0, align 8, !tbaa !327
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2400, ptr %i.v, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.w = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi3EEEiPNS0_11private_keyIXT_EEEP6cbs_st(ptr noundef nonnull %1, ptr noundef nonnull %0)
  %.not.i5 = icmp eq i32 %i.w, 0
  br i1 %.not.i5, label %_ZN5mlkem12_GLOBAL__N_14fips15decap_self_testEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZN5mlkem12_GLOBAL__N_124mlkem_decap_no_self_testILi3EEEvPhPKhPKNS0_11private_keyIXT_EEE(ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN5mlkem12_GLOBAL__N_14fips19kExpectedCiphertextE, ptr noundef nonnull %1)
  %i.x = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZN5mlkem12_GLOBAL__N_14fips21kExpectedSharedSecretE, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.67)
  %.not1.i6 = icmp eq i32 %i.x, 0
  br i1 %.not1.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZN5mlkem12_GLOBAL__N_124mlkem_decap_no_self_testILi3EEEvPhPKhPKNS0_11private_keyIXT_EEE(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN5mlkem12_GLOBAL__N_14fips24kExpectedPrivateKeyBytesE, ptr noundef nonnull %1)
  %i.y = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZN5mlkem12_GLOBAL__N_14fips38kExpectedImplicitRejectionSharedSecretE, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str.68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i7 = phi i32 [ %i.y, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5mlkem12_GLOBAL__N_14fips15decap_self_testEv.exit

_ZN5mlkem12_GLOBAL__N_14fips15decap_self_testEv.exit: ; preds = %bb.e, %bb.h
  %.2.i = phi i32 [ %.1.i7, %bb.h ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.i

bb.i:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_14fips15encap_self_testEv.exit.thread12, %_ZN5mlkem12_GLOBAL__N_14fips15encap_self_testEv.exit.thread, %_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread, %_ZN5mlkem12_GLOBAL__N_14fips15decap_self_testEv.exit, %_ZN5mlkem12_GLOBAL__N_14fips15encap_self_testEv.exit, %_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit
  %i.z = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_14fips15encap_self_testEv.exit ], [ 0, %_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit ], [ %.2.i, %_ZN5mlkem12_GLOBAL__N_14fips15decap_self_testEv.exit ], [ 0, %_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread ], [ 0, %_ZN5mlkem12_GLOBAL__N_14fips15encap_self_testEv.exit.thread ], [ 0, %_ZN5mlkem12_GLOBAL__N_14fips15encap_self_testEv.exit.thread12 ]
  ret i32 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @CTR_DRBG_new(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 288) #36 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @CTR_DRBG_init(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ]
  tail call void @OPENSSL_free(ptr noundef %.sink) #36
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @CTR_DRBG_init(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 7 uses
  %i.b = alloca [48 x i8], align 16               ; 14 uses
  %i.c = icmp ugt i64 %3, 48
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check23 = icmp ult i64 %3, 16
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %3, 12
  %n.vec = and i64 %3, 48                         ; 5 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !80
  %wide.load24 = load <16 x i8>, ptr %i.b, align 16, !tbaa !80
  %i.e = xor <16 x i8> %wide.load24, %wide.load
  store <16 x i8> %i.e, ptr %i.b, align 16, !tbaa !80
  %i.f = icmp eq i64 %n.vec, 16
  br i1 %i.f, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.g, align 1, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load24.1 = load <16 x i8>, ptr %i.h, align 16, !tbaa !80
  %i.i = xor <16 x i8> %wide.load24.1, %wide.load.1
  store <16 x i8> %i.i, ptr %i.h, align 16, !tbaa !80
  %i.j = icmp eq i64 %n.vec, 32
  br i1 %i.j, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.k, align 1, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %wide.load24.2 = load <16 x i8>, ptr %i.l, align 16, !tbaa !80
  %i.m = xor <16 x i8> %wide.load24.2, %wide.load.2
  store <16 x i8> %i.m, ptr %i.l, align 16, !tbaa !80
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %3, 60                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index26
  %wide.load27 = load <4 x i8>, ptr %i.n, align 1, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %index26 ; 2 uses
  %wide.load28 = load <4 x i8>, ptr %i.o, align 4, !tbaa !80
  %i.p = xor <4 x i8> %wide.load28, %wide.load27
  store <4 x i8> %i.p, ptr %i.o, align 4, !tbaa !80
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1387

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %3, %n.vec25
  br i1 %cmp.n30, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01720.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %i.r = load <16 x i8>, ptr %i.b, align 16, !tbaa !80
  %i.s = xor <16 x i8> %i.r, <i8 83, i8 15, i8 -118, i8 -5, i8 -57, i8 69, i8 54, i8 -71, i8 -87, i8 99, i8 -76, i8 -15, i8 -60, i8 -53, i8 115, i8 -117>
  store <16 x i8> %i.s, ptr %i.b, align 16, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16, !tbaa !80
  %i.v = xor <16 x i8> %i.u, <i8 -50, i8 -89, i8 64, i8 61, i8 77, i8 96, i8 107, i8 110, i8 7, i8 78, i8 -59, i8 -45, i8 -70, i8 -13, i8 -99, i8 24>
  store <16 x i8> %i.v, ptr %i.t, align 16, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16, !tbaa !80
  %i.y = xor <16 x i8> %i.x, <i8 114, i8 96, i8 3, i8 -54, i8 55, i8 -90, i8 42, i8 116, i8 -47, i8 -94, i8 -11, i8 -114, i8 117, i8 6, i8 53, i8 -114>
  store <16 x i8> %i.y, ptr %i.w, align 16, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 14, ptr %i.z, align 4, !tbaa !79
  %.sroa.055.0.copyload58.i.i = load <2 x i64>, ptr %i.b, align 16 ; 2 uses
  store <2 x i64> %.sroa.055.0.copyload58.i.i, ptr %0, align 4
  %.sroa.0.0.copyload54.i.i = load <2 x i64>, ptr %i.t, align 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.sroa.0.0.copyload54.i.i, ptr %i.aa, align 4
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01720 = phi i64 [ %i.ag, %.lr.ph ], [ %.01720.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.01720
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01720 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !80
  %i.af = xor i8 %i.ae, %i.ac
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !80
  %i.ag = add nuw nsw i64 %.01720, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !1388

bb.c:                                             ; preds = %bb.d, %.preheader
  %.063.i.i = phi i64 [ 2, %.preheader ], [ %i.bp, %bb.d ] ; 4 uses
  %.sroa.0.062.i.i = phi <2 x i64> [ %.sroa.0.0.copyload54.i.i, %.preheader ], [ %i.bn, %bb.d ] ; 2 uses
  %.sroa.055.061.i.i = phi <2 x i64> [ %.sroa.055.0.copyload58.i.i, %.preheader ], [ %i.ba, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.a, <2 x i64> %.sroa.0.062.i.i)
  %i.ah = lshr exact i64 %.063.i.i, 1
  %i.ai = getelementptr i8, ptr @_ZL13aes_nohw_rcon, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %i.al = zext i8 %i.ak to i32
  %i.am = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.al, i64 0
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = load <4 x i32>, ptr %i.a, align 16, !tbaa !80 ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.aq = bitcast <4 x i32> %i.ap to <16 x i8>
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.as = bitcast <16 x i8> %i.ar to <2 x i64>
  %invariant.op.i9.i = xor <2 x i64> %.sroa.055.061.i.i, %i.an
  %.reass.i10.i = xor <2 x i64> %invariant.op.i9.i, %i.as ; 2 uses
  %i.at = bitcast <2 x i64> %.reass.i10.i to <16 x i8> ; 3 uses
  %i.au = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.at, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.av = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.at, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aw = xor <16 x i8> %i.au, %i.av
  %i.ax = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.at, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.ay = xor <16 x i8> %i.aw, %i.ax
  %i.az = bitcast <16 x i8> %i.ay to <2 x i64>
  %i.ba = xor <2 x i64> %.reass.i10.i, %i.az      ; 3 uses
  %.idx.i11.i = shl nuw nsw i64 %.063.i.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i11.i ; 2 uses
  store <2 x i64> %i.ba, ptr %i.bb, align 4
  %.not.i.i = icmp eq i64 %.063.i.i, 14
  br i1 %.not.i.i, label %aes_nohw_set_encrypt_key.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.a, <2 x i64> %i.ba)
  %i.bc = load <16 x i8>, ptr %i.a, align 16, !tbaa !80
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.be = bitcast <16 x i8> %i.bd to <2 x i64>
  %i.bf = xor <2 x i64> %.sroa.0.062.i.i, %i.be   ; 2 uses
  %i.bg = bitcast <2 x i64> %i.bf to <16 x i8>    ; 3 uses
  %i.bh = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bg, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bi = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bg, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bj = xor <16 x i8> %i.bh, %i.bi
  %i.bk = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bl = xor <16 x i8> %i.bj, %i.bk
  %i.bm = bitcast <16 x i8> %i.bl to <2 x i64>
  %i.bn = xor <2 x i64> %i.bf, %i.bm              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %i.bn, ptr %i.bo, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.bp = add nuw nsw i64 %.063.i.i, 2
  br label %bb.c

aes_nohw_set_encrypt_key.exit:                    ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  store ptr @aes_nohw_encrypt, ptr %i.bq, align 8, !tbaa !84
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @aes_nohw_ctr32_encrypt_blocks, ptr %i.br, align 8, !tbaa !328
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 1, ptr %i.bt, align 8, !tbaa !329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %aes_nohw_set_encrypt_key.exit
  %.018 = phi i32 [ 1, %aes_nohw_set_encrypt_key.exit ], [ 0, %bb.a ]
  ret i32 %.018
}

; Function Attrs: mustprogress nounwind uwtable
define void @CTR_DRBG_free(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  tail call void @OPENSSL_free(ptr noundef %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CTR_DRBG_reseed(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 7 uses
  %i.b = alloca [48 x i8], align 16               ; 8 uses
  %i.c = alloca [48 x i8], align 16               ; 59 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %.not = icmp eq i64 %3, 0
  %.013.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.013.sroa.gep17 = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.013.sroa.gep19 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.013.sroa.gep20 = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %.013.sroa.gep22 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.013.sroa.gep23 = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  %.013.sroa.gep25 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.013.sroa.gep26 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %.013.sroa.gep28 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.013.sroa.gep29 = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 3 uses
  %.013.sroa.gep31 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.013.sroa.gep32 = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 3 uses
  %.013.sroa.gep34 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.013.sroa.gep35 = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 3 uses
  %.013.sroa.gep37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.013.sroa.gep38 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.013.sroa.gep40 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.013.sroa.gep41 = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 3 uses
  %.013.sroa.gep43 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.013.sroa.gep44 = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 3 uses
  %.013.sroa.gep46 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %.013.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.c, i64 11 ; 3 uses
  %.013.sroa.gep49 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.013.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %.013.sroa.gep52 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %.013.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.c, i64 13 ; 3 uses
  %.013.sroa.gep55 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.013.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.c, i64 14 ; 3 uses
  %.013.sroa.gep58 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %.013.sroa.gep59 = getelementptr inbounds nuw i8, ptr %i.c, i64 15 ; 3 uses
  %.013.sroa.gep61 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.013.sroa.gep62 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.013.sroa.gep64 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %.013.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.c, i64 17 ; 3 uses
  %.013.sroa.gep67 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %.013.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 3 uses
  %.013.sroa.gep70 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %.013.sroa.gep71 = getelementptr inbounds nuw i8, ptr %i.c, i64 19 ; 3 uses
  %.013.sroa.gep73 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.013.sroa.gep74 = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  %.013.sroa.gep76 = getelementptr inbounds nuw i8, ptr %1, i64 21
  %.013.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.c, i64 21 ; 3 uses
  %.013.sroa.gep79 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.013.sroa.gep80 = getelementptr inbounds nuw i8, ptr %i.c, i64 22 ; 3 uses
  %.013.sroa.gep82 = getelementptr inbounds nuw i8, ptr %1, i64 23
  %.013.sroa.gep83 = getelementptr inbounds nuw i8, ptr %i.c, i64 23 ; 3 uses
  %.013.sroa.gep85 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.013.sroa.gep86 = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.013.sroa.gep88 = getelementptr inbounds nuw i8, ptr %1, i64 25
  %.013.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.c, i64 25 ; 3 uses
  %.013.sroa.gep91 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %.013.sroa.gep92 = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 3 uses
  %.013.sroa.gep94 = getelementptr inbounds nuw i8, ptr %1, i64 27
  %.013.sroa.gep95 = getelementptr inbounds nuw i8, ptr %i.c, i64 27 ; 3 uses
  %.013.sroa.gep97 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.013.sroa.gep98 = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 3 uses
  %.013.sroa.gep100 = getelementptr inbounds nuw i8, ptr %1, i64 29
  %.013.sroa.gep101 = getelementptr inbounds nuw i8, ptr %i.c, i64 29 ; 3 uses
  %.013.sroa.gep103 = getelementptr inbounds nuw i8, ptr %1, i64 30
  %.013.sroa.gep104 = getelementptr inbounds nuw i8, ptr %i.c, i64 30 ; 3 uses
  %.013.sroa.gep106 = getelementptr inbounds nuw i8, ptr %1, i64 31
  %.013.sroa.gep107 = getelementptr inbounds nuw i8, ptr %i.c, i64 31 ; 3 uses
  %.013.sroa.gep109 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.013.sroa.gep110 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %.013.sroa.gep112 = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.013.sroa.gep113 = getelementptr inbounds nuw i8, ptr %i.c, i64 33 ; 3 uses
  %.013.sroa.gep115 = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.013.sroa.gep116 = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 3 uses
  %.013.sroa.gep118 = getelementptr inbounds nuw i8, ptr %1, i64 35
  %.013.sroa.gep119 = getelementptr inbounds nuw i8, ptr %i.c, i64 35 ; 3 uses
  %.013.sroa.gep121 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.013.sroa.gep122 = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 3 uses
  %.013.sroa.gep124 = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.013.sroa.gep125 = getelementptr inbounds nuw i8, ptr %i.c, i64 37 ; 3 uses
  %.013.sroa.gep127 = getelementptr inbounds nuw i8, ptr %1, i64 38
  %.013.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.c, i64 38 ; 3 uses
  %.013.sroa.gep130 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.013.sroa.gep131 = getelementptr inbounds nuw i8, ptr %i.c, i64 39 ; 3 uses
  %.013.sroa.gep133 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.013.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %.013.sroa.gep136 = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.013.sroa.gep137 = getelementptr inbounds nuw i8, ptr %i.c, i64 41 ; 3 uses
  %.013.sroa.gep139 = getelementptr inbounds nuw i8, ptr %1, i64 42
  %.013.sroa.gep140 = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 3 uses
  %.013.sroa.gep142 = getelementptr inbounds nuw i8, ptr %1, i64 43
  %.013.sroa.gep143 = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 3 uses
  %.013.sroa.gep145 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.013.sroa.gep146 = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %.013.sroa.gep148 = getelementptr inbounds nuw i8, ptr %1, i64 45
  %.013.sroa.gep149 = getelementptr inbounds nuw i8, ptr %i.c, i64 45 ; 3 uses
  %.013.sroa.gep151 = getelementptr inbounds nuw i8, ptr %1, i64 46
  %.013.sroa.gep152 = getelementptr inbounds nuw i8, ptr %i.c, i64 46 ; 3 uses
  %.013.sroa.gep154 = getelementptr inbounds nuw i8, ptr %1, i64 47
  %.013.sroa.gep155 = getelementptr inbounds nuw i8, ptr %i.c, i64 47 ; 3 uses
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 48
  br i1 %i.d, label %bb.f, label %iter.check

iter.check:                                       ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check156 = icmp ult i64 %3, 16
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %3, 12
  %n.vec = and i64 %3, 48                         ; 5 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !80
  %wide.load157 = load <16 x i8>, ptr %i.c, align 16, !tbaa !80
  %i.f = xor <16 x i8> %wide.load157, %wide.load
  store <16 x i8> %i.f, ptr %i.c, align 16, !tbaa !80
  %i.g = icmp eq i64 %n.vec, 16
  br i1 %i.g, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.h, align 1, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load157.1 = load <16 x i8>, ptr %i.i, align 16, !tbaa !80
  %i.j = xor <16 x i8> %wide.load157.1, %wide.load.1
  store <16 x i8> %i.j, ptr %i.i, align 16, !tbaa !80
  %i.k = icmp eq i64 %n.vec, 32
  br i1 %i.k, label %middle.block, label %vector.body.2
end_hunk_2
begin_hunk_3_@CTR_DRBG_reseed:bb.a
  %.013.sroa.phi24 = phi ptr [ %.013.sroa.gep25, %bb.a ], [ %.013.sroa.gep26, %middle.block ], [ %.013.sroa.gep26, %vec.epilog.middle.block ], [ %.013.sroa.gep26, %vec.epilog.scalar.ph ]
  %.013.sroa.phi27 = phi ptr [ %.013.sroa.gep28, %bb.a ], [ %.013.sroa.gep29, %middle.block ], [ %.013.sroa.gep29, %vec.epilog.middle.block ], [ %.013.sroa.gep29, %vec.epilog.scalar.ph ]
  %.013.sroa.phi30 = phi ptr [ %.013.sroa.gep31, %bb.a ], [ %.013.sroa.gep32, %middle.block ], [ %.013.sroa.gep32, %vec.epilog.middle.block ], [ %.013.sroa.gep32, %vec.epilog.scalar.ph ]
  %.013.sroa.phi33 = phi ptr [ %.013.sroa.gep34, %bb.a ], [ %.013.sroa.gep35, %middle.block ], [ %.013.sroa.gep35, %vec.epilog.middle.block ], [ %.013.sroa.gep35, %vec.epilog.scalar.ph ]
  %.013.sroa.phi36 = phi ptr [ %.013.sroa.gep37, %bb.a ], [ %.013.sroa.gep38, %middle.block ], [ %.013.sroa.gep38, %vec.epilog.middle.block ], [ %.013.sroa.gep38, %vec.epilog.scalar.ph ]
  %.013.sroa.phi39 = phi ptr [ %.013.sroa.gep40, %bb.a ], [ %.013.sroa.gep41, %middle.block ], [ %.013.sroa.gep41, %vec.epilog.middle.block ], [ %.013.sroa.gep41, %vec.epilog.scalar.ph ]
  %.013.sroa.phi42 = phi ptr [ %.013.sroa.gep43, %bb.a ], [ %.013.sroa.gep44, %middle.block ], [ %.013.sroa.gep44, %vec.epilog.middle.block ], [ %.013.sroa.gep44, %vec.epilog.scalar.ph ]
  %.013.sroa.phi45 = phi ptr [ %.013.sroa.gep46, %bb.a ], [ %.013.sroa.gep47, %middle.block ], [ %.013.sroa.gep47, %vec.epilog.middle.block ], [ %.013.sroa.gep47, %vec.epilog.scalar.ph ]
  %.013.sroa.phi48 = phi ptr [ %.013.sroa.gep49, %bb.a ], [ %.013.sroa.gep50, %middle.block ], [ %.013.sroa.gep50, %vec.epilog.middle.block ], [ %.013.sroa.gep50, %vec.epilog.scalar.ph ]
  %.013.sroa.phi51 = phi ptr [ %.013.sroa.gep52, %bb.a ], [ %.013.sroa.gep53, %middle.block ], [ %.013.sroa.gep53, %vec.epilog.middle.block ], [ %.013.sroa.gep53, %vec.epilog.scalar.ph ]
  %.013.sroa.phi54 = phi ptr [ %.013.sroa.gep55, %bb.a ], [ %.013.sroa.gep56, %middle.block ], [ %.013.sroa.gep56, %vec.epilog.middle.block ], [ %.013.sroa.gep56, %vec.epilog.scalar.ph ]
  %.013.sroa.phi57 = phi ptr [ %.013.sroa.gep58, %bb.a ], [ %.013.sroa.gep59, %middle.block ], [ %.013.sroa.gep59, %vec.epilog.middle.block ], [ %.013.sroa.gep59, %vec.epilog.scalar.ph ]
  %.013.sroa.phi60 = phi ptr [ %.013.sroa.gep61, %bb.a ], [ %.013.sroa.gep62, %middle.block ], [ %.013.sroa.gep62, %vec.epilog.middle.block ], [ %.013.sroa.gep62, %vec.epilog.scalar.ph ]
  %.013.sroa.phi63 = phi ptr [ %.013.sroa.gep64, %bb.a ], [ %.013.sroa.gep65, %middle.block ], [ %.013.sroa.gep65, %vec.epilog.middle.block ], [ %.013.sroa.gep65, %vec.epilog.scalar.ph ]
  %.013.sroa.phi66 = phi ptr [ %.013.sroa.gep67, %bb.a ], [ %.013.sroa.gep68, %middle.block ], [ %.013.sroa.gep68, %vec.epilog.middle.block ], [ %.013.sroa.gep68, %vec.epilog.scalar.ph ]
  %.013.sroa.phi69 = phi ptr [ %.013.sroa.gep70, %bb.a ], [ %.013.sroa.gep71, %middle.block ], [ %.013.sroa.gep71, %vec.epilog.middle.block ], [ %.013.sroa.gep71, %vec.epilog.scalar.ph ]
  %.013.sroa.phi72 = phi ptr [ %.013.sroa.gep73, %bb.a ], [ %.013.sroa.gep74, %middle.block ], [ %.013.sroa.gep74, %vec.epilog.middle.block ], [ %.013.sroa.gep74, %vec.epilog.scalar.ph ]
  %.013.sroa.phi75 = phi ptr [ %.013.sroa.gep76, %bb.a ], [ %.013.sroa.gep77, %middle.block ], [ %.013.sroa.gep77, %vec.epilog.middle.block ], [ %.013.sroa.gep77, %vec.epilog.scalar.ph ]
  %.013.sroa.phi78 = phi ptr [ %.013.sroa.gep79, %bb.a ], [ %.013.sroa.gep80, %middle.block ], [ %.013.sroa.gep80, %vec.epilog.middle.block ], [ %.013.sroa.gep80, %vec.epilog.scalar.ph ]
  %.013.sroa.phi81 = phi ptr [ %.013.sroa.gep82, %bb.a ], [ %.013.sroa.gep83, %middle.block ], [ %.013.sroa.gep83, %vec.epilog.middle.block ], [ %.013.sroa.gep83, %vec.epilog.scalar.ph ]
  %.013.sroa.phi84 = phi ptr [ %.013.sroa.gep85, %bb.a ], [ %.013.sroa.gep86, %middle.block ], [ %.013.sroa.gep86, %vec.epilog.middle.block ], [ %.013.sroa.gep86, %vec.epilog.scalar.ph ]
  %.013.sroa.phi87 = phi ptr [ %.013.sroa.gep88, %bb.a ], [ %.013.sroa.gep89, %middle.block ], [ %.013.sroa.gep89, %vec.epilog.middle.block ], [ %.013.sroa.gep89, %vec.epilog.scalar.ph ]
  %.013.sroa.phi90 = phi ptr [ %.013.sroa.gep91, %bb.a ], [ %.013.sroa.gep92, %middle.block ], [ %.013.sroa.gep92, %vec.epilog.middle.block ], [ %.013.sroa.gep92, %vec.epilog.scalar.ph ]
  %.013.sroa.phi93 = phi ptr [ %.013.sroa.gep94, %bb.a ], [ %.013.sroa.gep95, %middle.block ], [ %.013.sroa.gep95, %vec.epilog.middle.block ], [ %.013.sroa.gep95, %vec.epilog.scalar.ph ]
  %.013.sroa.phi96 = phi ptr [ %.013.sroa.gep97, %bb.a ], [ %.013.sroa.gep98, %middle.block ], [ %.013.sroa.gep98, %vec.epilog.middle.block ], [ %.013.sroa.gep98, %vec.epilog.scalar.ph ]
  %.013.sroa.phi99 = phi ptr [ %.013.sroa.gep100, %bb.a ], [ %.013.sroa.gep101, %middle.block ], [ %.013.sroa.gep101, %vec.epilog.middle.block ], [ %.013.sroa.gep101, %vec.epilog.scalar.ph ]
  %.013.sroa.phi102 = phi ptr [ %.013.sroa.gep103, %bb.a ], [ %.013.sroa.gep104, %middle.block ], [ %.013.sroa.gep104, %vec.epilog.middle.block ], [ %.013.sroa.gep104, %vec.epilog.scalar.ph ]
  %.013.sroa.phi105 = phi ptr [ %.013.sroa.gep106, %bb.a ], [ %.013.sroa.gep107, %middle.block ], [ %.013.sroa.gep107, %vec.epilog.middle.block ], [ %.013.sroa.gep107, %vec.epilog.scalar.ph ]
  %.013.sroa.phi108 = phi ptr [ %.013.sroa.gep109, %bb.a ], [ %.013.sroa.gep110, %middle.block ], [ %.013.sroa.gep110, %vec.epilog.middle.block ], [ %.013.sroa.gep110, %vec.epilog.scalar.ph ]
  %.013.sroa.phi111 = phi ptr [ %.013.sroa.gep112, %bb.a ], [ %.013.sroa.gep113, %middle.block ], [ %.013.sroa.gep113, %vec.epilog.middle.block ], [ %.013.sroa.gep113, %vec.epilog.scalar.ph ]
  %.013.sroa.phi114 = phi ptr [ %.013.sroa.gep115, %bb.a ], [ %.013.sroa.gep116, %middle.block ], [ %.013.sroa.gep116, %vec.epilog.middle.block ], [ %.013.sroa.gep116, %vec.epilog.scalar.ph ]
  %.013.sroa.phi117 = phi ptr [ %.013.sroa.gep118, %bb.a ], [ %.013.sroa.gep119, %middle.block ], [ %.013.sroa.gep119, %vec.epilog.middle.block ], [ %.013.sroa.gep119, %vec.epilog.scalar.ph ]
  %.013.sroa.phi120 = phi ptr [ %.013.sroa.gep121, %bb.a ], [ %.013.sroa.gep122, %middle.block ], [ %.013.sroa.gep122, %vec.epilog.middle.block ], [ %.013.sroa.gep122, %vec.epilog.scalar.ph ]
  %.013.sroa.phi123 = phi ptr [ %.013.sroa.gep124, %bb.a ], [ %.013.sroa.gep125, %middle.block ], [ %.013.sroa.gep125, %vec.epilog.middle.block ], [ %.013.sroa.gep125, %vec.epilog.scalar.ph ]
  %.013.sroa.phi126 = phi ptr [ %.013.sroa.gep127, %bb.a ], [ %.013.sroa.gep128, %middle.block ], [ %.013.sroa.gep128, %vec.epilog.middle.block ], [ %.013.sroa.gep128, %vec.epilog.scalar.ph ]
  %.013.sroa.phi129 = phi ptr [ %.013.sroa.gep130, %bb.a ], [ %.013.sroa.gep131, %middle.block ], [ %.013.sroa.gep131, %vec.epilog.middle.block ], [ %.013.sroa.gep131, %vec.epilog.scalar.ph ]
  %.013.sroa.phi132 = phi ptr [ %.013.sroa.gep133, %bb.a ], [ %.013.sroa.gep134, %middle.block ], [ %.013.sroa.gep134, %vec.epilog.middle.block ], [ %.013.sroa.gep134, %vec.epilog.scalar.ph ]
  %.013.sroa.phi135 = phi ptr [ %.013.sroa.gep136, %bb.a ], [ %.013.sroa.gep137, %middle.block ], [ %.013.sroa.gep137, %vec.epilog.middle.block ], [ %.013.sroa.gep137, %vec.epilog.scalar.ph ]
  %.013.sroa.phi138 = phi ptr [ %.013.sroa.gep139, %bb.a ], [ %.013.sroa.gep140, %middle.block ], [ %.013.sroa.gep140, %vec.epilog.middle.block ], [ %.013.sroa.gep140, %vec.epilog.scalar.ph ]
  %.013.sroa.phi141 = phi ptr [ %.013.sroa.gep142, %bb.a ], [ %.013.sroa.gep143, %middle.block ], [ %.013.sroa.gep143, %vec.epilog.middle.block ], [ %.013.sroa.gep143, %vec.epilog.scalar.ph ]
  %.013.sroa.phi144 = phi ptr [ %.013.sroa.gep145, %bb.a ], [ %.013.sroa.gep146, %middle.block ], [ %.013.sroa.gep146, %vec.epilog.middle.block ], [ %.013.sroa.gep146, %vec.epilog.scalar.ph ]
  %.013.sroa.phi147 = phi ptr [ %.013.sroa.gep148, %bb.a ], [ %.013.sroa.gep149, %middle.block ], [ %.013.sroa.gep149, %vec.epilog.middle.block ], [ %.013.sroa.gep149, %vec.epilog.scalar.ph ]
  %.013.sroa.phi150 = phi ptr [ %.013.sroa.gep151, %bb.a ], [ %.013.sroa.gep152, %middle.block ], [ %.013.sroa.gep152, %vec.epilog.middle.block ], [ %.013.sroa.gep152, %vec.epilog.scalar.ph ]
  %.013.sroa.phi153 = phi ptr [ %.013.sroa.gep154, %bb.a ], [ %.013.sroa.gep155, %middle.block ], [ %.013.sroa.gep155, %vec.epilog.middle.block ], [ %.013.sroa.gep155, %vec.epilog.scalar.ph ]
  %.013 = phi ptr [ %1, %bb.a ], [ %i.c, %middle.block ], [ %i.c, %vec.epilog.middle.block ], [ %i.c, %vec.epilog.scalar.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %.0.copyload.i.i.i = load i32, ptr %i.y, align 1
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i)
  %i.ac = add i32 %i.ab, 1
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %i.ad, ptr %i.y, align 1
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !330
  call void %i.ae(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.b, ptr noundef %0) #36, !inline_history !50
  %.0.copyload.i.i.1.i = load i32, ptr %i.y, align 4
  %i.af = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1.i)
  %i.ag = add i32 %i.af, 1
  %i.ah = call noundef i32 @llvm.bswap.i32(i32 %i.ag)
  store i32 %i.ah, ptr %i.y, align 4
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !330
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void %i.ai(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aj, ptr noundef %0) #36, !inline_history !50
  %.0.copyload.i.i.2.i = load i32, ptr %i.y, align 4
  %i.ak = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2.i)
  %i.al = add i32 %i.ak, 1
  %i.am = call noundef i32 @llvm.bswap.i32(i32 %i.al)
  store i32 %i.am, ptr %i.y, align 4
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !330
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  call void %i.an(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ao, ptr noundef %0) #36, !inline_history !50
  %i.ap = load i8, ptr %.013, align 1, !tbaa !80
  %i.aq = load i8, ptr %.013.sroa.phi, align 1, !tbaa !80
  %i.ar = load i8, ptr %.013.sroa.phi18, align 1, !tbaa !80
  %i.as = load i8, ptr %.013.sroa.phi21, align 1, !tbaa !80
  %i.at = load i8, ptr %.013.sroa.phi24, align 1, !tbaa !80
  %i.au = load i8, ptr %.013.sroa.phi27, align 1, !tbaa !80
  %i.av = load i8, ptr %.013.sroa.phi30, align 1, !tbaa !80
  %i.aw = load i8, ptr %.013.sroa.phi33, align 1, !tbaa !80
  %i.ax = load i8, ptr %.013.sroa.phi36, align 1, !tbaa !80
  %i.ay = load i8, ptr %.013.sroa.phi39, align 1, !tbaa !80
  %i.az = load i8, ptr %.013.sroa.phi42, align 1, !tbaa !80
  %i.ba = load i8, ptr %.013.sroa.phi45, align 1, !tbaa !80
  %i.bb = load i8, ptr %.013.sroa.phi48, align 1, !tbaa !80
  %i.bc = load i8, ptr %.013.sroa.phi51, align 1, !tbaa !80
  %i.bd = load i8, ptr %.013.sroa.phi54, align 1, !tbaa !80
  %i.be = load i8, ptr %.013.sroa.phi57, align 1, !tbaa !80
  %i.bf = load <16 x i8>, ptr %i.b, align 16, !tbaa !80
  %i.bg = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.bh = insertelement <16 x i8> %i.bg, i8 %i.aq, i64 1
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.ar, i64 2
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.as, i64 3
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.at, i64 4
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.au, i64 5
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.av, i64 6
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.aw, i64 7
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ax, i64 8
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.ay, i64 9
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.az, i64 10
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.ba, i64 11
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bb, i64 12
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bc, i64 13
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.bd, i64 14
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.be, i64 15
  %i.bw = xor <16 x i8> %i.bf, %i.bv
  store <16 x i8> %i.bw, ptr %i.b, align 16, !tbaa !80
  %i.bx = load i8, ptr %.013.sroa.phi60, align 1, !tbaa !80
  %i.by = load i8, ptr %.013.sroa.phi63, align 1, !tbaa !80
  %i.bz = load i8, ptr %.013.sroa.phi66, align 1, !tbaa !80
  %i.ca = load i8, ptr %.013.sroa.phi69, align 1, !tbaa !80
  %i.cb = load i8, ptr %.013.sroa.phi72, align 1, !tbaa !80
  %i.cc = load i8, ptr %.013.sroa.phi75, align 1, !tbaa !80
  %i.cd = load i8, ptr %.013.sroa.phi78, align 1, !tbaa !80
  %i.ce = load i8, ptr %.013.sroa.phi81, align 1, !tbaa !80
  %i.cf = load i8, ptr %.013.sroa.phi84, align 1, !tbaa !80
  %i.cg = load i8, ptr %.013.sroa.phi87, align 1, !tbaa !80
  %i.ch = load i8, ptr %.013.sroa.phi90, align 1, !tbaa !80
  %i.ci = load i8, ptr %.013.sroa.phi93, align 1, !tbaa !80
  %i.cj = load i8, ptr %.013.sroa.phi96, align 1, !tbaa !80
  %i.ck = load i8, ptr %.013.sroa.phi99, align 1, !tbaa !80
  %i.cl = load i8, ptr %.013.sroa.phi102, align 1, !tbaa !80
  %i.cm = load i8, ptr %.013.sroa.phi105, align 1, !tbaa !80
  %i.cn = load <16 x i8>, ptr %i.aj, align 16, !tbaa !80
  %i.co = insertelement <16 x i8> poison, i8 %i.bx, i64 0
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.by, i64 1
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.bz, i64 2
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.ca, i64 3
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cb, i64 4
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cc, i64 5
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.cd, i64 6
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.ce, i64 7
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cf, i64 8
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.cg, i64 9
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ch, i64 10
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.ci, i64 11
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.cj, i64 12
  %i.db = insertelement <16 x i8> %i.da, i8 %i.ck, i64 13
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cl, i64 14
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cm, i64 15
  %i.de = xor <16 x i8> %i.cn, %i.dd
  store <16 x i8> %i.de, ptr %i.aj, align 16, !tbaa !80
  %i.df = load i8, ptr %.013.sroa.phi108, align 1, !tbaa !80
  %i.dg = load i8, ptr %.013.sroa.phi111, align 1, !tbaa !80
  %i.dh = load i8, ptr %.013.sroa.phi114, align 1, !tbaa !80
  %i.di = load i8, ptr %.013.sroa.phi117, align 1, !tbaa !80
  %i.dj = load i8, ptr %.013.sroa.phi120, align 1, !tbaa !80
  %i.dk = load i8, ptr %.013.sroa.phi123, align 1, !tbaa !80
  %i.dl = load i8, ptr %.013.sroa.phi126, align 1, !tbaa !80
  %i.dm = load i8, ptr %.013.sroa.phi129, align 1, !tbaa !80
  %i.dn = load i8, ptr %.013.sroa.phi132, align 1, !tbaa !80
  %i.do = load i8, ptr %.013.sroa.phi135, align 1, !tbaa !80
  %i.dp = load i8, ptr %.013.sroa.phi138, align 1, !tbaa !80
  %i.dq = load i8, ptr %.013.sroa.phi141, align 1, !tbaa !80
  %i.dr = load i8, ptr %.013.sroa.phi144, align 1, !tbaa !80
  %i.ds = load i8, ptr %.013.sroa.phi147, align 1, !tbaa !80
  %i.dt = load i8, ptr %.013.sroa.phi150, align 1, !tbaa !80
  %i.du = load i8, ptr %.013.sroa.phi153, align 1, !tbaa !80
  %i.dv = load <16 x i8>, ptr %i.ao, align 16, !tbaa !80
  %i.dw = insertelement <16 x i8> poison, i8 %i.df, i64 0
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dg, i64 1
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.dh, i64 2
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.di, i64 3
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dj, i64 4
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dk, i64 5
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dl, i64 6
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dm, i64 7
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.dn, i64 8
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.do, i64 9
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dp, i64 10
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dq, i64 11
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.dr, i64 12
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.ds, i64 13
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.dt, i64 14
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.du, i64 15
  %i.em = xor <16 x i8> %i.dv, %i.el
  store <16 x i8> %i.em, ptr %i.ao, align 16, !tbaa !80
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 14, ptr %i.en, align 8, !tbaa !79
  %.sroa.055.0.copyload58.i.i.i = load <2 x i64>, ptr %i.b, align 16 ; 2 uses
  store <2 x i64> %.sroa.055.0.copyload58.i.i.i, ptr %0, align 8
  %.sroa.0.0.copyload54.i.i.i = load <2 x i64>, ptr %i.aj, align 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.sroa.0.0.copyload54.i.i.i, ptr %i.eo, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.loopexit
  %.063.i.i.i = phi i64 [ 2, %.loopexit ], [ %i.fx, %bb.d ] ; 4 uses
  %.sroa.0.062.i.i.i = phi <2 x i64> [ %.sroa.0.0.copyload54.i.i.i, %.loopexit ], [ %i.fv, %bb.d ] ; 2 uses
  %.sroa.055.061.i.i.i = phi <2 x i64> [ %.sroa.055.0.copyload58.i.i.i, %.loopexit ], [ %i.fi, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.a, <2 x i64> %.sroa.0.062.i.i.i)
  %i.ep = lshr exact i64 %.063.i.i.i, 1
  %i.eq = getelementptr i8, ptr @_ZL13aes_nohw_rcon, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !80
  %i.et = zext i8 %i.es to i32
  %i.eu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.et, i64 0
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  %i.ew = load <4 x i32>, ptr %i.a, align 16, !tbaa !80 ; 2 uses
  %i.ex = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ew, <4 x i32> %i.ew, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.ey = bitcast <4 x i32> %i.ex to <16 x i8>
  %i.ez = shufflevector <16 x i8> %i.ey, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fa = bitcast <16 x i8> %i.ez to <2 x i64>
  %invariant.op.i9.i.i = xor <2 x i64> %.sroa.055.061.i.i.i, %i.ev
  %.reass.i10.i.i = xor <2 x i64> %invariant.op.i9.i.i, %i.fa ; 2 uses
  %i.fb = bitcast <2 x i64> %.reass.i10.i.i to <16 x i8> ; 3 uses
  %i.fc = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fb, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fd = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fb, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fe = xor <16 x i8> %i.fc, %i.fd
  %i.ff = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.fg = xor <16 x i8> %i.fe, %i.ff
  %i.fh = bitcast <16 x i8> %i.fg to <2 x i64>
  %i.fi = xor <2 x i64> %.reass.i10.i.i, %i.fh    ; 3 uses
  %.idx.i11.i.i = shl nuw nsw i64 %.063.i.i.i, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i11.i.i ; 2 uses
  store <2 x i64> %i.fi, ptr %i.fj, align 4
  %.not.i.i.i = icmp eq i64 %.063.i.i.i, 14
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.a, <2 x i64> %i.fi)
  %i.fk = load <16 x i8>, ptr %i.a, align 16, !tbaa !80
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fm = bitcast <16 x i8> %i.fl to <2 x i64>
  %i.fn = xor <2 x i64> %.sroa.0.062.i.i.i, %i.fm ; 2 uses
  %i.fo = bitcast <2 x i64> %i.fn to <16 x i8>    ; 3 uses
  %i.fp = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fo, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fo, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fr = xor <16 x i8> %i.fp, %i.fq
  %i.fs = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fo, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.ft = xor <16 x i8> %i.fr, %i.fs
  %i.fu = bitcast <16 x i8> %i.ft to <2 x i64>
  %i.fv = xor <2 x i64> %i.fn, %i.fu              ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <2 x i64> %i.fv, ptr %i.fw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.fx = add nuw nsw i64 %.063.i.i.i, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  store ptr @aes_nohw_encrypt, ptr %i.z, align 8, !tbaa !84
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @aes_nohw_ctr32_encrypt_blocks, ptr %i.fy, align 8, !tbaa !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ao, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 1, ptr %i.fz, align 8, !tbaa !329
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.012 = phi i32 [ 0, %bb.b ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  ret i32 %.012
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CTR_DRBG_generate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 7 uses
  %i.b = alloca [48 x i8], align 16               ; 12 uses
  %i.c = alloca [1 x <2 x i64>], align 16         ; 7 uses
  %i.d = alloca [48 x i8], align 16               ; 12 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = icmp ugt i64 %2, 65536
  br i1 %i.f, label %_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !329
  %i.i = icmp ugt i64 %i.h, 281474976710656
  br i1 %i.i, label %_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %4, 48
  br i1 %i.j, label %_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %.0.copyload.i.i.i = load i32, ptr %i.k, align 4
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i)
  %i.o = add i32 %i.n, 1
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %i.o)
  store i32 %i.p, ptr %i.k, align 4
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !330
  call void %i.q(ptr noundef nonnull %i.m, ptr noundef nonnull %i.d, ptr noundef nonnull %0) #36, !inline_history !50
  %.0.copyload.i.i.1.i = load i32, ptr %i.k, align 4
  %i.r = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1.i)
  %i.s = add i32 %i.r, 1
  %i.t = call noundef i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.k, align 4
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !330
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void %i.u(ptr noundef nonnull %i.m, ptr noundef nonnull %i.v, ptr noundef nonnull %0) #36, !inline_history !50
  %.0.copyload.i.i.2.i = load i32, ptr %i.k, align 4
  %i.w = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2.i)
  %i.x = add i32 %i.w, 1
  %i.y = call noundef i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %i.k, align 4
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !330
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void %i.z(ptr noundef nonnull %i.m, ptr noundef nonnull %i.aa, ptr noundef nonnull %0) #36, !inline_history !50
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i64 %4, 16
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %4, 12
  %n.vec = and i64 %4, 48                         ; 5 uses
  %wide.load = load <16 x i8>, ptr %3, align 1, !tbaa !80
  %wide.load83 = load <16 x i8>, ptr %i.d, align 16, !tbaa !80
  %i.ac = xor <16 x i8> %wide.load83, %wide.load
  store <16 x i8> %i.ac, ptr %i.d, align 16, !tbaa !80
  %i.ad = icmp eq i64 %n.vec, 16
  br i1 %i.ad, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load83.1 = load <16 x i8>, ptr %i.af, align 16, !tbaa !80
  %i.ag = xor <16 x i8> %wide.load83.1, %wide.load.1
  store <16 x i8> %i.ag, ptr %i.af, align 16, !tbaa !80
  %i.ah = icmp eq i64 %n.vec, 32
  br i1 %i.ah, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %wide.load83.2 = load <16 x i8>, ptr %i.aj, align 16, !tbaa !80
  %i.ak = xor <16 x i8> %wide.load83.2, %wide.load.2
  store <16 x i8> %i.ak, ptr %i.aj, align 16, !tbaa !80
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %4, 60                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %index85
  %wide.load86 = load <4 x i8>, ptr %i.al, align 1, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %index85 ; 2 uses
  %wide.load87 = load <4 x i8>, ptr %i.am, align 4, !tbaa !80
  %i.an = xor <4 x i8> %wide.load87, %wide.load86
  store <4 x i8> %i.an, ptr %i.am, align 4, !tbaa !80
  %index.next88 = add nuw i64 %index85, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1391

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %4, %n.vec84
  br i1 %cmp.n89, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec84, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 14, ptr %i.ap, align 8, !tbaa !79
  %.sroa.055.0.copyload58.i.i.i = load <2 x i64>, ptr %i.d, align 16 ; 2 uses
  store <2 x i64> %.sroa.055.0.copyload58.i.i.i, ptr %0, align 8
  %.sroa.0.0.copyload54.i.i.i = load <2 x i64>, ptr %i.v, align 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.sroa.0.0.copyload54.i.i.i, ptr %i.aq, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %._crit_edge.i
  %.063.i.i.i = phi i64 [ 2, %._crit_edge.i ], [ %i.bz, %bb.f ] ; 4 uses
  %.sroa.0.062.i.i.i = phi <2 x i64> [ %.sroa.0.0.copyload54.i.i.i, %._crit_edge.i ], [ %i.bx, %bb.f ] ; 2 uses
  %.sroa.055.061.i.i.i = phi <2 x i64> [ %.sroa.055.0.copyload58.i.i.i, %._crit_edge.i ], [ %i.bk, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.c, <2 x i64> %.sroa.0.062.i.i.i)
  %i.ar = lshr exact i64 %.063.i.i.i, 1
  %i.as = getelementptr i8, ptr @_ZL13aes_nohw_rcon, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !80
  %i.av = zext i8 %i.au to i32
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.av, i64 0
  %i.ax = bitcast <4 x i32> %i.aw to <2 x i64>
  %i.ay = load <4 x i32>, ptr %i.c, align 16, !tbaa !80 ; 2 uses
  %i.az = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ay, <4 x i32> %i.ay, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.ba = bitcast <4 x i32> %i.az to <16 x i8>
  %i.bb = shufflevector <16 x i8> %i.ba, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bc = bitcast <16 x i8> %i.bb to <2 x i64>
  %invariant.op.i9.i.i = xor <2 x i64> %.sroa.055.061.i.i.i, %i.ax
  %.reass.i10.i.i = xor <2 x i64> %invariant.op.i9.i.i, %i.bc ; 2 uses
  %i.bd = bitcast <2 x i64> %.reass.i10.i.i to <16 x i8> ; 3 uses
  %i.be = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bd, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bf = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bd, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bg = xor <16 x i8> %i.be, %i.bf
  %i.bh = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bi = xor <16 x i8> %i.bg, %i.bh
  %i.bj = bitcast <16 x i8> %i.bi to <2 x i64>
  %i.bk = xor <2 x i64> %.reass.i10.i.i, %i.bj    ; 3 uses
  %.idx.i11.i.i = shl nuw nsw i64 %.063.i.i.i, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i11.i.i ; 2 uses
  store <2 x i64> %i.bk, ptr %i.bl, align 4
  %.not.i.i.i = icmp eq i64 %.063.i.i.i, 14
  br i1 %.not.i.i.i, label %_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.c, <2 x i64> %i.bk)
  %i.bm = load <16 x i8>, ptr %i.c, align 16, !tbaa !80
  %i.bn = shufflevector <16 x i8> %i.bm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bo = bitcast <16 x i8> %i.bn to <2 x i64>
  %i.bp = xor <2 x i64> %.sroa.0.062.i.i.i, %i.bo ; 2 uses
  %i.bq = bitcast <2 x i64> %i.bp to <16 x i8>    ; 3 uses
  %i.br = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bq, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bs = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bq, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bt = xor <16 x i8> %i.br, %i.bs
  %i.bu = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bv = xor <16 x i8> %i.bt, %i.bu
  %i.bw = bitcast <16 x i8> %i.bv to <2 x i64>
  %i.bx = xor <2 x i64> %i.bp, %i.bw              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x i64> %i.bx, ptr %i.by, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.bz = add nuw nsw i64 %.063.i.i.i, 2
  br label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 %.022.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 %.022.i ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !80
  %i.ce = xor i8 %i.cd, %i.cb
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !80
  %i.cf = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1392

_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  store ptr @aes_nohw_encrypt, ptr %i.l, align 8, !tbaa !84
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @aes_nohw_ctr32_encrypt_blocks, ptr %i.cg, align 8, !tbaa !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.aa, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.g

bb.g:                                             ; preds = %_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit, %bb.c
  %i.ch = icmp ugt i64 %2, 15
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZL14OPENSSL_memsetPvim.exit
  %.03974 = phi ptr [ %1, %.lr.ph ], [ %i.cy, %_ZL14OPENSSL_memsetPvim.exit ] ; 4 uses
  %.04073 = phi i64 [ %2, %.lr.ph ], [ %i.cz, %_ZL14OPENSSL_memsetPvim.exit ] ; 3 uses
  %i.cl = icmp ult i64 %.04073, 8192
  %i.cm = and i64 %.04073, 8176
  %spec.select = select i1 %i.cl, i64 %i.cm, i64 8192 ; 5 uses
  %i.cn = lshr exact i64 %spec.select, 4          ; 2 uses
  %i.co = icmp eq i64 %spec.select, 0
  br i1 %i.co, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr align 1 %.03974, i8 0, i64 %spec.select, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.h, %bb.i
  %.0.copyload.i.i = load i32, ptr %i.ci, align 4
  %i.cp = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.cq = add i32 %i.cp, 1
  %i.cr = call noundef i32 @llvm.bswap.i32(i32 %i.cq)
  store i32 %i.cr, ptr %i.ci, align 4
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !328
  call void %i.cs(ptr noundef %.03974, ptr noundef %.03974, i64 noundef %i.cn, ptr noundef nonnull %0, ptr noundef nonnull %i.ck) #36
  %i.ct = trunc nuw nsw i64 %i.cn to i32
  %i.cu = add nsw i32 %i.ct, -1
  %.0.copyload.i.i46 = load i32, ptr %i.ci, align 4
  %i.cv = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i46)
  %i.cw = add i32 %i.cu, %i.cv
  %i.cx = call noundef i32 @llvm.bswap.i32(i32 %i.cw)
  store i32 %i.cx, ptr %i.ci, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.03974, i64 %spec.select ; 2 uses
  %i.cz = sub i64 %.04073, %spec.select           ; 3 uses
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %bb.h, label %._crit_edge, !llvm.loop !1393

._crit_edge:                                      ; preds = %_ZL14OPENSSL_memsetPvim.exit, %bb.g
  %.040.lcssa = phi i64 [ %2, %bb.g ], [ %i.cz, %_ZL14OPENSSL_memsetPvim.exit ] ; 2 uses
  %.039.lcssa = phi ptr [ %1, %bb.g ], [ %i.cy, %_ZL14OPENSSL_memsetPvim.exit ]
  %.not44 = icmp eq i64 %.040.lcssa, 0
  br i1 %.not44, label %bb.j, label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %.0.copyload.i.i47 = load i32, ptr %i.db, align 4
  %i.dc = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i47)
  %i.dd = add i32 %i.dc, 1
  %i.de = call noundef i32 @llvm.bswap.i32(i32 %i.dd)
  store i32 %i.de, ptr %i.db, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !330
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void %i.dg(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.e, ptr noundef nonnull %0) #36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.039.lcssa, ptr nonnull readonly align 16 %i.e, i64 %.040.lcssa, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %bb.j

bb.j:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %._crit_edge
  %i.di = icmp ugt i64 %4, 48
  br i1 %i.di, label %_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit.thread, label %.preheader.i48

.preheader.i48:                                   ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %.0.copyload.i.i.i49 = load i32, ptr %i.dj, align 4
  %i.dm = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i49)
  %i.dn = add i32 %i.dm, 1
  %i.do = call noundef i32 @llvm.bswap.i32(i32 %i.dn)
  store i32 %i.do, ptr %i.dj, align 4
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !330
  call void %i.dp(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #36, !inline_history !50
  %.0.copyload.i.i.1.i50 = load i32, ptr %i.dj, align 4
  %i.dq = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1.i50)
  %i.dr = add i32 %i.dq, 1
  %i.ds = call noundef i32 @llvm.bswap.i32(i32 %i.dr)
  store i32 %i.ds, ptr %i.dj, align 4
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !330
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void %i.dt(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.du, ptr noundef nonnull %0) #36, !inline_history !50
  %.0.copyload.i.i.2.i51 = load i32, ptr %i.dj, align 4
  %i.dv = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2.i51)
  %i.dw = add i32 %i.dv, 1
  %i.dx = call noundef i32 @llvm.bswap.i32(i32 %i.dw)
  store i32 %i.dx, ptr %i.dj, align 4
  %i.dy = load ptr, ptr %i.dk, align 8, !tbaa !330
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void %i.dy(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dz, ptr noundef nonnull %0) #36, !inline_history !50
  br i1 %.not, label %._crit_edge.i56, label %iter.check103

iter.check103:                                    ; preds = %.preheader.i48
  %min.iters.check90 = icmp ult i64 %4, 4
  br i1 %min.iters.check90, label %.lr.ph.i53.preheader, label %vector.main.loop.iter.check91

vector.main.loop.iter.check91:                    ; preds = %iter.check103
  %min.iters.check92 = icmp ult i64 %4, 16
  br i1 %min.iters.check92, label %vec.epilog.ph107, label %vector.ph93

vector.ph93:                                      ; preds = %vector.main.loop.iter.check91
  %i.ea = and i64 %4, 12
  %n.vec94 = and i64 %4, 48                       ; 5 uses
  %wide.load97 = load <16 x i8>, ptr %3, align 1, !tbaa !80
  %wide.load98 = load <16 x i8>, ptr %i.b, align 16, !tbaa !80
  %i.eb = xor <16 x i8> %wide.load98, %wide.load97
  store <16 x i8> %i.eb, ptr %i.b, align 16, !tbaa !80
  %i.ec = icmp eq i64 %n.vec94, 16
  br i1 %i.ec, label %middle.block100, label %vector.body95.1

vector.body95.1:                                  ; preds = %vector.ph93
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load97.1 = load <16 x i8>, ptr %i.ed, align 1, !tbaa !80
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load98.1 = load <16 x i8>, ptr %i.ee, align 16, !tbaa !80
  %i.ef = xor <16 x i8> %wide.load98.1, %wide.load97.1
  store <16 x i8> %i.ef, ptr %i.ee, align 16, !tbaa !80
  %i.eg = icmp eq i64 %n.vec94, 32
  br i1 %i.eg, label %middle.block100, label %vector.body95.2

vector.body95.2:                                  ; preds = %vector.body95.1
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %wide.load97.2 = load <16 x i8>, ptr %i.eh, align 1, !tbaa !80
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %wide.load98.2 = load <16 x i8>, ptr %i.ei, align 16, !tbaa !80
  %i.ej = xor <16 x i8> %wide.load98.2, %wide.load97.2
  store <16 x i8> %i.ej, ptr %i.ei, align 16, !tbaa !80
  br label %middle.block100

middle.block100:                                  ; preds = %vector.body95.2, %vector.body95.1, %vector.ph93
  %cmp.n101 = icmp eq i64 %4, %n.vec94
  br i1 %cmp.n101, label %._crit_edge.i56, label %vec.epilog.iter.check105

vec.epilog.iter.check105:                         ; preds = %middle.block100
  %min.epilog.iters.check106 = icmp eq i64 %i.ea, 0
  br i1 %min.epilog.iters.check106, label %.lr.ph.i53.preheader, label %vec.epilog.ph107, !prof !107

vec.epilog.ph107:                                 ; preds = %vector.main.loop.iter.check91, %vec.epilog.iter.check105
  %vec.epilog.resume.val102 = phi i64 [ %n.vec94, %vec.epilog.iter.check105 ], [ 0, %vector.main.loop.iter.check91 ]
  %n.vec108 = and i64 %4, 60                      ; 3 uses
  br label %vec.epilog.vector.body109

vec.epilog.vector.body109:                        ; preds = %vec.epilog.vector.body109, %vec.epilog.ph107
  %index110 = phi i64 [ %vec.epilog.resume.val102, %vec.epilog.ph107 ], [ %index.next113, %vec.epilog.vector.body109 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 %index110
  %wide.load111 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !80
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 %index110 ; 2 uses
  %wide.load112 = load <4 x i8>, ptr %i.el, align 4, !tbaa !80
  %i.em = xor <4 x i8> %wide.load112, %wide.load111
  store <4 x i8> %i.em, ptr %i.el, align 4, !tbaa !80
  %index.next113 = add nuw i64 %index110, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.en, label %vec.epilog.middle.block114, label %vec.epilog.vector.body109, !llvm.loop !1394

vec.epilog.middle.block114:                       ; preds = %vec.epilog.vector.body109
  %cmp.n115 = icmp eq i64 %4, %n.vec108
  br i1 %cmp.n115, label %._crit_edge.i56, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %iter.check103, %vec.epilog.iter.check105, %vec.epilog.middle.block114
  %.022.i54.ph = phi i64 [ 0, %iter.check103 ], [ %n.vec94, %vec.epilog.iter.check105 ], [ %n.vec108, %vec.epilog.middle.block114 ]
  br label %.lr.ph.i53

._crit_edge.i56:                                  ; preds = %.lr.ph.i53, %middle.block100, %vec.epilog.middle.block114, %.preheader.i48
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 14, ptr %i.eo, align 8, !tbaa !79
  %.sroa.055.0.copyload58.i.i.i57 = load <2 x i64>, ptr %i.b, align 16 ; 2 uses
  store <2 x i64> %.sroa.055.0.copyload58.i.i.i57, ptr %0, align 8
  %.sroa.0.0.copyload54.i.i.i58 = load <2 x i64>, ptr %i.du, align 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.sroa.0.0.copyload54.i.i.i58, ptr %i.ep, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %._crit_edge.i56
  %.063.i.i.i59 = phi i64 [ 2, %._crit_edge.i56 ], [ %i.fy, %bb.l ] ; 4 uses
  %.sroa.0.062.i.i.i60 = phi <2 x i64> [ %.sroa.0.0.copyload54.i.i.i58, %._crit_edge.i56 ], [ %i.fw, %bb.l ] ; 2 uses
  %.sroa.055.061.i.i.i61 = phi <2 x i64> [ %.sroa.055.0.copyload58.i.i.i57, %._crit_edge.i56 ], [ %i.fj, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.a, <2 x i64> %.sroa.0.062.i.i.i60)
  %i.eq = lshr exact i64 %.063.i.i.i59, 1
  %i.er = getelementptr i8, ptr @_ZL13aes_nohw_rcon, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 -1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !80
  %i.eu = zext i8 %i.et to i32
  %i.ev = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.eu, i64 0
  %i.ew = bitcast <4 x i32> %i.ev to <2 x i64>
  %i.ex = load <4 x i32>, ptr %i.a, align 16, !tbaa !80 ; 2 uses
  %i.ey = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ex, <4 x i32> %i.ex, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.ez = bitcast <4 x i32> %i.ey to <16 x i8>
  %i.fa = shufflevector <16 x i8> %i.ez, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fb = bitcast <16 x i8> %i.fa to <2 x i64>
  %invariant.op.i9.i.i62 = xor <2 x i64> %.sroa.055.061.i.i.i61, %i.ew
  %.reass.i10.i.i63 = xor <2 x i64> %invariant.op.i9.i.i62, %i.fb ; 2 uses
  %i.fc = bitcast <2 x i64> %.reass.i10.i.i63 to <16 x i8> ; 3 uses
  %i.fd = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fc, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fe = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fc, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ff = xor <16 x i8> %i.fd, %i.fe
  %i.fg = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.fh = xor <16 x i8> %i.ff, %i.fg
  %i.fi = bitcast <16 x i8> %i.fh to <2 x i64>
  %i.fj = xor <2 x i64> %.reass.i10.i.i63, %i.fi  ; 3 uses
  %.idx.i11.i.i64 = shl nuw nsw i64 %.063.i.i.i59, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i11.i.i64 ; 2 uses
  store <2 x i64> %i.fj, ptr %i.fk, align 4
  %.not.i.i.i65 = icmp eq i64 %.063.i.i.i59, 14
  br i1 %.not.i.i.i65, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.a, <2 x i64> %i.fj)
  %i.fl = load <16 x i8>, ptr %i.a, align 16, !tbaa !80
  %i.fm = shufflevector <16 x i8> %i.fl, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fn = bitcast <16 x i8> %i.fm to <2 x i64>
  %i.fo = xor <2 x i64> %.sroa.0.062.i.i.i60, %i.fn ; 2 uses
  %i.fp = bitcast <2 x i64> %i.fo to <16 x i8>    ; 3 uses
  %i.fq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fp, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fr = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fs = xor <16 x i8> %i.fq, %i.fr
  %i.ft = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.fu = xor <16 x i8> %i.fs, %i.ft
  %i.fv = bitcast <16 x i8> %i.fu to <2 x i64>
  %i.fw = xor <2 x i64> %i.fo, %i.fv              ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x i64> %i.fw, ptr %i.fx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.fy = add nuw nsw i64 %.063.i.i.i59, 2
  br label %bb.k

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53
  %.022.i54 = phi i64 [ %i.ge, %.lr.ph.i53 ], [ %.022.i54.ph, %.lr.ph.i53.preheader ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 %.022.i54
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !80
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 %.022.i54 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !80
  %i.gd = xor i8 %i.gc, %i.ga
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !80
  %i.ge = add nuw nsw i64 %.022.i54, 1            ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %i.ge, %4
  br i1 %exitcond.not.i55, label %._crit_edge.i56, label %.lr.ph.i53, !llvm.loop !1395

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  store ptr @aes_nohw_encrypt, ptr %i.dk, align 8, !tbaa !84
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @aes_nohw_ctr32_encrypt_blocks, ptr %i.gf, align 8, !tbaa !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.dz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.gg = load i64, ptr %i.g, align 8, !tbaa !329
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.g, align 8, !tbaa !329
  br label %_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit.thread

_ZL15ctr_drbg_updateP17ctr_drbg_state_stPKhm.exit.thread: ; preds = %bb.j, %bb.d, %bb.b, %bb.a, %bb.m
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.m ], [ 0, %bb.d ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @CTR_DRBG_clear(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  tail call void @OPENSSL_cleanse(ptr noundef %0, i64 noundef 288) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @BCM_rand_bytes_hwrng(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  ret i32 2
}

declare i64 @CRYPTO_get_fork_generation() local_unnamed_addr #7

declare i32 @rand_fork_unsafe_buffering_enabled() local_unnamed_addr #7

declare void @CRYPTO_sysrand(ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @CRYPTO_get_thread_local(i32 noundef) local_unnamed_addr #7

declare i32 @CRYPTO_set_thread_local(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL22rand_thread_state_freePv(ptr noundef %0) #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @BN_BLINDING_new() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #36 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef 24) #36 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %BN_new.exit.thread, label %bb.c

BN_new.exit.thread:                               ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !332
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 1, ptr %i.e, align 4, !tbaa !115
  store ptr %i.c, ptr %i.a, align 8, !tbaa !332
  %i.f = tail call ptr @OPENSSL_malloc(i64 noundef 24) #36 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %BN_new.exit10.thread, label %bb.d

BN_new.exit10.thread:                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !333
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.f, i8 0, i64 20, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 1, ptr %i.i, align 4, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.j, align 8, !tbaa !333
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 31, ptr %i.k, align 8, !tbaa !334
  br label %bb.f

bb.e:                                             ; preds = %BN_new.exit10.thread, %BN_new.exit.thread
  tail call void @BN_BLINDING_free(ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  %.0 = phi ptr [ %i.a, %bb.d ], [ null, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @BN_BLINDING_free(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !332    ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %BN_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = and i32 %i.e, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.h) #36
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %.pre.i, %bb.d ], [ %i.e, %bb.c ]
  %i.j = and i32 %i.i, 1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @OPENSSL_free(ptr noundef nonnull %i.b) #36
  br label %BN_free.exit

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.b, align 8, !tbaa !112
  br label %BN_free.exit

BN_free.exit:                                     ; preds = %bb.b, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !333  ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %BN_free.exit6, label %bb.h

bb.h:                                             ; preds = %BN_free.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
end_hunk_3
begin_hunk_4_@FIPS_mode_set:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @FIPS_module_name() local_unnamed_addr #8 {
bb.a:
  ret ptr @.str.39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @CRYPTO_has_asm() local_unnamed_addr #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @FIPS_version() local_unnamed_addr #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @FIPS_query_algorithm_status(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @FIPS_read_counter(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @BORINGSSL_check_test(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %_ZL14OPENSSL_memcmpPKvS0_m.exit

_ZL14OPENSSL_memcmpPKvS0_m.exit:                  ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %1, ptr %0, i64 %2)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZL14OPENSSL_memcmpPKvS0_m.exit
  %i.b = tail call ptr @CRYPTO_get_stderr() #36   ; 6 uses
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.40, ptr noundef %3) #36 ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.06.i = phi i64 [ %i.h, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !80
  %i.f = zext i8 %i.e to i32
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.71, i32 noundef %i.f) #36 ; 0 uses
  %i.h = add nuw i64 %.06.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %2
  br i1 %exitcond.not.i, label %_ZL7hexdumpP8_IO_FILEPKvm.exit, label %.lr.ph.i, !llvm.loop !1456

_ZL7hexdumpP8_IO_FILEPKvm.exit:                   ; preds = %.lr.ph.i
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.41, i64 13, i64 1, ptr %i.b) ; 0 uses
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %_ZL7hexdumpP8_IO_FILEPKvm.exit, %.lr.ph.i16
  %.06.i17 = phi i64 [ %i.m, %.lr.ph.i16 ], [ 0, %_ZL7hexdumpP8_IO_FILEPKvm.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.06.i17
  %i.j = load i8, ptr %i.i, align 1, !tbaa !80
  %i.k = zext i8 %i.j to i32
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.71, i32 noundef %i.k) #36 ; 0 uses
  %i.m = add nuw i64 %.06.i17, 1                  ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %i.m, %2
  br i1 %exitcond.not.i18, label %_ZL7hexdumpP8_IO_FILEPKvm.exit19, label %.lr.ph.i16, !llvm.loop !1456

_ZL7hexdumpP8_IO_FILEPKvm.exit19:                 ; preds = %.lr.ph.i16
  %fputc = tail call i32 @fputc(i32 10, ptr %i.b) ; 0 uses
  %i.n = tail call i32 @fflush(ptr noundef %i.b)  ; 0 uses
  br label %_ZL14OPENSSL_memcmpPKvS0_m.exit.thread

_ZL14OPENSSL_memcmpPKvS0_m.exit.thread:           ; preds = %bb.a, %_ZL14OPENSSL_memcmpPKvS0_m.exit, %_ZL7hexdumpP8_IO_FILEPKvm.exit19
  %.0 = phi i32 [ 0, %_ZL7hexdumpP8_IO_FILEPKvm.exit19 ], [ 1, %_ZL14OPENSSL_memcmpPKvS0_m.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

declare ptr @CRYPTO_get_stderr() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @boringssl_self_test_sha256() local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call ptr @SHA256(ptr noundef nonnull @_ZZ26boringssl_self_test_sha256E6kInput, i64 noundef 16, ptr noundef nonnull %i.a) #36 ; 0 uses
  %i.c = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZ26boringssl_self_test_sha256E16kPlaintextSHA256, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %i.c
}

declare ptr @SHA256(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @boringssl_self_test_sha512() local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call ptr @SHA512(ptr noundef nonnull @_ZZ26boringssl_self_test_sha512E6kInput, i64 noundef 16, ptr noundef nonnull %i.a) #36 ; 0 uses
  %i.c = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZ26boringssl_self_test_sha512E16kPlaintextSHA512, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %i.c
}

declare ptr @SHA512(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @boringssl_self_test_hmac_sha256() local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL15EVP_sha256_once, ptr noundef nonnull @_ZL15EVP_sha256_initv) #36
  %i.c = call ptr @HMAC(ptr noundef nonnull @_ZL18EVP_sha256_storage, ptr noundef nonnull @_ZZ31boringssl_self_test_hmac_sha256E6kInput, i64 noundef 16, ptr noundef nonnull @_ZZ31boringssl_self_test_hmac_sha256E6kInput, i64 noundef 16, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !82
  %i.e = icmp eq i32 %i.d, 32
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZ31boringssl_self_test_hmac_sha256E20kPlaintextHMACSHA256, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.45)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BORINGSSL_self_test() local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %0 = alloca %struct.EC_SCALAR, align 8          ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca [65 x i8], align 16               ; 5 uses
  %i.g = alloca [256 x i8], align 16              ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.j = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.evp_aead_ctx_st, align 8    ; 11 uses
  %2 = alloca %struct.aes_key_st, align 16        ; 9 uses
  %i.l = alloca [16 x i8], align 16               ; 6 uses
  %i.m = alloca [256 x i8], align 16              ; 20 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca [24 x i8], align 16               ; 5 uses
  %3 = alloca %struct.ctr_drbg_state_st, align 8  ; 8 uses
  %4 = alloca %struct.ctr_drbg_state_st, align 8  ; 4 uses
  %i.p = alloca [32 x i8], align 16               ; 4 uses
  %i.q = alloca [32 x i8], align 16               ; 4 uses
  %i.r = alloca [32 x i8], align 16               ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca [32 x i8], align 16               ; 4 uses
  %i.u = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %1, i8 0, i64 576, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  store i32 10, ptr %i.v, align 16, !tbaa !79
  store <2 x i64> <i64 8233538267676569410, i64 8747480453917995129>, ptr %2, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.032.i.i.i = phi i64 [ 1, %bb.a ], [ %i.ar, %bb.b ] ; 3 uses
  %.sroa.0.031.i.i.i = phi <2 x i64> [ <i64 8233538267676569410, i64 8747480453917995129>, %bb.a ], [ %i.ap, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.j, <2 x i64> %.sroa.0.031.i.i.i)
  %i.w = getelementptr i8, ptr @_ZL13aes_nohw_rcon, i64 %.032.i.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !80
  %i.z = zext i8 %i.y to i32
  %i.aa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.z, i64 0
  %i.ab = bitcast <4 x i32> %i.aa to <2 x i64>
  %i.ac = load <4 x i32>, ptr %i.j, align 16, !tbaa !80 ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.ae = bitcast <4 x i32> %i.ad to <16 x i8>
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ag = bitcast <16 x i8> %i.af to <2 x i64>
  %i.ah = xor <2 x i64> %i.ab, %i.ag
  %.reass.i.i.i = xor <2 x i64> %i.ah, %.sroa.0.031.i.i.i ; 2 uses
  %i.ai = bitcast <2 x i64> %.reass.i.i.i to <16 x i8> ; 3 uses
  %i.aj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ai, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ak = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ai, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.al = xor <16 x i8> %i.aj, %i.ak
  %i.am = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ai, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.an = xor <16 x i8> %i.al, %i.am
  %i.ao = bitcast <16 x i8> %i.an to <2 x i64>
  %i.ap = xor <2 x i64> %.reass.i.i.i, %i.ao      ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %.032.i.i.i, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.i
  store <2 x i64> %i.ap, ptr %i.aq, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  %i.ar = add nuw nsw i64 %.032.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ar, 11
  br i1 %exitcond.not.i.i.i, label %BCM_aes_set_encrypt_key.exit.i, label %bb.b, !llvm.loop !1

BCM_aes_set_encrypt_key.exit.i:                   ; preds = %bb.b
  call void @aes_nohw_cbc_encrypt(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE19kAESCBCEncPlaintext, ptr noundef nonnull %i.m, i64 noundef 32, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.l, i32 noundef 1)
  %i.as = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE20kAESCBCEncCiphertext, ptr noundef nonnull %i.m, i64 noundef 32, ptr noundef nonnull @.str.73)
  %.not2.i = icmp eq i32 %i.as, 0
  br i1 %.not2.i, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %BCM_aes_set_encrypt_key.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 10, ptr %i.v, align 16, !tbaa !79
  store <2 x i64> <i64 8233538267676569410, i64 8747480453917995129>, ptr %2, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.032.i.i40.i = phi i64 [ 1, %bb.c ], [ %i.bo, %bb.d ] ; 3 uses
  %.sroa.0.031.i.i41.i = phi <2 x i64> [ <i64 8233538267676569410, i64 8747480453917995129>, %bb.c ], [ %i.bm, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  call fastcc void @_ZL18aes_nohw_sub_blockPDv2_xPKS_(ptr noundef %i.i, <2 x i64> %.sroa.0.031.i.i41.i)
  %i.at = getelementptr i8, ptr @_ZL13aes_nohw_rcon, i64 %.032.i.i40.i
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !80
  %i.aw = zext i8 %i.av to i32
  %i.ax = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aw, i64 0
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  %i.az = load <4 x i32>, ptr %i.i, align 16, !tbaa !80 ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.az, <4 x i32> %i.az, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.bb = bitcast <4 x i32> %i.ba to <16 x i8>
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bd = bitcast <16 x i8> %i.bc to <2 x i64>
  %i.be = xor <2 x i64> %i.ay, %i.bd
  %.reass.i.i42.i = xor <2 x i64> %i.be, %.sroa.0.031.i.i41.i ; 2 uses
  %i.bf = bitcast <2 x i64> %.reass.i.i42.i to <16 x i8> ; 3 uses
  %i.bg = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bf, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bh = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bi = xor <16 x i8> %i.bg, %i.bh
  %i.bj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bk = xor <16 x i8> %i.bi, %i.bj
  %i.bl = bitcast <16 x i8> %i.bk to <2 x i64>
  %i.bm = xor <2 x i64> %.reass.i.i42.i, %i.bl    ; 2 uses
  %.idx.i.i43.i = shl nuw nsw i64 %.032.i.i40.i, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i43.i
  store <2 x i64> %i.bm, ptr %i.bn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  %i.bo = add nuw nsw i64 %.032.i.i40.i, 1        ; 2 uses
  %exitcond.not.i.i44.i = icmp eq i64 %i.bo, 11
  br i1 %exitcond.not.i.i44.i, label %BCM_aes_set_decrypt_key.exit.i, label %bb.d, !llvm.loop !1

BCM_aes_set_decrypt_key.exit.i:                   ; preds = %bb.d
  call void @aes_nohw_cbc_encrypt(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE20kAESCBCDecCiphertext, ptr noundef nonnull %i.m, i64 noundef 32, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.l, i32 noundef 0)
  %i.bp = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE19kAESCBCDecPlaintext, ptr noundef nonnull %i.m, i64 noundef 32, ptr noundef nonnull @.str.75)
  %.not5.i = icmp eq i32 %i.bp, 0
  br i1 %.not5.i, label %bb.aq, label %bb.e

bb.e:                                             ; preds = %BCM_aes_set_decrypt_key.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL25EVP_aead_aes_128_gcm_once, ptr noundef nonnull @_ZL25EVP_aead_aes_128_gcm_initv) #36
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EVP_aead_aes_128_gcm_storage, i64 8), align 8, !tbaa !153 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 124, ptr noundef nonnull @.str.14, i32 noundef 69) #36
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.br = load i8, ptr @_ZL28EVP_aead_aes_128_gcm_storage, align 8, !tbaa !150
  %.not.i.i.i = icmp eq i8 %i.br, 16
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @.str.14, i32 noundef 82) #36
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr @_ZL28EVP_aead_aes_128_gcm_storage, ptr %1, align 8, !tbaa !156
  %i.bs = call noundef i32 %i.bq(ptr noundef nonnull %1, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE7kAESKey, i64 noundef 16, i64 noundef 0) #36, !inline_history !1457
  %.not24.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not24.i.i.i, label %bb.j, label %EVP_AEAD_CTX_init.exit.i

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  store ptr null, ptr %1, align 8, !tbaa !156
  %i.bt = call ptr @CRYPTO_get_stderr() #36
  %fwrite7.i = call i64 @fwrite(ptr nonnull @.str.76, i64 42, i64 1, ptr %i.bt) ; 0 uses
  br label %bb.aq

EVP_AEAD_CTX_init.exit.i:                         ; preds = %bb.i
  call void @CRYPTO_once(ptr noundef nonnull @_ZL25EVP_aead_aes_128_gcm_once, ptr noundef nonnull @_ZL25EVP_aead_aes_128_gcm_initv) #36
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EVP_aead_aes_128_gcm_storage, i64 1), align 1, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bv = ptrtoint ptr %i.m to i64
  %i.bw = icmp ult ptr %i.m, inttoptr (i64 add (i64 ptrtoint (ptr @_ZZL24boringssl_self_test_fastvE19kAESGCMEncPlaintext to i64), i64 32) to ptr)
  %i.bx = add i64 %i.bv, 256
  %i.by = icmp ugt i64 %i.bx, ptrtoint (ptr @_ZZL24boringssl_self_test_fastvE19kAESGCMEncPlaintext to i64)
  %narrow.i.not.i.not32.i.i = and i1 %i.bw, %i.by
  br i1 %narrow.i.not.i.not32.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %EVP_AEAD_CTX_init.exit.i
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.14, i32 noundef 137) #36
  br label %EVP_AEAD_CTX_seal.exit.thread.i

bb.l:                                             ; preds = %EVP_AEAD_CTX_init.exit.i
  %i.bz = load ptr, ptr %1, align 8, !tbaa !156
  %i.ca = zext i8 %i.bu to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !158
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ce = call noundef i32 %i.cc(ptr noundef nonnull %1, ptr noundef nonnull %i.m, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.k, i64 noundef 224, ptr noundef nonnull %i.o, i64 noundef %i.ca, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE19kAESGCMEncPlaintext, i64 noundef 32, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #36, !inline_history !1458
  %.not29.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not29.i.i, label %EVP_AEAD_CTX_seal.exit.thread.i, label %bb.m

EVP_AEAD_CTX_seal.exit.thread.i:                  ; preds = %bb.l, %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.m, i8 0, i64 256, i1 false)
  store i64 0, ptr %i.n, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = load i64, ptr %i.k, align 8, !tbaa !96
  %i.cg = add i64 %i.cf, 32
  store i64 %i.cg, ptr %i.n, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ch = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE17kAESGCMCiphertext, ptr noundef nonnull %i.m, i64 noundef 48, ptr noundef nonnull @.str.77)
  %.not9.i = icmp eq i32 %i.ch, 0
  br i1 %.not9.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %EVP_AEAD_CTX_seal.exit.thread.i
  %i.ci = call ptr @CRYPTO_get_stderr() #36
  %fwrite10.i = call i64 @fwrite(ptr nonnull @.str.78, i64 42, i64 1, ptr %i.ci) ; 0 uses
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @CRYPTO_once(ptr noundef nonnull @_ZL25EVP_aead_aes_128_gcm_once, ptr noundef nonnull @_ZL25EVP_aead_aes_128_gcm_initv) #36
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL28EVP_aead_aes_128_gcm_storage, i64 1), align 1, !tbaa !151
  %i.ck = zext i8 %i.cj to i64
  %i.cl = call i32 @EVP_AEAD_CTX_open(ptr noundef nonnull %1, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, i64 noundef 256, ptr noundef nonnull %i.o, i64 noundef %i.ck, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE20kAESGCMDecCiphertext, i64 noundef 48, ptr noundef null, i64 noundef 0)
  %.not11.i = icmp eq i32 %i.cl, 0
  br i1 %.not11.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE19kAESGCMDecPlaintext, ptr noundef nonnull %i.m, i64 noundef 32, ptr noundef nonnull @.str.79)
  %.not12.i = icmp eq i32 %i.cm, 0
  br i1 %.not12.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cn = call ptr @CRYPTO_get_stderr() #36
  %fwrite13.i = call i64 @fwrite(ptr nonnull @.str.80, i64 61, i64 1, ptr %i.cn) ; 0 uses
  br label %bb.aq

bb.r:                                             ; preds = %bb.p
  %i.co = call ptr @SHA1(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE10kSHA1Input, i64 noundef 16, ptr noundef nonnull %i.m) #36 ; 0 uses
  %i.cp = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE11kSHA1Digest, ptr noundef nonnull %i.m, i64 noundef 20, ptr noundef nonnull @.str.81)
  %.not14.i = icmp eq i32 %i.cp, 0
  br i1 %.not14.i, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = call i32 @boringssl_self_test_sha256()
  %.not15.i = icmp eq i32 %i.cq, 0
  br i1 %.not15.i, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = call i32 @boringssl_self_test_sha512()
  %.not16.i = icmp eq i32 %i.cr, 0
  br i1 %.not16.i, label %bb.aq, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = call i32 @boringssl_self_test_hmac_sha256()
  %.not17.i = icmp eq i32 %i.cs, 0
  br i1 %.not17.i, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = call i32 @CTR_DRBG_init(ptr noundef nonnull %3, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE12kDRBGEntropy, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE20kDRBGPersonalization, i64 noundef 18)
  %.not18.i = icmp eq i32 %i.ct, 0
  br i1 %.not18.i, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = call i32 @CTR_DRBG_generate(ptr noundef nonnull %3, ptr noundef nonnull %i.m, i64 noundef 64, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE7kDRBGAD, i64 noundef 16)
  %.not19.i = icmp eq i32 %i.cu, 0
  br i1 %.not19.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE11kDRBGOutput, ptr noundef nonnull %i.m, i64 noundef 64, ptr noundef nonnull @.str.82)
  %.not20.i = icmp eq i32 %i.cv, 0
  br i1 %.not20.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = call i32 @CTR_DRBG_reseed(ptr noundef nonnull %3, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE13kDRBGEntropy2, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE7kDRBGAD, i64 noundef 16)
  %.not21.i = icmp eq i32 %i.cw, 0
  br i1 %.not21.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = call i32 @CTR_DRBG_generate(ptr noundef nonnull %3, ptr noundef nonnull %i.m, i64 noundef 64, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE7kDRBGAD, i64 noundef 16)
  %.not22.i = icmp eq i32 %i.cx, 0
  br i1 %.not22.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE17kDRBGReseedOutput, ptr noundef nonnull %i.m, i64 noundef 64, ptr noundef nonnull @.str.83)
  %.not23.i = icmp eq i32 %i.cy, 0
  br i1 %.not23.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.cz = call ptr @CRYPTO_get_stderr() #36
  %fwrite24.i = call i64 @fwrite(ptr nonnull @.str.84, i64 17, i64 1, ptr %i.cz) ; 0 uses
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 288) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %4, i8 0, i64 288, i1 false)
  %i.da = call i32 @BORINGSSL_check_test(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 288, ptr noundef nonnull @.str.85)
  %.not25.i = icmp eq i32 %i.da, 0
  br i1 %.not25.i, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = call ptr @EVP_md5_sha1() #36
  %i.dc = call i32 @CRYPTO_tls1_prf(ptr noundef %i.db, ptr noundef nonnull %i.p, i64 noundef 32, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE12kTLS10Secret, i64 noundef 32, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE9kTLSLabel, i64 noundef 15, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE9kTLSSeed1, i64 noundef 16, ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE9kTLSSeed2, i64 noundef 16)
  %.not26.i = icmp eq i32 %i.dc, 0
  br i1 %.not26.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZZL24boringssl_self_test_fastvE12kTLS10Output, ptr noundef nonnull %i.p, i64 noundef 32, ptr noundef nonnull @.str.86)
  %.not27.i = icmp eq i32 %i.dd, 0
  br i1 %.not27.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.de = call ptr @CRYPTO_get_stderr() #36
  %fwrite28.i = call i64 @fwrite(ptr nonnull @.str.87, i64 16, i64 1, ptr %i.de) ; 0 uses
  br label %bb.aq
end_hunk_4
