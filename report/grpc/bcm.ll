Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@BCM_mldsa65_parse_public_key:bb.a
  %i.m = lshr i32 %.0.copyload.i.i.i, 20
  %i.n = and i32 %i.m, 1023
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.n, ptr %i.o, align 4, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !80
  %i.r = zext i8 %i.q to i32
  %i.s = call i32 @llvm.fshl.i32(i32 %i.r, i32 %.0.copyload.i.i.i, i32 2)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !82
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.i.i, label %bb.e, !llvm.loop !37

_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.i.i: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.i.i
  %indvars.iv.i.1.i.i = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.i.i ], [ %indvars.iv.next.i.1.i.i, %bb.f ] ; 3 uses
  %i.w = mul nuw nsw i64 %indvars.iv.i.1.i.i, 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  %.0.copyload.i.1.i.i = load i32, ptr %i.x, align 1 ; 4 uses
  %i.y = and i32 %.0.copyload.i.1.i.i, 1023
  %.idx.i.1.i.i = shl nuw nsw i64 %indvars.iv.i.1.i.i, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.1.i.i ; 4 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !82
  %i.aa = lshr i32 %.0.copyload.i.1.i.i, 10
  %i.ab = and i32 %i.aa, 1023
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !82
  %i.ad = lshr i32 %.0.copyload.i.1.i.i, 20
  %i.ae = and i32 %i.ad, 1023
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !80
  %i.ai = zext i8 %i.ah to i32
  %i.aj = call i32 @llvm.fshl.i32(i32 %i.ai, i32 %.0.copyload.i.1.i.i, i32 2)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !82
  %indvars.iv.next.i.1.i.i = add nuw nsw i64 %indvars.iv.i.1.i.i, 1 ; 2 uses
  %exitcond.not.i.1.i.i = icmp eq i64 %indvars.iv.next.i.1.i.i, 64
  br i1 %exitcond.not.i.1.i.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.1.i.i, label %bb.f, !llvm.loop !37

_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.1.i.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.1.i.i
  %indvars.iv.i.2.i.i = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.1.i.i ], [ %indvars.iv.next.i.2.i.i, %bb.g ] ; 3 uses
  %i.an = mul nuw nsw i64 %indvars.iv.i.2.i.i, 5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an ; 2 uses
  %.0.copyload.i.2.i.i = load i32, ptr %i.ao, align 1 ; 4 uses
  %i.ap = and i32 %.0.copyload.i.2.i.i, 1023
  %.idx.i.2.i.i = shl nuw nsw i64 %indvars.iv.i.2.i.i, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.2.i.i ; 4 uses
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !82
  %i.ar = lshr i32 %.0.copyload.i.2.i.i, 10
  %i.as = and i32 %i.ar, 1023
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !82
  %i.au = lshr i32 %.0.copyload.i.2.i.i, 20
  %i.av = and i32 %i.au, 1023
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !82
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = zext i8 %i.ay to i32
  %i.ba = call i32 @llvm.fshl.i32(i32 %i.az, i32 %.0.copyload.i.2.i.i, i32 2)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !82
  %indvars.iv.next.i.2.i.i = add nuw nsw i64 %indvars.iv.i.2.i.i, 1 ; 2 uses
  %exitcond.not.i.2.i.i = icmp eq i64 %indvars.iv.next.i.2.i.i, 64
  br i1 %exitcond.not.i.2.i.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.2.i.i, label %bb.g, !llvm.loop !37

_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.2.i.i: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.2.i.i
  %indvars.iv.i.3.i.i = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.2.i.i ], [ %indvars.iv.next.i.3.i.i, %bb.h ] ; 3 uses
  %i.be = mul nuw nsw i64 %indvars.iv.i.3.i.i, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be ; 2 uses
  %.0.copyload.i.3.i.i = load i32, ptr %i.bf, align 1 ; 4 uses
  %i.bg = and i32 %.0.copyload.i.3.i.i, 1023
  %.idx.i.3.i.i = shl nuw nsw i64 %indvars.iv.i.3.i.i, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.3.i.i ; 4 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !82
  %i.bi = lshr i32 %.0.copyload.i.3.i.i, 10
  %i.bj = and i32 %i.bi, 1023
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !82
  %i.bl = lshr i32 %.0.copyload.i.3.i.i, 20
  %i.bm = and i32 %i.bl, 1023
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !80
  %i.bq = zext i8 %i.bp to i32
  %i.br = call i32 @llvm.fshl.i32(i32 %i.bq, i32 %.0.copyload.i.3.i.i, i32 2)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !82
  %indvars.iv.next.i.3.i.i = add nuw nsw i64 %indvars.iv.i.3.i.i, 1 ; 2 uses
  %exitcond.not.i.3.i.i = icmp eq i64 %indvars.iv.next.i.3.i.i, 64
  br i1 %exitcond.not.i.3.i.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.3.i.i, label %bb.h, !llvm.loop !37

_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.3.i.i: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4128
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.3.i.i
  %indvars.iv.i.4.i.i = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.3.i.i ], [ %indvars.iv.next.i.4.i.i, %bb.i ] ; 3 uses
  %i.bv = mul nuw nsw i64 %indvars.iv.i.4.i.i, 5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv ; 2 uses
  %.0.copyload.i.4.i.i = load i32, ptr %i.bw, align 1 ; 4 uses
  %i.bx = and i32 %.0.copyload.i.4.i.i, 1023
  %.idx.i.4.i.i = shl nuw nsw i64 %indvars.iv.i.4.i.i, 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.4.i.i ; 4 uses
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !82
  %i.bz = lshr i32 %.0.copyload.i.4.i.i, 10
  %i.ca = and i32 %i.bz, 1023
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !82
  %i.cc = lshr i32 %.0.copyload.i.4.i.i, 20
  %i.cd = and i32 %i.cc, 1023
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !80
  %i.ch = zext i8 %i.cg to i32
  %i.ci = call i32 @llvm.fshl.i32(i32 %i.ch, i32 %.0.copyload.i.4.i.i, i32 2)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !82
  %indvars.iv.next.i.4.i.i = add nuw nsw i64 %indvars.iv.i.4.i.i, 1 ; 2 uses
  %exitcond.not.i.4.i.i = icmp eq i64 %indvars.iv.next.i.4.i.i, 64
  br i1 %exitcond.not.i.4.i.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.4.i.i, label %bb.i, !llvm.loop !37

_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.4.i.i: ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5152
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.4.i.i
  %indvars.iv.i.5.i.i = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_decode_10EPNS0_6scalarEPKh.exit.4.i.i ], [ %indvars.iv.next.i.5.i.i, %bb.j ] ; 3 uses
  %i.cm = mul nuw nsw i64 %indvars.iv.i.5.i.i, 5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm ; 2 uses
  %.0.copyload.i.5.i.i = load i32, ptr %i.cn, align 1 ; 4 uses
  %i.co = and i32 %.0.copyload.i.5.i.i, 1023
  %.idx.i.5.i.i = shl nuw nsw i64 %indvars.iv.i.5.i.i, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.5.i.i ; 4 uses
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !82
  %i.cq = lshr i32 %.0.copyload.i.5.i.i, 10
  %i.cr = and i32 %i.cq, 1023
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !82
  %i.ct = lshr i32 %.0.copyload.i.5.i.i, 20
  %i.cu = and i32 %i.ct, 1023
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !80
  %i.cy = zext i8 %i.cx to i32
  %i.cz = call i32 @llvm.fshl.i32(i32 %i.cy, i32 %.0.copyload.i.5.i.i, i32 2)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !82
  %indvars.iv.next.i.5.i.i = add nuw nsw i64 %indvars.iv.i.5.i.i, 1 ; 2 uses
  %exitcond.not.i.5.i.i = icmp eq i64 %indvars.iv.next.i.5.i.i, 64
  br i1 %exitcond.not.i.5.i.i, label %_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit, label %bb.j, !llvm.loop !37

_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit: ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 6176
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.dc, i8 0, i64 224, i1 false)
  store i32 3, ptr %2, align 8, !tbaa !320
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.dd, align 4, !tbaa !321
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 136, ptr %i.de, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef readonly %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.db, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.sink.split

_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.sink.split: ; preds = %bb.b, %bb.c, %_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit
  %.ph = phi i32 [ 0, %_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit ], [ 2, %bb.c ], [ 2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread

_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread: ; preds = %_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.sink.split, %bb.a
  %i.df = phi i32 [ 2, %bb.a ], [ %.ph, %_ZN5mldsa12_GLOBAL__N_122mldsa_parse_public_keyILi6EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.sink.split ]
  ret i32 %i.df
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_marshal_private_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_marshal_private_keyILi6ELi5EEEiP6cbb_stPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef %0, ptr noundef %1)
  %2 = shl nuw nsw i32 %i.a, 1
  %3 = xor i32 %2, 2
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_marshal_private_keyILi6ELi5EEEiP6cbb_stPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef %1, i64 noundef 32) #36
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = tail call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef 32) #36
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = tail call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef 64) #36
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.i = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 640) #36
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !300  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %.preheader34.i41

.preheader34.i41:                                 ; preds = %.preheader34.i41, %bb.e
  %indvars.iv.i10.i42 = phi i64 [ %indvars.iv.next.i13.i46, %.preheader34.i41 ], [ 0, %bb.e ] ; 3 uses
  %.idx.i11.i43 = shl nuw nsw i64 %indvars.iv.i10.i42, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i11.i43 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !82   ; 2 uses
  %i.n = sub i32 8380421, %i.m
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = add nsw i64 %i.o, -8380417
  %.neg.i.i.i.i.i12.i44 = ashr i64 %i.p, 63
  %i.q = sub i32 4, %i.m
  %i.r = zext i32 %i.q to i64
  %i.s = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i12.i44) #38, !srcloc !108 ; 2 uses
  %i.t = and i64 %i.s, %i.o
  %i.u = xor i64 %i.s, -1
  %i.v = and i64 %i.r, %i.u
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82   ; 2 uses
  %i.aa = sub i32 8380421, %i.z
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = add nsw i64 %i.ab, -8380417
  %.neg.i.i.i.i9.i.i45 = ashr i64 %i.ac, 63
  %i.ad = sub i32 4, %i.z
  %i.ae = zext i32 %i.ad to i64
  %i.af = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i9.i.i45) #38, !srcloc !108 ; 2 uses
  %i.ag = and i64 %i.af, %i.ab
  %i.ah = xor i64 %i.af, -1
  %i.ai = and i64 %i.ae, %i.ah
  %i.aj = or disjoint i64 %i.ag, %i.ai
  %i.ak = trunc i64 %i.aj to i8
  %i.al = shl i8 %i.ak, 4
  %i.am = or i8 %i.al, %i.x
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i10.i42
  store i8 %i.am, ptr %i.an, align 1, !tbaa !80
  %indvars.iv.next.i13.i46 = add nuw nsw i64 %indvars.iv.i10.i42, 1 ; 2 uses
  %exitcond.not.i14.i47 = icmp eq i64 %indvars.iv.next.i13.i46, 128
  br i1 %exitcond.not.i14.i47, label %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit48, label %.preheader34.i41, !llvm.loop !38

