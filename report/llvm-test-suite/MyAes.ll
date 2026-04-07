begin_hunk_0_@_ZThn8_N7NCrypto12CAesCbcCoder6SetKeyEPKhj:bb.a
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 52
  tail call void %i.f(ptr noundef nonnull %i.k, ptr noundef %1, i32 noundef %2)
  br label %_ZN7NCrypto12CAesCbcCoder6SetKeyEPKhj.exit

_ZN7NCrypto12CAesCbcCoder6SetKeyEPKhj.exit:       ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@_ZN7NCrypto14CAesCbcEncoderC2Ev:bb.a
  store i32 %i.h, ptr %i.i, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN7NCrypto14CAesCbcEncoderE, i64 16), ptr %0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7NCrypto14CAesCbcEncoderE, i64 104), ptr %i.a, align 8, !tbaa !10
  %i.j = load ptr, ptr @g_AesCbc_Encode, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_1
begin_hunk_2_@_ZN7NCrypto14CAesCbcDecoderC2Ev:bb.a
  store i32 %i.h, ptr %i.i, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN7NCrypto14CAesCbcDecoderE, i64 16), ptr %0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7NCrypto14CAesCbcDecoderE, i64 104), ptr %i.a, align 8, !tbaa !10
  %i.j = load ptr, ptr @g_AesCbc_Decode, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_2
begin_hunk_3_@Aes_SetKey_Dec
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7NCrypto12CAesCbcCoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !21      ; 2 uses
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !21
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !21
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !21
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !21
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !21
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !21
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !21
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !21
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !21
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !21
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !21
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !21
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !21
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !21
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !21
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !21
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !21
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !21
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !21
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !21
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !21
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !21
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !21
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !21
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !21
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICryptoProperties, align 4, !tbaa !21
  %.not.i6 = icmp eq i8 %i.a, %i.av
  br i1 %.not.i6, label %bb.p, label %_ZeqRK4GUIDS1_.exit23.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 1), align 1, !tbaa !21
  %.not.1.i7 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i7, label %bb.q, label %_ZeqRK4GUIDS1_.exit23.thread

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !21
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 2), align 2, !tbaa !21
  %.not.2.i8 = icmp eq i8 %i.ba, %i.bb
  br i1 %.not.2.i8, label %bb.r, label %_ZeqRK4GUIDS1_.exit23.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !21
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 3), align 1, !tbaa !21
  %.not.3.i9 = icmp eq i8 %i.bd, %i.be
  br i1 %.not.3.i9, label %bb.s, label %_ZeqRK4GUIDS1_.exit23.thread

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !21
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 4), align 4, !tbaa !21
  %.not.4.i10 = icmp eq i8 %i.bg, %i.bh
  br i1 %.not.4.i10, label %bb.t, label %_ZeqRK4GUIDS1_.exit23.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !21
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 5), align 1, !tbaa !21
  %.not.5.i11 = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.5.i11, label %bb.u, label %_ZeqRK4GUIDS1_.exit23.thread

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !21
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 6), align 2, !tbaa !21
  %.not.6.i12 = icmp eq i8 %i.bm, %i.bn
  br i1 %.not.6.i12, label %bb.v, label %_ZeqRK4GUIDS1_.exit23.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !21
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 7), align 1, !tbaa !21
  %.not.7.i13 = icmp eq i8 %i.bp, %i.bq
  br i1 %.not.7.i13, label %bb.w, label %_ZeqRK4GUIDS1_.exit23.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !21
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 8), align 4, !tbaa !21
  %.not.8.i14 = icmp eq i8 %i.bs, %i.bt
  br i1 %.not.8.i14, label %bb.x, label %_ZeqRK4GUIDS1_.exit23.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 9), align 1, !tbaa !21
  %.not.9.i15 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.9.i15, label %bb.y, label %_ZeqRK4GUIDS1_.exit23.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !21
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 10), align 2, !tbaa !21
  %.not.10.i16 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.10.i16, label %bb.z, label %_ZeqRK4GUIDS1_.exit23.thread

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 11), align 1, !tbaa !21
  %.not.11.i17 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not.11.i17, label %bb.aa, label %_ZeqRK4GUIDS1_.exit23.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !21
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 12), align 4, !tbaa !21
  %.not.12.i18 = icmp eq i8 %i.ce, %i.cf
  br i1 %.not.12.i18, label %bb.ab, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !21
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 13), align 1, !tbaa !21
  %.not.13.i19 = icmp eq i8 %i.ch, %i.ci
  br i1 %.not.13.i19, label %bb.ac, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !21
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 14), align 2, !tbaa !21
  %.not.14.i20 = icmp eq i8 %i.ck, %i.cl
  br i1 %.not.14.i20, label %_ZeqRK4GUIDS1_.exit23, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23:                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICryptoProperties, i64 15), align 1, !tbaa !21
  %.not.15.i21.not = icmp eq i8 %i.cn, %i.co
  br i1 %.not.15.i21.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit23, %_ZeqRK4GUIDS1_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %2, align 8, !tbaa !20
  %i.cq = load ptr, ptr %0, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
end_hunk_3
begin_hunk_4_@_ZThn8_N7NCrypto12CAesCbcCoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(328) %i.d) #10
  br label %_ZN7NCrypto12CAesCbcCoder7ReleaseEv.exit

_ZN7NCrypto12CAesCbcCoder7ReleaseEv.exit:         ; preds = %bb.a, %bb.b
end_hunk_4
begin_hunk_5_@_GLOBAL__sub_I_MyAes.cpp:bb.a
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!13, !17, i64 24}
!19 = !{!13, !17, i64 32}
!20 = !{!17, !17, i64 0}
!21 = !{!6, !6, i64 0}
end_hunk_5
