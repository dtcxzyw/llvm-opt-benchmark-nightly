inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi6EEEvPNS0_6vectorIXT_EEES4_PKS3_:bb.a
  %i.et = zext nneg i32 %i.ej to i64
  %i.eu = icmp samesign ugt i32 %i.ej, 4096
  %.neg.i.i.i.i.4 = sext i1 %i.eu to i64
  %i.ev = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.4) #38, !srcloc !156 ; 3 uses
  %i.ew = and i64 %i.eq, %i.ev
  %i.ex = xor i64 %i.ev, -1                       ; 2 uses
  %i.ey = and i64 %i.ex, %i.et
  %i.ez = or disjoint i64 %i.ew, %i.ey
  %i.fa = trunc nuw i64 %i.ez to i32
  store i32 %i.fa, ptr %i.ef, align 4, !tbaa !18
  %i.fb = load i32, ptr %i.ee, align 4, !tbaa !18
  %i.fc = zext i32 %i.es to i64
  %i.fd = zext i32 %i.fb to i64
  %i.fe = and i64 %i.ev, %i.fc
  %i.ff = and i64 %i.fd, %i.ex
  %i.fg = or disjoint i64 %i.ff, %i.fe
  %i.fh = trunc nuw i64 %i.fg to i32
  store i32 %i.fh, ptr %i.ee, align 4, !tbaa !18
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 256
  br i1 %exitcond.not.i.4, label %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.4, label %bb.f, !llvm.loop !1258

_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.4: ; preds = %bb.f
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 5120
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 5120
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.4
  %indvars.iv.i.5 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.4 ], [ %indvars.iv.next.i.5, %bb.g ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i.5 ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.i.5 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i.5
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !18 ; 3 uses
  %i.fp = lshr i32 %i.fo, 13
  store i32 %i.fp, ptr %i.fl, align 4, !tbaa !18
  %i.fq = and i32 %i.fo, 8191                     ; 4 uses
  store i32 %i.fq, ptr %i.fm, align 4, !tbaa !18
  %i.fr = add nuw nsw i32 %i.fq, 8372225
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = or i32 %i.fo, -8192
  %i.fu = zext i32 %i.ft to i64
  %i.fv = and i64 %i.a, %i.fs
  %i.fw = and i64 %i.fu, %i.b
  %i.fx = or disjoint i64 %i.fv, %i.fw
  %i.fy = load i32, ptr %i.fl, align 4, !tbaa !18
  %i.fz = add i32 %i.fy, 1
  %i.ga = zext nneg i32 %i.fq to i64
  %i.gb = icmp samesign ugt i32 %i.fq, 4096
  %.neg.i.i.i.i.5 = sext i1 %i.gb to i64
  %i.gc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.5) #38, !srcloc !156 ; 3 uses
  %i.gd = and i64 %i.fx, %i.gc
  %i.ge = xor i64 %i.gc, -1                       ; 2 uses
  %i.gf = and i64 %i.ge, %i.ga
  %i.gg = or disjoint i64 %i.gd, %i.gf
  %i.gh = trunc nuw i64 %i.gg to i32
  store i32 %i.gh, ptr %i.fm, align 4, !tbaa !18
  %i.gi = load i32, ptr %i.fl, align 4, !tbaa !18
  %i.gj = zext i32 %i.fz to i64
  %i.gk = zext i32 %i.gi to i64
  %i.gl = and i64 %i.gc, %i.gj
  %i.gm = and i64 %i.gk, %i.ge
  %i.gn = or disjoint i64 %i.gm, %i.gl
  %i.go = trunc nuw i64 %i.gn to i32
  store i32 %i.go, ptr %i.fl, align 4, !tbaa !18
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, 256
  br i1 %exitcond.not.i.5, label %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.5, label %bb.g, !llvm.loop !1258

_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.5: ; preds = %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [136 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  store i32 3, ptr %2, align 8, !tbaa !1220
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !1224
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 136, ptr %i.d, align 8, !tbaa !1225
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef 66)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.034 = phi i32 [ 0, %bb.a ], [ %.3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 136)
  br label %bb.d

bb.c:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.au, label %bb.b, label %.loopexit, !llvm.loop !1590

bb.d:                                             ; preds = %bb.b, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit16
  %.133 = phi i32 [ %.034, %bb.b ], [ %.3, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit16 ] ; 4 uses
  %.01332 = phi i64 [ 0, %bb.b ], [ %i.as, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit16 ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01332
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13    ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 15                         ; 3 uses
  %i.i = lshr i32 %i.g, 4                         ; 2 uses
  %i.j = icmp samesign ult i32 %i.h, 9
  %i.k = zext i1 %i.j to i32
  %i.l = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.k) #38, !srcloc !367
  %.not.i.not = icmp eq i32 %i.l, 0
  br i1 %.not.i.not, label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit.thread25, label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit

_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit: ; preds = %bb.d
  %i.m = sub nuw nsw i32 8380421, %i.h
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = add nsw i64 %i.n, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.o, 63
  %i.p = sub nsw i32 4, %i.h
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.s = and i64 %i.r, %i.n
  %i.t = xor i64 %i.r, -1
  %i.u = and i64 %i.t, %i.q
  %i.v = or disjoint i64 %i.s, %i.u
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = add nsw i32 %.133, 1
  %i.y = sext i32 %.133 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  store i32 %i.w, ptr %i.z, align 4, !tbaa !18
  %i.aa = icmp slt i32 %.133, 255
  br i1 %i.aa, label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit.thread25, label %.thread

.thread:                                          ; preds = %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.loopexit

_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit.thread25: ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit
  %.229 = phi i32 [ %i.x, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit ], [ %.133, %bb.d ] ; 3 uses
  %i.ab = icmp ult i8 %i.f, -112
  %i.ac = zext i1 %i.ab to i32
  %i.ad = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ac) #38, !srcloc !367
  %.not.i14.not = icmp eq i32 %i.ad, 0
  br i1 %.not.i14.not, label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit16, label %bb.e

bb.e:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit.thread25
  %i.ae = sub nuw nsw i32 8380421, %i.i
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = add nsw i64 %i.af, -8380417
  %.neg.i.i.i.i.i15 = ashr i64 %i.ag, 63
  %i.ah = sub nsw i32 4, %i.i
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i15) #38, !srcloc !156 ; 2 uses
  %i.ak = and i64 %i.aj, %i.af
  %i.al = xor i64 %i.aj, -1
  %i.am = and i64 %i.al, %i.ai
  %i.an = or disjoint i64 %i.ak, %i.am
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = add nsw i32 %.229, 1
  %i.aq = sext i32 %.229 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !18
  br label %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit16

_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit16: ; preds = %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit.thread25, %bb.e
  %.3 = phi i32 [ %i.ap, %bb.e ], [ %.229, %_ZN5mldsa12_GLOBAL__N_123coefficient_from_nibbleILi4EEEbjPj.exit.thread25 ] ; 3 uses
  %i.as = add nuw nsw i64 %.01332, 1
  %i.at = icmp samesign ult i64 %.01332, 135
  %i.au = icmp slt i32 %.3, 256                   ; 2 uses
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %bb.d, label %bb.c, !llvm.loop !1591

.loopexit:                                        ; preds = %bb.c, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge39
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge39
  %.041 = phi i32 [ 256, %bb.a ], [ %i.a, %._crit_edge39 ] ; 2 uses
  %.02940 = phi i32 [ 1, %bb.a ], [ %i.g, %._crit_edge39 ] ; 3 uses
  %i.a = lshr i32 %.041, 1                        ; 3 uses
  %i.b = icmp sgt i32 %.02940, 0
  br i1 %i.b, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.c
  %i.c = and i32 %.041, 510
  %i.d = zext nneg i32 %i.c to i64
  %i.e = zext nneg i32 %i.a to i64                ; 2 uses
  %i.f = zext nneg i32 %.02940 to i64             ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %invariant.gep47 = getelementptr inbounds nuw [4 x i8], ptr @_ZN5mldsa12_GLOBAL__N_119kNTTRootsMontgomeryE, i64 %i.f
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  br i1 %.not, label %._crit_edge39, label %.lr.ph

._crit_edge39:                                    ; preds = %._crit_edge, %.lr.ph38, %bb.c
  %i.g = shl i32 %.02940, 1                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 256
  br i1 %i.h, label %bb.c, label %bb.b, !llvm.loop !1592