_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit48: ; preds = %.preheader34.i41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1152
  br label %.preheader34.i33

.preheader34.i33:                                 ; preds = %.preheader34.i33, %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit48
  %indvars.iv.i10.i34 = phi i64 [ %indvars.iv.next.i13.i38, %.preheader34.i33 ], [ 0, %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit48 ] ; 3 uses
  %.idx.i11.i35 = shl nuw nsw i64 %indvars.iv.i10.i34, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i11.i35 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !82 ; 2 uses
  %i.as = sub i32 8380421, %i.ar
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = add nsw i64 %i.at, -8380417
  %.neg.i.i.i.i.i12.i36 = ashr i64 %i.au, 63
  %i.av = sub i32 4, %i.ar
  %i.aw = zext i32 %i.av to i64
  %i.ax = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i12.i36) #38, !srcloc !108 ; 2 uses
  %i.ay = and i64 %i.ax, %i.at
  %i.az = xor i64 %i.ax, -1
  %i.ba = and i64 %i.aw, %i.az
  %i.bb = or disjoint i64 %i.ay, %i.ba
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !82 ; 2 uses
  %i.bf = sub i32 8380421, %i.be
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = add nsw i64 %i.bg, -8380417
  %.neg.i.i.i.i9.i.i37 = ashr i64 %i.bh, 63
  %i.bi = sub i32 4, %i.be
  %i.bj = zext i32 %i.bi to i64
  %i.bk = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i9.i.i37) #38, !srcloc !108 ; 2 uses
  %i.bl = and i64 %i.bk, %i.bg
  %i.bm = xor i64 %i.bk, -1
  %i.bn = and i64 %i.bj, %i.bm
  %i.bo = or disjoint i64 %i.bl, %i.bn
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = shl i8 %i.bp, 4
  %i.br = or i8 %i.bq, %i.bc
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i10.i34
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !80
  %indvars.iv.next.i13.i38 = add nuw nsw i64 %indvars.iv.i10.i34, 1 ; 2 uses
  %exitcond.not.i14.i39 = icmp eq i64 %indvars.iv.next.i13.i38, 128
  br i1 %exitcond.not.i14.i39, label %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit40, label %.preheader34.i33, !llvm.loop !38

_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit40: ; preds = %.preheader34.i33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 2176
  br label %.preheader34.i25

.preheader34.i25:                                 ; preds = %.preheader34.i25, %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit40
  %indvars.iv.i10.i26 = phi i64 [ %indvars.iv.next.i13.i30, %.preheader34.i25 ], [ 0, %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit40 ] ; 3 uses
  %.idx.i11.i27 = shl nuw nsw i64 %indvars.iv.i10.i26, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i11.i27 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !82 ; 2 uses
  %i.bx = sub i32 8380421, %i.bw
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = add nsw i64 %i.by, -8380417
  %.neg.i.i.i.i.i12.i28 = ashr i64 %i.bz, 63
  %i.ca = sub i32 4, %i.bw
  %i.cb = zext i32 %i.ca to i64
  %i.cc = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i12.i28) #38, !srcloc !108 ; 2 uses
  %i.cd = and i64 %i.cc, %i.by
  %i.ce = xor i64 %i.cc, -1
  %i.cf = and i64 %i.cb, %i.ce
  %i.cg = or disjoint i64 %i.cd, %i.cf
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !82 ; 2 uses
  %i.ck = sub i32 8380421, %i.cj
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = add nsw i64 %i.cl, -8380417
  %.neg.i.i.i.i9.i.i29 = ashr i64 %i.cm, 63
  %i.cn = sub i32 4, %i.cj
  %i.co = zext i32 %i.cn to i64
  %i.cp = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i9.i.i29) #38, !srcloc !108 ; 2 uses
  %i.cq = and i64 %i.cp, %i.cl
  %i.cr = xor i64 %i.cp, -1
  %i.cs = and i64 %i.co, %i.cr
  %i.ct = or disjoint i64 %i.cq, %i.cs
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = shl i8 %i.cu, 4
  %i.cw = or i8 %i.cv, %i.ch
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.i10.i26
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !80
  %indvars.iv.next.i13.i30 = add nuw nsw i64 %indvars.iv.i10.i26, 1 ; 2 uses
  %exitcond.not.i14.i31 = icmp eq i64 %indvars.iv.next.i13.i30, 128
  br i1 %exitcond.not.i14.i31, label %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit32, label %.preheader34.i25, !llvm.loop !38

_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit32: ; preds = %.preheader34.i25
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 3200
  br label %.preheader34.i17

.preheader34.i17:                                 ; preds = %.preheader34.i17, %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit32
  %indvars.iv.i10.i18 = phi i64 [ %indvars.iv.next.i13.i22, %.preheader34.i17 ], [ 0, %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit32 ] ; 3 uses
  %.idx.i11.i19 = shl nuw nsw i64 %indvars.iv.i10.i18, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i11.i19 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !82 ; 2 uses
  %i.dc = sub i32 8380421, %i.db
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = add nsw i64 %i.dd, -8380417
  %.neg.i.i.i.i.i12.i20 = ashr i64 %i.de, 63
  %i.df = sub i32 4, %i.db
  %i.dg = zext i32 %i.df to i64
  %i.dh = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i12.i20) #38, !srcloc !108 ; 2 uses
  %i.di = and i64 %i.dh, %i.dd
  %i.dj = xor i64 %i.dh, -1
  %i.dk = and i64 %i.dg, %i.dj
  %i.dl = or disjoint i64 %i.di, %i.dk
  %i.dm = trunc i64 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !82 ; 2 uses
  %i.dp = sub i32 8380421, %i.do
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = add nsw i64 %i.dq, -8380417
  %.neg.i.i.i.i9.i.i21 = ashr i64 %i.dr, 63
  %i.ds = sub i32 4, %i.do
  %i.dt = zext i32 %i.ds to i64
  %i.du = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i9.i.i21) #38, !srcloc !108 ; 2 uses
  %i.dv = and i64 %i.du, %i.dq
  %i.dw = xor i64 %i.du, -1
  %i.dx = and i64 %i.dt, %i.dw
  %i.dy = or disjoint i64 %i.dv, %i.dx
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = shl i8 %i.dz, 4
  %i.eb = or i8 %i.ea, %i.dm
end_hunk_0
begin_hunk_1_@_ZN5mldsa12_GLOBAL__N_125mldsa_marshal_private_keyILi6ELi5EEEiP6cbb_stPKNS0_11private_keyIXT_EXT0_EEE:bb.a
  %i.mn = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2496) #36
  %.not16 = icmp eq i32 %i.mn, 0
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit56
  %i.mo = load ptr, ptr %i.c, align 8, !tbaa !300 ; 6 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 11392
  call fastcc void @_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij(ptr noundef %i.mo, ptr noundef nonnull readonly %i.mp, i32 noundef 13)
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 416
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 12416
  call fastcc void @_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij(ptr noundef nonnull %i.mq, ptr noundef nonnull readonly %i.mr, i32 noundef 13)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 832
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 13440
  call fastcc void @_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij(ptr noundef nonnull %i.ms, ptr noundef nonnull readonly %i.mt, i32 noundef 13)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 1248
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 14464
  call fastcc void @_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij(ptr noundef nonnull %i.mu, ptr noundef nonnull readonly %i.mv, i32 noundef 13)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 1664
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 15488
  call fastcc void @_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij(ptr noundef nonnull %i.mw, ptr noundef nonnull readonly %i.mx, i32 noundef 13)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 2080
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 16512
  call fastcc void @_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij(ptr noundef nonnull %i.my, ptr noundef nonnull readonly %i.mz, i32 noundef 13)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit56, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.i

bb.i:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit, %bb.h
  %.1 = phi i32 [ %.0, %bb.h ], [ 0, %_ZN5mldsa12_GLOBAL__N_120scalar_encode_signedEPhPKNS0_6scalarEij.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.2 = phi i32 [ %.1, %bb.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.j
  %.3 = phi i32 [ %.2, %bb.j ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_parse_private_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 5 uses
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %4 = alloca %struct.cbs_st, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = tail call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef %0, i64 noundef 32) #36
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 32) #36
  %.not12.i = icmp eq i32 %i.c, 0
  br i1 %.not12.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = tail call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef 64) #36
  %.not13.i = icmp eq i32 %i.e, 0
  br i1 %.not13.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @CBS_get_bytes(ptr noundef %1, ptr noundef nonnull %2, i64 noundef 640) #36
  %.not14.i = icmp eq i32 %i.f, 0
  br i1 %.not14.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %2, align 8, !tbaa !327    ; 5 uses
  %i.i = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_120scalar_decode_signedEPNS0_6scalarEPKhij(ptr noundef nonnull %i.g, ptr noundef readonly %i.h, i32 noundef 4)
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.l = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_120scalar_decode_signedEPNS0_6scalarEPKhij(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %i.k, i32 noundef 4)
  %.not.1.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.1.i.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.o = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_120scalar_decode_signedEPNS0_6scalarEPKhij(ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i32 noundef 4)
  %.not.2.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.2.i.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.r = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_120scalar_decode_signedEPNS0_6scalarEPKhij(ptr noundef nonnull %i.p, ptr noundef nonnull readonly %i.q, i32 noundef 4)
  %.not.3.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.3.i.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %_ZN5mldsa12_GLOBAL__N_120vector_decode_signedILi5EEEiPNS0_6vectorIXT_EEEPKhij.exit.i

_ZN5mldsa12_GLOBAL__N_120vector_decode_signedILi5EEEiPNS0_6vectorIXT_EEEPKhij.exit.i: ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4224
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.u = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_120scalar_decode_signedEPNS0_6scalarEPKhij(ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i32 noundef 4)
  %.not15.i = icmp eq i32 %i.u, 0
  br i1 %.not15.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_120vector_decode_signedILi5EEEiPNS0_6vectorIXT_EEEPKhij.exit.i
  %i.v = call i32 @CBS_get_bytes(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 768) #36
  %.not16.i = icmp eq i32 %i.v, 0
  br i1 %.not16.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5248
  %i.x = load ptr, ptr %3, align 8, !tbaa !327
  %i.y = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_120vector_decode_signedILi6EEEiPNS0_6vectorIXT_EEEPKhij(ptr noundef nonnull %i.w, ptr noundef %i.x, i32 noundef 4)
  %.not17.i = icmp eq i32 %i.y, 0
  br i1 %.not17.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = call i32 @CBS_get_bytes(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 2496) #36
  %.not18.i = icmp eq i32 %i.z, 0
  br i1 %.not18.i, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, label %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit

_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread: ; preds = %bb.a, %bb.k, %bb.j, %bb.i, %_ZN5mldsa12_GLOBAL__N_120vector_decode_signedILi5EEEiPNS0_6vectorIXT_EEEPKhij.exit.i, %bb.d, %bb.c, %bb.b, %bb.e, %bb.h, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %.thread

_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit: ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 11392
  %i.ab = load ptr, ptr %4, align 8, !tbaa !327
  %i.ac = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_120vector_decode_signedILi6EEEiPNS0_6vectorIXT_EEEPKhij(ptr noundef nonnull %i.aa, ptr noundef %i.ab, i32 noundef 13)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !326
  %.fr = freeze i64 %i.ae
  %.not8 = icmp eq i64 %.fr, 0
  br i1 %.not8, label %bb.m, label %.thread

.thread:                                          ; preds = %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit.thread, %_ZN5mldsa12_GLOBAL__N_123mldsa_parse_private_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEEP6cbs_st.exit, %bb.l
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %i.af = phi i32 [ 2, %.thread ], [ 0, %bb.l ]
  ret i32 %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_check_key_fips(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3309 x i8], align 16             ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %1 = alloca %"struct.mldsa::(anonymous namespace)::public_key", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.c = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %1, ptr noundef readonly %0)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.a, ptr noundef readonly %0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b)
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.c

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit: ; preds = %bb.b
  %i.e = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i1 = icmp eq i32 %i.e, 0
  br i1 %.not.i1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit
  br label %bb.d

bb.d:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit, %bb.c
  %i.f = phi i32 [ 2, %bb.c ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit ]
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 1, 3) i32 @BCM_mldsa65_generate_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %1, i64 noundef 32, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  %i.b = tail call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef %0, ptr noundef %2, ptr noundef readonly %1)
  %3 = sub nuw nsw i32 2, %i.b
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 1, 3) i32 @BCM_mldsa65_generate_key_external_entropy(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2)
  %3 = sub nuw nsw i32 2, %i.a
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 1, 3) i32 @BCM_mldsa65_private_key_from_seed(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [1952 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef readonly %1)
  %2 = sub nuw nsw i32 2, %i.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %2
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_generate_key_fips(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3309 x i8], align 16             ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %3 = alloca %"struct.mldsa::(anonymous namespace)::public_key", align 4 ; 5 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %BCM_mldsa65_check_key_fips.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %1, i64 noundef 32, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  %i.f = tail call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef readonly %1)
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %BCM_mldsa65_check_key_fips.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.g = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %3, ptr noundef nonnull readonly %2)
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %2, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b)
  %.not2.i.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.e

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i: ; preds = %bb.d
  %i.i = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i1.i = icmp eq i32 %i.i, 0
  br i1 %.not.i1.i, label %bb.e, label %BCM_mldsa65_check_key_fips.exit

bb.e:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i
  br label %BCM_mldsa65_check_key_fips.exit

BCM_mldsa65_check_key_fips.exit:                  ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.b ], [ 2, %bb.a ], [ 2, %bb.e ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_generate_key_external_entropy_fips(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3309 x i8], align 16             ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %3 = alloca %"struct.mldsa::(anonymous namespace)::public_key", align 4 ; 5 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %BCM_mldsa65_check_key_fips.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef readonly %2)
  %.not.i.i.a = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.a, label %BCM_mldsa65_check_key_fips.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.f = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %3, ptr noundef nonnull readonly %1)
  %.not.i.i9 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i9, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b)
  %.not2.i.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.e

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i: ; preds = %bb.d
  %i.h = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i1.i = icmp eq i32 %i.h, 0
  br i1 %.not.i1.i, label %bb.e, label %BCM_mldsa65_check_key_fips.exit

bb.e:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i
  br label %BCM_mldsa65_check_key_fips.exit

BCM_mldsa65_check_key_fips.exit:                  ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.b ], [ 2, %bb.a ], [ 2, %bb.e ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_private_key_from_seed_fips(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3309 x i8], align 16             ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %2 = alloca %"struct.mldsa::(anonymous namespace)::public_key", align 4 ; 5 uses
  %i.c = alloca [1952 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.d = call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef readonly %1)
  %.not.i.i.a = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.a, label %BCM_mldsa65_check_key_fips.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.e = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %2, ptr noundef readonly %0)
  %.not.i.i3 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i3, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.a, ptr noundef readonly %0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b)
  %.not2.i.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.d

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i: ; preds = %bb.c
  %i.g = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i1.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i, label %bb.d, label %BCM_mldsa65_check_key_fips.exit

bb.d:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i
  br label %BCM_mldsa65_check_key_fips.exit

BCM_mldsa65_check_key_fips.exit:                  ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 2, %bb.d ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi6ELi5EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_public_from_private(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef %0, ptr noundef %1)
  %2 = shl nuw nsw i32 %i.a, 1
  %3 = xor i32 %2, 2
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 48128) #36 ; 16 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS1_10public_keyIXT_EEEPKNS1_11private_keyIXT_EXT0_EEEE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.c, i64 64, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_113matrix_expandILi6ELi5EEEvPNS0_6matrixIXT_EXT0_EEEPKh(ptr noundef nonnull %i.a, ptr noundef nonnull %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30720 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5120) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(5120) %i.e, i64 5120, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 31744
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32768
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 33792
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 34816
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 35840 ; 5 uses
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_111matrix_multILi6ELi5EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 36864
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 37888
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 38912
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 39936
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40960
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 5248
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110vector_addILi6EEEvPNS0_6vectorIXT_EEEPKS3_S6_(ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 41984
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi6EEEvPNS0_6vectorIXT_EEES4_PKS3_(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.j)
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #36
  br label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS1_10public_keyIXT_EEEPKNS1_11private_keyIXT_EXT0_EEEE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit

_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS1_10public_keyIXT_EEEPKNS1_11private_keyIXT_EXT0_EEEE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.021
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_sign_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7, ptr noundef readonly %8)
  %9 = shl nuw nsw i32 %i.a, 1
  %10 = xor i32 %9, 2
  ret i32 %10
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 4) i32 @BCM_mldsa65_sign(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = icmp ult i64 %5, 256
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.d = call i32 @BCM_rand_bytes_with_additional_data(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = trunc nuw i64 %5 to i8
  store i8 %i.f, ptr %i.e, align 1, !tbaa !80
  %i.g = call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef nonnull readonly %i.b, i64 noundef 2, ptr noundef readonly %4, i64 noundef %5, ptr noundef nonnull readonly %i.a)
  %6 = shl nuw nsw i32 %i.g, 1
  %7 = xor i32 %6, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %7
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 4) i32 @BCM_mldsa65_verify(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = icmp ult i64 %5, 256
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = trunc nuw i64 %5 to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !80
  %i.e = call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef nonnull readonly %i.a, i64 noundef 2, ptr noundef readonly %4, i64 noundef %5)
  %6 = shl nuw nsw i32 %i.e, 1
  %7 = xor i32 %6, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %7
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_verify_internal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7)
  %8 = shl nuw nsw i32 %i.a, 1
  %9 = xor i32 %8, 2
  ret i32 %9
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa65_marshal_public_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi6EEEiP6cbb_stPKNS0_10public_keyIXT_EEE(ptr noundef %0, ptr noundef %1)
  %2 = shl nuw nsw i32 %i.a, 1
  %3 = xor i32 %2, 2
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi6EEEiP6cbb_stPKNS0_10public_keyIXT_EEE(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef %1, i64 noundef 32) #36
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.c = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1920) #36
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %_ZN5mldsa12_GLOBAL__N_113vector_encodeILi6EEEvPhPKNS0_6vectorIXT_EEEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !300  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i16.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i18.i, %bb.d ] ; 3 uses
  %.idx.i17.i = shl nuw nsw i64 %indvars.iv.i16.i, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i17.i ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !82   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !82   ; 2 uses
  %i.n = trunc i32 %i.g to i8
  %i.o = mul nuw nsw i64 %indvars.iv.i16.i, 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o ; 5 uses
  store i8 %i.n, ptr %i.p, align 1, !tbaa !80
  %i.q = lshr i32 %i.g, 8
  %i.r = shl i32 %i.i, 2
  %i.s = or i32 %i.r, %i.q
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !80
  %i.v = lshr i32 %i.i, 6
  %i.w = shl i32 %i.k, 4
  %i.x = or i32 %i.w, %i.v
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 %i.y, ptr %i.z, align 1, !tbaa !80
  %i.aa = lshr i32 %i.k, 4
  %i.ab = shl i32 %i.m, 6
  %i.ac = or i32 %i.ab, %i.aa
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !80
  %i.af = lshr i32 %i.m, 2
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !80
  %indvars.iv.next.i18.i = add nuw nsw i64 %indvars.iv.i16.i, 1 ; 2 uses
  %exitcond.not.i19.i = icmp eq i64 %indvars.iv.next.i18.i, 64
  br i1 %exitcond.not.i19.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.i, label %bb.d, !llvm.loop !39

_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.i: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1056
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.i
  %indvars.iv.i16.1.i = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.i ], [ %indvars.iv.next.i18.1.i, %bb.e ] ; 3 uses
  %.idx.i17.1.i = shl nuw nsw i64 %indvars.iv.i16.1.i, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i17.1.i ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !82 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !82 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !82 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !82 ; 2 uses
  %i.as = trunc i32 %i.al to i8
  %i.at = mul nuw nsw i64 %indvars.iv.i16.1.i, 5
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.at ; 5 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !80
  %i.av = lshr i32 %i.al, 8
  %i.aw = shl i32 %i.an, 2
  %i.ax = or i32 %i.aw, %i.av
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !80
  %i.ba = lshr i32 %i.an, 6
  %i.bb = shl i32 %i.ap, 4
  %i.bc = or i32 %i.bb, %i.ba
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !80
  %i.bf = lshr i32 %i.ap, 4
  %i.bg = shl i32 %i.ar, 6
  %i.bh = or i32 %i.bg, %i.bf
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !80
  %i.bk = lshr i32 %i.ar, 2
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !80
  %indvars.iv.next.i18.1.i = add nuw nsw i64 %indvars.iv.i16.1.i, 1 ; 2 uses
  %exitcond.not.i19.1.i = icmp eq i64 %indvars.iv.next.i18.1.i, 64
  br i1 %exitcond.not.i19.1.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.1.i, label %bb.e, !llvm.loop !39

