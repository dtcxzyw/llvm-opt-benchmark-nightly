Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.15?download=true
inline.NumInlined: 2339
inline.NumDeleted: 1551
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe:bb.a

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !3874
  %i.j = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = or disjoint i64 %.sroa.03.0.i, 1
  %i.l = icmp samesign ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.m, align 1, !alias.scope !3874
  %i.n = zext i16 %.sroa.015.0.copyload.i to i64
  %i.o = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.p = shl nuw nsw i64 %i.n, %i.o
  %i.q = or i64 %i.p, %.sroa.0.0.i
  %i.r = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.03.1.i, %i.h
  br i1 %i.s, label %bb.g, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !3874, !noundef !5
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.x = shl nuw nsw i64 %i.v, %i.w
  %i.y = or i64 %i.x, %.sroa.0.1.i
  br label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.y, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.z = shl i64 %i.e, 3
  %i.aa = and i64 %i.z, 56
  %i.ab = shl i64 %.sroa.0.2.i, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = or i64 %i.ad, %i.ab                     ; 3 uses
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = icmp ult i64 %2, %i.g
  br i1 %i.af, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.ag = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ah = and i64 %i.ag, 7                        ; 4 uses
  %i.ai = and i64 %i.ag, -8                       ; 2 uses
  %i.aj = icmp ult i64 %.sroa.0.0, %i.ai
  br i1 %i.aj, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.ak, align 8
  %.promoted20 = load i64, ptr %i.al, align 8, !alias.scope !3875
  %.promoted22 = load i64, ptr %i.am, align 8, !alias.scope !3875
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  %i.ap = xor i64 %i.ao, %i.ae                    ; 3 uses
  %i.aq = load i64, ptr %0, align 8, !alias.scope !3876, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !3876, !noundef !5 ; 3 uses
  %i.at = add i64 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !3876, !noundef !5
  %i.aw = add i64 %i.av, %i.ap                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 13)
  %i.ay = xor i64 %i.ax, %i.at                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.ba = xor i64 %i.aw, %i.az                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.bc = add i64 %i.aw, %i.ay                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.bc, %i.be
  store i64 %i.bf, ptr %i.ar, align 8, !alias.scope !3876
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd
  store i64 %i.bh, ptr %i.an, align 8, !alias.scope !3876
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  store i64 %i.bi, ptr %i.au, align 8, !alias.scope !3876
  %i.bj = xor i64 %i.bd, %i.ae
  store i64 %i.bj, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit
  %i.bk = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cz, ptr %i.ak, align 8
  store i64 %i.cx, ptr %i.al, align 8, !alias.scope !3875
  store i64 %i.da, ptr %i.am, align 8, !alias.scope !3875
  store i64 %i.db, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.dc, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bl = icmp samesign ugt i64 %i.ah, 3
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bm, align 1, !alias.scope !3877
  %i.bn = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bn, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bo = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bp = icmp samesign ult i64 %i.bo, %i.ah
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.br = getelementptr i8, ptr %i.bq, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.br, align 1, !alias.scope !3877
  %i.bs = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bt = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bu = shl nuw nsw i64 %i.bs, %i.bt
  %i.bv = or i64 %i.bu, %.sroa.0.0.i11
  %i.bw = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bw, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bx = icmp samesign ult i64 %.sroa.03.1.i12, %i.ah
  br i1 %i.bx, label %bb.p, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.by = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.bz = icmp ult i64 %i.by, %2
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !3877, !noundef !5
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.ce = shl nuw nsw i64 %i.cc, %i.cd
  %i.cf = or i64 %i.ce, %.sroa.0.1.i13
  br label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.cf, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cg, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cx, %bb.q ] ; 3 uses
  %i.cj = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cz, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.dc, %bb.q ] ; 2 uses
  %i.ck = phi i64 [ %.promoted, %.lr.ph ], [ %i.db, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.cl, align 1 ; 2 uses
  %i.cm = xor i64 %i.cj, %.sroa.07.0.copyload     ; 3 uses
  %i.cn = add i64 %i.ci, %i.ck                    ; 3 uses
  %i.co = add i64 %i.ch, %i.cm                    ; 2 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 13)
  %i.cq = xor i64 %i.cp, %i.cn                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 16)
  %i.cs = xor i64 %i.co, %i.cr                    ; 3 uses
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 32)
  %i.cu = add i64 %i.co, %i.cq                    ; 3 uses
  %i.cv = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 17)
  %i.cx = xor i64 %i.cu, %i.cw                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 21)
  %i.cz = xor i64 %i.cy, %i.cv                    ; 2 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 32) ; 2 uses
  %i.db = xor i64 %i.cv, %.sroa.07.0.copyload     ; 2 uses
  %i.dc = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dd = icmp ult i64 %i.dc, %i.ai
  br i1 %i.dd, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bk, %bb.j ], [ %i.ah, %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtBb_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 15 uses
  %2 = alloca [40 x i8], align 8                  ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %.not = icmp eq i64 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtNtNtBR_4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = icmp eq i64 %i.e, 0
  %i.l = load <2 x i64>, ptr %i.h, align 8        ; 3 uses
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.n = xor <2 x i64> %i.m, <i64 8317987319222330741, i64 7816392313619706465>
  %i.o = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i64> %i.o, <i64 7237128888997146477, i64 8387220255154660723>
  %i.q = load i64, ptr %i.j, align 8              ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  br i1 %i.k, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.s = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %.not.not.not.not.i.not.us = icmp eq ptr %i.t, null
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

.split:                                           ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs5Xr050g3D4S_3std4path7PathBufRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2H_7HashMapB1d_B1N_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i
  %i.u = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.v, null ; 3 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.w = extractvalue { ptr, ptr } %i.u, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val6.i = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 13 uses
  %i.y = getelementptr i8, ptr %i.v, i64 16
  %.val7.i = load i64, ptr %i.y, align 8          ; 13 uses
  %.val8.i = load i32, ptr %i.w, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3909
  store <2 x i64> %i.n, ptr %i.b, align 16, !alias.scope !3910, !noalias !3909
  store <2 x i64> %i.p, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !3910, !noalias !3909
  store <2 x i64> %i.l, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !3910, !noalias !3909
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3910, !noalias !3909
  call void @llvm.experimental.noalias.scope.decl(metadata !3911)
  switch i64 %.val7.i, label %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i [
    i64 0, label %._crit_edge.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i
  ]

.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i:     ; preds = %bb.c
  %i.z = add i64 %.val7.i, -3                     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i: ; preds = %bb.g
  %3 = add i64 %.val7.i, -1                       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %i.ai
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %bb.d, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i: ; preds = %bb.c
  %4 = load i8, ptr %.val6.i, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %5 = icmp eq i8 %4, 47
  br i1 %5, label %.thread.i.i.i.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i
  %6 = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %3, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ] ; 2 uses
  %7 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %i.ai, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %8 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %.sroa.012.2.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %9 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %6
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 1, !alias.scope !3911, !noalias !3912
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.z, %.sroa.0.1.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sub nuw i64 %i.ai, %.sroa.0.1.i.i.i.i.i.i.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i
  %i.af = add i64 %i.ad, %.sroa.012.2.i.i.i.i.i.i.i.i ; 2 uses
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 62)
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.ad) #44, !noalias !3913
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.e, %bb.d, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i
  %10 = phi i64 [ %i.ai, %bb.e ], [ %i.ai, %bb.d ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ]
  %i.ah = phi i64 [ %3, %bb.e ], [ %3, %bb.d ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %.sroa.012.2.i.i.i.i.i.i.i.i, %bb.d ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ]
  %11 = sub nuw i64 %.val7.i, %i.ah
  %12 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %i.ah ; 2 uses
  %13 = icmp eq i64 %11, 1
  %14 = load i8, ptr %12, align 1, !alias.scope !3911, !noalias !3912, !noundef !5 ; 2 uses
  %15 = icmp eq i8 %14, 46                        ; 2 uses
  br i1 %13, label %21, label %16

16:                                               ; preds = %.thread.i.i.i.i.i.i.i
  br i1 %15, label %17, label %22

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 1
  %19 = load i8, ptr %18, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %20 = icmp eq i8 %19, 47
  br i1 %20, label %23, label %22