.lr.ph:                                           ; preds = %.lr.ph38, %._crit_edge
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %._crit_edge ], [ 0, %.lr.ph38 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph38 ] ; 3 uses
  %1 = add nuw nsw i64 %indvars.iv, %i.e
  %gep48 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep47, i64 %indvars.iv44
  %i.i = load i32, ptr %gep48, align 4, !tbaa !18
  %i.j = zext i32 %i.i to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.d
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %i.f
  br i1 %exitcond.not, label %._crit_edge39, label %.lr.ph, !llvm.loop !1593

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv42 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next43, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv42 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18   ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv42 ; 2 uses
  %i.m = load i32, ptr %gep, align 4, !tbaa !18
  %i.n = zext i32 %i.m to i64
  %i.o = mul nuw i64 %i.n, %i.j                   ; 2 uses
  %i.p = mul i64 %i.o, 4236238847
  %i.q = and i64 %i.p, 4294967295
  %i.r = mul nuw nsw i64 %i.q, 8380417
  %i.s = add i64 %i.r, %i.o
  %i.t = lshr i64 %i.s, 32                        ; 3 uses
  %i.u = add nsw i64 %i.t, -8380417
  %.neg.i.i.i.i = ashr i64 %i.u, 63
  %i.v = add nuw nsw i64 %i.t, 4286586879
  %i.w = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.x = and i64 %i.t, %i.w
  %i.y = xor i64 %i.w, -1
  %i.z = and i64 %i.v, %i.y
  %i.aa = or disjoint i64 %i.z, %i.x
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = add i32 %i.l, %i.ab                     ; 2 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = add nsw i64 %i.ad, -8380417
  %.neg.i.i.i = ashr i64 %i.ae, 63
  %i.af = add i32 %i.ac, -8380417
  %i.ag = zext i32 %i.af to i64
  %i.ah = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.ai = and i64 %i.ah, %i.ad
  %i.aj = xor i64 %i.ah, -1
  %i.ak = and i64 %i.ag, %i.aj
  %i.al = or disjoint i64 %i.ak, %i.ai
  %i.am = trunc nuw i64 %i.al to i32
  store i32 %i.am, ptr %i.k, align 4, !tbaa !18
  %i.an = add i32 %i.l, 8380417
  %i.ao = sub i32 %i.an, %i.ab                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = add nsw i64 %i.ap, -8380417
  %.neg.i.i.i.i33 = ashr i64 %i.aq, 63
  %i.ar = add i32 %i.ao, -8380417
  %i.as = zext i32 %i.ar to i64
  %i.at = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i33) #38, !srcloc !156 ; 2 uses
  %i.au = and i64 %i.at, %i.ap
  %i.av = xor i64 %i.at, -1
  %i.aw = and i64 %i.as, %i.av
  %i.ax = or disjoint i64 %i.aw, %i.au
  %i.ay = trunc nuw i64 %i.ax to i32
  store i32 %i.ay, ptr %gep, align 4, !tbaa !18
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next43, %1
  br i1 %i.az, label %bb.d, label %._crit_edge, !llvm.loop !1594
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge48
  %.03650 = phi i32 [ 256, %bb.a ], [ %i.a, %._crit_edge48 ] ; 2 uses
  %.03749 = phi i32 [ 1, %bb.a ], [ %.pre-phi, %._crit_edge48 ] ; 4 uses
  %i.a = lshr i32 %.03650, 1                      ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.._crit_edge48_crit_edge, label %.lr.ph47

.._crit_edge48_crit_edge:                         ; preds = %bb.b
  %.pre = shl i32 %.03749, 1
  br label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.b
  %reass.add = and i32 %.03650, 510
  %i.b = shl i32 %.03749, 1                       ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = sext i32 %.03749 to i64
  %i.e = zext nneg i32 %reass.add to i64
  %wide.trip.count62 = zext nneg i32 %i.a to i64
  %i.f = getelementptr [4 x i8], ptr @_ZN5mldsa12_GLOBAL__N_119kNTTRootsMontgomeryE, i64 %i.e
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.d
  br label %.lr.ph