_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.1.i: ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 640
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 2080
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.1.i
  %indvars.iv.i16.2.i = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.1.i ], [ %indvars.iv.next.i18.2.i, %bb.f ] ; 3 uses
  %.idx.i17.2.i = shl nuw nsw i64 %indvars.iv.i16.2.i, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i17.2.i ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !82 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !82 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !82 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !82 ; 2 uses
  %i.bx = trunc i32 %i.bq to i8
  %i.by = mul nuw nsw i64 %indvars.iv.i16.2.i, 5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.by ; 5 uses
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !80
  %i.ca = lshr i32 %i.bq, 8
  %i.cb = shl i32 %i.bs, 2
  %i.cc = or i32 %i.cb, %i.ca
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !80
  %i.cf = lshr i32 %i.bs, 6
  %i.cg = shl i32 %i.bu, 4
  %i.ch = or i32 %i.cg, %i.cf
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !80
  %i.ck = lshr i32 %i.bu, 4
  %i.cl = shl i32 %i.bw, 6
  %i.cm = or i32 %i.cl, %i.ck
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !80
  %i.cp = lshr i32 %i.bw, 2
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !80
  %indvars.iv.next.i18.2.i = add nuw nsw i64 %indvars.iv.i16.2.i, 1 ; 2 uses
  %exitcond.not.i19.2.i = icmp eq i64 %indvars.iv.next.i18.2.i, 64
  br i1 %exitcond.not.i19.2.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.2.i, label %bb.f, !llvm.loop !39

_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.2.i: ; preds = %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 3104
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.2.i
  %indvars.iv.i16.3.i = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.2.i ], [ %indvars.iv.next.i18.3.i, %bb.g ] ; 3 uses
  %.idx.i17.3.i = shl nuw nsw i64 %indvars.iv.i16.3.i, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i17.3.i ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !82 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !82 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !82 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !82 ; 2 uses
  %i.dc = trunc i32 %i.cv to i8
  %i.dd = mul nuw nsw i64 %indvars.iv.i16.3.i, 5
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dd ; 5 uses
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !80
  %i.df = lshr i32 %i.cv, 8
  %i.dg = shl i32 %i.cx, 2
  %i.dh = or i32 %i.dg, %i.df
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !80
  %i.dk = lshr i32 %i.cx, 6
  %i.dl = shl i32 %i.cz, 4
  %i.dm = or i32 %i.dl, %i.dk
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !80
  %i.dp = lshr i32 %i.cz, 4
  %i.dq = shl i32 %i.db, 6
  %i.dr = or i32 %i.dq, %i.dp
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !80
  %i.du = lshr i32 %i.db, 2
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !80
  %indvars.iv.next.i18.3.i = add nuw nsw i64 %indvars.iv.i16.3.i, 1 ; 2 uses
  %exitcond.not.i19.3.i = icmp eq i64 %indvars.iv.next.i18.3.i, 64
  br i1 %exitcond.not.i19.3.i, label %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.3.i, label %bb.g, !llvm.loop !39

end_hunk_1
begin_hunk_2_@BCM_mldsa87_generate_key_external_entropy:bb.a
_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread42.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit.thread.sink.split

_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit: ; preds = %bb.h
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !300
  call fastcc void @_ZN5mldsa12_GLOBAL__N_113vector_encodeILi8EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.dw, ptr noundef nonnull %i.ci, i32 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.dy, i8 0, i64 224, i1 false)
  store i32 3, ptr %3, align 8, !tbaa !320
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.dz, align 4, !tbaa !321
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 136, ptr %i.ea, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef 2592)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.dx, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit.thread.sink.split

_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit.thread.sink.split: ; preds = %_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi8EEEvPNS0_6vectorIXT_EEES4_PKS3_.exit.i.i, %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread42.i.i, %_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit
  %.ph = phi i32 [ 1, %_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit ], [ 2, %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread42.i.i ], [ 2, %_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi8EEEvPNS0_6vectorIXT_EEES4_PKS3_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @OPENSSL_free(ptr noundef nonnull %i.e) #36
  br label %_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit.thread

_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit.thread: ; preds = %_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit.thread.sink.split, %bb.a
  %i.eb = phi i32 [ 2, %bb.a ], [ %.ph, %_ZN5mldsa12_GLOBAL__N_135mldsa_generate_key_external_entropyILi8ELi7EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh.exit.thread.sink.split ]
  ret i32 %i.eb
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 1, 3) i32 @BCM_mldsa87_private_key_from_seed(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2592 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call i32 @BCM_mldsa87_generate_key_external_entropy(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa87_generate_key_fips(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4627 x i8], align 16             ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %3 = alloca %"struct.mldsa::(anonymous namespace)::public_key.82", align 4 ; 5 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %BCM_mldsa87_check_key_fips.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %1, i64 noundef 32, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  %i.f = tail call range(i32 1, 3) i32 @BCM_mldsa87_generate_key_external_entropy(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %1)
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %BCM_mldsa87_check_key_fips.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.h = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi8ELi7EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %3, ptr noundef nonnull readonly %2)
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi8ELi7EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %2, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b)
  %.not2.i.i = icmp eq i32 %i.i, 0
  br i1 %.not2.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.e

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i: ; preds = %bb.d
  %i.j = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i1.i = icmp eq i32 %i.j, 0
  br i1 %.not.i1.i, label %bb.e, label %BCM_mldsa87_check_key_fips.exit

bb.e:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i
  br label %BCM_mldsa87_check_key_fips.exit

BCM_mldsa87_check_key_fips.exit:                  ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.b ], [ 2, %bb.a ], [ 2, %bb.e ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa87_generate_key_external_entropy_fips(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4627 x i8], align 16             ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %3 = alloca %"struct.mldsa::(anonymous namespace)::public_key.82", align 4 ; 5 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %BCM_mldsa87_check_key_fips.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @BCM_mldsa87_generate_key_external_entropy(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %BCM_mldsa87_check_key_fips.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.g = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi8ELi7EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %3, ptr noundef nonnull readonly %1)
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi8ELi7EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b)
  %.not2.i.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.e

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i: ; preds = %bb.d
  %i.i = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i1.i = icmp eq i32 %i.i, 0
  br i1 %.not.i1.i, label %bb.e, label %BCM_mldsa87_check_key_fips.exit

bb.e:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i
  br label %BCM_mldsa87_check_key_fips.exit

BCM_mldsa87_check_key_fips.exit:                  ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.b ], [ 2, %bb.a ], [ 2, %bb.e ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa87_private_key_from_seed_fips(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4627 x i8], align 16             ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %2 = alloca %"struct.mldsa::(anonymous namespace)::public_key.82", align 4 ; 5 uses
  %i.c = alloca [2592 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.d = call i32 @BCM_mldsa87_generate_key_external_entropy(ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef %1)
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %BCM_mldsa87_check_key_fips.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.f = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi8ELi7EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %2, ptr noundef readonly %0)
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi8ELi7EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.a, ptr noundef readonly %0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b)
  %.not2.i.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i, label %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.d

_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i: ; preds = %bb.c
  %i.h = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i1.i = icmp eq i32 %i.h, 0
  br i1 %.not.i1.i, label %bb.d, label %BCM_mldsa87_check_key_fips.exit

bb.d:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.thread.i
  br label %BCM_mldsa87_check_key_fips.exit

BCM_mldsa87_check_key_fips.exit:                  ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 2, %bb.d ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips9check_keyILi8ELi7EEEiPNS0_11private_keyIXT_EXT0_EEE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa87_public_from_private(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi8ELi7EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef %0, ptr noundef %1)
  %2 = shl nuw nsw i32 %i.a, 1
  %3 = xor i32 %2, 2
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi8ELi7EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %"struct.mldsa::(anonymous namespace)::scalar", align 4 ; 4 uses
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 80896) #36 ; 20 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi8ELi7EEEiPNS1_10public_keyIXT_EEEPKNS1_11private_keyIXT_EXT0_EEEE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.c, i64 64, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_113matrix_expandILi8ELi7EEEvPNS0_6matrixIXT_EXT0_EEEPKh(ptr noundef nonnull %i.a, ptr noundef nonnull %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 57344 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7168) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(7168) %i.e, i64 7168, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 58368
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 59392
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 60416
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 61440
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 62464
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 63488
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64512 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.l, i8 0, i64 8192, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %indvars.iv20.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next21.i, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [7168 x i8], ptr %i.a, i64 %indvars.iv20.i
  %i.n = getelementptr inbounds nuw [1024 x i8], ptr %i.l, i64 %indvars.iv20.i
  br label %bb.d

bb.c:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 8
  br i1 %exitcond23.not.i, label %_ZN5mldsa12_GLOBAL__N_111matrix_multILi8ELi7EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE.exit, label %.preheader.i, !llvm.loop !40

bb.d:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.o = getelementptr inbounds nuw [1024 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.p = getelementptr inbounds nuw [1024 x i8], ptr %i.d, i64 %indvars.iv.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.i, %bb.e ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !82
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !82
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw i64 %i.v, %i.s                   ; 2 uses
  %i.x = mul i64 %i.w, 4236238847
  %i.y = and i64 %i.x, 4294967295
  %i.z = mul nuw nsw i64 %i.y, 8380417
  %i.aa = add i64 %i.z, %i.w
  %i.ab = lshr i64 %i.aa, 32                      ; 3 uses
  %i.ac = add nsw i64 %i.ab, -8380417
  %.neg.i.i.i.i.i.i = ashr i64 %i.ac, 63
  %i.ad = add nuw nsw i64 %i.ab, 4286586879
  %i.ae = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.af = and i64 %i.ab, %i.ae
  %i.ag = xor i64 %i.ae, -1
  %i.ah = and i64 %i.ad, %i.ag
  %i.ai = or disjoint i64 %i.ah, %i.af
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !82
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i, label %bb.e, !llvm.loop !41

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i: ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i
  %indvars.iv.i14.i = phi i64 [ %indvars.iv.next.i15.i, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i ], [ 0, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i14.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !82
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i14.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !82
  %i.ap = add i32 %i.ao, %i.am                    ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = add nsw i64 %i.aq, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.ar, 63
  %i.as = add i32 %i.ap, -8380417
  %i.at = zext i32 %i.as to i64
  %i.au = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.av = and i64 %i.au, %i.aq
  %i.aw = xor i64 %i.au, -1
  %i.ax = and i64 %i.at, %i.aw
  %i.ay = or disjoint i64 %i.ax, %i.av
  %i.az = trunc nuw i64 %i.ay to i32
  store i32 %i.az, ptr %i.al, align 4, !tbaa !82
  %indvars.iv.next.i15.i = add nuw nsw i64 %indvars.iv.i14.i, 1 ; 2 uses
  %exitcond.not.i16.i = icmp eq i64 %indvars.iv.next.i15.i, 256
  br i1 %exitcond.not.i16.i, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i, !llvm.loop !42

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.i: ; preds = %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 7
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111matrix_multILi8ELi7EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE.exit: ; preds = %bb.c
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.l)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 65536
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 66560
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 67584
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 68608
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 69632
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 70656
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 71680
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 7296
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110vector_addILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef nonnull %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 72704
  %i.bk = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) -1) #38, !srcloc !108 ; 2 uses
  %i.bl = xor i64 %i.bk, -1
  br label %bb.f