21:                                               ; preds = %.thread.i.i.i.i.i.i.i
  br i1 %15, label %23, label %22

22:                                               ; preds = %21, %17, %16
  br label %23

23:                                               ; preds = %22, %21, %17
  %.sroa.024.0.i.peel.i.i.i.i.i.i.i = phi i64 [ 1, %21 ], [ 0, %22 ], [ 1, %17 ]
  %24 = add i64 %.sroa.024.0.i.peel.i.i.i.i.i.i.i, %i.ah
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i: ; preds = %23, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i
  %25 = phi i64 [ %i.ah, %23 ], [ %6, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ]
  %26 = phi i64 [ %10, %23 ], [ %7, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %27 = phi i8 [ %14, %23 ], [ %.pre.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ]
  %.sroa.012.2.i.peel.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.3.i.peel.i.i.i.i.i.i.i, %23 ], [ %8, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.1.i.peel.i.i.i.i.i.i.i = phi i64 [ %24, %23 ], [ %9, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %28 = add nuw i64 %26, 2                        ; 8 uses
  %29 = icmp eq i8 %27, 47
  br i1 %29, label %32, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %30 = load i8, ptr %.val6.i, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %31 = icmp eq i8 %30, 47
  br i1 %31, label %.thread48.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

32:                                               ; preds = %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %26, %.sroa.0.1.i.peel.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %38, label %33

33:                                               ; preds = %32
  %34 = sub nuw i64 %25, %.sroa.0.1.i.peel.i.i.i.i.i.i.i ; 2 uses
  %35 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %.sroa.0.1.i.peel.i.i.i.i.i.i.i
  %36 = add i64 %34, %.sroa.012.2.i.peel.i.i.i.i.i.i.i ; 2 uses
  %37 = call noundef i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 62)
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %35, i64 noundef range(i64 0, -9223372036854775808) %34) #44, !noalias !3913
  br label %38

38:                                               ; preds = %33, %32
  %.sroa.012.3.peel.i.i.i.i.i.i.i.i = phi i64 [ %37, %33 ], [ %.sroa.012.2.i.peel.i.i.i.i.i.i.i, %32 ] ; 6 uses
  %39 = sub nuw i64 %.val7.i, %28
  %40 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %28 ; 3 uses
  %41 = icmp eq i64 %39, 1
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %.not27.peel.i.i.i.i.i.i.i.i = icmp eq i64 %.val7.i, %28
  br i1 %.not27.peel.i.i.i.i.i.i.i.i, label %.thread48.i.i.i.i.i.i.i.i, label %43

43:                                               ; preds = %42
  %44 = load i8, ptr %40, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %45 = icmp eq i8 %44, 46
  br i1 %45, label %46, label %.thread48.i.i.i.i.i.i.i.i

46:                                               ; preds = %43
  %47 = getelementptr inbounds nuw i8, ptr %40, i64 1
  %48 = load i8, ptr %47, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %49 = icmp eq i8 %48, 47
  br i1 %49, label %54, label %.thread48.i.i.i.i.i.i.i.i

50:                                               ; preds = %38
  %51 = load i8, ptr %40, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %52 = icmp eq i8 %51, 46
  br i1 %52, label %54, label %.thread48.i.i.i.i.i.i.i.i

.thread48.i.i.i.i.i.i.i.i:                        ; preds = %50, %46, %43, %42, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i
  %.sroa.012.3.peel45.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %50 ], [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %46 ], [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %43 ], [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %42 ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i ]
  %53 = phi i64 [ %28, %50 ], [ %28, %46 ], [ %28, %43 ], [ %.val7.i, %42 ], [ 1, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i ]
  br label %54

54:                                               ; preds = %.thread48.i.i.i.i.i.i.i.i, %50, %46
  %.sroa.012.3.peel44.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %50 ], [ %.sroa.012.3.peel45.i.i.i.i.i.i.i.i, %.thread48.i.i.i.i.i.i.i.i ], [ %.sroa.012.3.peel.i.i.i.i.i.i.i.i, %46 ]
  %55 = phi i64 [ %28, %50 ], [ %53, %.thread48.i.i.i.i.i.i.i.i ], [ %28, %46 ]
  %.sroa.024.0.peel.i.i.i.i.i.i.i.i = phi i64 [ 1, %50 ], [ 0, %.thread48.i.i.i.i.i.i.i.i ], [ 1, %46 ]
  %56 = add i64 %.sroa.024.0.peel.i.i.i.i.i.i.i.i, %55
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %54, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i, %bb.c
  %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.val7.i, %bb.c ], [ %.sroa.012.3.peel44.i.i.i.i.i.i.i.i, %54 ], [ %.sroa.012.2.i.peel.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.val7.i, %bb.c ], [ %56, %54 ], [ %.sroa.0.1.i.peel.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i ] ; 3 uses
  %57 = icmp ult i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i, %.val7.i
  br i1 %57, label %bb.f, label %_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECshxhuDJfZv4T_6fontbe.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i
  %.sroa.0.032.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.012.031.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.2.i.i.i.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.019.030.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.g ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i ] ; 5 uses
  %i.ai = add nuw i64 %.sroa.019.030.i.i.i.i.i.i.i.i, 1 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %.sroa.019.030.i.i.i.i.i.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %i.al = icmp eq i8 %i.ak, 47
  br i1 %i.al, label %bb.h, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.am = sub nuw i64 %.val7.i, %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i
  %i.ao = add i64 %i.am, %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 62)
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef range(i64 0, -9223372036854775808) %i.am) #44, !noalias !3913
  br label %_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECshxhuDJfZv4T_6fontbe.exit.i.i.i.i

bb.g:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.012.2.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.012.3.i.i.i.i.i.i.i.i, %bb.m ], [ %.sroa.012.031.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ %i.ba, %bb.m ], [ %.sroa.0.032.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.019.030.i.i.i.i.i.i.i.i, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3892

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aq = icmp ugt i64 %.sroa.019.030.i.i.i.i.i.i.i.i, %.sroa.0.032.i.i.i.i.i.i.i.i
  br i1 %i.aq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.012.3.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.j ], [ %.sroa.012.031.i.i.i.i.i.i.i.i, %bb.h ]
  %i.ar = sub nuw i64 %.val7.i, %i.ai
  %i.as = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %i.ai ; 2 uses
  %i.at = icmp eq i64 %i.ar, 1
  %i.au = load i8, ptr %i.as, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %i.av = icmp eq i8 %i.au, 46                    ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aw = sub nuw i64 %.sroa.019.030.i.i.i.i.i.i.i.i, %.sroa.0.032.i.i.i.i.i.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %.sroa.0.032.i.i.i.i.i.i.i.i
  %i.ay = add i64 %i.aw, %.sroa.012.031.i.i.i.i.i.i.i.i ; 2 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 62)
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef range(i64 0, -9223372036854775808) %i.aw) #44, !noalias !3913
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l, %bb.k
  %.sroa.024.0.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.o ]
  %i.ba = add i64 %.sroa.024.0.i.i.i.i.i.i.i.i, %i.ai
  br label %bb.g

bb.n:                                             ; preds = %bb.i
  br i1 %i.av, label %bb.o, label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !3911, !noalias !3912, !noundef !5
  %i.bd = icmp eq i8 %i.bc, 47
  br i1 %i.bd, label %bb.m, label %bb.l