._crit_edge48:                                    ; preds = %._crit_edge, %.._crit_edge48_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge48_crit_edge ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.g = icmp slt i32 %.pre-phi, 256
  br i1 %i.g, label %bb.b, label %.preheader, !llvm.loop !1595

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph47
  %indvars.iv57 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next58, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i32 [ %.03749, %.lr.ph47 ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.h = xor i64 %indvars.iv57, -1
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !18
  %i.k = sub i32 8380417, %i.j
  %i.l = zext i32 %i.k to i64
  %wide.trip.count = zext i32 %indvars.iv55 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.c
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %indvars.iv.next56 = add i32 %indvars.iv55, %i.b
  %exitcond63.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge48, label %.lr.ph, !llvm.loop !1596

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv52 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next53, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18   ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv52 ; 2 uses
  %i.o = load i32, ptr %gep, align 4, !tbaa !18   ; 2 uses
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add nsw i64 %i.q, -8380417
  %.neg.i.i.i = ashr i64 %i.r, 63
  %i.s = add i32 %i.p, -8380417
  %i.t = zext i32 %i.s to i64
  %i.u = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.v = and i64 %i.u, %i.q
  %i.w = xor i64 %i.u, -1
  %i.x = and i64 %i.t, %i.w
  %i.y = or disjoint i64 %i.x, %i.v
  %i.z = trunc nuw i64 %i.y to i32
  store i32 %i.z, ptr %i.m, align 4, !tbaa !18
  %i.aa = add i32 %i.n, 8380417
  %i.ab = sub i32 %i.aa, %i.o
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.l                 ; 2 uses
  %i.ae = mul i64 %i.ad, 4236238847
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = mul nuw nsw i64 %i.af, 8380417
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = lshr i64 %i.ah, 32                      ; 3 uses
  %i.aj = add nsw i64 %i.ai, -8380417
  %.neg.i.i.i.i = ashr i64 %i.aj, 63
  %i.ak = add nuw nsw i64 %i.ai, 4286586879
  %i.al = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.am = and i64 %i.ai, %i.al
  %i.an = xor i64 %i.al, -1
  %i.ao = and i64 %i.ak, %i.an
  %i.ap = or disjoint i64 %i.ao, %i.am
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %gep, align 4, !tbaa !18
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !1597

bb.d:                                             ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %._crit_edge48, %.preheader
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.preheader ], [ 0, %._crit_edge48 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv64 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 41978
  %i.av = mul nuw nsw i64 %i.at, 8395782
  %i.aw = and i64 %i.av, 4294967294
  %i.ax = mul nuw nsw i64 %i.aw, 8380417
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  %i.az = lshr i64 %i.ay, 32                      ; 3 uses
  %i.ba = add nsw i64 %i.az, -8380417
  %.neg.i.i.i.i42 = ashr i64 %i.ba, 63
  %i.bb = add nuw nsw i64 %i.az, 4286586879
  %i.bc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i42) #38, !srcloc !156 ; 2 uses
  %i.bd = and i64 %i.az, %i.bc
  %i.be = xor i64 %i.bc, -1
  %i.bf = and i64 %i.bb, %i.be
  %i.bg = or disjoint i64 %i.bf, %i.bd
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %i.ar, align 4, !tbaa !18
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 256
  br i1 %exitcond67.not, label %bb.d, label %.preheader, !llvm.loop !1598
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 28 uses
  %i.c = alloca [640 x i8], align 16              ; 20 uses
  %i.d = alloca [66 x i8], align 16               ; 9 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %10 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 20 uses
  %i.f = alloca [64 x i8], align 16               ; 4 uses
  %i.g = alloca [768 x i8], align 16              ; 10 uses
  %11 = alloca %"struct.mldsa::(anonymous namespace)::scalar", align 4 ; 12 uses
  %12 = alloca %struct.cbb_st, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.h, i8 0, i64 224, i1 false)
  store i32 3, ptr %10, align 8, !tbaa !1220
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !1224
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 208 ; 3 uses
  store i64 136, ptr %i.j, align 8, !tbaa !1225
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %10, ptr noundef nonnull %i.k, i64 noundef 64)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %10, ptr noundef %4, i64 noundef %5)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %10, ptr noundef %6, i64 noundef %7)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %10, ptr noundef %2, i64 noundef %3)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %10, ptr noundef nonnull %i.e, i64 noundef 64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.h, i8 0, i64 224, i1 false)
  store i32 3, ptr %10, align 8, !tbaa !1220
  store i32 0, ptr %i.i, align 4, !tbaa !1224
  store i64 136, ptr %i.j, align 8, !tbaa !1225
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %10, ptr noundef nonnull %i.l, i64 noundef 32)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %10, ptr noundef %8, i64 noundef 32)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %10, ptr noundef nonnull %i.e, i64 noundef 64)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %10, ptr noundef nonnull %i.f, i64 noundef 64)
  %i.m = tail call ptr @OPENSSL_malloc(i64 noundef 88112) #36 ; 62 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS1_11private_keyIXT_EXT0_EEEPKhmS9_mS9_mS9_E9values_stNS1_11DeleterFreeISA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 11312 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5120) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(5120) %i.o, i64 5120, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12336 ; 2 uses
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 13360 ; 2 uses
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 14384 ; 2 uses
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 15408 ; 2 uses
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16432 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6144) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(6144) %i.u, i64 6144, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 17456
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 18480
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 19504
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 20528
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 21552
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 22576 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 11392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6144) %i.aa, ptr noundef nonnull readonly align 1 dereferenceable(6144) %i.ab, i64 6144, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 23600
end_hunk_0