bb.f:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.i, %_ZN5mldsa12_GLOBAL__N_111matrix_multILi8ELi7EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE.exit
  %indvars.iv.i19 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111matrix_multILi8ELi7EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE.exit ], [ %indvars.iv.next.i24, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.i ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [1024 x i8], ptr %i.bi, i64 %indvars.iv.i19
  %i.bn = getelementptr inbounds nuw [1024 x i8], ptr %i.bj, i64 %indvars.iv.i19
  %i.bo = getelementptr inbounds nuw [1024 x i8], ptr %i.l, i64 %indvars.iv.i19
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.i20 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i22, %bb.g ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i20 ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i20 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !82 ; 3 uses
  %i.bt = lshr i32 %i.bs, 13
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !82
  %i.bu = and i32 %i.bs, 8191                     ; 4 uses
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !82
  %i.bv = add nuw nsw i32 %i.bu, 8372225
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = or i32 %i.bs, -8192
  %i.by = zext i32 %i.bx to i64
  %i.bz = and i64 %i.bk, %i.bw
  %i.ca = and i64 %i.by, %i.bl
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = load i32, ptr %i.bp, align 4, !tbaa !82
  %i.cd = add i32 %i.cc, 1
  %i.ce = zext nneg i32 %i.bu to i64
  %i.cf = icmp samesign ugt i32 %i.bu, 4096
  %.neg.i.i.i.i.i21 = sext i1 %i.cf to i64
  %i.cg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i21) #38, !srcloc !108 ; 3 uses
  %i.ch = and i64 %i.cb, %i.cg
  %i.ci = xor i64 %i.cg, -1                       ; 2 uses
  %i.cj = and i64 %i.ci, %i.ce
  %i.ck = or disjoint i64 %i.ch, %i.cj
  %i.cl = trunc nuw i64 %i.ck to i32
  store i32 %i.cl, ptr %i.bq, align 4, !tbaa !82
  %i.cm = load i32, ptr %i.bp, align 4, !tbaa !82
  %i.cn = zext i32 %i.cd to i64
  %i.co = zext i32 %i.cm to i64
  %i.cp = and i64 %i.cg, %i.cn
  %i.cq = and i64 %i.co, %i.ci
  %i.cr = or disjoint i64 %i.cq, %i.cp
  %i.cs = trunc nuw i64 %i.cr to i32
  store i32 %i.cs, ptr %i.bp, align 4, !tbaa !82
  %indvars.iv.next.i.i22 = add nuw nsw i64 %indvars.iv.i.i20, 1 ; 2 uses
  %exitcond.not.i.i23 = icmp eq i64 %indvars.iv.next.i.i22, 256
  br i1 %exitcond.not.i.i23, label %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.i, label %bb.g, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.i: ; preds = %bb.g
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, 8
  br i1 %exitcond.not.i25, label %_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi8EEEvPNS0_6vectorIXT_EEES4_PKS3_.exit, label %bb.f, !llvm.loop !45

_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi8EEEvPNS0_6vectorIXT_EEES4_PKS3_.exit: ; preds = %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.i
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #36
  br label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi8ELi7EEEiPNS1_10public_keyIXT_EEEPKNS1_11private_keyIXT_EXT0_EEEE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit

_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi8ELi7EEEiPNS1_10public_keyIXT_EEEPKNS1_11private_keyIXT_EXT0_EEEE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit: ; preds = %bb.a, %_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi8EEEvPNS0_6vectorIXT_EEES4_PKS3_.exit
  %.028 = phi i32 [ 1, %_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi8EEEvPNS0_6vectorIXT_EEES4_PKS3_.exit ], [ 0, %bb.a ]
  ret i32 %.028
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa87_sign_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi8ELi7EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7, ptr noundef readonly %8)
  %9 = shl nuw nsw i32 %i.a, 1
  %10 = xor i32 %9, 2
  ret i32 %10
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 4) i32 @BCM_mldsa87_sign(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = icmp ult i64 %5, 256
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.d = call i32 @BCM_rand_bytes_with_additional_data(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = trunc nuw i64 %5 to i8
  store i8 %i.f, ptr %i.e, align 1, !tbaa !80
  %i.g = call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi8ELi7EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef nonnull readonly %i.b, i64 noundef 2, ptr noundef readonly %4, i64 noundef %5, ptr noundef nonnull readonly %i.a)
  %6 = shl nuw nsw i32 %i.g, 1
  %7 = xor i32 %6, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %7
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 4) i32 @BCM_mldsa87_verify(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = icmp ult i64 %5, 256
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = trunc nuw i64 %5 to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !80
  %i.e = call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef nonnull readonly %i.a, i64 noundef 2, ptr noundef readonly %4, i64 noundef %5)
  %6 = shl nuw nsw i32 %i.e, 1
  %7 = xor i32 %6, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %7
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa87_verify_internal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef readonly %6, i64 noundef %7)
  %8 = shl nuw nsw i32 %i.a, 1
  %9 = xor i32 %8, 2
  ret i32 %9
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mldsa87_marshal_public_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef %1, i64 noundef 32) #36
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.c = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2560) #36
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread.sink.split, label %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit

_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit: ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !300
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  call fastcc void @_ZN5mldsa12_GLOBAL__N_113vector_encodeILi8EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.d, ptr noundef nonnull %i.e, i32 noundef 10)
  br label %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread.sink.split

_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread.sink.split: ; preds = %bb.b, %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit
  %.ph = phi i32 [ 0, %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit ], [ 2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread

_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread: ; preds = %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread.sink.split, %bb.a
  %i.f = phi i32 [ 2, %bb.a ], [ %.ph, %_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi8EEEiP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread.sink.split ]
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @boringssl_self_test_mldsa() local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %0 = alloca %"struct.mldsa::(anonymous namespace)::private_key", align 4 ; 7 uses
  %i.b = alloca [1952 x i8], align 16             ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [3309 x i8], align 16             ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 7 uses
  %1 = alloca %"struct.mldsa::(anonymous namespace)::private_key", align 4 ; 6 uses
  %i.f = alloca [1952 x i8], align 16             ; 6 uses
  %i.g = alloca [4032 x i8], align 16             ; 5 uses
  %2 = alloca %struct.cbb_st, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.h = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef nonnull @_ZN5mldsa12_GLOBAL__N_14fips19kGenerateKeyEntropyE)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread, label %bb.b

_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.i = call i32 @CBB_init_fixed(ptr noundef nonnull %2, ptr noundef nonnull %i.g, i64 noundef 4032) #36 ; 0 uses
  %i.j = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_marshal_private_keyILi6ELi5EEEiP6cbb_stPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %2, ptr noundef nonnull %1)
  %.not1.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i, label %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZN5mldsa12_GLOBAL__N_14fips18kExpectedPublicKeyE, ptr noundef nonnull %i.f, i64 noundef 1952, ptr noundef nonnull @.str.57)
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread12, label %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit

_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread12: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit

_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit: ; preds = %bb.c
  %i.l = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZN5mldsa12_GLOBAL__N_14fips19kExpectedPrivateKeyE, ptr noundef nonnull %i.g, i64 noundef 4032, ptr noundef nonnull @.str.58)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.m = call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull @_ZN5mldsa12_GLOBAL__N_14fips12kSignEntropyE)
  %.not.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i2, label %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread, label %bb.e

_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  store i32 0, ptr %i.e, align 4
  %i.n = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 4, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.c)
  %.not1.i3 = icmp eq i32 %i.n, 0
  br i1 %.not1.i3, label %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZN5mldsa12_GLOBAL__N_14fips23kExpectedCase1SignatureE, ptr noundef nonnull %i.d, i64 noundef 3309, ptr noundef nonnull @.str.59)
  %.not2.i4 = icmp eq i32 %i.o, 0
  br i1 %.not2.i4, label %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread17, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 123, ptr %i.e, align 4, !tbaa !80
  %i.p = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_(ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 4, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.c)
  %.not3.i = icmp eq i32 %i.p, 0
  br i1 %.not3.i, label %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread17, label %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit

_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread17: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit

_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit: ; preds = %bb.g
  %i.q = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZN5mldsa12_GLOBAL__N_14fips23kExpectedCase2SignatureE, ptr noundef nonnull %i.d, i64 noundef 3309, ptr noundef nonnull @.str.60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  %.not1 = icmp eq i32 %i.q, 0
  br i1 %.not1, label %_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit
  %i.r = call ptr @OPENSSL_malloc(i64 noundef 25728) #36 ; 6 uses
  %.not12.i = icmp eq ptr %i.r, null
  br i1 %.not12.i, label %_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 23776
  %i.t = call fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull @_ZN5mldsa12_GLOBAL__N_14fips12kSignEntropyE)
  %.not.i7 = icmp eq i32 %i.t, 0
  br i1 %.not.i7, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 1, ptr %i.a, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 17536 ; 2 uses
  %i.v = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_125mldsa_public_from_privateILi6ELi5EEEiPNS0_10public_keyIXT_EEEPKNS0_11private_keyIXT_EXT0_EEE(ptr noundef nonnull %i.u, ptr noundef nonnull %i.r)
  %.not1.i8 = icmp eq i32 %i.v, 0
  br i1 %.not1.i8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi6ELi5EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m(ptr noundef nonnull %i.u, ptr noundef nonnull @_ZN5mldsa12_GLOBAL__N_14fips24kExpectedVerifySignatureE, ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i9 = phi i32 [ 0, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.ph.i = phi i32 [ 0, %bb.i ], [ %.0.i9, %bb.l ]
  call void @OPENSSL_free(ptr noundef nonnull %i.r) #36
  br label %_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit

_ZN5mldsa12_GLOBAL__N_14fips16verify_self_testEv.exit: ; preds = %bb.m, %bb.h, %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread17, %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread, %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread12, %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread, %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit, %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit
  %i.x = phi i32 [ 0, %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread17 ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread12 ], [ 0, %_ZN5mldsa12_GLOBAL__N_14fips14sign_self_testEv.exit.thread ], [ %.1.ph.i, %bb.m ], [ 0, %bb.h ]
  ret i32 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem768_check_fips(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [1088 x i8], align 16             ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(32) @__const.BCM_mlkem1024_check_fips.entropy, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.h, i8 0, i64 224, i1 false)
  store i32 1, ptr %1, align 8, !tbaa !320
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !321
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 72, ptr %i.j, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.a, i64 noundef 64)
end_hunk_2
begin_hunk_3_@BCM_mlkem768_encap:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !321
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 72, ptr %i.i, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.a, i64 noundef 64)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call fastcc void @_ZN5mlkem12_GLOBAL__N_111encrypt_cpaILi3EEEvPhPKNS0_10public_keyIXT_EEEPKhS8_(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull readonly %i.c, ptr noundef %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef i32 @BCM_mlkem768_encap_external_entropy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.e, i8 0, i64 224, i1 false)
  store i32 1, ptr %4, align 8, !tbaa !320
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !321
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 72, ptr %i.g, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.a, i64 noundef 64)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call fastcc void @_ZN5mlkem12_GLOBAL__N_111encrypt_cpaILi3EEEvPhPKNS0_10public_keyIXT_EEEPKhS8_(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull readonly %3, ptr noundef %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @BCM_mlkem1024_encap(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.d = call i32 @BCM_rand_bytes_with_additional_data(ptr noundef nonnull %i.c, i64 noundef 32, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.g, i8 0, i64 224, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !320
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !321
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 72, ptr %i.i, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.a, i64 noundef 64)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call fastcc void @_ZN5mlkem12_GLOBAL__N_111encrypt_cpaILi4EEEvPhPKNS0_10public_keyIXT_EEEPKhS8_(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull readonly %i.c, ptr noundef %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef i32 @BCM_mlkem1024_encap_external_entropy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.e, i8 0, i64 224, i1 false)
  store i32 1, ptr %4, align 8, !tbaa !320
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !321
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 72, ptr %i.g, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.a, i64 noundef 64)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call fastcc void @_ZN5mlkem12_GLOBAL__N_111encrypt_cpaILi4EEEvPhPKNS0_10public_keyIXT_EEEPKhS8_(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull readonly %3, ptr noundef %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem768_decap(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %2, 1088
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef 32, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5mlkem12_GLOBAL__N_124mlkem_decap_no_self_testILi3EEEvPhPKhPKNS0_11private_keyIXT_EEE(ptr noundef %0, ptr noundef %1, ptr noundef readonly %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem1024_decap(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %2, 1568
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef 32, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5mlkem12_GLOBAL__N_124mlkem_decap_no_self_testILi4EEEvPhPKhPKNS0_11private_keyIXT_EEE(ptr noundef %0, ptr noundef %1, ptr noundef readonly %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem768_marshal_public_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1152) #36
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !300
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi3EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.c, ptr noundef %1, i32 noundef 12)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %i.e = call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 32) #36
  %.not4.i = icmp eq i32 %i.e, 0
  %..i = select i1 %.not4.i, i32 2, i32 0
  br label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit

_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 2, %bb.a ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem1024_marshal_public_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1536) #36
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !300
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi4EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.c, ptr noundef %1, i32 noundef 12)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.e = call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 32) #36
  %.not4.i = icmp eq i32 %i.e, 0
  %..i = select i1 %.not4.i, i32 2, i32 0
  br label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit

_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 2, %bb.a ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem768_parse_public_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_122mlkem_parse_public_keyILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st(ptr noundef %0, ptr noundef %1)
  %2 = shl nuw nsw i32 %i.a, 1
  %. = xor i32 %2, 2
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mlkem12_GLOBAL__N_122mlkem_parse_public_keyILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 6 uses
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !300
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = call i32 @CBS_get_bytes(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1152) #36
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !327
  %i.c = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi3EEEiPNS0_6vectorIXT_EEEPKhi(ptr noundef %0, ptr noundef %i.b, i32 noundef 12)
  %.not6.i = icmp eq i32 %i.c, 0
  br i1 %.not6.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.e = call i32 @CBS_copy_bytes(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef 32) #36
  %.not7.i = icmp eq i32 %i.e, 0
  br i1 %.not7.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread, label %bb.d

_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1600
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113matrix_expandILi3EEEvPNS0_6matrixIXT_EEEPKh(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.g = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !326
  %.not5 = icmp eq i64 %i.g, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1568
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %2, i8 0, i64 232, i1 false)
  store i64 136, ptr %i.i, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef readonly %.sroa.0.0.copyload, i64 noundef %.sroa.4.0.copyload)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.f

bb.f:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread, %bb.d, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem1024_parse_public_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 6 uses
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !300
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = call i32 @CBS_get_bytes(ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef 1536) #36
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !327
  %i.c = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi4EEEiPNS0_6vectorIXT_EEEPKhi(ptr noundef %0, ptr noundef %i.b, i32 noundef 12)
  %.not6.i.i = icmp eq i32 %i.c, 0
  br i1 %.not6.i.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  %i.e = call i32 @CBS_copy_bytes(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef 32) #36
  %.not7.i.i = icmp eq i32 %i.e, 0
  br i1 %.not7.i.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i, label %bb.d

_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2112
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113matrix_expandILi4EEEvPNS0_6matrixIXT_EEEPKh(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.g = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !326
  %.not5.i = icmp eq i64 %i.g, 0
  br i1 %.not5.i, label %_ZN5mlkem12_GLOBAL__N_122mlkem_parse_public_keyILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit, label %bb.e

_ZN5mlkem12_GLOBAL__N_122mlkem_parse_public_keyILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2080
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %2, i8 0, i64 232, i1 false)
  store i64 136, ptr %i.i, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef readonly %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.e

bb.e:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i, %bb.d, %_ZN5mlkem12_GLOBAL__N_122mlkem_parse_public_keyILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit
  %i.j = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_122mlkem_parse_public_keyILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit ], [ 2, %bb.d ], [ 2, %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i ]
  ret i32 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem768_marshal_private_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi3EEEiP6cbb_stPKNS0_11private_keyIXT_EEE(ptr noundef %0, ptr noundef %1)
  %2 = shl nuw nsw i32 %i.a, 1
  %. = xor i32 %2, 2
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi3EEEiP6cbb_stPKNS0_11private_keyIXT_EEE(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.c = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1152) #36
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !300
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 6208
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi3EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.d, ptr noundef nonnull %i.e, i32 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.f = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1152) #36
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread, label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit

_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.e

_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !300
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi3EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.g, ptr noundef nonnull %1, i32 noundef 12)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %i.i = call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef 32) #36
  %.not4.i.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %.not4.i.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %i.k = call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.j, i64 noundef 32) #36
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7744
  %i.m = call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef 32) #36
  %.not10 = icmp ne i32 %i.m, 0
  %spec.select = zext i1 %.not10 to i32
  br label %bb.e

bb.e:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread, %bb.d, %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit ], [ 0, %bb.a ], [ %spec.select, %bb.d ], [ 0, %bb.c ], [ 0, %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem1024_marshal_private_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.c = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1536) #36
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !300
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10304
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi4EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.d, ptr noundef nonnull %i.e, i32 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.f = call i32 @CBB_add_space(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1536) #36
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread.i, label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.i

_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit.thread

_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !300
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi4EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.g, ptr noundef nonnull %1, i32 noundef 12)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.i = call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef 32) #36
  %.not4.i.not.i = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %.not4.i.not.i, label %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2080
  %i.k = call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.j, i64 noundef 32) #36
  %.not9.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i, label %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit.thread, label %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit

_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit.thread: ; preds = %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.i, %bb.a, %bb.c, %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi4EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.d

_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12352
  %i.m = call i32 @CBB_add_bytes(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef 32) #36
  %.fr = freeze i32 %i.m
  %.not10.i.not = icmp eq i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br i1 %.not10.i.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit.thread, %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit
  br label %bb.e

bb.e:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit, %bb.d
  %i.n = phi i32 [ 2, %bb.d ], [ 0, %_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi4EEEiP6cbb_stPKNS0_11private_keyIXT_EEE.exit ]
  ret i32 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem768_parse_private_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi3EEEiPNS0_11private_keyIXT_EEEP6cbs_st(ptr noundef %0, ptr noundef %1)
  %2 = shl nuw nsw i32 %i.a, 1
  %. = xor i32 %2, 2
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi3EEEiPNS0_11private_keyIXT_EEEP6cbs_st(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 5 uses
  %3 = alloca %struct.cbs_st, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = call i32 @CBS_get_bytes(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 1152) #36
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6208
  %i.c = load ptr, ptr %3, align 8, !tbaa !327
  %i.d = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi3EEEiPNS0_6vectorIXT_EEEPKhi(ptr noundef nonnull %i.b, ptr noundef %i.c, i32 noundef 12)
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.e = call i32 @CBS_get_bytes(ptr noundef %1, ptr noundef nonnull %2, i64 noundef 1152) #36
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !327
  %i.g = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi3EEEiPNS0_6vectorIXT_EEEPKhi(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef 12)
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.i = call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef nonnull %i.h, i64 noundef 32) #36
  %.not7.i = icmp eq i32 %i.i, 0
  br i1 %.not7.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread, label %bb.f

_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1600
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113matrix_expandILi3EEEvPNS0_6matrixIXT_EEEPKh(ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.l = call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef nonnull %i.k, i64 noundef 32) #36
  %.not11 = icmp eq i32 %i.l, 0
  br i1 %.not11, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7744
  %i.n = call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef nonnull %i.m, i64 noundef 32) #36
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !326
  %.not13 = icmp eq i64 %i.p, 0
  %spec.select = zext i1 %.not13 to i32
  br label %bb.i

bb.i:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread, %bb.h, %bb.a, %bb.b, %bb.f, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_mlkem1024_parse_private_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 5 uses
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = call i32 @CBS_get_bytes(ptr noundef %1, ptr noundef nonnull %3, i64 noundef 1536) #36
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10304
  %i.c = load ptr, ptr %3, align 8, !tbaa !327
  %i.d = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi4EEEiPNS0_6vectorIXT_EEEPKhi(ptr noundef nonnull %i.b, ptr noundef %i.c, i32 noundef 12)
  %.not9.i = icmp eq i32 %i.d, 0
  br i1 %.not9.i, label %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.e = call i32 @CBS_get_bytes(ptr noundef %1, ptr noundef nonnull %2, i64 noundef 1536) #36
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !327
  %i.g = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_113vector_decodeILi4EEEiPNS0_6vectorIXT_EEEPKhi(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef 12)
  %.not6.i.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  %i.i = call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef nonnull %i.h, i64 noundef 32) #36
  %.not7.i.i = icmp eq i32 %i.i, 0
  br i1 %.not7.i.i, label %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i, label %bb.f