_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.012.1.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.f ], [ %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3915
  store i64 %.sroa.012.1.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !3915
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #44, !noalias !3916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3915
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !3917, !noalias !3909
  %.sroa.10.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3917, !noalias !3909
  %.sroa.17.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !3917, !noalias !3909 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3917, !noalias !3909
  %i.be = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !3917, !noalias !3909, !noundef !5
  %i.bf = shl i64 %i.be, 56
  %i.bg = load i64, ptr %i.i, align 8, !alias.scope !3917, !noalias !3909, !noundef !5
  %i.bh = or i64 %i.bf, %i.bg                     ; 2 uses
  %i.bi = xor i64 %i.bh, %.sroa.22.0.copyload.i.i.i.i.i.i.i ; 3 uses
  %i.bj = add i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i ; 3 uses
  %i.bk = add i64 %i.bi, %.sroa.10.0.copyload.i.i.i.i.i.i.i ; 2 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i, i64 13)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 3 uses
  %i.bp = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bq = add i64 %i.bk, %i.bm                    ; 3 uses
  %i.br = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.bs = call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.bt = xor i64 %i.bq, %i.bs                    ; 3 uses
  %i.bu = call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bv = xor i64 %i.bu, %i.br                    ; 3 uses
  %i.bw = call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bx = xor i64 %i.br, %i.bh
  %i.by = xor i64 %i.bw, 255
  %i.bz = add i64 %i.bx, %i.bt                    ; 3 uses
  %i.ca = add i64 %i.bv, %i.by                    ; 2 uses
  %i.cb = call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 13)
  %i.cc = xor i64 %i.bz, %i.cb                    ; 3 uses
  %i.cd = call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 16)
  %i.ce = xor i64 %i.cd, %i.ca                    ; 3 uses
  %i.cf = call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 32)
  %i.cg = add i64 %i.cc, %i.ca                    ; 3 uses
  %i.ch = add i64 %i.ce, %i.cf                    ; 2 uses
  %i.ci = call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 17)
  %i.cj = xor i64 %i.cg, %i.ci                    ; 3 uses
  %i.ck = call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 21)
  %i.cl = xor i64 %i.ck, %i.ch                    ; 3 uses
  %i.cm = call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 32)
  %i.cn = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.co = add i64 %i.cl, %i.cm                    ; 2 uses
  %i.cp = call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 13)
  %i.cq = xor i64 %i.cp, %i.cn                    ; 3 uses
  %i.cr = call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cs = xor i64 %i.cr, %i.co                    ; 3 uses
  %i.ct = call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 32)
  %i.cu = add i64 %i.cq, %i.co                    ; 3 uses
  %i.cv = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cw = call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 17)
  %i.cx = xor i64 %i.cw, %i.cu                    ; 3 uses
  %i.cy = call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 21)
  %i.cz = xor i64 %i.cy, %i.cv                    ; 3 uses
  %i.da = call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 32)
  %i.db = add i64 %i.cx, %i.cv
  %i.dc = add i64 %i.cz, %i.da                    ; 2 uses
  %i.dd = call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 13)
  %i.de = xor i64 %i.dd, %i.db                    ; 3 uses
  %i.df = call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 16)
  %i.dg = xor i64 %i.df, %i.dc                    ; 2 uses
  %i.dh = add i64 %i.de, %i.dc                    ; 3 uses
  %i.di = call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 17)
  %i.dj = call noundef i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 21)
  %i.dk = call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 32)
  %i.dl = xor i64 %i.dj, %i.di
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = xor i64 %i.dm, %i.dh                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3909
  %i.do = lshr i64 %i.dn, 57
  %i.dp = trunc nuw nsw i64 %i.do to i8
  %i.dq = insertelement <16 x i8> poison, i8 %i.dp, i64 0
  %i.dr = shufflevector <16 x i8> %i.dq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECshxhuDJfZv4T_6fontbe.exit.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ %i.ej, %bb.r ]
  %.pn.i.i.i.i.i = phi i64 [ %i.dn, %_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ %i.ek, %bb.r ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.q ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.ds, align 1, !noalias !3918 ; 2 uses
  %i.dt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.dr
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ei, %bb.q ], [ %i.du, %bb.p ] ; 3 uses
  %i.dv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.dw = zext nneg i16 %i.dv to i64
  %i.dx = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.dw
  %i.dy = and i64 %i.dx, %i.q
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.r, i64 %i.dz ; 3 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !3919
  %i.ec = getelementptr i8, ptr %i.ea, i64 -16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !3919
  %i.ed = call fastcc noundef zeroext i1 @_RNvXsW_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr readonly %.val6.i, i64 %.val7.i, ptr readonly %.val2.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i) #44, !noalias !3919
  br i1 %i.ed, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs5Xr050g3D4S_3std4path7PathBufRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2H_7HashMapB1d_B1N_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, label %bb.q, !prof !16

._crit_edge.i.i.i.i.i:                            ; preds = %bb.q, %bb.p
  %i.ee = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ef = bitcast <16 x i1> %i.ee to i16
  %i.eg = icmp eq i16 %i.ef, 0
  br i1 %i.eg, label %bb.r, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, !prof !17

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eh = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ei = and i16 %i.eh, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ei, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ej = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ek = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ej
  br label %bb.p

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs5Xr050g3D4S_3std4path7PathBufRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2H_7HashMapB1d_B1N_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.el = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %.val3.i.i.i = load i32, ptr %i.el, align 4, !range !31, !noundef !5
  %.not10.i = icmp eq i32 %.val8.i, %.val3.i.i.i
  br i1 %.not10.i, label %.split, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs5Xr050g3D4S_3std4path7PathBufRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2H_7HashMapB1d_B1N_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, %.split, %._crit_edge.i.i.i.i.i, %.split.us
  %.not.not.not.not.i.not5 = phi i1 [ %.not.not.not.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.not.i.not, %.split ], [ %.not.not.not.not.i.not, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs5Xr050g3D4S_3std4path7PathBufRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2H_7HashMapB1d_B1N_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not5, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = icmp eq i64 %i.c, 0
  %i.i = load i64, ptr %i.g, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  br i1 %i.h, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.not.not.not.i.not.us = icmp eq ptr %i.l, null
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2G_3all5checkTRBV_RB1I_ENCNvXs4_B6_INtB6_7HashMapBV_B1I_ENtNtB2O_3cmp9PartialEq2eq0E0INtNtNtB2O_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

.split:                                           ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB37_7HashMapB1d_B21_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.n, null ; 3 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2G_3all5checkTRBV_RB1I_ENCNvXs4_B6_INtB6_7HashMapBV_B1I_ENtNtB2O_3cmp9PartialEq2eq0E0INtNtNtB2O_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.val6.i = load i16, ptr %i.o, align 2
  %i.p = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.n) ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.al, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !3931 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fmin.v2f64
!3714 = distinct !{!3714, !3713, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdEEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!3715 = distinct !{!3715, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!3716 = distinct !{!3716, !3715, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!3717 = distinct !{!3717, !3711, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapReINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECshxhuDJfZv4T_6fontbe: argument 1"}
!3718 = distinct !{!3718, !3715, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!3719 = distinct !{!3719, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!3720 = distinct !{!3720, !3719, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!3721 = distinct !{!3721, i1 true, !"_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCshxhuDJfZv4T_6fontbe"}
!3722 = distinct !{!3722, !3721, !"_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCshxhuDJfZv4T_6fontbe: argument 1"}
!3723 = distinct !{!3723, i1 true, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0CshxhuDJfZv4T_6fontbe"}
!3724 = distinct !{!3724, !3723, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!3725 = distinct !{!3725, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!3726 = distinct !{!3726, !3725, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!3727 = distinct !{!3727, !3725, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!3728 = distinct !{!3728, i1 true, !"_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCshxhuDJfZv4T_6fontbe"}
!3729 = distinct !{!3729, !3728, !"_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCshxhuDJfZv4T_6fontbe: argument 1"}
!3730 = distinct !{!3730, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNCNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvar00E0B24_"}
!3731 = distinct !{!3731, !3730, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNCNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvar00E0B24_: argument 0"}
!3732 = distinct !{!3732, i1 true, !"_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1I_4find5checkRBY_NCNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvar00E0INtNtNtB1Q_3ops12control_flow11ControlFlowB39_EEB3l_"}
!3733 = distinct !{!3733, !3732, !"_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1I_4find5checkRBY_NCNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvar00E0INtNtNtB1Q_3ops12control_flow11ControlFlowB39_EEB3l_: argument 0"}
!3734 = !{!3712}
!3735 = !{!3714}
!3736 = !{!3716}
!3737 = !{!3716, !3714, !3712}
!3738 = !{!3720, !3716, !3718, !3714, !3712, !3717}
!3739 = !{!3722}
!3740 = !{!3724, !3716, !3718, !3714, !3712, !3717}
!3741 = !{!3727, !3726}
!3742 = !{!3729, !3724, !3716, !3718, !3714, !3712}
!3743 = !{!3731}
!3744 = !{!3731, !3733}
!3745 = distinct !{!3745, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!3746 = distinct !{!3746, !3745, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!3747 = distinct !{!3747, !3745, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!3748 = !{!3747, !3746}
!3749 = distinct !{!3749, i1 true, !"_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr6as_str"}
!3750 = distinct !{!3750, !3749, !"_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr6as_str: argument 0"}
!3751 = distinct !{!3751, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!3752 = distinct !{!3752, !3751, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!3753 = distinct !{!3753, !3751, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!3754 = !{!3750}
!3755 = !{!3753, !3752}
!3756 = distinct !{!3756, i1 true, !"_RNvXs7_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameINtNtCsf3Ta7LF998c_4core6borrow6BorroweE6borrow"}
!3757 = distinct !{!3757, !3756, !"_RNvXs7_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameINtNtCsf3Ta7LF998c_4core6borrow6BorroweE6borrow: argument 0"}
!3758 = distinct !{!3758, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!3759 = distinct !{!3759, !3758, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!3760 = distinct !{!3760, !3758, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!3761 = !{!3757}
!3762 = !{!3760, !3759}
!3763 = distinct !{!3763, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!3764 = distinct !{!3764, !3763, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!3765 = distinct !{!3765, !3763, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!3766 = !{!3765, !3764}
!3767 = distinct !{!3767, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringEuNvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvMsk_NtB2I_3vecINtB5A_3VecB1P_E14extend_trustedINtB4_3MapINtNtB6_5chain5ChainINtNtB5A_9into_iter8IntoIterBU_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBU_EEEB3i_EE0E0E0B3o_"}
!3768 = distinct !{!3768, !3767, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringEuNvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvMsk_NtB2I_3vecINtB5A_3VecB1P_E14extend_trustedINtB4_3MapINtNtB6_5chain5ChainINtNtB5A_9into_iter8IntoIterBU_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBU_EEEB3i_EE0E0E0B3o_: argument 0"}
!3769 = distinct !{!3769, !3767, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringEuNvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvMsk_NtB2I_3vecINtB5A_3VecB1P_E14extend_trustedINtB4_3MapINtNtB6_5chain5ChainINtNtB5A_9into_iter8IntoIterBU_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBU_EEEB3i_EE0E0E0B3o_: argument 1"}
!3770 = distinct !{!3770, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMsk_NtB28_3vecINtB2Q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB3B_5chain5ChainINtNtB2Q_9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB3B_6cloned6ClonedINtNtNtBe_5slice4iter4IterB4K_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B6G_"}
!3771 = distinct !{!3771, !3770, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMsk_NtB28_3vecINtB2Q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB3B_5chain5ChainINtNtB2Q_9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB3B_6cloned6ClonedINtNtNtBe_5slice4iter4IterB4K_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0E0B6G_: argument 0"}
!3772 = distinct !{!3772, i1 true, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtBa_6string6StringEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2f_5chain5ChainINtNtB8_9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB2f_6cloned6ClonedINtNtNtB2j_5slice4iter4IterB3K_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0B5H_"}
!3773 = distinct !{!3773, !3772, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecTTtttNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdENtNtBa_6string6StringEE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2f_5chain5ChainINtNtB8_9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordEINtNtB2f_6cloned6ClonedINtNtNtB2j_5slice4iter4IterB3K_EEENvNvNtCshxhuDJfZv4T_6fontbe4name18merge_name_records20split_key_and_stringEE0B5H_: argument 0"}
!3774 = !{!3768}
!3775 = !{!3768, !3769}
!3776 = !{!3771}
!3777 = !{!3773}
!3778 = !{!3773, !3771, !3768}
!3779 = !{!3773, !3771, !3768, !3769}
!3780 = distinct !{!3780, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEBV_uNCINvMNtCshxhuDJfZv4T_6fontbe17metric_variationsNtB2d_13AdvanceDeltas3newINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysBV_NtB4G_13GlyphInstanceENCNvXNtB2f_4hvarNtB6A_8HvarWorkINtNtB10_13orchestration4WorkNtNtB2f_13orchestration7ContextNtB7v_9AnyWorkIdNtNtB2f_5error5ErrorE4execs_0EE0NCIB2_BV_TBV_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB99_7HashSetBV_NtNtNtB5n_4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBV_E6extendINtB4_3MapB3i_B27_EE0NCINvNvNtNtBaA_8iterator8Iterator8for_each4callB8T_NCINvXs1i_NtB9b_3mapINtBcw_7HashMapBV_uB9V_EIBaw_B8T_E6extendIBbd_Bbc_B90_EE0E0E0E0B2f_"}
!3781 = distinct !{!3781, !3780, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEBV_uNCINvMNtCshxhuDJfZv4T_6fontbe17metric_variationsNtB2d_13AdvanceDeltas3newINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysBV_NtB4G_13GlyphInstanceENCNvXNtB2f_4hvarNtB6A_8HvarWorkINtNtB10_13orchestration4WorkNtNtB2f_13orchestration7ContextNtB7v_9AnyWorkIdNtNtB2f_5error5ErrorE4execs_0EE0NCIB2_BV_TBV_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB99_7HashSetBV_NtNtNtB5n_4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBV_E6extendINtB4_3MapB3i_B27_EE0NCINvNvNtNtBaA_8iterator8Iterator8for_each4callB8T_NCINvXs1i_NtB9b_3mapINtBcw_7HashMapBV_uB9V_EIBaw_B8T_E6extendIBbd_Bbc_B90_EE0E0E0E0B2f_: argument 0"}
!3782 = distinct !{!3782, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBX_15NormalizedSpaceETBU_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2i_7HashSetBU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB3a_11collections4hash3map4KeysBU_NtB67_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4hvarNtB7N_8HvarWorkINtNtBZ_13orchestration4WorkNtNtB7P_13orchestration7ContextNtB8Y_9AnyWorkIdNtNtB7P_5error5ErrorE4execs_0ENCINvMNtB7P_17metric_variationsNtBah_13AdvanceDeltas3newB4J_E0EE0NCINvNvNtNtB3X_8iterator8Iterator8for_each4callB22_NCINvXs1i_NtB2k_3mapINtBcd_7HashMapBU_uB34_EIB3T_B22_E6extendIB4A_B4z_B29_EE0E0E0B7P_"}
!3783 = distinct !{!3783, !3782, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBX_15NormalizedSpaceETBU_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2i_7HashSetBU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB3a_11collections4hash3map4KeysBU_NtB67_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4hvarNtB7N_8HvarWorkINtNtBZ_13orchestration4WorkNtNtB7P_13orchestration7ContextNtB8Y_9AnyWorkIdNtNtB7P_5error5ErrorE4execs_0ENCINvMNtB7P_17metric_variationsNtBah_13AdvanceDeltas3newB4J_E0EE0NCINvNvNtNtB3X_8iterator8Iterator8for_each4callB22_NCINvXs1i_NtB2k_3mapINtBcd_7HashMapBU_uB34_EIB3T_B22_E6extendIB4A_B4z_B29_EE0E0E0B7P_: argument 0"}
!3784 = distinct !{!3784, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1j_15NormalizedSpaceEuENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB2B_7HashMapB1g_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapIB4N_INtNtB4R_7flatten7FlatMapINtNtNtBe_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB3v_11collections4hash3map4KeysB1g_NtB6H_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4hvarNtB8o_8HvarWorkINtNtB1l_13orchestration4WorkNtNtB8q_13orchestration7ContextNtB9A_9AnyWorkIdNtNtB8q_5error5ErrorE4execs_0ENCINvMNtB8q_17metric_variationsNtBaT_13AdvanceDeltas3newB5i_E0ENCINvXs8_NtB2D_3setINtBbX_7HashSetB1g_B3p_EIB4e_B1g_E6extendB5d_E0EE0E0B8q_"}
!3785 = distinct !{!3785, !3784, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1j_15NormalizedSpaceEuENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB2B_7HashMapB1g_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapIB4N_INtNtB4R_7flatten7FlatMapINtNtNtBe_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB3v_11collections4hash3map4KeysB1g_NtB6H_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4hvarNtB8o_8HvarWorkINtNtB1l_13orchestration4WorkNtNtB8q_13orchestration7ContextNtB9A_9AnyWorkIdNtNtB8q_5error5ErrorE4execs_0ENCINvMNtB8q_17metric_variationsNtBaT_13AdvanceDeltas3newB5i_E0ENCINvXs8_NtB2D_3setINtBbX_7HashSetB1g_B3p_EIB4e_B1g_E6extendB5d_E0EE0E0B8q_: argument 0"}
!3786 = distinct !{!3786, i1 true, !"_RNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB9_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBU_15NormalizedSpaceEuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2V_8adapters3map3MapIB3W_INtNtB40_7flatten7FlatMapINtNtNtB2X_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB26_11collections4hash3map4KeysBR_NtB5S_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4hvarNtB7y_8HvarWorkINtNtBW_13orchestration4WorkNtNtB7A_13orchestration7ContextNtB8J_9AnyWorkIdNtNtB7A_5error5ErrorE4execs_0ENCINvMNtB7A_17metric_variationsNtBa2_13AdvanceDeltas3newB4s_E0ENCINvXs8_NtBb_3setINtBb6_7HashSetBR_B20_EIB2P_BR_E6extendB4n_E0EE0B7A_"}
!3787 = distinct !{!3787, !3786, !"_RNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB9_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBU_15NormalizedSpaceEuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2V_8adapters3map3MapIB3W_INtNtB40_7flatten7FlatMapINtNtNtB2X_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB26_11collections4hash3map4KeysBR_NtB5S_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4hvarNtB7y_8HvarWorkINtNtBW_13orchestration4WorkNtNtB7A_13orchestration7ContextNtB8J_9AnyWorkIdNtNtB7A_5error5ErrorE4execs_0ENCINvMNtB7A_17metric_variationsNtBa2_13AdvanceDeltas3newB4s_E0ENCINvXs8_NtBb_3setINtBb6_7HashSetBR_B20_EIB2P_BR_E6extendB4n_E0EE0B7A_: argument 0"}
!3788 = !{!3787, !3785, !3783, !3781}
!3789 = !{!3787, !3785, !3783}
!3790 = distinct !{!3790, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEBV_uNCINvMNtCshxhuDJfZv4T_6fontbe17metric_variationsNtB2d_13AdvanceDeltas3newINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysBV_NtB4G_13GlyphInstanceENCNvXNtB2f_4vvarNtB6A_8VvarWorkINtNtB10_13orchestration4WorkNtNtB2f_13orchestration7ContextNtB7v_9AnyWorkIdNtNtB2f_5error5ErrorE4execs_0EE0NCIB2_BV_TBV_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB99_7HashSetBV_NtNtNtB5n_4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBV_E6extendINtB4_3MapB3i_B27_EE0NCINvNvNtNtBaA_8iterator8Iterator8for_each4callB8T_NCINvXs1i_NtB9b_3mapINtBcw_7HashMapBV_uB9V_EIBaw_B8T_E6extendIBbd_Bbc_B90_EE0E0E0E0B2f_"}
!3791 = distinct !{!3791, !3790, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEBV_uNCINvMNtCshxhuDJfZv4T_6fontbe17metric_variationsNtB2d_13AdvanceDeltas3newINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysBV_NtB4G_13GlyphInstanceENCNvXNtB2f_4vvarNtB6A_8VvarWorkINtNtB10_13orchestration4WorkNtNtB2f_13orchestration7ContextNtB7v_9AnyWorkIdNtNtB2f_5error5ErrorE4execs_0EE0NCIB2_BV_TBV_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB99_7HashSetBV_NtNtNtB5n_4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBV_E6extendINtB4_3MapB3i_B27_EE0NCINvNvNtNtBaA_8iterator8Iterator8for_each4callB8T_NCINvXs1i_NtB9b_3mapINtBcw_7HashMapBV_uB9V_EIBaw_B8T_E6extendIBbd_Bbc_B90_EE0E0E0E0B2f_: argument 0"}
!3792 = distinct !{!3792, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBX_15NormalizedSpaceETBU_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2i_7HashSetBU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB3a_11collections4hash3map4KeysBU_NtB67_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4vvarNtB7N_8VvarWorkINtNtBZ_13orchestration4WorkNtNtB7P_13orchestration7ContextNtB8Y_9AnyWorkIdNtNtB7P_5error5ErrorE4execs_0ENCINvMNtB7P_17metric_variationsNtBah_13AdvanceDeltas3newB4J_E0EE0NCINvNvNtNtB3X_8iterator8Iterator8for_each4callB22_NCINvXs1i_NtB2k_3mapINtBcd_7HashMapBU_uB34_EIB3T_B22_E6extendIB4A_B4z_B29_EE0E0E0B7P_"}
!3793 = distinct !{!3793, !3792, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBX_15NormalizedSpaceETBU_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2i_7HashSetBU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB3a_11collections4hash3map4KeysBU_NtB67_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4vvarNtB7N_8VvarWorkINtNtBZ_13orchestration4WorkNtNtB7P_13orchestration7ContextNtB8Y_9AnyWorkIdNtNtB7P_5error5ErrorE4execs_0ENCINvMNtB7P_17metric_variationsNtBah_13AdvanceDeltas3newB4J_E0EE0NCINvNvNtNtB3X_8iterator8Iterator8for_each4callB22_NCINvXs1i_NtB2k_3mapINtBcd_7HashMapBU_uB34_EIB3T_B22_E6extendIB4A_B4z_B29_EE0E0E0B7P_: argument 0"}
!3794 = distinct !{!3794, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1j_15NormalizedSpaceEuENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB2B_7HashMapB1g_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapIB4N_INtNtB4R_7flatten7FlatMapINtNtNtBe_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB3v_11collections4hash3map4KeysB1g_NtB6H_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4vvarNtB8o_8VvarWorkINtNtB1l_13orchestration4WorkNtNtB8q_13orchestration7ContextNtB9A_9AnyWorkIdNtNtB8q_5error5ErrorE4execs_0ENCINvMNtB8q_17metric_variationsNtBaT_13AdvanceDeltas3newB5i_E0ENCINvXs8_NtB2D_3setINtBbX_7HashSetB1g_B3p_EIB4e_B1g_E6extendB5d_E0EE0E0B8q_"}
!3795 = distinct !{!3795, !3794, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1j_15NormalizedSpaceEuENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB2B_7HashMapB1g_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapIB4N_INtNtB4R_7flatten7FlatMapINtNtNtBe_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB3v_11collections4hash3map4KeysB1g_NtB6H_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4vvarNtB8o_8VvarWorkINtNtB1l_13orchestration4WorkNtNtB8q_13orchestration7ContextNtB9A_9AnyWorkIdNtNtB8q_5error5ErrorE4execs_0ENCINvMNtB8q_17metric_variationsNtBaT_13AdvanceDeltas3newB5i_E0ENCINvXs8_NtB2D_3setINtBbX_7HashSetB1g_B3p_EIB4e_B1g_E6extendB5d_E0EE0E0B8q_: argument 0"}
!3796 = distinct !{!3796, i1 true, !"_RNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB9_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBU_15NormalizedSpaceEuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2V_8adapters3map3MapIB3W_INtNtB40_7flatten7FlatMapINtNtNtB2X_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB26_11collections4hash3map4KeysBR_NtB5S_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4vvarNtB7y_8VvarWorkINtNtBW_13orchestration4WorkNtNtB7A_13orchestration7ContextNtB8J_9AnyWorkIdNtNtB7A_5error5ErrorE4execs_0ENCINvMNtB7A_17metric_variationsNtBa2_13AdvanceDeltas3newB4s_E0ENCINvXs8_NtBb_3setINtBb6_7HashSetBR_B20_EIB2P_BR_E6extendB4n_E0EE0B7A_"}
!3797 = distinct !{!3797, !3796, !"_RNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB9_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBU_15NormalizedSpaceEuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2V_8adapters3map3MapIB3W_INtNtB40_7flatten7FlatMapINtNtNtB2X_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEEINtNtNtNtB26_11collections4hash3map4KeysBR_NtB5S_13GlyphInstanceENCNvXNtCshxhuDJfZv4T_6fontbe4vvarNtB7y_8VvarWorkINtNtBW_13orchestration4WorkNtNtB7A_13orchestration7ContextNtB8J_9AnyWorkIdNtNtB7A_5error5ErrorE4execs_0ENCINvMNtB7A_17metric_variationsNtBa2_13AdvanceDeltas3newB4s_E0ENCINvXs8_NtBb_3setINtBb6_7HashSetBR_B20_EIB2P_BR_E6extendB4n_E0EE0B7A_: argument 0"}
!3798 = !{!3797, !3795, !3793, !3791}
!3799 = !{!3797, !3795, !3793}
!3800 = distinct !{!3800, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBW_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCIB2_BV_TBV_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2z_7HashSetBV_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_7flatten7FlatMapINtNtNtNtB3r_11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB6j_15NormalizedSpaceENtBY_15KerningInstanceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysBV_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustmentss3_0EEE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callB2j_NCINvXs1i_NtB2B_3mapINtBbS_7HashMapBV_uB3l_EIB4a_B2j_E6extendINtB4_3MapB4Q_B2q_EE0E0E0E0B9F_"}
!3801 = distinct !{!3801, !3800, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBW_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCIB2_BV_TBV_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB2z_7HashSetBV_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBV_E6extendINtNtB6_6cloned6ClonedINtNtB6_7flatten7FlatMapINtNtNtNtB3r_11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB6j_15NormalizedSpaceENtBY_15KerningInstanceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysBV_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustmentss3_0EEE0NCINvNvNtNtB4e_8iterator8Iterator8for_each4callB2j_NCINvXs1i_NtB2B_3mapINtBbS_7HashMapBV_uB3l_EIB4a_B2j_E6extendINtB4_3MapB4Q_B2q_EE0E0E0E0B9F_: argument 0"}
!3802 = distinct !{!3802, i1 true, !"_RNvYNvYTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB6_ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneINtNtNtBP_3ops8function5FnMutTRB5_EE8call_mutCshxhuDJfZv4T_6fontbe"}
!3803 = distinct !{!3803, !3802, !"_RNvYNvYTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB6_ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneINtNtNtBP_3ops8function5FnMutTRB5_EE8call_mutCshxhuDJfZv4T_6fontbe: argument 0"}
!3804 = distinct !{!3804, !3802, !"_RNvYNvYTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB6_ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneINtNtNtBP_3ops8function5FnMutTRB5_EE8call_mutCshxhuDJfZv4T_6fontbe: argument 1"}
!3805 = distinct !{!3805, i1 true, !"_RNvYTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3_ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe"}
!3806 = distinct !{!3806, !3805, !"_RNvYTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3_ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe: argument 0"}
!3807 = distinct !{!3807, !3805, !"_RNvYTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3_ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe: argument 1"}
!3808 = distinct !{!3808, i1 true, !"_RNvXsT_NtCs3v5ql5U6hxj_6fontir2irNtB5_8KernSideNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!3809 = distinct !{!3809, !3808, !"_RNvXsT_NtCs3v5ql5U6hxj_6fontir2irNtB5_8KernSideNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 0"}
!3810 = distinct !{!3810, !3808, !"_RNvXsT_NtCs3v5ql5U6hxj_6fontir2irNtB5_8KernSideNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!3811 = distinct !{!3811, i1 true, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!3812 = distinct !{!3812, !3811, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!3813 = distinct !{!3813, i1 true, !"_RNvXsT_NtCs3v5ql5U6hxj_6fontir2irNtB5_8KernSideNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!3814 = distinct !{!3814, !3813, !"_RNvXsT_NtCs3v5ql5U6hxj_6fontir2irNtB5_8KernSideNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 0"}
!3815 = distinct !{!3815, !3813, !"_RNvXsT_NtCs3v5ql5U6hxj_6fontir2irNtB5_8KernSideNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!3816 = distinct !{!3816, i1 true, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!3817 = distinct !{!3817, !3816, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!3818 = distinct !{!3818, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBV_ETBU_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB1Q_7HashSetBU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtB6_6cloned6ClonedINtNtB6_7flatten7FlatMapINtNtNtNtB2I_11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5A_15NormalizedSpaceENtBX_15KerningInstanceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysBU_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustmentss3_0EEE0NCINvNvNtNtB3v_8iterator8Iterator8for_each4callB1A_NCINvXs1i_NtB1S_3mapINtBb9_7HashMapBU_uB2C_EIB3r_B1A_E6extendINtB4_3MapB47_B1H_EE0E0E0B8W_"}
!3819 = distinct !{!3819, !3818, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBV_ETBU_uEuNCINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB1Q_7HashSetBU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtB6_6cloned6ClonedINtNtB6_7flatten7FlatMapINtNtNtNtB2I_11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5A_15NormalizedSpaceENtBX_15KerningInstanceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysBU_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustmentss3_0EEE0NCINvNvNtNtB3v_8iterator8Iterator8for_each4callB1A_NCINvXs1i_NtB1S_3mapINtBb9_7HashMapBU_uB2C_EIB3r_B1A_E6extendINtB4_3MapB47_B1H_EE0E0E0B8W_: argument 0"}
!3820 = distinct !{!3820, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1h_EuENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB29_7HashMapB1g_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapINtNtB4p_6cloned6ClonedINtNtB4p_7flatten7FlatMapINtNtNtNtB33_11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB6g_15NormalizedSpaceENtB1j_15KerningInstanceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysB1g_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustmentss3_0EENCINvXs8_NtB2b_3setINtBaZ_7HashSetB1g_B2X_EIB3M_B1g_E6extendB4L_E0EE0E0B9E_"}
!3821 = distinct !{!3821, !3820, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1h_EuENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB29_7HashMapB1g_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapINtNtB4p_6cloned6ClonedINtNtB4p_7flatten7FlatMapINtNtNtNtB33_11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB6g_15NormalizedSpaceENtB1j_15KerningInstanceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysB1g_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustmentss3_0EENCINvXs8_NtB2b_3setINtBaZ_7HashSetB1g_B2X_EIB3M_B1g_E6extendB4L_E0EE0E0B9E_: argument 0"}
!3822 = distinct !{!3822, i1 true, !"_RNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB9_7HashMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBS_EuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2t_8adapters3map3MapINtNtB3y_6cloned6ClonedINtNtB3y_7flatten7FlatMapINtNtNtNtB1E_11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5q_15NormalizedSpaceENtBU_15KerningInstanceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysBR_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustmentss3_0EENCINvXs8_NtBb_3setINtBa7_7HashSetBR_B1y_EIB2n_BR_E6extendB3V_E0EE0B8M_"}
!3823 = distinct !{!3823, !3822, !"_RNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB9_7HashMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBS_EuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2t_8adapters3map3MapINtNtB3y_6cloned6ClonedINtNtB3y_7flatten7FlatMapINtNtNtNtB1E_11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5q_15NormalizedSpaceENtBU_15KerningInstanceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysBR_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern31build_variable_kern_adjustmentss3_0EENCINvXs8_NtBb_3setINtBa7_7HashSetBR_B1y_EIB2n_BR_E6extendB3V_E0EE0B8M_: argument 0"}
!3824 = !{!3801}
!3825 = !{!3803}
!3826 = !{!3804}
!3827 = !{!3806}
!3828 = !{!3807}
!3829 = !{!3809}
!3830 = !{!3810}
!3831 = !{!3806, !3807, !3803, !3804, !3801}
!3832 = !{!3810, !3807, !3804, !3801}
!3833 = !{!3812, !3810, !3807, !3804, !3801}
!3834 = !{!3809, !3806, !3803}
!3835 = !{!3814}
!3836 = !{!3815}
!3837 = !{!3815, !3807, !3804, !3801}
!3838 = !{!3817, !3815, !3807, !3804, !3801}
!3839 = !{!3806, !3803}
!3840 = !{!3814, !3806, !3803}
!3841 = !{!3823, !3821, !3819, !3801}
!3842 = !{!3823, !3821, !3819}
!3843 = !{i64 4}
!3844 = distinct !{!3844, i1 true, !"_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_5Debug3fmtCshxhuDJfZv4T_6fontbe"}
!3845 = distinct !{!3845, !3844, !"_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_5Debug3fmtCshxhuDJfZv4T_6fontbe: argument 0"}
!3846 = !{!3845}
!3847 = distinct !{!3847, i1 true, !"_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe"}
!3848 = distinct !{!3848, !3847, !"_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe: argument 0"}
!3849 = distinct !{!3849, !3847, !"_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe: argument 1"}
!3850 = distinct !{!3850, i1 true, !"_RNvXs5_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_recordNtB5_14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!3851 = distinct !{!3851, !3850, !"_RNvXs5_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_recordNtB5_14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!3852 = distinct !{!3852, !3850, !"_RNvXs5_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_recordNtB5_14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!3853 = !{!3848}
!3854 = !{!3849}
!3855 = !{!3851}
!3856 = !{!3852}
!3857 = !{!3851, !3848}
!3858 = !{!3852, !3849}
!3859 = !{!3851, !3852, !3848, !3849}
!3860 = !{i16 0, i16 2}
!3861 = distinct !{!3861, i1 true, !"_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe"}
!3862 = distinct !{!3862, !3861, !"_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe: argument 0"}
!3863 = distinct !{!3863, !3861, !"_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe: argument 1"}
!3864 = !{!3862}
!3865 = !{!3863}
!3866 = distinct !{!3866, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le"}
!3867 = distinct !{!3867, !3866, !"_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le: argument 0"}
!3868 = distinct !{!3868, i1 true, !"_RNvXs6_NtNtCsf3Ta7LF998c_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!3869 = distinct !{!3869, !3868, !"_RNvXs6_NtNtCsf3Ta7LF998c_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!3870 = distinct !{!3870, i1 true, !"_RNvXs6_NtNtCsf3Ta7LF998c_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!3871 = distinct !{!3871, !3870, !"_RNvXs6_NtNtCsf3Ta7LF998c_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!3872 = distinct !{!3872, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le"}
!3873 = distinct !{!3873, !3872, !"_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le: argument 0"}
!3874 = !{!3867}
!3875 = !{!3869}
!3876 = !{!3871}
!3877 = !{!3873}
!3878 = distinct !{!3878, i1 true, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe"}
!3879 = distinct !{!3879, !3878, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe: argument 0"}
!3880 = distinct !{!3880, i1 true, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtNtNtBS_4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe"}
!3881 = distinct !{!3881, !3880, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtNtNtBS_4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe: argument 0"}
!3882 = distinct !{!3882, i1 true, !"_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECshxhuDJfZv4T_6fontbe"}
!3883 = distinct !{!3883, !3882, !"_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECshxhuDJfZv4T_6fontbe: argument 0"}
!3884 = distinct !{!3884, i1 true, !"_RNvXs_NtNtCs5Xr050g3D4S_3std4hash6randomNtB4_11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!3885 = distinct !{!3885, !3884, !"_RNvXs_NtNtCs5Xr050g3D4S_3std4hash6randomNtB4_11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!3886 = distinct !{!3886, i1 true, !"_RINvXs1h_NtCs5Xr050g3D4S_3std4pathNtB7_4PathNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe"}
!3887 = distinct !{!3887, !3886, !"_RINvXs1h_NtCs5Xr050g3D4S_3std4pathNtB7_4PathNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe: argument 0"}
!3888 = distinct !{!3888, i1 true, !"_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe"}
!3889 = distinct !{!3889, !3888, !"_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtCs5Xr050g3D4S_3std4path7PathBufNtB8_4Hash4hashNtNtNtBJ_4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe: argument 0"}
!3890 = distinct !{!3890, i1 true, !"_RINvXs11_NtCs5Xr050g3D4S_3std4pathNtB7_7PathBufNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe"}
!3891 = distinct !{!3891, !3890, !"_RINvXs11_NtCs5Xr050g3D4S_3std4pathNtB7_7PathBufNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe: argument 0"}
!3892 = distinct !{!3892, !3914}
!3893 = distinct !{!3893, !3886, !"_RINvXs1h_NtCs5Xr050g3D4S_3std4pathNtB7_4PathNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe: argument 1"}
!3894 = distinct !{!3894, i1 true, !"_RNvYNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher11write_usizeCshxhuDJfZv4T_6fontbe"}
!3895 = distinct !{!3895, !3894, !"_RNvYNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher11write_usizeCshxhuDJfZv4T_6fontbe: argument 0"}
!3896 = distinct !{!3896, i1 true, !"_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish"}
!3897 = distinct !{!3897, !3896, !"_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish: argument 0"}
!3898 = distinct !{!3898, i1 true, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCshxhuDJfZv4T_6fontbe"}
!3899 = distinct !{!3899, !3898, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCshxhuDJfZv4T_6fontbe: argument 0"}
!3900 = distinct !{!3900, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0ECshxhuDJfZv4T_6fontbe"}
!3901 = distinct !{!3901, !3900, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!3902 = distinct !{!3902, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!3903 = distinct !{!3903, !3902, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!3904 = distinct !{!3904, !3902, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!3905 = distinct !{!3905, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!3906 = distinct !{!3906, !3905, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!3907 = distinct !{!3907, i1 true, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1r_E0E0CshxhuDJfZv4T_6fontbe"}
!3908 = distinct !{!3908, !3907, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1r_E0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!3909 = !{!3883, !3881, !3879}
!3910 = !{!3885}
!3911 = !{!3887}
!3912 = !{!3891, !3889, !3883, !3881}
!3913 = !{!3883, !3881}
!3914 = !{!"llvm.loop.peeled.count", i32 2}
!3915 = !{!3895, !3887, !3893, !3891, !3889, !3883, !3881, !3879}
!3916 = !{!3887, !3883, !3881}
!3917 = !{!3899, !3897}
!3918 = !{!3906, !3904, !3903, !3901, !3881}
!3919 = !{!3908, !3904, !3903, !3901, !3881}
!3920 = distinct !{!3920, i1 true, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe"}
!3921 = distinct !{!3921, !3920, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe: argument 0"}
!3922 = distinct !{!3922, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1D_E0ECshxhuDJfZv4T_6fontbe"}
!3923 = distinct !{!3923, !3922, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1D_E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!3924 = distinct !{!3924, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!3925 = distinct !{!3925, !3924, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!3926 = distinct !{!3926, !3924, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!3927 = distinct !{!3927, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!3928 = distinct !{!3928, !3927, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!3929 = distinct !{!3929, i1 true, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1F_E0E0CshxhuDJfZv4T_6fontbe"}
!3930 = distinct !{!3930, !3929, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1F_E0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!3931 = !{!3928, !3926, !3925, !3923, !3921}
!3932 = !{!3930, !3926, !3925, !3923, !3921}
!3933 = distinct !{!3933, i1 true, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringtNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe"}
!3934 = distinct !{!3934, !3933, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringtNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe: argument 0"}
!3935 = distinct !{!3935, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringtEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_tE0ECshxhuDJfZv4T_6fontbe"}
!3936 = distinct !{!3936, !3935, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringtEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_tE0ECshxhuDJfZv4T_6fontbe: argument 0"}
!3937 = distinct !{!3937, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!3938 = distinct !{!3938, !3937, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!3939 = distinct !{!3939, !3937, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!3940 = distinct !{!3940, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!3941 = distinct !{!3941, !3940, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!3942 = distinct !{!3942, i1 true, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringtEE4findNCINvNtBa_3map14equivalent_keyBS_BS_tE0E0CshxhuDJfZv4T_6fontbe"}
!3943 = distinct !{!3943, !3942, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringtEE4findNCINvNtBa_3map14equivalent_keyBS_BS_tE0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!3944 = !{!3941, !3939, !3938, !3936, !3934}
!3945 = !{!3943, !3939, !3938, !3936, !3934}
!3946 = distinct !{!3946, i1 true, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe"}
!3947 = distinct !{!3947, !3946, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe: argument 0"}
!3948 = distinct !{!3948, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0ECshxhuDJfZv4T_6fontbe"}
!3949 = distinct !{!3949, !3948, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!3950 = distinct !{!3950, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!3951 = distinct !{!3951, !3950, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!3952 = distinct !{!3952, !3950, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!3953 = distinct !{!3953, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!3954 = distinct !{!3954, !3953, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!3955 = distinct !{!3955, i1 true, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0CshxhuDJfZv4T_6fontbe"}
!3956 = distinct !{!3956, !3955, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!3957 = !{!3954, !3952, !3951, !3949, !3947}
!3958 = !{!3956, !3952, !3951, !3949, !3947}
!3959 = distinct !{!3959, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdRNtB1f_6SourceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2l_7HashMapB1d_B1Z_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe"}
!3960 = distinct !{!3960, !3959, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdRNtB1f_6SourceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2l_7HashMapB1d_B1Z_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!3961 = distinct !{!3961, !3959, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdRNtB1f_6SourceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2l_7HashMapB1d_B1Z_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe: argument 1"}
!3962 = distinct !{!3962, i1 true, !"_RNCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtB17_6SourceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq0CshxhuDJfZv4T_6fontbe"}
!3963 = distinct !{!3963, !3962, !"_RNCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtB17_6SourceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq0CshxhuDJfZv4T_6fontbe: argument 0"}
!3964 = distinct !{!3964, !3962, !"_RNCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtB17_6SourceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq0CshxhuDJfZv4T_6fontbe: argument 1"}
!3965 = distinct !{!3965, i1 true, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBQ_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe"}
!3966 = distinct !{!3966, !3965, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBQ_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe: argument 1"}
!3967 = distinct !{!3967, i1 true, !"_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdECshxhuDJfZv4T_6fontbe"}
!3968 = distinct !{!3968, !3967, !"_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdECshxhuDJfZv4T_6fontbe: argument 0"}
!3969 = distinct !{!3969, i1 true, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe"}
!3970 = distinct !{!3970, !3969, !"_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe: argument 0"}
!3971 = distinct !{!3971, !3965, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBQ_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe: argument 0"}
!3972 = distinct !{!3972, i1 true, !"_RNvXs_NtNtCs5Xr050g3D4S_3std4hash6randomNtB4_11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!3973 = distinct !{!3973, !3972, !"_RNvXs_NtNtCs5Xr050g3D4S_3std4hash6randomNtB4_11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!3974 = distinct !{!3974, i1 true, !"_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtB8_4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe"}
!3975 = distinct !{!3975, !3974, !"_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtB8_4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe: argument 0"}
!3976 = distinct !{!3976, i1 true, !"_RINvXsf_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB6_6FileIdNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe"}
!3977 = distinct !{!3977, !3976, !"_RINvXsf_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB6_6FileIdNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECshxhuDJfZv4T_6fontbe: argument 0"}
!3978 = distinct !{!3978, i1 true, !"_RNvYNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher9write_u32CshxhuDJfZv4T_6fontbe"}
!3979 = distinct !{!3979, !3978, !"_RNvYNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher9write_u32CshxhuDJfZv4T_6fontbe: argument 0"}
!3980 = distinct !{!3980, i1 true, !"_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish"}
!3981 = distinct !{!3981, !3980, !"_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish: argument 0"}
!3982 = distinct !{!3982, i1 true, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCshxhuDJfZv4T_6fontbe"}
!3983 = distinct !{!3983, !3982, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCshxhuDJfZv4T_6fontbe: argument 0"}
!3984 = distinct !{!3984, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBS_6SourceEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1B_E0ECshxhuDJfZv4T_6fontbe"}
!3985 = distinct !{!3985, !3984, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBS_6SourceEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1B_E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!3986 = distinct !{!3986, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!3987 = distinct !{!3987, !3986, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!3988 = distinct !{!3988, !3986, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!3989 = distinct !{!3989, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!3990 = distinct !{!3990, !3989, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!3991 = distinct !{!3991, i1 true, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBU_6SourceEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1D_E0E0CshxhuDJfZv4T_6fontbe"}
!3992 = distinct !{!3992, !3991, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBU_6SourceEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1D_E0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!3993 = distinct !{!3993, i1 true, !"_RNvXsl_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_6SourceNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!3994 = distinct !{!3994, !3993, !"_RNvXsl_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_6SourceNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!3995 = distinct !{!3995, !3993, !"_RNvXsl_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_6SourceNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!3996 = !{!3960}
!3997 = !{!3961}
!3998 = !{!3963}
!3999 = !{!3964}
!4000 = !{!3966}
!4001 = !{!3968}
!4002 = !{!3968, !3971, !3966, !3963, !3964, !3960, !3961, !3970}
!4003 = !{!3973}
!4004 = !{!3968, !3966, !3963, !3960}
!4005 = !{!3975}
!4006 = !{!3979, !3977, !3975, !3968, !3971, !3966, !3963, !3964, !3960, !3961, !3970}
!4007 = !{!3968, !3971, !3966, !3963, !3964, !3960, !3961}
!4008 = !{!3983, !3981}
!4009 = !{!3990, !3988, !3987, !3985, !3971, !3964, !3961}
!4010 = !{!3992, !3988, !3987, !3985, !3971, !3964, !3961}
!4011 = !{!3994}
!4012 = !{!3995}
!4013 = !{!3994, !3964, !3961}
!4014 = !{!3964, !3961}
!4015 = !{!3994, !3995, !3964, !3961}
!4016 = distinct !{!4016, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRtRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2b_7HashMaptB1f_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe"}
!4017 = distinct !{!4017, !4016, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRtRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2b_7HashMaptB1f_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!4018 = distinct !{!4018, i1 true, !"_RNCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq0CshxhuDJfZv4T_6fontbe"}
!4019 = distinct !{!4019, !4018, !"_RNCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq0CshxhuDJfZv4T_6fontbe: argument 0"}
!4020 = distinct !{!4020, i1 true, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3gettECshxhuDJfZv4T_6fontbe"}
!4021 = distinct !{!4021, !4020, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3gettECshxhuDJfZv4T_6fontbe: argument 1"}
!4022 = distinct !{!4022, !4020, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3gettECshxhuDJfZv4T_6fontbe: argument 0"}
!4023 = distinct !{!4023, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECshxhuDJfZv4T_6fontbe"}
!4024 = distinct !{!4024, !4023, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTtNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECshxhuDJfZv4T_6fontbe: argument 0"}
!4025 = distinct !{!4025, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!4026 = distinct !{!4026, !4025, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!4027 = distinct !{!4027, !4025, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!4028 = distinct !{!4028, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!4029 = distinct !{!4029, !4028, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!4030 = distinct !{!4030, i1 true, !"_RNvXCsbDKHzkXHCUM_9hashbrowntINtB2_10EquivalenttE10equivalentCshxhuDJfZv4T_6fontbe"}
!4031 = distinct !{!4031, !4030, !"_RNvXCsbDKHzkXHCUM_9hashbrowntINtB2_10EquivalenttE10equivalentCshxhuDJfZv4T_6fontbe: argument 1"}
!4032 = distinct !{!4032, i1 true, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTtNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE4findNCINvNtBa_3map14equivalent_keyttBT_E0E0CshxhuDJfZv4T_6fontbe"}
!4033 = distinct !{!4033, !4032, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTtNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE4findNCINvNtBa_3map14equivalent_keyttBT_E0E0CshxhuDJfZv4T_6fontbe: argument 0"}
!4034 = !{!4017}
!4035 = !{!4019}
!4036 = !{!4021}
!4037 = !{!4021, !4019, !4017}
!4038 = !{!4029, !4027, !4026, !4024, !4022, !4021, !4019, !4017}
!4039 = !{!4031}
!4040 = !{!4033, !4027, !4026, !4024, !4022, !4021, !4019, !4017}
!4041 = !{!4019, !4017}
!4042 = distinct !{!4042, i1 true, !"_RNvXsl_NtCs5Xr050g3D4S_3std4pathNtB5_10ComponentsNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq"}
!4043 = distinct !{!4043, !4042, !"_RNvXsl_NtCs5Xr050g3D4S_3std4pathNtB5_10ComponentsNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 0"}
!4044 = distinct !{!4044, !4042, !"_RNvXsl_NtCs5Xr050g3D4S_3std4pathNtB5_10ComponentsNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq: argument 1"}
!4045 = !{!4043}
!4046 = !{!4044}
!4047 = !{i8 0, i8 4}
!4048 = !{!4043, !4044}
!4049 = !{i8 -1, i8 6}
!4050 = distinct !{!4050, i1 true, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshxhuDJfZv4T_6fontbe"}
!4051 = distinct !{!4051, !4050, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CshxhuDJfZv4T_6fontbe: argument 0"}
!4052 = distinct !{!4052, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECshxhuDJfZv4T_6fontbe"}
!4053 = distinct !{!4053, !4052, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECshxhuDJfZv4T_6fontbe: argument 0"}
!4054 = !{!4053, !4051}
end_hunk_1