_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2112
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113matrix_expandILi4EEEvPNS0_6matrixIXT_EEEPKh(ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.l = call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef nonnull %i.k, i64 noundef 32) #36
  %.not11.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i, label %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12352
  %i.n = call i32 @CBS_copy_bytes(ptr noundef %1, ptr noundef nonnull %i.m, i64 noundef 32) #36
  %.not12.i = icmp eq i32 %i.n, 0
  br i1 %.not12.i, label %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit.thread, label %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit

_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit.thread: ; preds = %bb.a, %bb.g, %bb.f, %_ZN5mlkem12_GLOBAL__N_130mlkem_parse_public_key_no_hashILi4EEEiPNS0_10public_keyIXT_EEEP6cbs_st.exit.thread.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.h

_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !326
  %.fr = freeze i64 %i.p
  %.not13.i.not = icmp eq i64 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br i1 %.not13.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit.thread, %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit
  br label %bb.i

bb.i:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit, %bb.h
  %i.q = phi i32 [ 2, %bb.h ], [ 0, %_ZN5mlkem12_GLOBAL__N_123mlkem_parse_private_keyILi4EEEiPNS0_11private_keyIXT_EEEP6cbs_st.exit ]
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @boringssl_self_test_mlkem() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.cbs_st, align 8             ; 5 uses
  %1 = alloca %"struct.mlkem::(anonymous namespace)::private_key", align 2 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = alloca [64 x i8], align 16               ; 7 uses
  %3 = alloca %struct.cbs_st, align 8             ; 7 uses
  %4 = alloca %"struct.mlkem::(anonymous namespace)::public_key", align 2 ; 7 uses
  %i.e = alloca [1088 x i8], align 16             ; 5 uses
  %i.f = alloca [1184 x i8], align 16             ; 5 uses
  %5 = alloca %"struct.mlkem::(anonymous namespace)::private_key", align 2 ; 5 uses
  %6 = alloca %struct.cbb_st, align 8             ; 5 uses
  %i.g = alloca [2400 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call fastcc void @_ZN5mlkem12_GLOBAL__N_145mlkem_generate_key_external_seed_no_self_testILi3EEEvPhPNS0_11private_keyIXT_EEEPKh(ptr noundef nonnull %i.f, ptr noundef nonnull %5, ptr noundef nonnull @_ZN5mlkem12_GLOBAL__N_14fips12kTestEntropyE)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %i.h = call i32 @CBB_init_fixed(ptr noundef nonnull %6, ptr noundef nonnull %i.g, i64 noundef 2400) #36 ; 0 uses
  %i.i = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_125mlkem_marshal_private_keyILi3EEEiP6cbb_stPKNS0_11private_keyIXT_EEE(ptr noundef nonnull %6, ptr noundef nonnull %5)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZN5mlkem12_GLOBAL__N_14fips24kExpectedPrivateKeyBytesE, ptr noundef nonnull %i.g, i64 noundef 2400, ptr noundef nonnull @.str.61)
  %.not1.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i, label %_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread, label %_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit

_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit.thread: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %bb.i

_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit: ; preds = %bb.b
  %i.k = call i32 @BORINGSSL_check_test(ptr noundef nonnull @_ZN5mlkem12_GLOBAL__N_14fips23kExpectedPublicKeyBytesE, ptr noundef nonnull %i.f, i64 noundef 1184, ptr noundef nonnull @.str.62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_14fips16keygen_self_testEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr @_ZN5mlkem12_GLOBAL__N_14fips23kExpectedPublicKeyBytesE, ptr %3, align 8, !tbaa !327
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1184, ptr %i.l, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.m = call fastcc noundef i32 @_ZN5mlkem12_GLOBAL__N_122mlkem_parse_public_keyILi3EEEiPNS0_10public_keyIXT_EEEP6cbs_st(ptr noundef nonnull %4, ptr noundef nonnull %3)
end_hunk_3
begin_hunk_4_@BCM_slhdsa_sha2_128s_prehash_sign:bb.a
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  %i.d = alloca [30 x i8], align 16               ; 7 uses
  %i.e = alloca [32 x i8], align 16               ; 10 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [2 x i8], align 1                 ; 6 uses
  %i.h = alloca [266 x i8], align 16              ; 6 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = icmp ugt i64 %6, 255
  br i1 %i.j, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  store i8 1, ptr %i.g, align 1, !tbaa !80
  %i.k = trunc nuw i64 %6 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  switch i32 %4, label %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread [
    i32 672, label %bb.d
    i32 673, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016.i = phi ptr [ @_ZN12_GLOBAL__N_110kSHA384OIDE, %bb.c ], [ @_ZN12_GLOBAL__N_110kSHA256OIDE, %bb.b ]
  %.0.i = phi i64 [ 48, %bb.c ], [ 32, %bb.b ]
  %.not.i = icmp eq i64 %3, %.0.i
  br i1 %.not.i, label %bb.e, label %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw nsw i64 %6, 11                   ; 2 uses
  %i.n = icmp eq i64 %6, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.h, ptr readonly align 1 %5, i64 range(i64 0, 256) %6, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(11) %.016.i, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  %i.p = call i32 @RAND_bytes(ptr noundef nonnull %i.i, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @slhdsa_thash_prfmsg(ptr noundef nonnull %i.c, ptr noundef nonnull %i.q, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 noundef %i.m, ptr noundef %2, i64 noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.u, i8 0, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.v = call i32 @SHA256_Init(ptr noundef nonnull %7) #36 ; 0 uses
  %i.w = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %i.c, i64 noundef 16) #36 ; 0 uses
  %i.x = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %i.r, i64 noundef 16) #36 ; 0 uses
  %i.y = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %i.s, i64 noundef 16) #36 ; 0 uses
  %i.z = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %i.g, i64 noundef 2) #36 ; 0 uses
  %i.aa = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %i.h, i64 noundef %i.m) #36 ; 0 uses
  %i.ab = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef %2, i64 noundef %3) #36 ; 0 uses
  %i.ac = call i32 @SHA256_Final(ptr noundef nonnull %i.u, ptr noundef nonnull %7) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.ad = call ptr @SHA256(ptr noundef nonnull %i.a, i64 noundef 68, ptr noundef nonnull %i.b) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(30) %i.b, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  %.val.i.i = load i64, ptr %i.ae, align 1
  %i.af = call noundef i64 @llvm.bswap.i64(i64 %.val.i.i)
  %i.ag = lshr i64 %i.af, 8
  %i.ah = and i64 %i.ag, 18014398509481983        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0.copyload.i.i.i = load i16, ptr %i.ai, align 4
  %i.aj = and i16 %.0.copyload.i.i.i, -255
  %i.ak = call i16 @llvm.bswap.i16(i16 %i.aj)     ; 3 uses
  %i.al = zext nneg i16 %i.ak to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.an = call noundef i64 @llvm.bswap.i64(i64 %i.ah)
  store i64 %i.an, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.ao, i8 0, i64 12, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 3, ptr %i.ap, align 1, !tbaa !80
  %i.aq = lshr i16 %i.ak, 8
  %i.ar = trunc nuw nsw i16 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 %i.ar, ptr %i.as, align 4, !tbaa !80
  %i.at = trunc i16 %i.ak to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store i8 %i.at, ptr %i.au, align 1, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @slhdsa_fors_sign(ptr noundef nonnull %i.av, ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef nonnull %i.r, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @slhdsa_fors_pk_from_sig(ptr noundef nonnull %i.f, ptr noundef nonnull %i.av, ptr noundef nonnull %i.d, ptr noundef nonnull %i.r, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2928
  call void @slhdsa_ht_sign(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.f, i64 noundef %i.ah, i32 noundef %i.al, ptr noundef %1, ptr noundef nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  br label %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread

_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread: ; preds = %bb.d, %bb.b, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 2, %bb.b ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread
  %.1 = phi i32 [ %.0, %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread ], [ 2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_slhdsa_sha2_128s_verify(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [68 x i8], align 16               ; 6 uses
  %7 = alloca %struct.sha256_state_st, align 4    ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [30 x i8], align 16               ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 9 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = icmp ugt i64 %6, 255
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i8 0, ptr %i.f, align 1, !tbaa !80
  %i.h = trunc nuw i64 %6 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i.i = icmp eq i64 %1, 7856
  br i1 %.not.i.i, label %bb.c, label %BCM_slhdsa_sha2_128s_verify_internal.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.n, i8 0, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.o = call i32 @SHA256_Init(ptr noundef nonnull %7) #36 ; 0 uses
  %i.p = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %0, i64 noundef 16) #36 ; 0 uses
  %i.q = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %2, i64 noundef 16) #36 ; 0 uses
  %i.r = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %i.j, i64 noundef 16) #36 ; 0 uses
  %i.s = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %i.f, i64 noundef 2) #36 ; 0 uses
  %i.t = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef %5, i64 noundef %6) #36 ; 0 uses
  %i.u = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef %3, i64 noundef %4) #36 ; 0 uses
  %i.v = call i32 @SHA256_Final(ptr noundef nonnull %i.n, ptr noundef nonnull %7) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.w = call ptr @SHA256(ptr noundef nonnull %i.a, i64 noundef 68, ptr noundef nonnull %i.b) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(30) %i.b, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %.val.i.i = load i64, ptr %i.x, align 1
  %i.y = call noundef i64 @llvm.bswap.i64(i64 %.val.i.i)
  %i.z = lshr i64 %i.y, 8
  %i.aa = and i64 %i.z, 18014398509481983         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.0.copyload.i.i.i = load i16, ptr %i.ab, align 4
  %i.ac = and i16 %.0.copyload.i.i.i, -255
  %i.ad = call i16 @llvm.bswap.i16(i16 %i.ac)     ; 3 uses
  %i.ae = zext nneg i16 %i.ad to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ag = call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  store i64 %i.ag, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.ah, i8 0, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 3, ptr %i.ai, align 1, !tbaa !80
  %i.aj = lshr i16 %i.ad, 8
  %i.ak = trunc nuw nsw i16 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %i.ak, ptr %i.al, align 4, !tbaa !80
  %i.am = trunc i16 %i.ad to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %i.am, ptr %i.an, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @slhdsa_fors_pk_from_sig(ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.d)
  %i.ao = call i32 @slhdsa_ht_verify(ptr noundef nonnull %i.l, ptr noundef nonnull %i.e, i64 noundef %i.aa, i32 noundef %i.ae, ptr noundef nonnull %i.j, ptr noundef nonnull %2)
  %8 = shl nuw nsw i32 %i.ao, 1
  %..i.i = xor i32 %8, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %BCM_slhdsa_sha2_128s_verify_internal.exit

BCM_slhdsa_sha2_128s_verify_internal.exit:        ; preds = %bb.b, %bb.c
  %.1.i.i = phi i32 [ %..i.i, %bb.c ], [ 2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %BCM_slhdsa_sha2_128s_verify_internal.exit
  %.0 = phi i32 [ %.1.i.i, %BCM_slhdsa_sha2_128s_verify_internal.exit ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_slhdsa_sha2_128s_verify_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 9 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %1, 7856
  br i1 %.not.i, label %bb.b, label %_ZN12_GLOBAL__N_115verify_internalEPKhmS1_S1_S1_mS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2928
  call void @slhdsa_thash_hmsg(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.val.i = load i64, ptr %i.g, align 1
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %.val.i)
  %i.i = lshr i64 %i.h, 8
  %i.j = and i64 %i.i, 18014398509481983          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.0.copyload.i.i = load i16, ptr %i.k, align 4
  %i.l = and i16 %.0.copyload.i.i, -255
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.l)  ; 3 uses
  %i.n = zext nneg i16 %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  store i64 %i.p, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.q, i8 0, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 3, ptr %i.r, align 1, !tbaa !80
  %i.s = lshr i16 %i.m, 8
  %i.t = trunc nuw nsw i16 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.t, ptr %i.u, align 4, !tbaa !80
  %i.v = trunc i16 %i.m to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 %i.v, ptr %i.w, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @slhdsa_fors_pk_from_sig(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b)
  %i.x = call i32 @slhdsa_ht_verify(ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, i64 noundef %i.j, i32 noundef %i.n, ptr noundef nonnull %i.d, ptr noundef %2)
  %8 = shl nuw nsw i32 %i.x, 1
  %..i = xor i32 %8, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %_ZN12_GLOBAL__N_115verify_internalEPKhmS1_S1_S1_mS1_m.exit

_ZN12_GLOBAL__N_115verify_internalEPKhmS1_S1_S1_mS1_m.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %..i, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @BCM_slhdsa_sha2_128s_prehash_verify(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [68 x i8], align 16               ; 6 uses
  %8 = alloca %struct.sha256_state_st, align 4    ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [30 x i8], align 16               ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 9 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca [266 x i8], align 16              ; 5 uses
  %i.h = icmp ugt i64 %7, 255
  br i1 %i.h, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i8 1, ptr %i.f, align 1, !tbaa !80
  %i.i = trunc nuw i64 %7 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  switch i32 %5, label %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread [
    i32 672, label %bb.d
    i32 673, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016.i = phi ptr [ @_ZN12_GLOBAL__N_110kSHA384OIDE, %bb.c ], [ @_ZN12_GLOBAL__N_110kSHA256OIDE, %bb.b ]
  %.0.i = phi i64 [ 48, %bb.c ], [ 32, %bb.b ]
  %.not.i = icmp eq i64 %4, %.0.i
  br i1 %.not.i, label %bb.e, label %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i64 %7, 11
  %i.l = icmp eq i64 %7, 0
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr readonly align 1 %6, i64 range(i64 0, 256) %7, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(11) %.016.i, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i.i = icmp eq i64 %1, 7856
  br i1 %.not.i.i, label %bb.h, label %BCM_slhdsa_sha2_128s_verify_internal.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.r, i8 0, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.s = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.t = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %0, i64 noundef 16) #36 ; 0 uses
  %i.u = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %2, i64 noundef 16) #36 ; 0 uses
  %i.v = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.n, i64 noundef 16) #36 ; 0 uses
  %i.w = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.f, i64 noundef 2) #36 ; 0 uses
  %i.x = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.g, i64 noundef %i.k) #36 ; 0 uses
  %i.y = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %3, i64 noundef %4) #36 ; 0 uses
  %i.z = call i32 @SHA256_Final(ptr noundef nonnull %i.r, ptr noundef nonnull %8) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.aa = call ptr @SHA256(ptr noundef nonnull %i.a, i64 noundef 68, ptr noundef nonnull %i.b) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(30) %i.b, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %.val.i.i = load i64, ptr %i.ab, align 1
  %i.ac = call noundef i64 @llvm.bswap.i64(i64 %.val.i.i)
  %i.ad = lshr i64 %i.ac, 8
  %i.ae = and i64 %i.ad, 18014398509481983        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.0.copyload.i.i.i = load i16, ptr %i.af, align 4
  %i.ag = and i16 %.0.copyload.i.i.i, -255
  %i.ah = call i16 @llvm.bswap.i16(i16 %i.ag)     ; 3 uses
  %i.ai = zext nneg i16 %i.ah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ak = call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  store i64 %i.ak, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.al, i8 0, i64 12, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 3, ptr %i.am, align 1, !tbaa !80
  %i.an = lshr i16 %i.ah, 8
  %i.ao = trunc nuw nsw i16 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %i.ao, ptr %i.ap, align 4, !tbaa !80
  %i.aq = trunc i16 %i.ah to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @slhdsa_fors_pk_from_sig(ptr noundef nonnull %i.e, ptr noundef nonnull %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.d)
  %i.as = call i32 @slhdsa_ht_verify(ptr noundef nonnull %i.p, ptr noundef nonnull %i.e, i64 noundef %i.ae, i32 noundef %i.ai, ptr noundef nonnull %i.n, ptr noundef nonnull %2)
  %9 = shl nuw nsw i32 %i.as, 1
  %..i.i = xor i32 %9, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %BCM_slhdsa_sha2_128s_verify_internal.exit

BCM_slhdsa_sha2_128s_verify_internal.exit:        ; preds = %bb.g, %bb.h
  %.1.i.i = phi i32 [ %..i.i, %bb.h ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread

_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread: ; preds = %bb.d, %bb.b, %BCM_slhdsa_sha2_128s_verify_internal.exit
  %.0 = phi i32 [ %.1.i.i, %BCM_slhdsa_sha2_128s_verify_internal.exit ], [ 2, %bb.b ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread
  %.1 = phi i32 [ %.0, %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread ], [ 2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_thash_prfmsg(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  %8 = alloca %struct.sha256_state_st, align 4    ; 13 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = load <16 x i8>, ptr %i.a, align 16, !tbaa !80
  %i.d = xor <16 x i8> %i.c, splat (i8 54)
  store <16 x i8> %i.d, ptr %i.a, align 16, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 54, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.f = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.g = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 64) #36 ; 0 uses
  %i.h = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %3, i64 noundef 2) #36 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %4, i64 noundef %5) #36 ; 0 uses
  %i.k = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %6, i64 noundef %7) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.l = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %8) #36 ; 0 uses
  %i.m = load <16 x i8>, ptr %i.a, align 16, !tbaa !80
  %i.n = xor <16 x i8> %i.m, splat (i8 106)
  store <16 x i8> %i.n, ptr %i.a, align 16, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 92, i64 48, i1 false)
  %i.o = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.p = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 64) #36 ; 0 uses
  %i.q = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.b, i64 noundef 32) #36 ; 0 uses
  %i.r = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %8) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #7

declare i32 @SHA256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @SHA256_Final(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_thash_hmsg(ptr nofree noundef writeonly captures(none) initializes((0, 30)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [68 x i8], align 16               ; 7 uses
  %9 = alloca %struct.sha256_state_st, align 4    ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.d, i8 0, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.e = call i32 @SHA256_Init(ptr noundef nonnull %9) #36 ; 0 uses
  %i.f = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %1, i64 noundef 16) #36 ; 0 uses
  %i.g = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %2, i64 noundef 16) #36 ; 0 uses
  %i.h = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %4, i64 noundef 2) #36 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %5, i64 noundef %6) #36 ; 0 uses
  %i.k = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %7, i64 noundef %8) #36 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = call i32 @SHA256_Final(ptr noundef nonnull %i.l, ptr noundef nonnull %9) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.n = call ptr @SHA256(ptr noundef nonnull %i.a, i64 noundef 68, ptr noundef nonnull %i.b) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %0, ptr noundef nonnull readonly align 16 dereferenceable(30) %i.b, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_thash_tl(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = call i32 @SHA256_Init(ptr noundef nonnull %4) #36 ; 0 uses
  %i.c = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.d = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.e = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %3, i64 noundef 22) #36 ; 0 uses
  %i.f = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 560) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.g = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_tls1_prf(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.thread52, label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %2, i1 false)
  %i.b = tail call ptr @EVP_md5_sha1() #36
  %i.c = icmp eq ptr %0, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.d = lshr i64 %4, 1                           ; 2 uses
  %i.e = sub nuw i64 %4, %i.d                     ; 2 uses
  %i.f = tail call ptr @EVP_md5() #36
  %i.g = tail call fastcc noundef i32 @_ZL11tls1_P_hashPhmPK9env_md_stPKhmPKcmS4_mS4_m(ptr noundef %1, i64 noundef %2, ptr noundef %i.f, ptr noundef %3, i64 noundef %i.e, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread52, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL13EVP_sha1_once, ptr noundef nonnull @_ZL13EVP_sha1_initv) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit, %.thread
  %.143 = phi i64 [ %i.e, %.thread ], [ %4, %_ZL14OPENSSL_memsetPvim.exit ]
  %.141 = phi ptr [ %i.h, %.thread ], [ %3, %_ZL14OPENSSL_memsetPvim.exit ]
  %.139 = phi ptr [ @_ZL16EVP_sha1_storage, %.thread ], [ %0, %_ZL14OPENSSL_memsetPvim.exit ]
  %i.i = tail call fastcc noundef i32 @_ZL11tls1_P_hashPhmPK9env_md_stPKhmPKcmS4_mS4_m(ptr noundef %1, i64 noundef %2, ptr noundef %.139, ptr noundef %.141, i64 noundef %.143, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10)
  br label %.thread52

.thread52:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.1
}

declare ptr @EVP_md5_sha1() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL11tls1_P_hashPhmPK9env_md_stPKhmPKcmS4_mS4_m(ptr nofree noundef captures(none) %0, i64 noundef range(i64 1, 0) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10) unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %11 = alloca %struct.hmac_ctx_st, align 8       ; 23 uses
  %12 = alloca %struct.hmac_ctx_st, align 8       ; 21 uses
  %13 = alloca %struct.hmac_ctx_st, align 8       ; 22 uses
  %i.d = alloca [64 x i8], align 16               ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !199
  %i.h = zext i32 %i.g to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %11, i8 0, i64 104, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %12, i8 0, i64 104, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %13, i8 0, i64 104, i1 false)
  %i.i = call i32 @HMAC_Init_ex(ptr noundef nonnull %13, ptr noundef %3, i64 noundef %4, ptr noundef %2, ptr poison)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %HMAC_CTX_copy_ex.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.l = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %i.k)
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %HMAC_CTX_copy_ex.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 5 uses
end_hunk_4
