Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_encoder?download=true
inline.NumInlined: 130
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ojph5local23ojph_encode_codeblock32EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  %i.he = add nsw i32 %.033.i.us, -1              ; 2 uses
  %i.hf = lshr i32 %i.hd, %i.he
  %i.hg = and i32 %i.hf, 1
  %i.hh = shl i32 %i.hc, 1
  %i.hi = or disjoint i32 %i.hg, %i.hh            ; 3 uses
  store i32 %i.hi, ptr %i.h, align 4, !tbaa !45
  %i.hj = add nsw i32 %i.hb, -1                   ; 3 uses
  store i32 %i.hj, ptr %i.g, align 8, !tbaa !46
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ad, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i.us

bb.ad:                                            ; preds = %bb.ac
  %i.hl = load i32, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.hm = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i29.i.us = icmp ult i32 %i.hl, %i.hm
  br i1 %.not.i29.i.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hn = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !40
  %i.hp = load ptr, ptr %i.ho, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, i32 noundef 131073, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 311, ptr noundef nonnull @.str.2), !inline_history !2
  %.pre.i30.i.us = load i32, ptr %i.h, align 4, !tbaa !45
  %.pre12.i31.i.us = load i32, ptr %i.e, align 8, !tbaa !47
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hq = phi i32 [ %.pre12.i31.i.us, %bb.ae ], [ %i.hl, %bb.ad ] ; 2 uses
  %i.hr = phi i32 [ %.pre.i30.i.us, %bb.ae ], [ %i.hi, %bb.ad ]
  %i.hs = trunc i32 %i.hr to i8
  %i.ht = load ptr, ptr %9, align 8, !tbaa !29
  %i.hu = add i32 %i.hq, 1
  store i32 %i.hu, ptr %i.e, align 8, !tbaa !47
  %i.hv = zext i32 %i.hq to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hv
  store i8 %i.hs, ptr %i.hw, align 1, !tbaa !21
  %i.hx = load i32, ptr %i.h, align 4, !tbaa !45
  %i.hy = icmp eq i32 %i.hx, 255
  %i.hz = select i1 %i.hy, i32 7, i32 8           ; 2 uses
  store i32 %i.hz, ptr %i.g, align 8, !tbaa !46
  store i32 0, ptr %i.h, align 4, !tbaa !45
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i.us

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i.us: ; preds = %bb.af, %bb.ac
  %i.ia = phi i32 [ %i.hj, %bb.ac ], [ %i.hz, %bb.af ]
  %i.ib = phi i32 [ %i.hi, %bb.ac ], [ 0, %bb.af ]
  %i.ic = icmp sgt i32 %.033.i.us, 1
  br i1 %i.ic, label %bb.ac, label %._crit_edge.loopexit.i.us, !llvm.loop !3

._crit_edge.loopexit.i.us:                        ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i.us
  %.pre.i.us = load i32, ptr %i.j, align 4, !tbaa !31
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.loopexit.i.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit28.i.us
  %i.id = phi i32 [ %.pre.i.us, %._crit_edge.loopexit.i.us ], [ %i.gv, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit28.i.us ]
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.ie = call i32 @llvm.smax.i32(i32 %i.id, i32 1)
  %spec.select24.i.us = add nsw i32 %i.ie, -1     ; 2 uses
  store i32 %spec.select24.i.us, ptr %i.j, align 4, !tbaa !31
  %i.if = zext nneg i32 %spec.select24.i.us to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !14
  %i.ii = shl nuw i32 1, %i.ih
  store i32 %i.ii, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us

bb.ag:                                            ; preds = %bb.x
  %i.ij = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ik = add nsw i32 %i.ij, 1                    ; 2 uses
  store i32 %i.ik, ptr %i.i, align 8, !tbaa !30
  %i.il = load i32, ptr %i.k, align 8, !tbaa !32
  %.not.i1021.us = icmp slt i32 %i.ik, %i.il
  br i1 %.not.i1021.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.im = load i32, ptr %i.h, align 4, !tbaa !45
  %i.in = shl i32 %i.im, 1
  %i.io = or disjoint i32 %i.in, 1                ; 2 uses
  store i32 %i.io, ptr %i.h, align 4, !tbaa !45
  %i.ip = load i32, ptr %i.g, align 8, !tbaa !46
  %i.iq = add nsw i32 %i.ip, -1                   ; 2 uses
  store i32 %i.iq, ptr %i.g, align 8, !tbaa !46
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.ai, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us

bb.ai:                                            ; preds = %bb.ah
  %i.is = load i32, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.it = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i.i.us = icmp ult i32 %i.is, %i.it
  br i1 %.not.i.i.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !40
  %i.iw = load ptr, ptr %i.iv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, i32 noundef 131073, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 311, ptr noundef nonnull @.str.2), !inline_history !2
  %.pre.i.i.us = load i32, ptr %i.h, align 4, !tbaa !45
  %.pre12.i.i.us = load i32, ptr %i.e, align 8, !tbaa !47
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ix = phi i32 [ %.pre12.i.i.us, %bb.aj ], [ %i.is, %bb.ai ] ; 2 uses
  %i.iy = phi i32 [ %.pre.i.i.us, %bb.aj ], [ %i.io, %bb.ai ]
  %i.iz = trunc i32 %i.iy to i8
  %i.ja = load ptr, ptr %9, align 8, !tbaa !29
  %i.jb = add i32 %i.ix, 1
  store i32 %i.jb, ptr %i.e, align 8, !tbaa !47
  %i.jc = zext i32 %i.ix to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jc
  store i8 %i.iz, ptr %i.jd, align 1, !tbaa !21
  %i.je = load i32, ptr %i.h, align 4, !tbaa !45
  %i.jf = icmp eq i32 %i.je, 255
  %i.jg = select i1 %i.jf, i32 7, i32 8
  store i32 %i.jg, ptr %i.g, align 8, !tbaa !46
  store i32 0, ptr %i.h, align 4, !tbaa !45
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us: ; preds = %bb.ak, %bb.ah
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.jh = load i32, ptr %i.j, align 4, !tbaa !31
  %i.ji = call i32 @llvm.smin.i32(i32 %i.jh, i32 11)
  %spec.select.i.us = add nsw i32 %i.ji, 1        ; 2 uses
  store i32 %spec.select.i.us, ptr %i.j, align 4, !tbaa !31
  %i.jj = sext i32 %spec.select.i.us to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !14
  %i.jm = shl nuw i32 1, %i.jl
  store i32 %i.jm, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us

_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us: ; preds = %._crit_edge.i.us, %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1020.us
  %i.jn = and i32 %.sroa.0349.10.us, 1
  %.not763.us = icmp eq i32 %i.jn, 0
  %i.jo = and i32 %i.eq, 1
  %i.jp = sub nuw nsw i32 %i.cu, %i.jo            ; 2 uses
  %i.jq = select i1 %.not763.us, i32 0, i32 %i.jp ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph.i1024.us.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us

.lr.ph.i1024.us.preheader:                        ; preds = %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us
  %notmask.us = shl nsw i32 -1, %i.jq
  %i.js = xor i32 %notmask.us, -1
  %i.jt = and i32 %.sroa.0.4.us, %i.js
  br label %.lr.ph.i1024.us

.lr.ph.i1024.us:                                  ; preds = %.lr.ph.i1024.us.preheader, %bb.ao
  %.sroa.182.29.us = phi i32 [ %.sroa.182.30.us, %bb.ao ], [ %.sroa.182.31406.us, %.lr.ph.i1024.us.preheader ]
  %.sroa.131.29.us = phi i32 [ %.sroa.131.30.us, %bb.ao ], [ %.sroa.131.31407.us, %.lr.ph.i1024.us.preheader ] ; 3 uses
  %.sroa.97.29.us = phi i32 [ %.sroa.97.30.us, %bb.ao ], [ %.sroa.97.31408.us, %.lr.ph.i1024.us.preheader ] ; 3 uses
  %.sroa.21.29.us = phi i32 [ %.sroa.21.30.us, %bb.ao ], [ %.sroa.21.31409.us, %.lr.ph.i1024.us.preheader ] ; 4 uses
  %.032.i1025.us = phi i32 [ %i.ke, %bb.ao ], [ %i.jp, %.lr.ph.i1024.us.preheader ] ; 2 uses
  %.02731.i1026.us = phi i32 [ %i.kd, %bb.ao ], [ %i.jt, %.lr.ph.i1024.us.preheader ] ; 2 uses
  %.not.i1027.us = icmp ult i32 %.sroa.21.29.us, 17477
  br i1 %.not.i1027.us, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i1024.us
  %i.ju = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !40
  %i.jw = load ptr, ptr %i.jv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i1024.us
  %i.jx = sub nsw i32 %.sroa.97.29.us, %.sroa.131.29.us
  %..0.i1028.us = call i32 @llvm.smin.i32(i32 %i.jx, i32 %.032.i1025.us) ; 4 uses
  %notmask.i1029.us = shl nsw i32 -1, %..0.i1028.us
  %i.jy = xor i32 %notmask.i1029.us, -1
  %i.jz = and i32 %.02731.i1026.us, %i.jy
  %i.ka = shl i32 %i.jz, %.sroa.131.29.us
  %i.kb = or i32 %i.ka, %.sroa.182.29.us          ; 3 uses
  %i.kc = add nsw i32 %..0.i1028.us, %.sroa.131.29.us ; 2 uses
  %i.kd = lshr i32 %.02731.i1026.us, %..0.i1028.us
  %i.ke = sub nsw i32 %.032.i1025.us, %..0.i1028.us ; 2 uses
  %.not30.i1030.us = icmp slt i32 %i.kc, %.sroa.97.29.us
  br i1 %.not30.i1030.us, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kf = trunc i32 %i.kb to i8
  %i.kg = add nuw i32 %.sroa.21.29.us, 1
  %i.kh = zext i32 %.sroa.21.29.us to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kh
  store i8 %i.kf, ptr %i.ki, align 1, !tbaa !21
  %i.kj = icmp eq i32 %i.kb, 255
  %i.kk = select i1 %i.kj, i32 7, i32 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.182.30.us = phi i32 [ %i.kb, %bb.am ], [ 0, %bb.an ] ; 2 uses
  %.sroa.131.30.us = phi i32 [ %i.kc, %bb.am ], [ 0, %bb.an ] ; 2 uses
  %.sroa.97.30.us = phi i32 [ %.sroa.97.29.us, %bb.am ], [ %i.kk, %bb.an ] ; 2 uses
  %.sroa.21.30.us = phi i32 [ %.sroa.21.29.us, %bb.am ], [ %i.kg, %bb.an ] ; 2 uses
  %i.kl = icmp sgt i32 %i.ke, 0
  br i1 %i.kl, label %.lr.ph.i1024.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us: ; preds = %bb.ao, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us
  %.sroa.182.31.us = phi i32 [ %.sroa.182.31406.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us ], [ %.sroa.182.30.us, %bb.ao ] ; 2 uses
  %.sroa.131.31.us = phi i32 [ %.sroa.131.31407.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us ], [ %.sroa.131.30.us, %bb.ao ] ; 2 uses
  %.sroa.97.31.us = phi i32 [ %.sroa.97.31408.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us ], [ %.sroa.97.30.us, %bb.ao ] ; 2 uses
  %.sroa.21.31.us = phi i32 [ %.sroa.21.31409.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us ], [ %.sroa.21.30.us, %bb.ao ] ; 2 uses
  %.not764.us = icmp eq i32 %i.du, 0
  %11 = shl i32 %i.eq, 30
  %12 = ashr i32 %11, 31
  %13 = add nsw i32 %12, %i.cu                    ; 2 uses
  %i.km = select i1 %.not764.us, i32 0, i32 %13   ; 2 uses
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.lr.ph.i1033.us.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us

.lr.ph.i1033.us.preheader:                        ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us
  %notmask765.us = shl nsw i32 -1, %i.km
  %i.ko = xor i32 %notmask765.us, -1
  %i.kp = and i32 %.sroa.9.4.us, %i.ko
  br label %.lr.ph.i1033.us

.lr.ph.i1033.us:                                  ; preds = %.lr.ph.i1033.us.preheader, %bb.as
  %.sroa.182.32.us = phi i32 [ %.sroa.182.33.us, %bb.as ], [ %.sroa.182.31.us, %.lr.ph.i1033.us.preheader ]
  %.sroa.131.32.us = phi i32 [ %.sroa.131.33.us, %bb.as ], [ %.sroa.131.31.us, %.lr.ph.i1033.us.preheader ] ; 3 uses
  %.sroa.97.32.us = phi i32 [ %.sroa.97.33.us, %bb.as ], [ %.sroa.97.31.us, %.lr.ph.i1033.us.preheader ] ; 3 uses
  %.sroa.21.32.us = phi i32 [ %.sroa.21.33.us, %bb.as ], [ %.sroa.21.31.us, %.lr.ph.i1033.us.preheader ] ; 4 uses
  %.032.i1034.us = phi i32 [ %i.la, %bb.as ], [ %13, %.lr.ph.i1033.us.preheader ] ; 2 uses
  %.02731.i1035.us = phi i32 [ %i.kz, %bb.as ], [ %i.kp, %.lr.ph.i1033.us.preheader ] ; 2 uses
  %.not.i1036.us = icmp ult i32 %.sroa.21.32.us, 17477
  br i1 %.not.i1036.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i1033.us
  %i.kq = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !40
  %i.ks = load ptr, ptr %i.kr, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i1033.us
  %i.kt = sub nsw i32 %.sroa.97.32.us, %.sroa.131.32.us
  %..0.i1037.us = call i32 @llvm.smin.i32(i32 %i.kt, i32 %.032.i1034.us) ; 4 uses
  %notmask.i1038.us = shl nsw i32 -1, %..0.i1037.us
  %i.ku = xor i32 %notmask.i1038.us, -1
  %i.kv = and i32 %.02731.i1035.us, %i.ku
  %i.kw = shl i32 %i.kv, %.sroa.131.32.us
  %i.kx = or i32 %i.kw, %.sroa.182.32.us          ; 3 uses
  %i.ky = add nsw i32 %..0.i1037.us, %.sroa.131.32.us ; 2 uses
  %i.kz = lshr i32 %.02731.i1035.us, %..0.i1037.us
  %i.la = sub nsw i32 %.032.i1034.us, %..0.i1037.us ; 2 uses
  %.not30.i1039.us = icmp slt i32 %i.ky, %.sroa.97.32.us
  br i1 %.not30.i1039.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lb = trunc i32 %i.kx to i8
  %i.lc = add nuw i32 %.sroa.21.32.us, 1
  %i.ld = zext i32 %.sroa.21.32.us to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ld
  store i8 %i.lb, ptr %i.le, align 1, !tbaa !21
  %i.lf = icmp eq i32 %i.kx, 255
  %i.lg = select i1 %i.lf, i32 7, i32 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.182.33.us = phi i32 [ %i.kx, %bb.aq ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.131.33.us = phi i32 [ %i.ky, %bb.aq ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.97.33.us = phi i32 [ %.sroa.97.32.us, %bb.aq ], [ %i.lg, %bb.ar ] ; 2 uses
  %.sroa.21.33.us = phi i32 [ %.sroa.21.32.us, %bb.aq ], [ %i.lc, %bb.ar ] ; 2 uses
  %i.lh = icmp sgt i32 %i.la, 0
  br i1 %i.lh, label %.lr.ph.i1033.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us: ; preds = %bb.as, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us, %bb.ag, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us
  %.sroa.182.34.us = phi i32 [ %.sroa.182.31.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us ], [ %.sroa.182.31406.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us ], [ %.sroa.182.31406.us, %bb.ag ], [ %.sroa.182.33.us, %bb.as ] ; 2 uses
  %.sroa.131.34.us = phi i32 [ %.sroa.131.31.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us ], [ %.sroa.131.31407.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us ], [ %.sroa.131.31407.us, %bb.ag ], [ %.sroa.131.33.us, %bb.as ] ; 2 uses
  %.sroa.97.34.us = phi i32 [ %.sroa.97.31.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us ], [ %.sroa.97.31408.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us ], [ %.sroa.97.31408.us, %bb.ag ], [ %.sroa.97.33.us, %bb.as ] ; 2 uses
  %.sroa.21.34.us = phi i32 [ %.sroa.21.31.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1031.us ], [ %.sroa.21.31409.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us ], [ %.sroa.21.31409.us, %bb.ag ], [ %.sroa.21.33.us, %bb.as ] ; 2 uses
  %i.li = and i32 %.sroa.0349.10.us, 4            ; 2 uses
  %.not766.us = icmp eq i32 %i.li, 0
  %14 = shl i32 %i.eq, 29
  %15 = ashr i32 %14, 31
  %16 = add nsw i32 %15, %i.cu                    ; 2 uses
  %i.lj = select i1 %.not766.us, i32 0, i32 %16   ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph.i1042.us.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us

.lr.ph.i1042.us.preheader:                        ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us
  %notmask767.us = shl nsw i32 -1, %i.lj
  %i.ll = xor i32 %notmask767.us, -1
  %i.lm = and i32 %.sroa.15.6.us, %i.ll
  br label %.lr.ph.i1042.us

.lr.ph.i1042.us:                                  ; preds = %.lr.ph.i1042.us.preheader, %bb.aw
  %.sroa.182.35.us = phi i32 [ %.sroa.182.36.us, %bb.aw ], [ %.sroa.182.34.us, %.lr.ph.i1042.us.preheader ]
  %.sroa.131.35.us = phi i32 [ %.sroa.131.36.us, %bb.aw ], [ %.sroa.131.34.us, %.lr.ph.i1042.us.preheader ] ; 3 uses
  %.sroa.97.35.us = phi i32 [ %.sroa.97.36.us, %bb.aw ], [ %.sroa.97.34.us, %.lr.ph.i1042.us.preheader ] ; 3 uses
  %.sroa.21.35.us = phi i32 [ %.sroa.21.36.us, %bb.aw ], [ %.sroa.21.34.us, %.lr.ph.i1042.us.preheader ] ; 4 uses
  %.032.i1043.us = phi i32 [ %i.lx, %bb.aw ], [ %16, %.lr.ph.i1042.us.preheader ] ; 2 uses
  %.02731.i1044.us = phi i32 [ %i.lw, %bb.aw ], [ %i.lm, %.lr.ph.i1042.us.preheader ] ; 2 uses
  %.not.i1045.us = icmp ult i32 %.sroa.21.35.us, 17477
  br i1 %.not.i1045.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i1042.us
  %i.ln = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !40
  %i.lp = load ptr, ptr %i.lo, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.lp(ptr noundef nonnull align 8 dereferenceable(8) %i.ln, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i1042.us
  %i.lq = sub nsw i32 %.sroa.97.35.us, %.sroa.131.35.us
  %..0.i1046.us = call i32 @llvm.smin.i32(i32 %i.lq, i32 %.032.i1043.us) ; 4 uses
  %notmask.i1047.us = shl nsw i32 -1, %..0.i1046.us
  %i.lr = xor i32 %notmask.i1047.us, -1
  %i.ls = and i32 %.02731.i1044.us, %i.lr
  %i.lt = shl i32 %i.ls, %.sroa.131.35.us
  %i.lu = or i32 %i.lt, %.sroa.182.35.us          ; 3 uses
  %i.lv = add nsw i32 %..0.i1046.us, %.sroa.131.35.us ; 2 uses
  %i.lw = lshr i32 %.02731.i1044.us, %..0.i1046.us
  %i.lx = sub nsw i32 %.032.i1043.us, %..0.i1046.us ; 2 uses
  %.not30.i1048.us = icmp slt i32 %i.lv, %.sroa.97.35.us
  br i1 %.not30.i1048.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ly = trunc i32 %i.lu to i8
  %i.lz = add nuw i32 %.sroa.21.35.us, 1
  %i.ma = zext i32 %.sroa.21.35.us to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ma
  store i8 %i.ly, ptr %i.mb, align 1, !tbaa !21
  %i.mc = icmp eq i32 %i.lu, 255
  %i.md = select i1 %i.mc, i32 7, i32 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.182.36.us = phi i32 [ %i.lu, %bb.au ], [ 0, %bb.av ] ; 2 uses
  %.sroa.131.36.us = phi i32 [ %i.lv, %bb.au ], [ 0, %bb.av ] ; 2 uses
  %.sroa.97.36.us = phi i32 [ %.sroa.97.35.us, %bb.au ], [ %i.md, %bb.av ] ; 2 uses
  %.sroa.21.36.us = phi i32 [ %.sroa.21.35.us, %bb.au ], [ %i.lz, %bb.av ] ; 2 uses
  %i.me = icmp sgt i32 %i.lx, 0
  br i1 %i.me, label %.lr.ph.i1042.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us: ; preds = %bb.aw, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us
  %.sroa.182.37.us = phi i32 [ %.sroa.182.34.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us ], [ %.sroa.182.36.us, %bb.aw ] ; 2 uses
  %.sroa.131.37.us = phi i32 [ %.sroa.131.34.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us ], [ %.sroa.131.36.us, %bb.aw ] ; 2 uses
  %.sroa.97.37.us = phi i32 [ %.sroa.97.34.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us ], [ %.sroa.97.36.us, %bb.aw ] ; 2 uses
  %.sroa.21.37.us = phi i32 [ %.sroa.21.34.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1040.us ], [ %.sroa.21.36.us, %bb.aw ] ; 2 uses
  %.not768.us = icmp eq i32 %i.eg, 0
  %17 = shl i32 %i.eq, 28
  %18 = ashr i32 %17, 31
  %19 = add nsw i32 %18, %i.cu                    ; 2 uses
  %i.mf = select i1 %.not768.us, i32 0, i32 %19   ; 2 uses
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %.lr.ph.i1051.us.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us

.lr.ph.i1051.us.preheader:                        ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us
  %notmask769.us = shl nsw i32 -1, %i.mf
  %i.mh = xor i32 %notmask769.us, -1
  %i.mi = and i32 %.sroa.21.4.us, %i.mh
  br label %.lr.ph.i1051.us

.lr.ph.i1051.us:                                  ; preds = %.lr.ph.i1051.us.preheader, %bb.ba
  %.sroa.182.38.us = phi i32 [ %.sroa.182.39.us, %bb.ba ], [ %.sroa.182.37.us, %.lr.ph.i1051.us.preheader ]
  %.sroa.131.38.us = phi i32 [ %.sroa.131.39.us, %bb.ba ], [ %.sroa.131.37.us, %.lr.ph.i1051.us.preheader ] ; 3 uses
  %.sroa.97.38.us = phi i32 [ %.sroa.97.39.us, %bb.ba ], [ %.sroa.97.37.us, %.lr.ph.i1051.us.preheader ] ; 3 uses
  %.sroa.21.38.us = phi i32 [ %.sroa.21.39.us, %bb.ba ], [ %.sroa.21.37.us, %.lr.ph.i1051.us.preheader ] ; 4 uses
  %.032.i1052.us = phi i32 [ %i.mt, %bb.ba ], [ %19, %.lr.ph.i1051.us.preheader ] ; 2 uses
  %.02731.i1053.us = phi i32 [ %i.ms, %bb.ba ], [ %i.mi, %.lr.ph.i1051.us.preheader ] ; 2 uses
  %.not.i1054.us = icmp ult i32 %.sroa.21.38.us, 17477
  br i1 %.not.i1054.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i1051.us
  %i.mj = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !40
  %i.ml = load ptr, ptr %i.mk, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ml(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i1051.us
  %i.mm = sub nsw i32 %.sroa.97.38.us, %.sroa.131.38.us
  %..0.i1055.us = call i32 @llvm.smin.i32(i32 %i.mm, i32 %.032.i1052.us) ; 4 uses
  %notmask.i1056.us = shl nsw i32 -1, %..0.i1055.us
  %i.mn = xor i32 %notmask.i1056.us, -1
  %i.mo = and i32 %.02731.i1053.us, %i.mn
  %i.mp = shl i32 %i.mo, %.sroa.131.38.us
  %i.mq = or i32 %i.mp, %.sroa.182.38.us          ; 3 uses
  %i.mr = add nsw i32 %..0.i1055.us, %.sroa.131.38.us ; 2 uses
  %i.ms = lshr i32 %.02731.i1053.us, %..0.i1055.us
  %i.mt = sub nsw i32 %.032.i1052.us, %..0.i1055.us ; 2 uses
  %.not30.i1057.us = icmp slt i32 %i.mr, %.sroa.97.38.us
  br i1 %.not30.i1057.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mu = trunc i32 %i.mq to i8
  %i.mv = add nuw i32 %.sroa.21.38.us, 1
  %i.mw = zext i32 %.sroa.21.38.us to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mw
  store i8 %i.mu, ptr %i.mx, align 1, !tbaa !21
  %i.my = icmp eq i32 %i.mq, 255
  %i.mz = select i1 %i.my, i32 7, i32 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.182.39.us = phi i32 [ %i.mq, %bb.ay ], [ 0, %bb.az ] ; 2 uses
  %.sroa.131.39.us = phi i32 [ %i.mr, %bb.ay ], [ 0, %bb.az ] ; 2 uses
  %.sroa.97.39.us = phi i32 [ %.sroa.97.38.us, %bb.ay ], [ %i.mz, %bb.az ] ; 2 uses
  %.sroa.21.39.us = phi i32 [ %.sroa.21.38.us, %bb.ay ], [ %i.mv, %bb.az ] ; 2 uses
  %i.na = icmp sgt i32 %i.mt, 0
  br i1 %i.na, label %.lr.ph.i1051.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us: ; preds = %bb.ba, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us
  %.sroa.182.40.us = phi i32 [ %.sroa.182.37.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us ], [ %.sroa.182.39.us, %bb.ba ] ; 5 uses
  %.sroa.131.40.us = phi i32 [ %.sroa.131.37.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us ], [ %.sroa.131.39.us, %bb.ba ] ; 5 uses
  %.sroa.97.40.us = phi i32 [ %.sroa.97.37.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us ], [ %.sroa.97.39.us, %bb.ba ] ; 5 uses
  %.sroa.21.40.us = phi i32 [ %.sroa.21.37.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1049.us ], [ %.sroa.21.39.us, %bb.ba ] ; 5 uses
  %i.nb = or disjoint i32 %.07171415.us, 2
  %i.nc = icmp ult i32 %i.nb, %3
  br i1 %i.nc, label %bb.bb, label %bb.db

bb.bb:                                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us
  %i.nd = load i32, ptr %.5.us, align 4, !tbaa !14 ; 2 uses
  %i.ne = shl i32 %i.nd, 1
  %i.nf = lshr i32 %i.ne, %i.r
  %i.ng = and i32 %i.nf, -2                       ; 3 uses
  %.not770.us = icmp eq i32 %i.ng, 0
  br i1 %.not770.us, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nh = add i32 %i.ng, -1
  %i.ni = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, -2) %i.nh, i1 true)
  %i.nj = sub nuw nsw i32 32, %i.ni
  %i.nk = add i32 %i.ng, -2
  %i.nl = lshr i32 %i.nd, 31
  %i.nm = or disjoint i32 %i.nk, %i.nl
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.47.4.us = phi i32 [ %i.nj, %bb.bc ], [ 0, %bb.bb ] ; 3 uses
  %.sroa.41.8.us = phi i32 [ 1, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.27.4.us = phi i32 [ %i.nm, %bb.bc ], [ 0, %bb.bb ]
  br i1 %i.ao, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.5.us, i64 %i.z
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !14
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.np = phi i32 [ %i.no, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.5.us, i64 4 ; 3 uses
  %i.nr = shl i32 %i.np, 1
  %i.ns = lshr i32 %i.nr, %i.r
  %i.nt = and i32 %i.ns, -2                       ; 3 uses
  %.not771.us = icmp eq i32 %i.nt, 0
  br i1 %.not771.us, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nu = or disjoint i32 %.sroa.41.8.us, 2
  %i.nv = add i32 %i.nt, -1
  %i.nw = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, -2) %i.nv, i1 true)
  %i.nx = sub nuw nsw i32 32, %i.nw               ; 2 uses
  %i.ny = call i32 @llvm.umax.i32(i32 %.sroa.47.4.us, i32 %i.nx)
  %i.nz = add i32 %i.nt, -2
  %i.oa = lshr i32 %i.np, 31
  %i.ob = or disjoint i32 %i.nz, %i.oa
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.37.8.us = phi i32 [ %i.ny, %bb.bg ], [ %.sroa.47.4.us, %bb.bf ] ; 3 uses
  %.sroa.55.4.us = phi i32 [ %i.nx, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.41.9.us = phi i32 [ %i.nu, %bb.bg ], [ %.sroa.41.8.us, %bb.bf ] ; 3 uses
  %.sroa.33.4.us = phi i32 [ %i.ob, %bb.bg ], [ 0, %bb.bf ]
  %i.oc = or disjoint i32 %.07171415.us, 3
  %i.od = icmp ult i32 %i.oc, %3
  br i1 %i.od, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.oe = load i32, ptr %i.nq, align 4, !tbaa !14 ; 2 uses
  %i.of = shl i32 %i.oe, 1
  %i.og = lshr i32 %i.of, %i.r
  %i.oh = and i32 %i.og, -2                       ; 3 uses
  %.not772.us = icmp eq i32 %i.oh, 0
  br i1 %.not772.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oi = add nuw nsw i32 %.sroa.41.9.us, 4
  %i.oj = add i32 %i.oh, -1
  %i.ok = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, -2) %i.oj, i1 true)
  %i.ol = sub nuw nsw i32 32, %i.ok               ; 2 uses
  %i.om = call i32 @llvm.umax.i32(i32 %.sroa.37.8.us, i32 %i.ol)
  %i.on = add i32 %i.oh, -2
  %i.oo = lshr i32 %i.oe, 31
  %i.op = or disjoint i32 %i.on, %i.oo
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.37.9.us = phi i32 [ %i.om, %bb.bj ], [ %.sroa.37.8.us, %bb.bi ] ; 2 uses
  %.sroa.69.5.us = phi i32 [ %i.ol, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.sroa.41.10.us = phi i32 [ %i.oi, %bb.bj ], [ %.sroa.41.9.us, %bb.bi ] ; 2 uses
  %.sroa.39.5.us = phi i32 [ %i.op, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  br i1 %i.ao, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.z
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !14
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.os = phi i32 [ %i.or, %bb.bl ], [ 0, %bb.bk ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.5.us, i64 8 ; 2 uses
  %i.ou = shl i32 %i.os, 1
  %i.ov = lshr i32 %i.ou, %i.r
  %i.ow = and i32 %i.ov, -2                       ; 3 uses
  %.not773.us = icmp eq i32 %i.ow, 0
  br i1 %.not773.us, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ox = add nuw nsw i32 %.sroa.41.10.us, 8
  %i.oy = add i32 %i.ow, -1
  %i.oz = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, -2) %i.oy, i1 true)
  %i.pa = sub nuw nsw i32 32, %i.oz               ; 2 uses
  %i.pb = call i32 @llvm.umax.i32(i32 %.sroa.37.9.us, i32 %i.pa)
  %i.pc = add i32 %i.ow, -2
  %i.pd = lshr i32 %i.os, 31
  %i.pe = or disjoint i32 %i.pc, %i.pd
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bh
  %.sroa.37.10.us = phi i32 [ %i.pb, %bb.bn ], [ %.sroa.37.9.us, %bb.bm ], [ %.sroa.37.8.us, %bb.bh ] ; 6 uses
  %.sroa.69.6.us = phi i32 [ %.sroa.69.5.us, %bb.bn ], [ %.sroa.69.5.us, %bb.bm ], [ 0, %bb.bh ]
  %.sroa.79.4.us = phi i32 [ %i.pa, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bh ] ; 2 uses
  %.sroa.41.11.us = phi i32 [ %i.ox, %bb.bn ], [ %.sroa.41.10.us, %bb.bm ], [ %.sroa.41.9.us, %bb.bh ] ; 8 uses
  %.sroa.39.6.us = phi i32 [ %.sroa.39.5.us, %bb.bn ], [ %.sroa.39.5.us, %bb.bm ], [ 0, %bb.bh ]
  %.sroa.45.4.us = phi i32 [ %i.pe, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bh ]
  %.6.us = phi ptr [ %i.ot, %bb.bn ], [ %i.ot, %bb.bm ], [ %i.nq, %bb.bh ]
  %i.pf = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.sroa.41.11.us)
  %i.pg = call i32 @llvm.smax.i32(i32 %i.dr, i32 1)
  %.not774.inv.us = icmp samesign ugt i32 %i.pf, 1
  %i.ph = select i1 %.not774.inv.us, i32 %i.pg, i32 1 ; 3 uses
  %i.pi = lshr exact i32 %i.li, 1
  %i.pj = lshr exact i32 %i.eg, 2
  %i.pk = or i32 %i.pi, %i.pj
  %i.pl = or i32 %i.pk, %i.ef                     ; 2 uses
  %i.pm = call i32 @llvm.umax.i32(i32 %.sroa.37.10.us, i32 %i.ph) ; 5 uses
  %i.pn = sub nuw nsw i32 %i.pm, %i.ph
  %.not1575.not = icmp ult i32 %i.ph, %.sroa.37.10.us
  br i1 %.not1575.not, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.po = icmp eq i32 %.sroa.47.4.us, %.sroa.37.10.us
  %i.pp = zext i1 %i.po to i32
end_hunk_0
begin_hunk_1_@_ZN4ojph5local23ojph_encode_codeblock32EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  %i.tu = add nsw i32 %.033.i1082.us, -1          ; 2 uses
  %i.tv = lshr i32 %i.tt, %i.tu
  %i.tw = and i32 %i.tv, 1
  %i.tx = shl i32 %i.ts, 1
  %i.ty = or disjoint i32 %i.tw, %i.tx            ; 3 uses
  store i32 %i.ty, ptr %i.h, align 4, !tbaa !45
  %i.tz = add nsw i32 %i.tr, -1                   ; 3 uses
  store i32 %i.tz, ptr %i.g, align 8, !tbaa !46
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.cd, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i1083.us

bb.cd:                                            ; preds = %bb.cc
  %i.ub = load i32, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.uc = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i29.i1086.us = icmp ult i32 %i.ub, %i.uc
  br i1 %.not.i29.i1086.us, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ud = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !40
  %i.uf = load ptr, ptr %i.ue, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.uf(ptr noundef nonnull align 8 dereferenceable(8) %i.ud, i32 noundef 131073, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 311, ptr noundef nonnull @.str.2), !inline_history !2
  %.pre.i30.i1087.us = load i32, ptr %i.h, align 4, !tbaa !45
  %.pre12.i31.i1088.us = load i32, ptr %i.e, align 8, !tbaa !47
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.ug = phi i32 [ %.pre12.i31.i1088.us, %bb.ce ], [ %i.ub, %bb.cd ] ; 2 uses
  %i.uh = phi i32 [ %.pre.i30.i1087.us, %bb.ce ], [ %i.ty, %bb.cd ]
  %i.ui = trunc i32 %i.uh to i8
  %i.uj = load ptr, ptr %9, align 8, !tbaa !29
  %i.uk = add i32 %i.ug, 1
  store i32 %i.uk, ptr %i.e, align 8, !tbaa !47
  %i.ul = zext i32 %i.ug to i64
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.ul
  store i8 %i.ui, ptr %i.um, align 1, !tbaa !21
  %i.un = load i32, ptr %i.h, align 4, !tbaa !45
  %i.uo = icmp eq i32 %i.un, 255
  %i.up = select i1 %i.uo, i32 7, i32 8           ; 2 uses
  store i32 %i.up, ptr %i.g, align 8, !tbaa !46
  store i32 0, ptr %i.h, align 4, !tbaa !45
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i1083.us

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i1083.us: ; preds = %bb.cf, %bb.cc
  %i.uq = phi i32 [ %i.tz, %bb.cc ], [ %i.up, %bb.cf ]
  %i.ur = phi i32 [ %i.ty, %bb.cc ], [ 0, %bb.cf ]
  %i.us = icmp sgt i32 %.033.i1082.us, 1
  br i1 %i.us, label %bb.cc, label %._crit_edge.loopexit.i1084.us, !llvm.loop !3

._crit_edge.loopexit.i1084.us:                    ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i1083.us
  %.pre.i1085.us = load i32, ptr %i.j, align 4, !tbaa !31
  br label %._crit_edge.i1079.us

._crit_edge.i1079.us:                             ; preds = %._crit_edge.loopexit.i1084.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit28.i1078.us
  %i.ut = phi i32 [ %.pre.i1085.us, %._crit_edge.loopexit.i1084.us ], [ %i.tl, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit28.i1078.us ]
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.uu = call i32 @llvm.smax.i32(i32 %i.ut, i32 1)
  %spec.select24.i1080.us = add nsw i32 %i.uu, -1 ; 2 uses
  store i32 %spec.select24.i1080.us, ptr %i.j, align 4, !tbaa !31
  %i.uv = zext nneg i32 %spec.select24.i1080.us to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !14
  %i.uy = shl nuw i32 1, %i.ux
  store i32 %i.uy, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1092.us

bb.cg:                                            ; preds = %bb.bx
  %i.uz = load i32, ptr %i.i, align 8, !tbaa !30
  %i.va = add nsw i32 %i.uz, 1                    ; 2 uses
  store i32 %i.va, ptr %i.i, align 8, !tbaa !30
  %i.vb = load i32, ptr %i.k, align 8, !tbaa !32
  %.not.i1072.us = icmp slt i32 %i.va, %i.vb
  br i1 %.not.i1072.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vc = load i32, ptr %i.h, align 4, !tbaa !45
  %i.vd = shl i32 %i.vc, 1
  %i.ve = or disjoint i32 %i.vd, 1                ; 2 uses
  store i32 %i.ve, ptr %i.h, align 4, !tbaa !45
  %i.vf = load i32, ptr %i.g, align 8, !tbaa !46
  %i.vg = add nsw i32 %i.vf, -1                   ; 2 uses
  store i32 %i.vg, ptr %i.g, align 8, !tbaa !46
  %i.vh = icmp eq i32 %i.vg, 0
  br i1 %i.vh, label %bb.ci, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1073.us

bb.ci:                                            ; preds = %bb.ch
  %i.vi = load i32, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.vj = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i.i1075.us = icmp ult i32 %i.vi, %i.vj
  br i1 %.not.i.i1075.us, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vk = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !40
  %i.vm = load ptr, ptr %i.vl, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.vm(ptr noundef nonnull align 8 dereferenceable(8) %i.vk, i32 noundef 131073, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 311, ptr noundef nonnull @.str.2), !inline_history !2
  %.pre.i.i1076.us = load i32, ptr %i.h, align 4, !tbaa !45
  %.pre12.i.i1077.us = load i32, ptr %i.e, align 8, !tbaa !47
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.vn = phi i32 [ %.pre12.i.i1077.us, %bb.cj ], [ %i.vi, %bb.ci ] ; 2 uses
  %i.vo = phi i32 [ %.pre.i.i1076.us, %bb.cj ], [ %i.ve, %bb.ci ]
  %i.vp = trunc i32 %i.vo to i8
  %i.vq = load ptr, ptr %9, align 8, !tbaa !29
  %i.vr = add i32 %i.vn, 1
  store i32 %i.vr, ptr %i.e, align 8, !tbaa !47
  %i.vs = zext i32 %i.vn to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.vs
  store i8 %i.vp, ptr %i.vt, align 1, !tbaa !21
  %i.vu = load i32, ptr %i.h, align 4, !tbaa !45
  %i.vv = icmp eq i32 %i.vu, 255
  %i.vw = select i1 %i.vv, i32 7, i32 8
  store i32 %i.vw, ptr %i.g, align 8, !tbaa !46
  store i32 0, ptr %i.h, align 4, !tbaa !45
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1073.us

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1073.us: ; preds = %bb.ck, %bb.ch
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.vx = load i32, ptr %i.j, align 4, !tbaa !31
  %i.vy = call i32 @llvm.smin.i32(i32 %i.vx, i32 11)
  %spec.select.i1074.us = add nsw i32 %i.vy, 1    ; 2 uses
  store i32 %spec.select.i1074.us, ptr %i.j, align 4, !tbaa !31
  %i.vz = sext i32 %spec.select.i1074.us to i64
  %i.wa = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !14
  %i.wc = shl nuw i32 1, %i.wb
  store i32 %i.wc, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us

_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1092.us: ; preds = %._crit_edge.i1079.us, %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1071.us
  %i.wd = and i32 %.sroa.41.11.us, 1
  %.not775.us = icmp eq i32 %i.wd, 0
  %i.we = and i32 %i.rg, 1
  %i.wf = sub nuw nsw i32 %i.pm, %i.we            ; 2 uses
  %i.wg = select i1 %.not775.us, i32 0, i32 %i.wf ; 2 uses
  %i.wh = icmp sgt i32 %i.wg, 0
  br i1 %i.wh, label %.lr.ph.i1094.us.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us

.lr.ph.i1094.us.preheader:                        ; preds = %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1092.us
  %notmask776.us = shl nsw i32 -1, %i.wg
  %i.wi = xor i32 %notmask776.us, -1
  %i.wj = and i32 %.sroa.27.4.us, %i.wi
  br label %.lr.ph.i1094.us

.lr.ph.i1094.us:                                  ; preds = %.lr.ph.i1094.us.preheader, %bb.co
  %.sroa.182.41.us = phi i32 [ %.sroa.182.42.us, %bb.co ], [ %.sroa.182.40.us, %.lr.ph.i1094.us.preheader ]
  %.sroa.131.41.us = phi i32 [ %.sroa.131.42.us, %bb.co ], [ %.sroa.131.40.us, %.lr.ph.i1094.us.preheader ] ; 3 uses
  %.sroa.97.41.us = phi i32 [ %.sroa.97.42.us, %bb.co ], [ %.sroa.97.40.us, %.lr.ph.i1094.us.preheader ] ; 3 uses
  %.sroa.21.41.us = phi i32 [ %.sroa.21.42.us, %bb.co ], [ %.sroa.21.40.us, %.lr.ph.i1094.us.preheader ] ; 4 uses
  %.032.i1095.us = phi i32 [ %i.wu, %bb.co ], [ %i.wf, %.lr.ph.i1094.us.preheader ] ; 2 uses
  %.02731.i1096.us = phi i32 [ %i.wt, %bb.co ], [ %i.wj, %.lr.ph.i1094.us.preheader ] ; 2 uses
  %.not.i1097.us = icmp ult i32 %.sroa.21.41.us, 17477
  br i1 %.not.i1097.us, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i1094.us
  %i.wk = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !40
  %i.wm = load ptr, ptr %i.wl, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.wm(ptr noundef nonnull align 8 dereferenceable(8) %i.wk, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph.i1094.us
  %i.wn = sub nsw i32 %.sroa.97.41.us, %.sroa.131.41.us
  %..0.i1098.us = call i32 @llvm.smin.i32(i32 %i.wn, i32 %.032.i1095.us) ; 4 uses
  %notmask.i1099.us = shl nsw i32 -1, %..0.i1098.us
  %i.wo = xor i32 %notmask.i1099.us, -1
  %i.wp = and i32 %.02731.i1096.us, %i.wo
  %i.wq = shl i32 %i.wp, %.sroa.131.41.us
  %i.wr = or i32 %i.wq, %.sroa.182.41.us          ; 3 uses
  %i.ws = add nsw i32 %..0.i1098.us, %.sroa.131.41.us ; 2 uses
  %i.wt = lshr i32 %.02731.i1096.us, %..0.i1098.us
  %i.wu = sub nsw i32 %.032.i1095.us, %..0.i1098.us ; 2 uses
  %.not30.i1100.us = icmp slt i32 %i.ws, %.sroa.97.41.us
  br i1 %.not30.i1100.us, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.wv = trunc i32 %i.wr to i8
  %i.ww = add nuw i32 %.sroa.21.41.us, 1
  %i.wx = zext i32 %.sroa.21.41.us to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wx
  store i8 %i.wv, ptr %i.wy, align 1, !tbaa !21
  %i.wz = icmp eq i32 %i.wr, 255
  %i.xa = select i1 %i.wz, i32 7, i32 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.sroa.182.42.us = phi i32 [ %i.wr, %bb.cm ], [ 0, %bb.cn ] ; 2 uses
  %.sroa.131.42.us = phi i32 [ %i.ws, %bb.cm ], [ 0, %bb.cn ] ; 2 uses
  %.sroa.97.42.us = phi i32 [ %.sroa.97.41.us, %bb.cm ], [ %i.xa, %bb.cn ] ; 2 uses
  %.sroa.21.42.us = phi i32 [ %.sroa.21.41.us, %bb.cm ], [ %i.ww, %bb.cn ] ; 2 uses
  %i.xb = icmp sgt i32 %i.wu, 0
  br i1 %i.xb, label %.lr.ph.i1094.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us: ; preds = %bb.co, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1092.us
  %.sroa.182.43.us = phi i32 [ %.sroa.182.40.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1092.us ], [ %.sroa.182.42.us, %bb.co ] ; 2 uses
  %.sroa.131.43.us = phi i32 [ %.sroa.131.40.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1092.us ], [ %.sroa.131.42.us, %bb.co ] ; 2 uses
  %.sroa.97.43.us = phi i32 [ %.sroa.97.40.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1092.us ], [ %.sroa.97.42.us, %bb.co ] ; 2 uses
  %.sroa.21.43.us = phi i32 [ %.sroa.21.40.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1092.us ], [ %.sroa.21.42.us, %bb.co ] ; 2 uses
  %.not777.us = icmp eq i32 %i.ql, 0
  %20 = shl i32 %i.rg, 30
  %21 = ashr i32 %20, 31
  %22 = add nsw i32 %21, %i.pm                    ; 2 uses
  %i.xc = select i1 %.not777.us, i32 0, i32 %22   ; 2 uses
  %i.xd = icmp sgt i32 %i.xc, 0
  br i1 %i.xd, label %.lr.ph.i1103.us.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us

.lr.ph.i1103.us.preheader:                        ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us
  %notmask778.us = shl nsw i32 -1, %i.xc
  %i.xe = xor i32 %notmask778.us, -1
  %i.xf = and i32 %.sroa.33.4.us, %i.xe
  br label %.lr.ph.i1103.us

.lr.ph.i1103.us:                                  ; preds = %.lr.ph.i1103.us.preheader, %bb.cs
  %.sroa.182.44.us = phi i32 [ %.sroa.182.45.us, %bb.cs ], [ %.sroa.182.43.us, %.lr.ph.i1103.us.preheader ]
  %.sroa.131.44.us = phi i32 [ %.sroa.131.45.us, %bb.cs ], [ %.sroa.131.43.us, %.lr.ph.i1103.us.preheader ] ; 3 uses
  %.sroa.97.44.us = phi i32 [ %.sroa.97.45.us, %bb.cs ], [ %.sroa.97.43.us, %.lr.ph.i1103.us.preheader ] ; 3 uses
  %.sroa.21.44.us = phi i32 [ %.sroa.21.45.us, %bb.cs ], [ %.sroa.21.43.us, %.lr.ph.i1103.us.preheader ] ; 4 uses
  %.032.i1104.us = phi i32 [ %i.xq, %bb.cs ], [ %22, %.lr.ph.i1103.us.preheader ] ; 2 uses
  %.02731.i1105.us = phi i32 [ %i.xp, %bb.cs ], [ %i.xf, %.lr.ph.i1103.us.preheader ] ; 2 uses
  %.not.i1106.us = icmp ult i32 %.sroa.21.44.us, 17477
  br i1 %.not.i1106.us, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i1103.us
  %i.xg = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !40
  %i.xi = load ptr, ptr %i.xh, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.xi(ptr noundef nonnull align 8 dereferenceable(8) %i.xg, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.lr.ph.i1103.us
  %i.xj = sub nsw i32 %.sroa.97.44.us, %.sroa.131.44.us
  %..0.i1107.us = call i32 @llvm.smin.i32(i32 %i.xj, i32 %.032.i1104.us) ; 4 uses
  %notmask.i1108.us = shl nsw i32 -1, %..0.i1107.us
  %i.xk = xor i32 %notmask.i1108.us, -1
  %i.xl = and i32 %.02731.i1105.us, %i.xk
  %i.xm = shl i32 %i.xl, %.sroa.131.44.us
  %i.xn = or i32 %i.xm, %.sroa.182.44.us          ; 3 uses
  %i.xo = add nsw i32 %..0.i1107.us, %.sroa.131.44.us ; 2 uses
  %i.xp = lshr i32 %.02731.i1105.us, %..0.i1107.us
  %i.xq = sub nsw i32 %.032.i1104.us, %..0.i1107.us ; 2 uses
  %.not30.i1109.us = icmp slt i32 %i.xo, %.sroa.97.44.us
  br i1 %.not30.i1109.us, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xr = trunc i32 %i.xn to i8
  %i.xs = add nuw i32 %.sroa.21.44.us, 1
  %i.xt = zext i32 %.sroa.21.44.us to i64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xt
  store i8 %i.xr, ptr %i.xu, align 1, !tbaa !21
  %i.xv = icmp eq i32 %i.xn, 255
  %i.xw = select i1 %i.xv, i32 7, i32 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.182.45.us = phi i32 [ %i.xn, %bb.cq ], [ 0, %bb.cr ] ; 2 uses
  %.sroa.131.45.us = phi i32 [ %i.xo, %bb.cq ], [ 0, %bb.cr ] ; 2 uses
  %.sroa.97.45.us = phi i32 [ %.sroa.97.44.us, %bb.cq ], [ %i.xw, %bb.cr ] ; 2 uses
  %.sroa.21.45.us = phi i32 [ %.sroa.21.44.us, %bb.cq ], [ %i.xs, %bb.cr ] ; 2 uses
  %i.xx = icmp sgt i32 %i.xq, 0
  br i1 %i.xx, label %.lr.ph.i1103.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us: ; preds = %bb.cs, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1073.us, %bb.cg, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us
  %.sroa.182.46.us = phi i32 [ %.sroa.182.43.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us ], [ %.sroa.182.40.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1073.us ], [ %.sroa.182.40.us, %bb.cg ], [ %.sroa.182.45.us, %bb.cs ] ; 2 uses
  %.sroa.131.46.us = phi i32 [ %.sroa.131.43.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us ], [ %.sroa.131.40.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1073.us ], [ %.sroa.131.40.us, %bb.cg ], [ %.sroa.131.45.us, %bb.cs ] ; 2 uses
  %.sroa.97.46.us = phi i32 [ %.sroa.97.43.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us ], [ %.sroa.97.40.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1073.us ], [ %.sroa.97.40.us, %bb.cg ], [ %.sroa.97.45.us, %bb.cs ] ; 2 uses
  %.sroa.21.46.us = phi i32 [ %.sroa.21.43.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1101.us ], [ %.sroa.21.40.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1073.us ], [ %.sroa.21.40.us, %bb.cg ], [ %.sroa.21.45.us, %bb.cs ] ; 2 uses
  %i.xy = and i32 %.sroa.41.11.us, 4
  %.not779.us = icmp eq i32 %i.xy, 0
  %23 = shl i32 %i.rg, 29
  %24 = ashr i32 %23, 31
  %25 = add nsw i32 %24, %i.pm                    ; 2 uses
  %i.xz = select i1 %.not779.us, i32 0, i32 %25   ; 2 uses
  %i.ya = icmp sgt i32 %i.xz, 0
  br i1 %i.ya, label %.lr.ph.i1112.us.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us

.lr.ph.i1112.us.preheader:                        ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us
  %notmask780.us = shl nsw i32 -1, %i.xz
  %i.yb = xor i32 %notmask780.us, -1
  %i.yc = and i32 %.sroa.39.6.us, %i.yb
  br label %.lr.ph.i1112.us

.lr.ph.i1112.us:                                  ; preds = %.lr.ph.i1112.us.preheader, %bb.cw
  %.sroa.182.47.us = phi i32 [ %.sroa.182.48.us, %bb.cw ], [ %.sroa.182.46.us, %.lr.ph.i1112.us.preheader ]
  %.sroa.131.47.us = phi i32 [ %.sroa.131.48.us, %bb.cw ], [ %.sroa.131.46.us, %.lr.ph.i1112.us.preheader ] ; 3 uses
  %.sroa.97.47.us = phi i32 [ %.sroa.97.48.us, %bb.cw ], [ %.sroa.97.46.us, %.lr.ph.i1112.us.preheader ] ; 3 uses
  %.sroa.21.47.us = phi i32 [ %.sroa.21.48.us, %bb.cw ], [ %.sroa.21.46.us, %.lr.ph.i1112.us.preheader ] ; 4 uses
  %.032.i1113.us = phi i32 [ %i.yn, %bb.cw ], [ %25, %.lr.ph.i1112.us.preheader ] ; 2 uses
  %.02731.i1114.us = phi i32 [ %i.ym, %bb.cw ], [ %i.yc, %.lr.ph.i1112.us.preheader ] ; 2 uses
  %.not.i1115.us = icmp ult i32 %.sroa.21.47.us, 17477
  br i1 %.not.i1115.us, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i1112.us
  %i.yd = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !40
  %i.yf = load ptr, ptr %i.ye, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.yf(ptr noundef nonnull align 8 dereferenceable(8) %i.yd, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.lr.ph.i1112.us
  %i.yg = sub nsw i32 %.sroa.97.47.us, %.sroa.131.47.us
  %..0.i1116.us = call i32 @llvm.smin.i32(i32 %i.yg, i32 %.032.i1113.us) ; 4 uses
  %notmask.i1117.us = shl nsw i32 -1, %..0.i1116.us
  %i.yh = xor i32 %notmask.i1117.us, -1
  %i.yi = and i32 %.02731.i1114.us, %i.yh
  %i.yj = shl i32 %i.yi, %.sroa.131.47.us
  %i.yk = or i32 %i.yj, %.sroa.182.47.us          ; 3 uses
  %i.yl = add nsw i32 %..0.i1116.us, %.sroa.131.47.us ; 2 uses
  %i.ym = lshr i32 %.02731.i1114.us, %..0.i1116.us
  %i.yn = sub nsw i32 %.032.i1113.us, %..0.i1116.us ; 2 uses
  %.not30.i1118.us = icmp slt i32 %i.yl, %.sroa.97.47.us
  br i1 %.not30.i1118.us, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yo = trunc i32 %i.yk to i8
  %i.yp = add nuw i32 %.sroa.21.47.us, 1
  %i.yq = zext i32 %.sroa.21.47.us to i64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yq
  store i8 %i.yo, ptr %i.yr, align 1, !tbaa !21
  %i.ys = icmp eq i32 %i.yk, 255
  %i.yt = select i1 %i.ys, i32 7, i32 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.182.48.us = phi i32 [ %i.yk, %bb.cu ], [ 0, %bb.cv ] ; 2 uses
  %.sroa.131.48.us = phi i32 [ %i.yl, %bb.cu ], [ 0, %bb.cv ] ; 2 uses
  %.sroa.97.48.us = phi i32 [ %.sroa.97.47.us, %bb.cu ], [ %i.yt, %bb.cv ] ; 2 uses
  %.sroa.21.48.us = phi i32 [ %.sroa.21.47.us, %bb.cu ], [ %i.yp, %bb.cv ] ; 2 uses
  %i.yu = icmp sgt i32 %i.yn, 0
  br i1 %i.yu, label %.lr.ph.i1112.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us: ; preds = %bb.cw, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us
  %.sroa.182.49.us = phi i32 [ %.sroa.182.46.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us ], [ %.sroa.182.48.us, %bb.cw ] ; 2 uses
  %.sroa.131.49.us = phi i32 [ %.sroa.131.46.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us ], [ %.sroa.131.48.us, %bb.cw ] ; 2 uses
  %.sroa.97.49.us = phi i32 [ %.sroa.97.46.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us ], [ %.sroa.97.48.us, %bb.cw ] ; 2 uses
  %.sroa.21.49.us = phi i32 [ %.sroa.21.46.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1110.us ], [ %.sroa.21.48.us, %bb.cw ] ; 2 uses
  %.not781.us = icmp eq i32 %i.qw, 0
  %26 = shl i32 %i.rg, 28
  %27 = ashr i32 %26, 31
  %28 = add nsw i32 %27, %i.pm                    ; 2 uses
  %i.yv = select i1 %.not781.us, i32 0, i32 %28   ; 2 uses
  %i.yw = icmp sgt i32 %i.yv, 0
  br i1 %i.yw, label %.lr.ph.i1121.us.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us

.lr.ph.i1121.us.preheader:                        ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us
  %notmask782.us = shl nsw i32 -1, %i.yv
  %i.yx = xor i32 %notmask782.us, -1
  %i.yy = and i32 %.sroa.45.4.us, %i.yx
  br label %.lr.ph.i1121.us

.lr.ph.i1121.us:                                  ; preds = %.lr.ph.i1121.us.preheader, %bb.da
  %.sroa.182.50.us = phi i32 [ %.sroa.182.51.us, %bb.da ], [ %.sroa.182.49.us, %.lr.ph.i1121.us.preheader ]
  %.sroa.131.50.us = phi i32 [ %.sroa.131.51.us, %bb.da ], [ %.sroa.131.49.us, %.lr.ph.i1121.us.preheader ] ; 3 uses
  %.sroa.97.50.us = phi i32 [ %.sroa.97.51.us, %bb.da ], [ %.sroa.97.49.us, %.lr.ph.i1121.us.preheader ] ; 3 uses
  %.sroa.21.50.us = phi i32 [ %.sroa.21.51.us, %bb.da ], [ %.sroa.21.49.us, %.lr.ph.i1121.us.preheader ] ; 4 uses
  %.032.i1122.us = phi i32 [ %i.zj, %bb.da ], [ %28, %.lr.ph.i1121.us.preheader ] ; 2 uses
  %.02731.i1123.us = phi i32 [ %i.zi, %bb.da ], [ %i.yy, %.lr.ph.i1121.us.preheader ] ; 2 uses
  %.not.i1124.us = icmp ult i32 %.sroa.21.50.us, 17477
  br i1 %.not.i1124.us, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i1121.us
  %i.yz = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !40
  %i.zb = load ptr, ptr %i.za, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.zb(ptr noundef nonnull align 8 dereferenceable(8) %i.yz, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph.i1121.us
  %i.zc = sub nsw i32 %.sroa.97.50.us, %.sroa.131.50.us
  %..0.i1125.us = call i32 @llvm.smin.i32(i32 %i.zc, i32 %.032.i1122.us) ; 4 uses
  %notmask.i1126.us = shl nsw i32 -1, %..0.i1125.us
  %i.zd = xor i32 %notmask.i1126.us, -1
  %i.ze = and i32 %.02731.i1123.us, %i.zd
  %i.zf = shl i32 %i.ze, %.sroa.131.50.us
  %i.zg = or i32 %i.zf, %.sroa.182.50.us          ; 3 uses
  %i.zh = add nsw i32 %..0.i1125.us, %.sroa.131.50.us ; 2 uses
  %i.zi = lshr i32 %.02731.i1123.us, %..0.i1125.us
  %i.zj = sub nsw i32 %.032.i1122.us, %..0.i1125.us ; 2 uses
  %.not30.i1127.us = icmp slt i32 %i.zh, %.sroa.97.50.us
  br i1 %.not30.i1127.us, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zk = trunc i32 %i.zg to i8
  %i.zl = add nuw i32 %.sroa.21.50.us, 1
  %i.zm = zext i32 %.sroa.21.50.us to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zm
  store i8 %i.zk, ptr %i.zn, align 1, !tbaa !21
  %i.zo = icmp eq i32 %i.zg, 255
  %i.zp = select i1 %i.zo, i32 7, i32 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.182.51.us = phi i32 [ %i.zg, %bb.cy ], [ 0, %bb.cz ] ; 2 uses
  %.sroa.131.51.us = phi i32 [ %i.zh, %bb.cy ], [ 0, %bb.cz ] ; 2 uses
  %.sroa.97.51.us = phi i32 [ %.sroa.97.50.us, %bb.cy ], [ %i.zp, %bb.cz ] ; 2 uses
  %.sroa.21.51.us = phi i32 [ %.sroa.21.50.us, %bb.cy ], [ %i.zl, %bb.cz ] ; 2 uses
  %i.zq = icmp sgt i32 %i.zj, 0
  br i1 %i.zq, label %.lr.ph.i1121.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us: ; preds = %bb.da, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us
  %.sroa.182.52.us = phi i32 [ %.sroa.182.49.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us ], [ %.sroa.182.51.us, %bb.da ]
  %.sroa.131.52.us = phi i32 [ %.sroa.131.49.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us ], [ %.sroa.131.51.us, %bb.da ]
  %.sroa.97.52.us = phi i32 [ %.sroa.97.49.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us ], [ %.sroa.97.51.us, %bb.da ]
  %.sroa.21.52.us = phi i32 [ %.sroa.21.49.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1119.us ], [ %.sroa.21.51.us, %bb.da ]
  %i.zr = zext nneg i32 %i.pn to i64
  br label %bb.db

bb.db:                                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us
  %.sroa.182.4.us = phi i32 [ %.sroa.182.52.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %.sroa.182.40.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ] ; 3 uses
  %.sroa.131.4.us = phi i32 [ %.sroa.131.52.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %.sroa.131.40.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ] ; 3 uses
  %.sroa.97.4.us = phi i32 [ %.sroa.97.52.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %.sroa.97.40.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ] ; 3 uses
  %.sroa.21.41321.us = phi i32 [ %.sroa.21.52.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %.sroa.21.40.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ] ; 3 uses
  %.3736.us = phi ptr [ %i.dn, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %i.dl, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ]
  %.3732.us = phi ptr [ %i.eb, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %i.dy, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ]
  %.sroa.41.12.us = phi i32 [ %.sroa.41.11.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ 0, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ] ; 2 uses
  %.2728.us = phi i32 [ %i.qv, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %.17271412.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ]
  %.7.us = phi ptr [ %.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ]
  %.1.us = phi i32 [ %i.qi, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ %i.dr, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ]
  %.0716.us = phi i64 [ %i.zr, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1128.us ], [ 0, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit1058.us ]
  %i.zs = zext nneg i32 %i.cv to i64
  %i.zt = getelementptr inbounds nuw [6 x i8], ptr @_ZN4ojph5localL8uvlc_tblE, i64 %i.zs ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 1
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !20  ; 2 uses
  %.not3738.i1129.us = icmp eq i8 %i.zv, 0
  br i1 %.not3738.i1129.us, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1141.us, label %.lr.ph.i1130.us.preheader

.lr.ph.i1130.us.preheader:                        ; preds = %bb.db
  %i.zw = zext i8 %i.zv to i32
  %i.zx = load i8, ptr %i.zt, align 2, !tbaa !19
  %i.zy = zext i8 %i.zx to i32
  br label %.lr.ph.i1130.us

.lr.ph.i1130.us:                                  ; preds = %.lr.ph.i1130.us.preheader, %bb.dh
  %.040.i1131.us = phi i32 [ %i.aap, %bb.dh ], [ %i.zw, %.lr.ph.i1130.us.preheader ] ; 3 uses
  %.03239.i1132.us = phi i32 [ %i.aaq, %bb.dh ], [ %i.zy, %.lr.ph.i1130.us.preheader ] ; 2 uses
  %i.zz = load i32, ptr %i.m, align 8, !tbaa !37
  %i.aaa = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i1133.us = icmp ult i32 %i.zz, %i.aaa
  br i1 %.not.i1133.us, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i1130.us
  %i.aab = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !40
  %i.aad = load ptr, ptr %i.aac, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.aad(ptr noundef nonnull align 8 dereferenceable(8) %i.aab, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.lr.ph.i1130.us
  %i.aae = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i1134.us = sub nuw nsw i8 8, %i.aae
  %i.aaf = zext nneg i8 %narrow.i1134.us to i32
  %i.aag = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.aah = sub nsw i32 %i.aaf, %i.aag             ; 2 uses
  %i.aai = call i32 @llvm.smin.i32(i32 %i.aah, i32 %.040.i1131.us) ; 4 uses
  %notmask.i1135.us = shl nsw i32 -1, %i.aai
  %i.aaj = xor i32 %notmask.i1135.us, -1
  %i.aak = and i32 %.03239.i1132.us, %i.aaj
  %i.aal = shl i32 %i.aak, %i.aag
  %i.aam = load i32, ptr %i.p, align 4, !tbaa !44
  %i.aan = or i32 %i.aal, %i.aam                  ; 3 uses
  store i32 %i.aan, ptr %i.p, align 4, !tbaa !44
  %i.aao = add nsw i32 %i.aai, %i.aag
  store i32 %i.aao, ptr %i.o, align 8, !tbaa !43
  %i.aap = sub nsw i32 %.040.i1131.us, %i.aai     ; 2 uses
  %i.aaq = lshr i32 %.03239.i1132.us, %i.aai
  %.not34.i1136.us = icmp sgt i32 %i.aah, %.040.i1131.us
  br i1 %.not34.i1136.us, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aar = trunc nuw i8 %i.aae to i1
  %.not35.i1137.us = icmp ne i32 %i.aan, 127
  %or.cond.not.i1138.us = select i1 %i.aar, i1 %.not35.i1137.us, i1 false
  br i1 %or.cond.not.i1138.us, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aas = trunc i32 %i.aan to i8
  %i.aat = load ptr, ptr %10, align 8, !tbaa !35
  %i.aau = load i32, ptr %i.m, align 8, !tbaa !37
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = sub nsw i64 0, %i.aav
  %i.aax = getelementptr inbounds i8, ptr %i.aat, i64 %i.aaw
  store i8 %i.aas, ptr %i.aax, align 1, !tbaa !21
  %i.aay = load i32, ptr %i.m, align 8, !tbaa !37
  %i.aaz = add i32 %i.aay, 1
  store i32 %i.aaz, ptr %i.m, align 8, !tbaa !37
  %i.aba = load i32, ptr %i.p, align 4, !tbaa !44
  %i.abb = icmp sgt i32 %i.aba, 143
  %i.abc = zext i1 %i.abb to i8
  store i8 %i.abc, ptr %i.q, align 8, !tbaa !36
  store i32 0, ptr %i.p, align 4, !tbaa !44
  store i32 0, ptr %i.o, align 8, !tbaa !43
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  store i8 0, ptr %i.q, align 8, !tbaa !36
  br label %bb.dh, !llvm.loop !1

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.dd
  %.not37.i1139.us = icmp eq i32 %i.aap, 0
  br i1 %.not37.i1139.us, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1141.us, label %.lr.ph.i1130.us

_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1141.us: ; preds = %bb.dh, %bb.db
  %i.abd = getelementptr inbounds nuw [6 x i8], ptr @_ZN4ojph5localL8uvlc_tblE, i64 %.0716.us ; 4 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 1
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !20 ; 2 uses
  %.not3738.i1142.us = icmp eq i8 %i.abf, 0
  br i1 %.not3738.i1142.us, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1154.us, label %.lr.ph.i1143.us.preheader

.lr.ph.i1143.us.preheader:                        ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1141.us
  %i.abg = zext i8 %i.abf to i32
  %i.abh = load i8, ptr %i.abd, align 2, !tbaa !19
  %i.abi = zext i8 %i.abh to i32
  br label %.lr.ph.i1143.us

.lr.ph.i1143.us:                                  ; preds = %.lr.ph.i1143.us.preheader, %bb.dn
  %.040.i1144.us = phi i32 [ %i.abz, %bb.dn ], [ %i.abg, %.lr.ph.i1143.us.preheader ] ; 3 uses
  %.03239.i1145.us = phi i32 [ %i.aca, %bb.dn ], [ %i.abi, %.lr.ph.i1143.us.preheader ] ; 2 uses
  %i.abj = load i32, ptr %i.m, align 8, !tbaa !37
  %i.abk = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i1146.us = icmp ult i32 %i.abj, %i.abk
  br i1 %.not.i1146.us, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i1143.us
  %i.abl = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !40
  %i.abn = load ptr, ptr %i.abm, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.abn(ptr noundef nonnull align 8 dereferenceable(8) %i.abl, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.lr.ph.i1143.us
  %i.abo = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i1147.us = sub nuw nsw i8 8, %i.abo
  %i.abp = zext nneg i8 %narrow.i1147.us to i32
  %i.abq = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.abr = sub nsw i32 %i.abp, %i.abq             ; 2 uses
  %i.abs = call i32 @llvm.smin.i32(i32 %i.abr, i32 %.040.i1144.us) ; 4 uses
  %notmask.i1148.us = shl nsw i32 -1, %i.abs
  %i.abt = xor i32 %notmask.i1148.us, -1
  %i.abu = and i32 %.03239.i1145.us, %i.abt
  %i.abv = shl i32 %i.abu, %i.abq
end_hunk_1
begin_hunk_2_@_ZN4ojph5local23ojph_encode_codeblock32EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
bb.eo:                                            ; preds = %bb.en
  %i.ahv = icmp eq i32 %.sroa.0431.1, %.sroa.0521.4
  %i.ahw = zext i1 %i.ahv to i32
  %i.ahx = icmp eq i32 %.sroa.11.1, %.sroa.0521.4
  %i.ahy = select i1 %i.ahx, i32 2, i32 0
  %i.ahz = or disjoint i32 %i.ahy, %i.ahw
  %i.aia = icmp eq i32 %.sroa.25.2, %.sroa.0521.4
  %i.aib = select i1 %i.aia, i32 4, i32 0
  %i.aic = or disjoint i32 %i.ahz, %i.aib
  %i.aid = icmp eq i32 %.sroa.35.1, %.sroa.0521.4
  %i.aie = select i1 %i.aid, i32 8, i32 0
  %i.aif = or disjoint i32 %i.aic, %i.aie
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0720 = phi i32 [ %i.aif, %bb.eo ], [ 0, %bb.en ]
  %i.aig = load i8, ptr %.07331396, align 1, !tbaa !21
  %i.aih = zext i8 %i.aig to i32
  %i.aii = call i32 @llvm.umax.i32(i32 %.sroa.11.1, i32 %i.aih)
  %i.aij = trunc nuw i32 %i.aii to i8
  store i8 %i.aij, ptr %.07331396, align 1, !tbaa !21
  %i.aik = getelementptr inbounds nuw i8, ptr %.07331396, i64 1 ; 4 uses
  %i.ail = trunc nuw nsw i32 %.sroa.35.1 to i8
  store i8 %i.ail, ptr %i.aik, align 1, !tbaa !21
  %i.aim = load i8, ptr %.07291397, align 1, !tbaa !21
  %i.ain = and i32 %.sroa.0349.4, 2               ; 2 uses
  %i.aio = lshr exact i32 %i.ain, 1
  %i.aip = trunc nuw nsw i32 %i.aio to i8
  %i.aiq = or i8 %i.aim, %i.aip
  store i8 %i.aiq, ptr %.07291397, align 1, !tbaa !21
  %i.air = getelementptr inbounds nuw i8, ptr %.07291397, i64 1 ; 4 uses
  %i.ais = and i32 %.sroa.0349.4, 8               ; 2 uses
  %i.ait = lshr exact i32 %i.ais, 3
  %i.aiu = trunc nuw nsw i32 %i.ait to i8
  store i8 %i.aiu, ptr %i.air, align 1, !tbaa !21
  %i.aiv = shl nuw nsw i32 %.07261398, 8
  %i.aiw = shl nuw nsw i32 %.sroa.0349.4, 4
  %i.aix = add nuw nsw i32 %i.aiw, %i.aiv
  %i.aiy = add nuw nsw i32 %i.aix, %.0720
  %i.aiz = zext nneg i32 %i.aiy to i64
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5localL8vlc_tbl0E, i64 %i.aiz
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !17
  %i.ajc = zext i16 %i.ajb to i32                 ; 6 uses
  %i.ajd = lshr i32 %i.ajc, 4
  %i.aje = and i32 %i.ajd, 7                      ; 2 uses
  %.not3738.i = icmp eq i32 %i.aje, 0
  br i1 %.not3738.i, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ep
  %i.ajf = lshr i32 %i.ajc, 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ev
  %.040.i = phi i32 [ %i.ajw, %bb.ev ], [ %i.aje, %.lr.ph.i.preheader ] ; 3 uses
  %.03239.i = phi i32 [ %i.ajx, %bb.ev ], [ %i.ajf, %.lr.ph.i.preheader ] ; 2 uses
  %i.ajg = load i32, ptr %i.m, align 8, !tbaa !37
  %i.ajh = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i = icmp ult i32 %i.ajg, %i.ajh
  br i1 %.not.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph.i
  %i.aji = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !40
  %i.ajk = load ptr, ptr %i.ajj, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ajk(ptr noundef nonnull align 8 dereferenceable(8) %i.aji, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph.i
  %i.ajl = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i = sub nuw nsw i8 8, %i.ajl
  %i.ajm = zext nneg i8 %narrow.i to i32
  %i.ajn = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.ajo = sub nsw i32 %i.ajm, %i.ajn             ; 2 uses
  %i.ajp = call i32 @llvm.smin.i32(i32 %i.ajo, i32 %.040.i) ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.ajp
  %i.ajq = xor i32 %notmask.i, -1
  %i.ajr = and i32 %.03239.i, %i.ajq
  %i.ajs = shl i32 %i.ajr, %i.ajn
  %i.ajt = load i32, ptr %i.p, align 4, !tbaa !44
  %i.aju = or i32 %i.ajs, %i.ajt                  ; 3 uses
  store i32 %i.aju, ptr %i.p, align 4, !tbaa !44
  %i.ajv = add nsw i32 %i.ajp, %i.ajn
  store i32 %i.ajv, ptr %i.o, align 8, !tbaa !43
  %i.ajw = sub nsw i32 %.040.i, %i.ajp            ; 2 uses
  %i.ajx = lshr i32 %.03239.i, %i.ajp
  %.not34.i = icmp sgt i32 %i.ajo, %.040.i
  br i1 %.not34.i, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ajy = trunc nuw i8 %i.ajl to i1
  %.not35.i = icmp ne i32 %i.aju, 127
  %or.cond.not.i = select i1 %i.ajy, i1 %.not35.i, i1 false
  br i1 %or.cond.not.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i8 0, ptr %i.q, align 8, !tbaa !36
  br label %bb.ev, !llvm.loop !1

bb.eu:                                            ; preds = %bb.es
  %i.ajz = trunc i32 %i.aju to i8
  %i.aka = load ptr, ptr %10, align 8, !tbaa !35
  %i.akb = load i32, ptr %i.m, align 8, !tbaa !37
  %i.akc = zext i32 %i.akb to i64
  %i.akd = sub nsw i64 0, %i.akc
  %i.ake = getelementptr inbounds i8, ptr %i.aka, i64 %i.akd
  store i8 %i.ajz, ptr %i.ake, align 1, !tbaa !21
  %i.akf = load i32, ptr %i.m, align 8, !tbaa !37
  %i.akg = add i32 %i.akf, 1
  store i32 %i.akg, ptr %i.m, align 8, !tbaa !37
  %i.akh = load i32, ptr %i.p, align 4, !tbaa !44
  %i.aki = icmp sgt i32 %i.akh, 143
  %i.akj = zext i1 %i.aki to i8
  store i8 %i.akj, ptr %i.q, align 8, !tbaa !36
  store i32 0, ptr %i.p, align 4, !tbaa !44
  store i32 0, ptr %i.o, align 8, !tbaa !43
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.er
  %.not37.i = icmp eq i32 %i.ajw, 0
  br i1 %.not37.i, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit, label %.lr.ph.i

_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit: ; preds = %bb.ev, %bb.ep
  %i.akk = icmp eq i32 %.07261398, 0
  br i1 %i.akk, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit
  %i.akl = icmp ne i32 %.sroa.0349.4, 0
  call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %9, i1 noundef zeroext %i.akl)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit
  %i.akm = and i32 %.sroa.0349.4, 1               ; 2 uses
  %.not787 = icmp eq i32 %i.akm, 0
  %i.akn = and i32 %i.ajc, 1
  %i.ako = sub nuw nsw i32 %i.ahs, %i.akn         ; 2 uses
  %i.akp = select i1 %.not787, i32 0, i32 %i.ako  ; 2 uses
  %i.akq = icmp sgt i32 %i.akp, 0
  br i1 %i.akq, label %.lr.ph.i807.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit

.lr.ph.i807.preheader:                            ; preds = %bb.ex
  %notmask788 = shl nsw i32 -1, %i.akp
  %i.akr = xor i32 %notmask788, -1
  %i.aks = and i32 %.sroa.0.1, %i.akr
  br label %.lr.ph.i807

.lr.ph.i807:                                      ; preds = %.lr.ph.i807.preheader, %bb.fb
  %.sroa.182.5 = phi i32 [ %.sroa.182.6, %bb.fb ], [ %.sroa.182.01392, %.lr.ph.i807.preheader ]
  %.sroa.131.5 = phi i32 [ %.sroa.131.6, %bb.fb ], [ %.sroa.131.01393, %.lr.ph.i807.preheader ] ; 3 uses
  %.sroa.97.5 = phi i32 [ %.sroa.97.6, %bb.fb ], [ %.sroa.97.01394, %.lr.ph.i807.preheader ] ; 3 uses
  %.sroa.21.5 = phi i32 [ %.sroa.21.6, %bb.fb ], [ %.sroa.21.01395, %.lr.ph.i807.preheader ] ; 4 uses
  %.032.i = phi i32 [ %i.ald, %bb.fb ], [ %i.ako, %.lr.ph.i807.preheader ] ; 2 uses
  %.02731.i = phi i32 [ %i.alc, %bb.fb ], [ %i.aks, %.lr.ph.i807.preheader ] ; 2 uses
  %.not.i808 = icmp ult i32 %.sroa.21.5, 17477
  br i1 %.not.i808, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i807
  %i.akt = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !40
  %i.akv = load ptr, ptr %i.aku, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.akv(ptr noundef nonnull align 8 dereferenceable(8) %i.akt, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.lr.ph.i807
  %i.akw = sub nuw nsw i32 %.sroa.97.5, %.sroa.131.5
  %..0.i = call i32 @llvm.smin.i32(i32 %i.akw, i32 %.032.i) ; 4 uses
  %notmask.i809 = shl nsw i32 -1, %..0.i
  %i.akx = xor i32 %notmask.i809, -1
  %i.aky = and i32 %.02731.i, %i.akx
  %i.akz = shl nuw nsw i32 %i.aky, %.sroa.131.5
  %i.ala = or i32 %i.akz, %.sroa.182.5            ; 3 uses
  %i.alb = add nuw nsw i32 %..0.i, %.sroa.131.5   ; 2 uses
  %i.alc = lshr i32 %.02731.i, %..0.i
  %i.ald = sub nsw i32 %.032.i, %..0.i            ; 2 uses
  %.not30.i = icmp slt i32 %i.alb, %.sroa.97.5
  br i1 %.not30.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ale = trunc i32 %i.ala to i8
  %i.alf = add nuw i32 %.sroa.21.5, 1
  %i.alg = zext i32 %.sroa.21.5 to i64
  %i.alh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alg
  store i8 %i.ale, ptr %i.alh, align 1, !tbaa !21
  %i.ali = icmp eq i32 %i.ala, 255
  %i.alj = select i1 %i.ali, i32 7, i32 8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.sroa.182.6 = phi i32 [ %i.ala, %bb.ez ], [ 0, %bb.fa ] ; 2 uses
  %.sroa.131.6 = phi i32 [ %i.alb, %bb.ez ], [ 0, %bb.fa ] ; 2 uses
  %.sroa.97.6 = phi i32 [ %.sroa.97.5, %bb.ez ], [ %i.alj, %bb.fa ] ; 2 uses
  %.sroa.21.6 = phi i32 [ %.sroa.21.5, %bb.ez ], [ %i.alf, %bb.fa ] ; 2 uses
  %i.alk = icmp sgt i32 %i.ald, 0
  br i1 %i.alk, label %.lr.ph.i807, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit: ; preds = %bb.fb, %bb.ex
  %.sroa.182.7 = phi i32 [ %.sroa.182.01392, %bb.ex ], [ %.sroa.182.6, %bb.fb ] ; 2 uses
  %.sroa.131.7 = phi i32 [ %.sroa.131.01393, %bb.ex ], [ %.sroa.131.6, %bb.fb ] ; 2 uses
  %.sroa.97.7 = phi i32 [ %.sroa.97.01394, %bb.ex ], [ %.sroa.97.6, %bb.fb ] ; 2 uses
  %.sroa.21.7 = phi i32 [ %.sroa.21.01395, %bb.ex ], [ %.sroa.21.6, %bb.fb ] ; 2 uses
  %.not789 = icmp eq i32 %i.ain, 0
  %29 = shl i32 %i.ajc, 30
  %30 = ashr i32 %29, 31
  %31 = add nsw i32 %30, %i.ahs                   ; 2 uses
  %i.all = select i1 %.not789, i32 0, i32 %31     ; 2 uses
  %i.alm = icmp sgt i32 %i.all, 0
  br i1 %i.alm, label %.lr.ph.i810.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817

.lr.ph.i810.preheader:                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit
  %notmask790 = shl nsw i32 -1, %i.all
  %i.aln = xor i32 %notmask790, -1
  %i.alo = and i32 %.sroa.9.1, %i.aln
  br label %.lr.ph.i810

.lr.ph.i810:                                      ; preds = %.lr.ph.i810.preheader, %bb.ff
  %.sroa.182.8 = phi i32 [ %.sroa.182.9, %bb.ff ], [ %.sroa.182.7, %.lr.ph.i810.preheader ]
  %.sroa.131.8 = phi i32 [ %.sroa.131.9, %bb.ff ], [ %.sroa.131.7, %.lr.ph.i810.preheader ] ; 3 uses
  %.sroa.97.8 = phi i32 [ %.sroa.97.9, %bb.ff ], [ %.sroa.97.7, %.lr.ph.i810.preheader ] ; 3 uses
  %.sroa.21.8 = phi i32 [ %.sroa.21.9, %bb.ff ], [ %.sroa.21.7, %.lr.ph.i810.preheader ] ; 4 uses
  %.032.i811 = phi i32 [ %i.alz, %bb.ff ], [ %31, %.lr.ph.i810.preheader ] ; 2 uses
  %.02731.i812 = phi i32 [ %i.aly, %bb.ff ], [ %i.alo, %.lr.ph.i810.preheader ] ; 2 uses
  %.not.i813 = icmp ult i32 %.sroa.21.8, 17477
  br i1 %.not.i813, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.i810
  %i.alp = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !40
  %i.alr = load ptr, ptr %i.alq, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.alr(ptr noundef nonnull align 8 dereferenceable(8) %i.alp, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph.i810
  %i.als = sub nuw nsw i32 %.sroa.97.8, %.sroa.131.8
  %..0.i814 = call i32 @llvm.smin.i32(i32 %i.als, i32 %.032.i811) ; 4 uses
  %notmask.i815 = shl nsw i32 -1, %..0.i814
  %i.alt = xor i32 %notmask.i815, -1
  %i.alu = and i32 %.02731.i812, %i.alt
  %i.alv = shl nuw nsw i32 %i.alu, %.sroa.131.8
  %i.alw = or i32 %i.alv, %.sroa.182.8            ; 3 uses
  %i.alx = add nuw nsw i32 %..0.i814, %.sroa.131.8 ; 2 uses
  %i.aly = lshr i32 %.02731.i812, %..0.i814
  %i.alz = sub nsw i32 %.032.i811, %..0.i814      ; 2 uses
  %.not30.i816 = icmp slt i32 %i.alx, %.sroa.97.8
  br i1 %.not30.i816, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ama = trunc i32 %i.alw to i8
  %i.amb = add nuw i32 %.sroa.21.8, 1
  %i.amc = zext i32 %.sroa.21.8 to i64
  %i.amd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amc
  store i8 %i.ama, ptr %i.amd, align 1, !tbaa !21
  %i.ame = icmp eq i32 %i.alw, 255
  %i.amf = select i1 %i.ame, i32 7, i32 8
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.sroa.182.9 = phi i32 [ %i.alw, %bb.fd ], [ 0, %bb.fe ] ; 2 uses
  %.sroa.131.9 = phi i32 [ %i.alx, %bb.fd ], [ 0, %bb.fe ] ; 2 uses
  %.sroa.97.9 = phi i32 [ %.sroa.97.8, %bb.fd ], [ %i.amf, %bb.fe ] ; 2 uses
  %.sroa.21.9 = phi i32 [ %.sroa.21.8, %bb.fd ], [ %i.amb, %bb.fe ] ; 2 uses
  %i.amg = icmp sgt i32 %i.alz, 0
  br i1 %i.amg, label %.lr.ph.i810, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817: ; preds = %bb.ff, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit
  %.sroa.182.10 = phi i32 [ %.sroa.182.7, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit ], [ %.sroa.182.9, %bb.ff ] ; 2 uses
  %.sroa.131.10 = phi i32 [ %.sroa.131.7, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit ], [ %.sroa.131.9, %bb.ff ] ; 2 uses
  %.sroa.97.10 = phi i32 [ %.sroa.97.7, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit ], [ %.sroa.97.9, %bb.ff ] ; 2 uses
  %.sroa.21.10 = phi i32 [ %.sroa.21.7, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit ], [ %.sroa.21.9, %bb.ff ] ; 2 uses
  %i.amh = and i32 %.sroa.0349.4, 4
  %.not791 = icmp eq i32 %i.amh, 0
  %32 = shl i32 %i.ajc, 29
  %33 = ashr i32 %32, 31
  %34 = add nsw i32 %33, %i.ahs                   ; 2 uses
  %i.ami = select i1 %.not791, i32 0, i32 %34     ; 2 uses
  %i.amj = icmp sgt i32 %i.ami, 0
  br i1 %i.amj, label %.lr.ph.i818.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825

.lr.ph.i818.preheader:                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817
  %notmask792 = shl nsw i32 -1, %i.ami
  %i.amk = xor i32 %notmask792, -1
  %i.aml = and i32 %.sroa.15.2, %i.amk
  br label %.lr.ph.i818

.lr.ph.i818:                                      ; preds = %.lr.ph.i818.preheader, %bb.fj
  %.sroa.182.11 = phi i32 [ %.sroa.182.12, %bb.fj ], [ %.sroa.182.10, %.lr.ph.i818.preheader ]
  %.sroa.131.11 = phi i32 [ %.sroa.131.12, %bb.fj ], [ %.sroa.131.10, %.lr.ph.i818.preheader ] ; 3 uses
  %.sroa.97.11 = phi i32 [ %.sroa.97.12, %bb.fj ], [ %.sroa.97.10, %.lr.ph.i818.preheader ] ; 3 uses
  %.sroa.21.11 = phi i32 [ %.sroa.21.12, %bb.fj ], [ %.sroa.21.10, %.lr.ph.i818.preheader ] ; 4 uses
  %.032.i819 = phi i32 [ %i.amw, %bb.fj ], [ %34, %.lr.ph.i818.preheader ] ; 2 uses
  %.02731.i820 = phi i32 [ %i.amv, %bb.fj ], [ %i.aml, %.lr.ph.i818.preheader ] ; 2 uses
  %.not.i821 = icmp ult i32 %.sroa.21.11, 17477
  br i1 %.not.i821, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.i818
  %i.amm = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !40
  %i.amo = load ptr, ptr %i.amn, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.amo(ptr noundef nonnull align 8 dereferenceable(8) %i.amm, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph.i818
  %i.amp = sub nuw nsw i32 %.sroa.97.11, %.sroa.131.11
  %..0.i822 = call i32 @llvm.smin.i32(i32 %i.amp, i32 %.032.i819) ; 4 uses
  %notmask.i823 = shl nsw i32 -1, %..0.i822
  %i.amq = xor i32 %notmask.i823, -1
  %i.amr = and i32 %.02731.i820, %i.amq
  %i.ams = shl nuw nsw i32 %i.amr, %.sroa.131.11
  %i.amt = or i32 %i.ams, %.sroa.182.11           ; 3 uses
  %i.amu = add nuw nsw i32 %..0.i822, %.sroa.131.11 ; 2 uses
  %i.amv = lshr i32 %.02731.i820, %..0.i822
  %i.amw = sub nsw i32 %.032.i819, %..0.i822      ; 2 uses
  %.not30.i824 = icmp slt i32 %i.amu, %.sroa.97.11
  br i1 %.not30.i824, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.amx = trunc i32 %i.amt to i8
  %i.amy = add nuw i32 %.sroa.21.11, 1
  %i.amz = zext i32 %.sroa.21.11 to i64
  %i.ana = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amz
  store i8 %i.amx, ptr %i.ana, align 1, !tbaa !21
  %i.anb = icmp eq i32 %i.amt, 255
  %i.anc = select i1 %i.anb, i32 7, i32 8
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.sroa.182.12 = phi i32 [ %i.amt, %bb.fh ], [ 0, %bb.fi ] ; 2 uses
  %.sroa.131.12 = phi i32 [ %i.amu, %bb.fh ], [ 0, %bb.fi ] ; 2 uses
  %.sroa.97.12 = phi i32 [ %.sroa.97.11, %bb.fh ], [ %i.anc, %bb.fi ] ; 2 uses
  %.sroa.21.12 = phi i32 [ %.sroa.21.11, %bb.fh ], [ %i.amy, %bb.fi ] ; 2 uses
  %i.and = icmp sgt i32 %i.amw, 0
  br i1 %i.and, label %.lr.ph.i818, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825: ; preds = %bb.fj, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817
  %.sroa.182.13 = phi i32 [ %.sroa.182.10, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817 ], [ %.sroa.182.12, %bb.fj ] ; 2 uses
  %.sroa.131.13 = phi i32 [ %.sroa.131.10, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817 ], [ %.sroa.131.12, %bb.fj ] ; 2 uses
  %.sroa.97.13 = phi i32 [ %.sroa.97.10, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817 ], [ %.sroa.97.12, %bb.fj ] ; 2 uses
  %.sroa.21.13 = phi i32 [ %.sroa.21.10, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit817 ], [ %.sroa.21.12, %bb.fj ] ; 2 uses
  %.not793 = icmp eq i32 %i.ais, 0
  %35 = shl i32 %i.ajc, 28
  %36 = ashr i32 %35, 31
  %37 = add nsw i32 %36, %i.ahs                   ; 2 uses
  %i.ane = select i1 %.not793, i32 0, i32 %37     ; 2 uses
  %i.anf = icmp sgt i32 %i.ane, 0
  br i1 %i.anf, label %.lr.ph.i826.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit833

.lr.ph.i826.preheader:                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825
  %notmask794 = shl nsw i32 -1, %i.ane
  %i.ang = xor i32 %notmask794, -1
  %i.anh = and i32 %.sroa.21.1, %i.ang
  br label %.lr.ph.i826

.lr.ph.i826:                                      ; preds = %.lr.ph.i826.preheader, %bb.fn
  %.sroa.182.14 = phi i32 [ %.sroa.182.15, %bb.fn ], [ %.sroa.182.13, %.lr.ph.i826.preheader ]
  %.sroa.131.14 = phi i32 [ %.sroa.131.15, %bb.fn ], [ %.sroa.131.13, %.lr.ph.i826.preheader ] ; 3 uses
  %.sroa.97.14 = phi i32 [ %.sroa.97.15, %bb.fn ], [ %.sroa.97.13, %.lr.ph.i826.preheader ] ; 3 uses
  %.sroa.21.14 = phi i32 [ %.sroa.21.15, %bb.fn ], [ %.sroa.21.13, %.lr.ph.i826.preheader ] ; 4 uses
  %.032.i827 = phi i32 [ %i.ans, %bb.fn ], [ %37, %.lr.ph.i826.preheader ] ; 2 uses
  %.02731.i828 = phi i32 [ %i.anr, %bb.fn ], [ %i.anh, %.lr.ph.i826.preheader ] ; 2 uses
  %.not.i829 = icmp ult i32 %.sroa.21.14, 17477
  br i1 %.not.i829, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i826
  %i.ani = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !40
  %i.ank = load ptr, ptr %i.anj, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ank(ptr noundef nonnull align 8 dereferenceable(8) %i.ani, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph.i826
  %i.anl = sub nuw nsw i32 %.sroa.97.14, %.sroa.131.14
  %..0.i830 = call i32 @llvm.smin.i32(i32 %i.anl, i32 %.032.i827) ; 4 uses
  %notmask.i831 = shl nsw i32 -1, %..0.i830
  %i.anm = xor i32 %notmask.i831, -1
  %i.ann = and i32 %.02731.i828, %i.anm
  %i.ano = shl nuw nsw i32 %i.ann, %.sroa.131.14
  %i.anp = or i32 %i.ano, %.sroa.182.14           ; 3 uses
  %i.anq = add nuw nsw i32 %..0.i830, %.sroa.131.14 ; 2 uses
  %i.anr = lshr i32 %.02731.i828, %..0.i830
  %i.ans = sub nsw i32 %.032.i827, %..0.i830      ; 2 uses
  %.not30.i832 = icmp slt i32 %i.anq, %.sroa.97.14
  br i1 %.not30.i832, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ant = trunc i32 %i.anp to i8
  %i.anu = add nuw i32 %.sroa.21.14, 1
  %i.anv = zext i32 %.sroa.21.14 to i64
  %i.anw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anv
  store i8 %i.ant, ptr %i.anw, align 1, !tbaa !21
  %i.anx = icmp eq i32 %i.anp, 255
  %i.any = select i1 %i.anx, i32 7, i32 8
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.sroa.182.15 = phi i32 [ %i.anp, %bb.fl ], [ 0, %bb.fm ] ; 2 uses
  %.sroa.131.15 = phi i32 [ %i.anq, %bb.fl ], [ 0, %bb.fm ] ; 2 uses
  %.sroa.97.15 = phi i32 [ %.sroa.97.14, %bb.fl ], [ %i.any, %bb.fm ] ; 2 uses
  %.sroa.21.15 = phi i32 [ %.sroa.21.14, %bb.fl ], [ %i.anu, %bb.fm ] ; 2 uses
  %i.anz = icmp sgt i32 %i.ans, 0
  br i1 %i.anz, label %.lr.ph.i826, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit833, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit833: ; preds = %bb.fn, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825
  %.sroa.182.16 = phi i32 [ %.sroa.182.13, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825 ], [ %.sroa.182.15, %bb.fn ] ; 3 uses
  %.sroa.131.16 = phi i32 [ %.sroa.131.13, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825 ], [ %.sroa.131.15, %bb.fn ] ; 3 uses
  %.sroa.97.16 = phi i32 [ %.sroa.97.13, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825 ], [ %.sroa.97.15, %bb.fn ] ; 3 uses
  %.sroa.21.16 = phi i32 [ %.sroa.21.13, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit825 ], [ %.sroa.21.15, %bb.fn ] ; 3 uses
  %i.aoa = or disjoint i32 %.07221400, 2
  %i.aob = icmp ult i32 %i.aoa, %3
  br i1 %i.aob, label %bb.fo, label %.thread1368

bb.fo:                                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit833
  %i.aoc = load i32, ptr %.1724, align 4, !tbaa !14 ; 2 uses
  %i.aod = shl i32 %i.aoc, 1
  %i.aoe = lshr i32 %i.aod, %i.r
  %i.aof = and i32 %i.aoe, -2                     ; 3 uses
  %.not795 = icmp eq i32 %i.aof, 0
  br i1 %.not795, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aog = add i32 %i.aof, -1
  %i.aoh = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, -2) %i.aog, i1 true)
  %i.aoi = sub nuw nsw i32 32, %i.aoh
  %i.aoj = add i32 %i.aof, -2
  %i.aok = lshr i32 %i.aoc, 31
  %i.aol = or disjoint i32 %i.aoj, %i.aok
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.47.1 = phi i32 [ %i.aoi, %bb.fp ], [ 0, %bb.fo ] ; 3 uses
  %.sroa.41.1 = phi i32 [ 1, %bb.fp ], [ 0, %bb.fo ] ; 2 uses
  %.sroa.27.1 = phi i32 [ %i.aol, %bb.fp ], [ 0, %bb.fo ]
  br i1 %i.s, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %.1724, i64 %i.t
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !14
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fq, %bb.fr
  %i.aoo = phi i32 [ %i.aon, %bb.fr ], [ 0, %bb.fq ] ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.1724, i64 4 ; 3 uses
  %i.aoq = shl i32 %i.aoo, 1
  %i.aor = lshr i32 %i.aoq, %i.r
  %i.aos = and i32 %i.aor, -2                     ; 3 uses
  %.not796 = icmp eq i32 %i.aos, 0
  br i1 %.not796, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aot = or disjoint i32 %.sroa.41.1, 2
  %i.aou = add i32 %i.aos, -1
  %i.aov = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, -2) %i.aou, i1 true)
  %i.aow = sub nuw nsw i32 32, %i.aov             ; 2 uses
  %i.aox = call i32 @llvm.umax.i32(i32 %.sroa.47.1, i32 %i.aow)
  %i.aoy = add i32 %i.aos, -2
  %i.aoz = lshr i32 %i.aoo, 31
  %i.apa = or disjoint i32 %i.aoy, %i.aoz
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.sroa.37.2 = phi i32 [ %i.aox, %bb.ft ], [ %.sroa.47.1, %bb.fs ] ; 3 uses
  %.sroa.55.1 = phi i32 [ %i.aow, %bb.ft ], [ 0, %bb.fs ] ; 2 uses
  %.sroa.41.2 = phi i32 [ %i.aot, %bb.ft ], [ %.sroa.41.1, %bb.fs ] ; 3 uses
  %.sroa.33.1 = phi i32 [ %i.apa, %bb.ft ], [ 0, %bb.fs ]
  %i.apb = or disjoint i32 %.07221400, 3
  %i.apc = icmp ult i32 %i.apb, %3
  br i1 %i.apc, label %bb.fv, label %bb.gb

bb.fv:                                            ; preds = %bb.fu
  %i.apd = load i32, ptr %i.aop, align 4, !tbaa !14 ; 2 uses
  %i.ape = shl i32 %i.apd, 1
  %i.apf = lshr i32 %i.ape, %i.r
  %i.apg = and i32 %i.apf, -2                     ; 3 uses
  %.not797 = icmp eq i32 %i.apg, 0
  br i1 %.not797, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aph = add nuw nsw i32 %.sroa.41.2, 4
  %i.api = add i32 %i.apg, -1
  %i.apj = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, -2) %i.api, i1 true)
  %i.apk = sub nuw nsw i32 32, %i.apj             ; 2 uses
  %i.apl = call i32 @llvm.umax.i32(i32 %.sroa.37.2, i32 %i.apk)
  %i.apm = add i32 %i.apg, -2
  %i.apn = lshr i32 %i.apd, 31
  %i.apo = or disjoint i32 %i.apm, %i.apn
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.sroa.37.3 = phi i32 [ %i.apl, %bb.fw ], [ %.sroa.37.2, %bb.fv ] ; 2 uses
  %.sroa.69.1 = phi i32 [ %i.apk, %bb.fw ], [ 0, %bb.fv ] ; 2 uses
  %.sroa.41.3 = phi i32 [ %i.aph, %bb.fw ], [ %.sroa.41.2, %bb.fv ] ; 2 uses
  %.sroa.39.1 = phi i32 [ %i.apo, %bb.fw ], [ 0, %bb.fv ] ; 2 uses
  br i1 %i.s, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.t
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !14
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  %i.apr = phi i32 [ %i.apq, %bb.fy ], [ 0, %bb.fx ] ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %.1724, i64 8 ; 2 uses
  %i.apt = shl i32 %i.apr, 1
  %i.apu = lshr i32 %i.apt, %i.r
  %i.apv = and i32 %i.apu, -2                     ; 3 uses
  %.not798 = icmp eq i32 %i.apv, 0
  br i1 %.not798, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.apw = add nuw nsw i32 %.sroa.41.3, 8
  %i.apx = add i32 %i.apv, -1
  %i.apy = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, -2) %i.apx, i1 true)
  %i.apz = sub nuw nsw i32 32, %i.apy             ; 2 uses
  %i.aqa = call i32 @llvm.umax.i32(i32 %.sroa.37.3, i32 %i.apz)
  %i.aqb = add i32 %i.apv, -2
  %i.aqc = lshr i32 %i.apr, 31
  %i.aqd = or disjoint i32 %i.aqb, %i.aqc
  br label %bb.gb

bb.gb:                                            ; preds = %bb.fz, %bb.ga, %bb.fu
  %.sroa.37.4 = phi i32 [ %i.aqa, %bb.ga ], [ %.sroa.37.3, %bb.fz ], [ %.sroa.37.2, %bb.fu ] ; 6 uses
  %.sroa.69.2 = phi i32 [ %.sroa.69.1, %bb.ga ], [ %.sroa.69.1, %bb.fz ], [ 0, %bb.fu ]
  %.sroa.79.1 = phi i32 [ %i.apz, %bb.ga ], [ 0, %bb.fz ], [ 0, %bb.fu ] ; 2 uses
  %.sroa.41.4 = phi i32 [ %i.apw, %bb.ga ], [ %.sroa.41.3, %bb.fz ], [ %.sroa.41.2, %bb.fu ] ; 11 uses
  %.sroa.39.2 = phi i32 [ %.sroa.39.1, %bb.ga ], [ %.sroa.39.1, %bb.fz ], [ 0, %bb.fu ]
  %.sroa.45.1 = phi i32 [ %i.aqd, %bb.ga ], [ 0, %bb.fz ], [ 0, %bb.fu ]
  %.2 = phi ptr [ %i.aps, %bb.ga ], [ %i.aps, %bb.fz ], [ %i.aop, %bb.fu ] ; 5 uses
  %i.aqe = lshr i32 %.sroa.0349.4, 1
  %i.aqf = or i32 %i.aqe, %i.akm                  ; 2 uses
  %i.aqg = call i32 @llvm.umax.i32(i32 %.sroa.37.4, i32 1) ; 8 uses
  %i.aqh = add nsw i32 %i.aqg, -1                 ; 3 uses
  %i.aqi = icmp samesign ugt i32 %.sroa.37.4, 1
  br i1 %i.aqi, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aqj = icmp eq i32 %.sroa.47.1, %.sroa.37.4
  %i.aqk = zext i1 %i.aqj to i32
  %i.aql = icmp eq i32 %.sroa.55.1, %.sroa.37.4
  %i.aqm = select i1 %i.aql, i32 2, i32 0
  %i.aqn = or disjoint i32 %i.aqm, %i.aqk
  %i.aqo = icmp eq i32 %.sroa.69.2, %.sroa.37.4
  %i.aqp = select i1 %i.aqo, i32 4, i32 0
  %i.aqq = or disjoint i32 %i.aqn, %i.aqp
  %i.aqr = icmp eq i32 %.sroa.79.1, %.sroa.37.4
  %i.aqs = select i1 %i.aqr, i32 8, i32 0
  %i.aqt = or disjoint i32 %i.aqq, %i.aqs
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.0719 = phi i32 [ %i.aqt, %bb.gc ], [ 0, %bb.gb ]
  %i.aqu = load i8, ptr %i.aik, align 1, !tbaa !21
  %i.aqv = zext i8 %i.aqu to i32
  %i.aqw = call i32 @llvm.umax.i32(i32 %.sroa.55.1, i32 %i.aqv)
  %i.aqx = trunc nuw i32 %i.aqw to i8
  store i8 %i.aqx, ptr %i.aik, align 1, !tbaa !21
  %i.aqy = getelementptr inbounds nuw i8, ptr %.07331396, i64 2 ; 6 uses
  %i.aqz = trunc nuw nsw i32 %.sroa.79.1 to i8
  store i8 %i.aqz, ptr %i.aqy, align 1, !tbaa !21
  %i.ara = load i8, ptr %i.air, align 1, !tbaa !21
  %i.arb = and i32 %.sroa.41.4, 2                 ; 2 uses
  %i.arc = lshr exact i32 %i.arb, 1
  %i.ard = trunc nuw nsw i32 %i.arc to i8
  %i.are = or i8 %i.ara, %i.ard
  store i8 %i.are, ptr %i.air, align 1, !tbaa !21
  %i.arf = getelementptr inbounds nuw i8, ptr %.07291397, i64 2 ; 6 uses
  %i.arg = and i32 %.sroa.41.4, 8                 ; 2 uses
  %i.arh = lshr exact i32 %i.arg, 3
  %i.ari = trunc nuw nsw i32 %i.arh to i8
  store i8 %i.ari, ptr %i.arf, align 1, !tbaa !21
  %i.arj = shl nuw nsw i32 %i.aqf, 8
  %i.ark = shl nuw nsw i32 %.sroa.41.4, 4
  %i.arl = add nuw nsw i32 %i.ark, %i.arj
  %i.arm = add nuw nsw i32 %i.arl, %.0719
  %i.arn = zext nneg i32 %i.arm to i64
  %i.aro = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5localL8vlc_tbl0E, i64 %i.arn
  %i.arp = load i16, ptr %i.aro, align 2, !tbaa !17
  %i.arq = zext i16 %i.arp to i32                 ; 6 uses
  %i.arr = lshr i32 %i.arq, 4
  %i.ars = and i32 %i.arr, 7                      ; 2 uses
  %.not3738.i834 = icmp eq i32 %i.ars, 0
  br i1 %.not3738.i834, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit845, label %.lr.ph.i835.preheader

.lr.ph.i835.preheader:                            ; preds = %bb.gd
  %i.art = lshr i32 %i.arq, 8
  br label %.lr.ph.i835

.lr.ph.i835:                                      ; preds = %.lr.ph.i835.preheader, %bb.gj
  %.040.i836 = phi i32 [ %i.ask, %bb.gj ], [ %i.ars, %.lr.ph.i835.preheader ] ; 3 uses
  %.03239.i837 = phi i32 [ %i.asl, %bb.gj ], [ %i.art, %.lr.ph.i835.preheader ] ; 2 uses
  %i.aru = load i32, ptr %i.m, align 8, !tbaa !37
  %i.arv = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i838 = icmp ult i32 %i.aru, %i.arv
  br i1 %.not.i838, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph.i835
  %i.arw = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !40
  %i.ary = load ptr, ptr %i.arx, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ary(ptr noundef nonnull align 8 dereferenceable(8) %i.arw, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.lr.ph.i835
  %i.arz = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i839 = sub nuw nsw i8 8, %i.arz
  %i.asa = zext nneg i8 %narrow.i839 to i32
  %i.asb = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.asc = sub nsw i32 %i.asa, %i.asb             ; 2 uses
  %i.asd = call i32 @llvm.smin.i32(i32 %i.asc, i32 %.040.i836) ; 4 uses
  %notmask.i840 = shl nsw i32 -1, %i.asd
  %i.ase = xor i32 %notmask.i840, -1
  %i.asf = and i32 %.03239.i837, %i.ase
  %i.asg = shl i32 %i.asf, %i.asb
  %i.ash = load i32, ptr %i.p, align 4, !tbaa !44
  %i.asi = or i32 %i.asg, %i.ash                  ; 3 uses
  store i32 %i.asi, ptr %i.p, align 4, !tbaa !44
  %i.asj = add nsw i32 %i.asd, %i.asb
  store i32 %i.asj, ptr %i.o, align 8, !tbaa !43
  %i.ask = sub nsw i32 %.040.i836, %i.asd         ; 2 uses
  %i.asl = lshr i32 %.03239.i837, %i.asd
  %.not34.i841 = icmp sgt i32 %i.asc, %.040.i836
  br i1 %.not34.i841, label %bb.gj, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.asm = trunc nuw i8 %i.arz to i1
  %.not35.i842 = icmp ne i32 %i.asi, 127
  %or.cond.not.i843 = select i1 %i.asm, i1 %.not35.i842, i1 false
  br i1 %or.cond.not.i843, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i8 0, ptr %i.q, align 8, !tbaa !36
  br label %bb.gj, !llvm.loop !1

bb.gi:                                            ; preds = %bb.gg
  %i.asn = trunc i32 %i.asi to i8
  %i.aso = load ptr, ptr %10, align 8, !tbaa !35
  %i.asp = load i32, ptr %i.m, align 8, !tbaa !37
  %i.asq = zext i32 %i.asp to i64
  %i.asr = sub nsw i64 0, %i.asq
  %i.ass = getelementptr inbounds i8, ptr %i.aso, i64 %i.asr
  store i8 %i.asn, ptr %i.ass, align 1, !tbaa !21
  %i.ast = load i32, ptr %i.m, align 8, !tbaa !37
  %i.asu = add i32 %i.ast, 1
  store i32 %i.asu, ptr %i.m, align 8, !tbaa !37
  %i.asv = load i32, ptr %i.p, align 4, !tbaa !44
  %i.asw = icmp sgt i32 %i.asv, 143
  %i.asx = zext i1 %i.asw to i8
  store i8 %i.asx, ptr %i.q, align 8, !tbaa !36
  store i32 0, ptr %i.p, align 4, !tbaa !44
  store i32 0, ptr %i.o, align 8, !tbaa !43
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gf
  %.not37.i844 = icmp eq i32 %i.ask, 0
  br i1 %.not37.i844, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit845, label %.lr.ph.i835

_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit845: ; preds = %bb.gj, %bb.gd
  %i.asy = icmp eq i32 %i.aqf, 0
  br i1 %i.asy, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit845
  %i.asz = icmp ne i32 %.sroa.41.4, 0
  call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %9, i1 noundef zeroext %i.asz)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit845
  %i.ata = and i32 %.sroa.41.4, 1
  %.not799 = icmp eq i32 %i.ata, 0
  %i.atb = and i32 %i.arq, 1
  %i.atc = sub nuw nsw i32 %i.aqg, %i.atb         ; 2 uses
  %i.atd = select i1 %.not799, i32 0, i32 %i.atc  ; 2 uses
  %i.ate = icmp sgt i32 %i.atd, 0
  br i1 %i.ate, label %.lr.ph.i846.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853

.lr.ph.i846.preheader:                            ; preds = %bb.gl
  %notmask800 = shl nsw i32 -1, %i.atd
  %i.atf = xor i32 %notmask800, -1
  %i.atg = and i32 %.sroa.27.1, %i.atf
  br label %.lr.ph.i846

.lr.ph.i846:                                      ; preds = %.lr.ph.i846.preheader, %bb.gp
  %.sroa.182.17 = phi i32 [ %.sroa.182.18, %bb.gp ], [ %.sroa.182.16, %.lr.ph.i846.preheader ]
  %.sroa.131.17 = phi i32 [ %.sroa.131.18, %bb.gp ], [ %.sroa.131.16, %.lr.ph.i846.preheader ] ; 3 uses
  %.sroa.97.17 = phi i32 [ %.sroa.97.18, %bb.gp ], [ %.sroa.97.16, %.lr.ph.i846.preheader ] ; 3 uses
  %.sroa.21.17 = phi i32 [ %.sroa.21.18, %bb.gp ], [ %.sroa.21.16, %.lr.ph.i846.preheader ] ; 4 uses
  %.032.i847 = phi i32 [ %i.atr, %bb.gp ], [ %i.atc, %.lr.ph.i846.preheader ] ; 2 uses
  %.02731.i848 = phi i32 [ %i.atq, %bb.gp ], [ %i.atg, %.lr.ph.i846.preheader ] ; 2 uses
  %.not.i849 = icmp ult i32 %.sroa.21.17, 17477
  br i1 %.not.i849, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph.i846
  %i.ath = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !40
  %i.atj = load ptr, ptr %i.ati, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.atj(ptr noundef nonnull align 8 dereferenceable(8) %i.ath, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %.lr.ph.i846
  %i.atk = sub nuw nsw i32 %.sroa.97.17, %.sroa.131.17
  %..0.i850 = call i32 @llvm.smin.i32(i32 %i.atk, i32 %.032.i847) ; 4 uses
  %notmask.i851 = shl nsw i32 -1, %..0.i850
  %i.atl = xor i32 %notmask.i851, -1
  %i.atm = and i32 %.02731.i848, %i.atl
  %i.atn = shl nuw nsw i32 %i.atm, %.sroa.131.17
  %i.ato = or i32 %i.atn, %.sroa.182.17           ; 3 uses
  %i.atp = add nuw nsw i32 %..0.i850, %.sroa.131.17 ; 2 uses
  %i.atq = lshr i32 %.02731.i848, %..0.i850
  %i.atr = sub nsw i32 %.032.i847, %..0.i850      ; 2 uses
  %.not30.i852 = icmp slt i32 %i.atp, %.sroa.97.17
  br i1 %.not30.i852, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ats = trunc i32 %i.ato to i8
  %i.att = add nuw i32 %.sroa.21.17, 1
  %i.atu = zext i32 %.sroa.21.17 to i64
  %i.atv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.atu
  store i8 %i.ats, ptr %i.atv, align 1, !tbaa !21
  %i.atw = icmp eq i32 %i.ato, 255
  %i.atx = select i1 %i.atw, i32 7, i32 8
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.sroa.182.18 = phi i32 [ %i.ato, %bb.gn ], [ 0, %bb.go ] ; 2 uses
  %.sroa.131.18 = phi i32 [ %i.atp, %bb.gn ], [ 0, %bb.go ] ; 2 uses
  %.sroa.97.18 = phi i32 [ %.sroa.97.17, %bb.gn ], [ %i.atx, %bb.go ] ; 2 uses
  %.sroa.21.18 = phi i32 [ %.sroa.21.17, %bb.gn ], [ %i.att, %bb.go ] ; 2 uses
  %i.aty = icmp sgt i32 %i.atr, 0
  br i1 %i.aty, label %.lr.ph.i846, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853: ; preds = %bb.gp, %bb.gl
  %.sroa.182.19 = phi i32 [ %.sroa.182.16, %bb.gl ], [ %.sroa.182.18, %bb.gp ] ; 2 uses
  %.sroa.131.19 = phi i32 [ %.sroa.131.16, %bb.gl ], [ %.sroa.131.18, %bb.gp ] ; 2 uses
  %.sroa.97.19 = phi i32 [ %.sroa.97.16, %bb.gl ], [ %.sroa.97.18, %bb.gp ] ; 2 uses
  %.sroa.21.19 = phi i32 [ %.sroa.21.16, %bb.gl ], [ %.sroa.21.18, %bb.gp ] ; 2 uses
  %.not801 = icmp eq i32 %i.arb, 0
  %38 = shl i32 %i.arq, 30
  %39 = ashr i32 %38, 31
  %40 = add nsw i32 %39, %i.aqg                   ; 2 uses
  %i.atz = select i1 %.not801, i32 0, i32 %40     ; 2 uses
  %i.aua = icmp sgt i32 %i.atz, 0
  br i1 %i.aua, label %.lr.ph.i854.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861

.lr.ph.i854.preheader:                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853
  %notmask802 = shl nsw i32 -1, %i.atz
  %i.aub = xor i32 %notmask802, -1
  %i.auc = and i32 %.sroa.33.1, %i.aub
  br label %.lr.ph.i854

.lr.ph.i854:                                      ; preds = %.lr.ph.i854.preheader, %bb.gt
  %.sroa.182.20 = phi i32 [ %.sroa.182.21, %bb.gt ], [ %.sroa.182.19, %.lr.ph.i854.preheader ]
  %.sroa.131.20 = phi i32 [ %.sroa.131.21, %bb.gt ], [ %.sroa.131.19, %.lr.ph.i854.preheader ] ; 3 uses
  %.sroa.97.20 = phi i32 [ %.sroa.97.21, %bb.gt ], [ %.sroa.97.19, %.lr.ph.i854.preheader ] ; 3 uses
  %.sroa.21.20 = phi i32 [ %.sroa.21.21, %bb.gt ], [ %.sroa.21.19, %.lr.ph.i854.preheader ] ; 4 uses
  %.032.i855 = phi i32 [ %i.aun, %bb.gt ], [ %40, %.lr.ph.i854.preheader ] ; 2 uses
  %.02731.i856 = phi i32 [ %i.aum, %bb.gt ], [ %i.auc, %.lr.ph.i854.preheader ] ; 2 uses
  %.not.i857 = icmp ult i32 %.sroa.21.20, 17477
  br i1 %.not.i857, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph.i854
  %i.aud = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !40
  %i.auf = load ptr, ptr %i.aue, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.auf(ptr noundef nonnull align 8 dereferenceable(8) %i.aud, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %.lr.ph.i854
  %i.aug = sub nuw nsw i32 %.sroa.97.20, %.sroa.131.20
  %..0.i858 = call i32 @llvm.smin.i32(i32 %i.aug, i32 %.032.i855) ; 4 uses
  %notmask.i859 = shl nsw i32 -1, %..0.i858
  %i.auh = xor i32 %notmask.i859, -1
  %i.aui = and i32 %.02731.i856, %i.auh
  %i.auj = shl nuw nsw i32 %i.aui, %.sroa.131.20
  %i.auk = or i32 %i.auj, %.sroa.182.20           ; 3 uses
  %i.aul = add nuw nsw i32 %..0.i858, %.sroa.131.20 ; 2 uses
  %i.aum = lshr i32 %.02731.i856, %..0.i858
  %i.aun = sub nsw i32 %.032.i855, %..0.i858      ; 2 uses
  %.not30.i860 = icmp slt i32 %i.aul, %.sroa.97.20
  br i1 %.not30.i860, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.auo = trunc i32 %i.auk to i8
  %i.aup = add nuw i32 %.sroa.21.20, 1
  %i.auq = zext i32 %.sroa.21.20 to i64
  %i.aur = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.auq
  store i8 %i.auo, ptr %i.aur, align 1, !tbaa !21
  %i.aus = icmp eq i32 %i.auk, 255
  %i.aut = select i1 %i.aus, i32 7, i32 8
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.sroa.182.21 = phi i32 [ %i.auk, %bb.gr ], [ 0, %bb.gs ] ; 2 uses
  %.sroa.131.21 = phi i32 [ %i.aul, %bb.gr ], [ 0, %bb.gs ] ; 2 uses
  %.sroa.97.21 = phi i32 [ %.sroa.97.20, %bb.gr ], [ %i.aut, %bb.gs ] ; 2 uses
  %.sroa.21.21 = phi i32 [ %.sroa.21.20, %bb.gr ], [ %i.aup, %bb.gs ] ; 2 uses
  %i.auu = icmp sgt i32 %i.aun, 0
  br i1 %i.auu, label %.lr.ph.i854, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861: ; preds = %bb.gt, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853
  %.sroa.182.22 = phi i32 [ %.sroa.182.19, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853 ], [ %.sroa.182.21, %bb.gt ] ; 2 uses
  %.sroa.131.22 = phi i32 [ %.sroa.131.19, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853 ], [ %.sroa.131.21, %bb.gt ] ; 2 uses
  %.sroa.97.22 = phi i32 [ %.sroa.97.19, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853 ], [ %.sroa.97.21, %bb.gt ] ; 2 uses
  %.sroa.21.22 = phi i32 [ %.sroa.21.19, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit853 ], [ %.sroa.21.21, %bb.gt ] ; 2 uses
  %i.auv = and i32 %.sroa.41.4, 4
  %.not803 = icmp eq i32 %i.auv, 0
  %41 = shl i32 %i.arq, 29
  %42 = ashr i32 %41, 31
  %43 = add nsw i32 %42, %i.aqg                   ; 2 uses
  %i.auw = select i1 %.not803, i32 0, i32 %43     ; 2 uses
  %i.aux = icmp sgt i32 %i.auw, 0
  br i1 %i.aux, label %.lr.ph.i862.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869

.lr.ph.i862.preheader:                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861
  %notmask804 = shl nsw i32 -1, %i.auw
  %i.auy = xor i32 %notmask804, -1
  %i.auz = and i32 %.sroa.39.2, %i.auy
  br label %.lr.ph.i862

.lr.ph.i862:                                      ; preds = %.lr.ph.i862.preheader, %bb.gx
  %.sroa.182.23 = phi i32 [ %.sroa.182.24, %bb.gx ], [ %.sroa.182.22, %.lr.ph.i862.preheader ]
  %.sroa.131.23 = phi i32 [ %.sroa.131.24, %bb.gx ], [ %.sroa.131.22, %.lr.ph.i862.preheader ] ; 3 uses
  %.sroa.97.23 = phi i32 [ %.sroa.97.24, %bb.gx ], [ %.sroa.97.22, %.lr.ph.i862.preheader ] ; 3 uses
  %.sroa.21.23 = phi i32 [ %.sroa.21.24, %bb.gx ], [ %.sroa.21.22, %.lr.ph.i862.preheader ] ; 4 uses
  %.032.i863 = phi i32 [ %i.avk, %bb.gx ], [ %43, %.lr.ph.i862.preheader ] ; 2 uses
  %.02731.i864 = phi i32 [ %i.avj, %bb.gx ], [ %i.auz, %.lr.ph.i862.preheader ] ; 2 uses
  %.not.i865 = icmp ult i32 %.sroa.21.23, 17477
  br i1 %.not.i865, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i862
  %i.ava = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !40
  %i.avc = load ptr, ptr %i.avb, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.avc(ptr noundef nonnull align 8 dereferenceable(8) %i.ava, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %.lr.ph.i862
  %i.avd = sub nuw nsw i32 %.sroa.97.23, %.sroa.131.23
  %..0.i866 = call i32 @llvm.smin.i32(i32 %i.avd, i32 %.032.i863) ; 4 uses
  %notmask.i867 = shl nsw i32 -1, %..0.i866
  %i.ave = xor i32 %notmask.i867, -1
  %i.avf = and i32 %.02731.i864, %i.ave
  %i.avg = shl nuw nsw i32 %i.avf, %.sroa.131.23
  %i.avh = or i32 %i.avg, %.sroa.182.23           ; 3 uses
  %i.avi = add nuw nsw i32 %..0.i866, %.sroa.131.23 ; 2 uses
  %i.avj = lshr i32 %.02731.i864, %..0.i866
  %i.avk = sub nsw i32 %.032.i863, %..0.i866      ; 2 uses
  %.not30.i868 = icmp slt i32 %i.avi, %.sroa.97.23
  br i1 %.not30.i868, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.avl = trunc i32 %i.avh to i8
  %i.avm = add nuw i32 %.sroa.21.23, 1
  %i.avn = zext i32 %.sroa.21.23 to i64
  %i.avo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.avn
  store i8 %i.avl, ptr %i.avo, align 1, !tbaa !21
  %i.avp = icmp eq i32 %i.avh, 255
  %i.avq = select i1 %i.avp, i32 7, i32 8
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.sroa.182.24 = phi i32 [ %i.avh, %bb.gv ], [ 0, %bb.gw ] ; 2 uses
  %.sroa.131.24 = phi i32 [ %i.avi, %bb.gv ], [ 0, %bb.gw ] ; 2 uses
  %.sroa.97.24 = phi i32 [ %.sroa.97.23, %bb.gv ], [ %i.avq, %bb.gw ] ; 2 uses
  %.sroa.21.24 = phi i32 [ %.sroa.21.23, %bb.gv ], [ %i.avm, %bb.gw ] ; 2 uses
  %i.avr = icmp sgt i32 %i.avk, 0
  br i1 %i.avr, label %.lr.ph.i862, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869: ; preds = %bb.gx, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861
  %.sroa.182.25 = phi i32 [ %.sroa.182.22, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861 ], [ %.sroa.182.24, %bb.gx ] ; 2 uses
  %.sroa.131.25 = phi i32 [ %.sroa.131.22, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861 ], [ %.sroa.131.24, %bb.gx ] ; 2 uses
  %.sroa.97.25 = phi i32 [ %.sroa.97.22, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861 ], [ %.sroa.97.24, %bb.gx ] ; 2 uses
  %.sroa.21.25 = phi i32 [ %.sroa.21.22, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit861 ], [ %.sroa.21.24, %bb.gx ] ; 2 uses
  %.not805 = icmp eq i32 %i.arg, 0
  %44 = shl i32 %i.arq, 28
  %45 = ashr i32 %44, 31
  %46 = add nsw i32 %45, %i.aqg                   ; 2 uses
  %i.avs = select i1 %.not805, i32 0, i32 %46     ; 2 uses
  %i.avt = icmp sgt i32 %i.avs, 0
  br i1 %i.avt, label %.lr.ph.i870.preheader, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit877

.lr.ph.i870.preheader:                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869
  %notmask806 = shl nsw i32 -1, %i.avs
  %i.avu = xor i32 %notmask806, -1
  %i.avv = and i32 %.sroa.45.1, %i.avu
  br label %.lr.ph.i870

.lr.ph.i870:                                      ; preds = %.lr.ph.i870.preheader, %bb.hb
  %.sroa.182.26 = phi i32 [ %.sroa.182.27, %bb.hb ], [ %.sroa.182.25, %.lr.ph.i870.preheader ]
  %.sroa.131.26 = phi i32 [ %.sroa.131.27, %bb.hb ], [ %.sroa.131.25, %.lr.ph.i870.preheader ] ; 3 uses
  %.sroa.97.26 = phi i32 [ %.sroa.97.27, %bb.hb ], [ %.sroa.97.25, %.lr.ph.i870.preheader ] ; 3 uses
  %.sroa.21.26 = phi i32 [ %.sroa.21.27, %bb.hb ], [ %.sroa.21.25, %.lr.ph.i870.preheader ] ; 4 uses
  %.032.i871 = phi i32 [ %i.awg, %bb.hb ], [ %46, %.lr.ph.i870.preheader ] ; 2 uses
  %.02731.i872 = phi i32 [ %i.awf, %bb.hb ], [ %i.avv, %.lr.ph.i870.preheader ] ; 2 uses
  %.not.i873 = icmp ult i32 %.sroa.21.26, 17477
  br i1 %.not.i873, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.i870
  %i.avw = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !40
  %i.avy = load ptr, ptr %i.avx, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.avy(ptr noundef nonnull align 8 dereferenceable(8) %i.avw, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 476, ptr noundef nonnull @.str.3), !inline_history !69
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.lr.ph.i870
  %i.avz = sub nuw nsw i32 %.sroa.97.26, %.sroa.131.26
  %..0.i874 = call i32 @llvm.smin.i32(i32 %i.avz, i32 %.032.i871) ; 4 uses
  %notmask.i875 = shl nsw i32 -1, %..0.i874
  %i.awa = xor i32 %notmask.i875, -1
  %i.awb = and i32 %.02731.i872, %i.awa
  %i.awc = shl nuw nsw i32 %i.awb, %.sroa.131.26
  %i.awd = or i32 %i.awc, %.sroa.182.26           ; 3 uses
  %i.awe = add nuw nsw i32 %..0.i874, %.sroa.131.26 ; 2 uses
  %i.awf = lshr i32 %.02731.i872, %..0.i874
  %i.awg = sub nsw i32 %.032.i871, %..0.i874      ; 2 uses
  %.not30.i876 = icmp slt i32 %i.awe, %.sroa.97.26
  br i1 %.not30.i876, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.awh = trunc i32 %i.awd to i8
  %i.awi = add nuw i32 %.sroa.21.26, 1
  %i.awj = zext i32 %.sroa.21.26 to i64
  %i.awk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.awj
  store i8 %i.awh, ptr %i.awk, align 1, !tbaa !21
  %i.awl = icmp eq i32 %i.awd, 255
  %i.awm = select i1 %i.awl, i32 7, i32 8
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.sroa.182.27 = phi i32 [ %i.awd, %bb.gz ], [ 0, %bb.ha ] ; 2 uses
  %.sroa.131.27 = phi i32 [ %i.awe, %bb.gz ], [ 0, %bb.ha ] ; 2 uses
  %.sroa.97.27 = phi i32 [ %.sroa.97.26, %bb.gz ], [ %i.awm, %bb.ha ] ; 2 uses
  %.sroa.21.27 = phi i32 [ %.sroa.21.26, %bb.gz ], [ %i.awi, %bb.ha ] ; 2 uses
  %i.awn = icmp sgt i32 %i.awg, 0
  br i1 %i.awn, label %.lr.ph.i870, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit877, !llvm.loop !70

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit877: ; preds = %bb.hb, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869
  %.sroa.182.1 = phi i32 [ %.sroa.182.25, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869 ], [ %.sroa.182.27, %bb.hb ] ; 5 uses
  %.sroa.131.1 = phi i32 [ %.sroa.131.25, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869 ], [ %.sroa.131.27, %bb.hb ] ; 5 uses
  %.sroa.97.1 = phi i32 [ %.sroa.97.25, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869 ], [ %.sroa.97.27, %bb.hb ] ; 5 uses
  %.sroa.21.11320 = phi i32 [ %.sroa.21.25, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit869 ], [ %.sroa.21.27, %bb.hb ] ; 5 uses
  %i.awo = icmp sgt i32 %i.aqg, 1                 ; 2 uses
  %or.cond = and i1 %i.ahu, %i.awo
  br i1 %or.cond, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit877
  %i.awp = call i32 @llvm.smin.i32(i32 %i.aht, i32 %i.aqh)
  %i.awq = icmp sgt i32 %i.awp, 2
  call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %9, i1 noundef zeroext %i.awq)
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEji.exit877
  %i.awr = icmp sgt i32 %.sroa.0521.4, 3          ; 2 uses
  %i.aws = icmp sgt i32 %i.aqg, 3
  %or.cond3 = and i1 %i.awr, %i.aws
  br i1 %or.cond3, label %bb.he, label %bb.id

bb.he:                                            ; preds = %bb.hd
  %i.awt = zext nneg i32 %i.ahs to i64
  %i.awu = getelementptr [6 x i8], ptr @_ZN4ojph5localL8uvlc_tblE, i64 %i.awt ; 4 uses
  %i.awv = getelementptr i8, ptr %i.awu, i64 -17
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !20 ; 2 uses
  %.not3738.i878 = icmp eq i8 %i.aww, 0
  br i1 %.not3738.i878, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit889, label %.lr.ph.i879.preheader

.lr.ph.i879.preheader:                            ; preds = %bb.he
  %i.awx = zext i8 %i.aww to i32
  %i.awy = getelementptr i8, ptr %i.awu, i64 -18
  %i.awz = load i8, ptr %i.awy, align 2, !tbaa !19
  %i.axa = zext i8 %i.awz to i32
  br label %.lr.ph.i879

.lr.ph.i879:                                      ; preds = %.lr.ph.i879.preheader, %bb.hk
  %.040.i880 = phi i32 [ %i.axr, %bb.hk ], [ %i.awx, %.lr.ph.i879.preheader ] ; 3 uses
  %.03239.i881 = phi i32 [ %i.axs, %bb.hk ], [ %i.axa, %.lr.ph.i879.preheader ] ; 2 uses
  %i.axb = load i32, ptr %i.m, align 8, !tbaa !37
  %i.axc = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i882 = icmp ult i32 %i.axb, %i.axc
  br i1 %.not.i882, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph.i879
  %i.axd = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !40
  %i.axf = load ptr, ptr %i.axe, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.axf(ptr noundef nonnull align 8 dereferenceable(8) %i.axd, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.lr.ph.i879
  %i.axg = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i883 = sub nuw nsw i8 8, %i.axg
  %i.axh = zext nneg i8 %narrow.i883 to i32
  %i.axi = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.axj = sub nsw i32 %i.axh, %i.axi             ; 2 uses
  %i.axk = call i32 @llvm.smin.i32(i32 %i.axj, i32 %.040.i880) ; 4 uses
  %notmask.i884 = shl nsw i32 -1, %i.axk
  %i.axl = xor i32 %notmask.i884, -1
  %i.axm = and i32 %.03239.i881, %i.axl
  %i.axn = shl i32 %i.axm, %i.axi
  %i.axo = load i32, ptr %i.p, align 4, !tbaa !44
  %i.axp = or i32 %i.axn, %i.axo                  ; 3 uses
  store i32 %i.axp, ptr %i.p, align 4, !tbaa !44
  %i.axq = add nsw i32 %i.axk, %i.axi
  store i32 %i.axq, ptr %i.o, align 8, !tbaa !43
  %i.axr = sub nsw i32 %.040.i880, %i.axk         ; 2 uses
  %i.axs = lshr i32 %.03239.i881, %i.axk
  %.not34.i885 = icmp sgt i32 %i.axj, %.040.i880
  br i1 %.not34.i885, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.axt = trunc nuw i8 %i.axg to i1
  %.not35.i886 = icmp ne i32 %i.axp, 127
  %or.cond.not.i887 = select i1 %i.axt, i1 %.not35.i886, i1 false
  br i1 %or.cond.not.i887, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  store i8 0, ptr %i.q, align 8, !tbaa !36
  br label %bb.hk, !llvm.loop !1

bb.hj:                                            ; preds = %bb.hh
  %i.axu = trunc i32 %i.axp to i8
  %i.axv = load ptr, ptr %10, align 8, !tbaa !35
  %i.axw = load i32, ptr %i.m, align 8, !tbaa !37
  %i.axx = zext i32 %i.axw to i64
  %i.axy = sub nsw i64 0, %i.axx
  %i.axz = getelementptr inbounds i8, ptr %i.axv, i64 %i.axy
  store i8 %i.axu, ptr %i.axz, align 1, !tbaa !21
  %i.aya = load i32, ptr %i.m, align 8, !tbaa !37
  %i.ayb = add i32 %i.aya, 1
  store i32 %i.ayb, ptr %i.m, align 8, !tbaa !37
  %i.ayc = load i32, ptr %i.p, align 4, !tbaa !44
  %i.ayd = icmp sgt i32 %i.ayc, 143
  %i.aye = zext i1 %i.ayd to i8
  store i8 %i.aye, ptr %i.q, align 8, !tbaa !36
  store i32 0, ptr %i.p, align 4, !tbaa !44
  store i32 0, ptr %i.o, align 8, !tbaa !43
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %bb.hg
  %.not37.i888 = icmp eq i32 %i.axr, 0
  br i1 %.not37.i888, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit889, label %.lr.ph.i879

_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit889: ; preds = %bb.hk, %bb.he
  %i.ayf = zext nneg i32 %i.aqh to i64
  %i.ayg = getelementptr [6 x i8], ptr @_ZN4ojph5localL8uvlc_tblE, i64 %i.ayf ; 4 uses
  %i.ayh = getelementptr i8, ptr %i.ayg, i64 -11
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !20 ; 2 uses
  %.not3738.i890 = icmp eq i8 %i.ayi, 0
  br i1 %.not3738.i890, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit901, label %.lr.ph.i891.preheader

.lr.ph.i891.preheader:                            ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit889
  %i.ayj = zext i8 %i.ayi to i32
  %i.ayk = getelementptr i8, ptr %i.ayg, i64 -12
  %i.ayl = load i8, ptr %i.ayk, align 2, !tbaa !19
  %i.aym = zext i8 %i.ayl to i32
  br label %.lr.ph.i891

.lr.ph.i891:                                      ; preds = %.lr.ph.i891.preheader, %bb.hq
  %.040.i892 = phi i32 [ %i.azd, %bb.hq ], [ %i.ayj, %.lr.ph.i891.preheader ] ; 3 uses
  %.03239.i893 = phi i32 [ %i.aze, %bb.hq ], [ %i.aym, %.lr.ph.i891.preheader ] ; 2 uses
  %i.ayn = load i32, ptr %i.m, align 8, !tbaa !37
  %i.ayo = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i894 = icmp ult i32 %i.ayn, %i.ayo
  br i1 %.not.i894, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph.i891
  %i.ayp = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !40
  %i.ayr = load ptr, ptr %i.ayq, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ayr(ptr noundef nonnull align 8 dereferenceable(8) %i.ayp, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %.lr.ph.i891
  %i.ays = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i895 = sub nuw nsw i8 8, %i.ays
  %i.ayt = zext nneg i8 %narrow.i895 to i32
  %i.ayu = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.ayv = sub nsw i32 %i.ayt, %i.ayu             ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ojph5local23ojph_encode_codeblock64EPmjjjjjPjPNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  %i.ho = or disjoint i32 %i.hm, %i.hn            ; 3 uses
  store i32 %i.ho, ptr %i.h, align 4, !tbaa !45
  %i.hp = add nsw i32 %i.hh, -1                   ; 3 uses
  store i32 %i.hp, ptr %i.g, align 8, !tbaa !46
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.ad, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i.us

bb.ad:                                            ; preds = %bb.ac
  %i.hr = load i32, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.hs = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i29.i.us = icmp ult i32 %i.hr, %i.hs
  br i1 %.not.i29.i.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ht = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !40
  %i.hv = load ptr, ptr %i.hu, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, i32 noundef 131073, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 311, ptr noundef nonnull @.str.2), !inline_history !2
  %.pre.i30.i.us = load i32, ptr %i.h, align 4, !tbaa !45
  %.pre12.i31.i.us = load i32, ptr %i.e, align 8, !tbaa !47
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hw = phi i32 [ %.pre12.i31.i.us, %bb.ae ], [ %i.hr, %bb.ad ] ; 2 uses
  %i.hx = phi i32 [ %.pre.i30.i.us, %bb.ae ], [ %i.ho, %bb.ad ]
  %i.hy = trunc i32 %i.hx to i8
  %i.hz = load ptr, ptr %9, align 8, !tbaa !29
  %i.ia = add i32 %i.hw, 1
  store i32 %i.ia, ptr %i.e, align 8, !tbaa !47
  %i.ib = zext i32 %i.hw to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ib
  store i8 %i.hy, ptr %i.ic, align 1, !tbaa !21
  %i.id = load i32, ptr %i.h, align 4, !tbaa !45
  %i.ie = icmp eq i32 %i.id, 255
  %i.if = select i1 %i.ie, i32 7, i32 8           ; 2 uses
  store i32 %i.if, ptr %i.g, align 8, !tbaa !46
  store i32 0, ptr %i.h, align 4, !tbaa !45
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i.us

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i.us: ; preds = %bb.af, %bb.ac
  %i.ig = phi i32 [ %i.hp, %bb.ac ], [ %i.if, %bb.af ]
  %i.ih = phi i32 [ %i.ho, %bb.ac ], [ 0, %bb.af ]
  %i.ii = icmp sgt i32 %.033.i.us, 1
  br i1 %i.ii, label %bb.ac, label %._crit_edge.loopexit.i.us, !llvm.loop !3

._crit_edge.loopexit.i.us:                        ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i.us
  %.pre.i.us = load i32, ptr %i.j, align 4, !tbaa !31
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.loopexit.i.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit28.i.us
  %i.ij = phi i32 [ %.pre.i.us, %._crit_edge.loopexit.i.us ], [ %i.hb, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit28.i.us ]
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.ik = call i32 @llvm.smax.i32(i32 %i.ij, i32 1)
  %spec.select24.i.us = add nsw i32 %i.ik, -1     ; 2 uses
  store i32 %spec.select24.i.us, ptr %i.j, align 4, !tbaa !31
  %i.il = zext nneg i32 %spec.select24.i.us to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !14
  %i.io = shl nuw i32 1, %i.in
  store i32 %i.io, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us

bb.ag:                                            ; preds = %bb.x
  %i.ip = load i32, ptr %i.i, align 8, !tbaa !30
  %i.iq = add nsw i32 %i.ip, 1                    ; 2 uses
  store i32 %i.iq, ptr %i.i, align 8, !tbaa !30
  %i.ir = load i32, ptr %i.k, align 8, !tbaa !32
  %.not.i1095.us = icmp slt i32 %i.iq, %i.ir
  br i1 %.not.i1095.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.is = load i32, ptr %i.h, align 4, !tbaa !45
  %i.it = shl i32 %i.is, 1
  %i.iu = or disjoint i32 %i.it, 1                ; 2 uses
  store i32 %i.iu, ptr %i.h, align 4, !tbaa !45
  %i.iv = load i32, ptr %i.g, align 8, !tbaa !46
  %i.iw = add nsw i32 %i.iv, -1                   ; 2 uses
  store i32 %i.iw, ptr %i.g, align 8, !tbaa !46
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.ai, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us

bb.ai:                                            ; preds = %bb.ah
  %i.iy = load i32, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.iz = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i.i.us = icmp ult i32 %i.iy, %i.iz
  br i1 %.not.i.i.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ja = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !40
  %i.jc = load ptr, ptr %i.jb, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, i32 noundef 131073, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 311, ptr noundef nonnull @.str.2), !inline_history !2
  %.pre.i.i.us = load i32, ptr %i.h, align 4, !tbaa !45
  %.pre12.i.i.us = load i32, ptr %i.e, align 8, !tbaa !47
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.jd = phi i32 [ %.pre12.i.i.us, %bb.aj ], [ %i.iy, %bb.ai ] ; 2 uses
  %i.je = phi i32 [ %.pre.i.i.us, %bb.aj ], [ %i.iu, %bb.ai ]
  %i.jf = trunc i32 %i.je to i8
  %i.jg = load ptr, ptr %9, align 8, !tbaa !29
  %i.jh = add i32 %i.jd, 1
  store i32 %i.jh, ptr %i.e, align 8, !tbaa !47
  %i.ji = zext i32 %i.jd to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ji
  store i8 %i.jf, ptr %i.jj, align 1, !tbaa !21
  %i.jk = load i32, ptr %i.h, align 4, !tbaa !45
  %i.jl = icmp eq i32 %i.jk, 255
  %i.jm = select i1 %i.jl, i32 7, i32 8
  store i32 %i.jm, ptr %i.g, align 8, !tbaa !46
  store i32 0, ptr %i.h, align 4, !tbaa !45
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us: ; preds = %bb.ak, %bb.ah
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.jn = load i32, ptr %i.j, align 4, !tbaa !31
  %i.jo = call i32 @llvm.smin.i32(i32 %i.jn, i32 11)
  %spec.select.i.us = add nsw i32 %i.jo, 1        ; 2 uses
  store i32 %spec.select.i.us, ptr %i.j, align 4, !tbaa !31
  %i.jp = sext i32 %spec.select.i.us to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !14
  %i.js = shl nuw i32 1, %i.jr
  store i32 %i.js, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us

_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us: ; preds = %._crit_edge.i.us, %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1094.us
  %i.jt = and i32 %.sroa.0363.10.us, 1
  %.not777.us = icmp eq i32 %i.jt, 0
  %i.ju = and i32 %i.ew, 1
  %i.jv = sub nuw nsw i32 %i.da, %i.ju            ; 2 uses
  %i.jw = select i1 %.not777.us, i32 0, i32 %i.jv ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, 0
  br i1 %i.jx, label %.lr.ph.i1098.us.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us

.lr.ph.i1098.us.preheader:                        ; preds = %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us
  %i.jy = zext nneg i32 %i.jw to i64
  %notmask.us = shl nsw i64 -1, %i.jy
  %i.jz = xor i64 %notmask.us, -1
  %i.ka = and i64 %.sroa.0.4.us, %i.jz
  br label %.lr.ph.i1098.us

.lr.ph.i1098.us:                                  ; preds = %.lr.ph.i1098.us.preheader, %bb.ao
  %.sroa.182.29.us = phi i32 [ %.sroa.182.30.us, %bb.ao ], [ %.sroa.182.31506.us, %.lr.ph.i1098.us.preheader ]
  %.sroa.131.29.us = phi i32 [ %.sroa.131.30.us, %bb.ao ], [ %.sroa.131.31507.us, %.lr.ph.i1098.us.preheader ] ; 3 uses
  %.sroa.97.29.us = phi i32 [ %.sroa.97.30.us, %bb.ao ], [ %.sroa.97.31508.us, %.lr.ph.i1098.us.preheader ] ; 3 uses
  %.sroa.21.29.us = phi i32 [ %.sroa.21.30.us, %bb.ao ], [ %.sroa.21.31509.us, %.lr.ph.i1098.us.preheader ] ; 4 uses
  %.032.i1099.us = phi i32 [ %i.ko, %bb.ao ], [ %i.jv, %.lr.ph.i1098.us.preheader ] ; 2 uses
  %.02731.i1100.us = phi i64 [ %i.kn, %bb.ao ], [ %i.ka, %.lr.ph.i1098.us.preheader ] ; 2 uses
  %.not.i1101.us = icmp ult i32 %.sroa.21.29.us, 24030
  br i1 %.not.i1101.us, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i1098.us
  %i.kb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !40
  %i.kd = load ptr, ptr %i.kc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.kd(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i1098.us
  %i.ke = sub nsw i32 %.sroa.97.29.us, %.sroa.131.29.us
  %..0.i1102.us = call i32 @llvm.smin.i32(i32 %i.ke, i32 %.032.i1099.us) ; 3 uses
  %i.kf = zext i32 %..0.i1102.us to i64           ; 2 uses
  %notmask.i1103.us = shl nsw i64 -1, %i.kf
  %i.kg = xor i64 %notmask.i1103.us, -1
  %i.kh = and i64 %.02731.i1100.us, %i.kg
  %i.ki = zext nneg i32 %.sroa.131.29.us to i64
  %i.kj = shl i64 %i.kh, %i.ki
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = or i32 %.sroa.182.29.us, %i.kk          ; 3 uses
  %i.km = add nsw i32 %..0.i1102.us, %.sroa.131.29.us ; 2 uses
  %i.kn = lshr i64 %.02731.i1100.us, %i.kf
  %i.ko = sub nsw i32 %.032.i1099.us, %..0.i1102.us ; 2 uses
  %.not30.i1104.us = icmp slt i32 %i.km, %.sroa.97.29.us
  br i1 %.not30.i1104.us, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kp = trunc i32 %i.kl to i8
  %i.kq = add nuw i32 %.sroa.21.29.us, 1
  %i.kr = zext i32 %.sroa.21.29.us to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kr
  store i8 %i.kp, ptr %i.ks, align 1, !tbaa !21
  %i.kt = icmp eq i32 %i.kl, 255
  %i.ku = select i1 %i.kt, i32 7, i32 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.182.30.us = phi i32 [ %i.kl, %bb.am ], [ 0, %bb.an ] ; 2 uses
  %.sroa.131.30.us = phi i32 [ %i.km, %bb.am ], [ 0, %bb.an ] ; 2 uses
  %.sroa.97.30.us = phi i32 [ %.sroa.97.29.us, %bb.am ], [ %i.ku, %bb.an ] ; 2 uses
  %.sroa.21.30.us = phi i32 [ %.sroa.21.29.us, %bb.am ], [ %i.kq, %bb.an ] ; 2 uses
  %i.kv = icmp sgt i32 %i.ko, 0
  br i1 %i.kv, label %.lr.ph.i1098.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us: ; preds = %bb.ao, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us
  %.sroa.182.31.us = phi i32 [ %.sroa.182.31506.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us ], [ %.sroa.182.30.us, %bb.ao ] ; 2 uses
  %.sroa.131.31.us = phi i32 [ %.sroa.131.31507.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us ], [ %.sroa.131.30.us, %bb.ao ] ; 2 uses
  %.sroa.97.31.us = phi i32 [ %.sroa.97.31508.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us ], [ %.sroa.97.30.us, %bb.ao ] ; 2 uses
  %.sroa.21.31.us = phi i32 [ %.sroa.21.31509.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit.us ], [ %.sroa.21.30.us, %bb.ao ] ; 2 uses
  %.not778.us = icmp eq i32 %i.ea, 0
  %11 = shl i32 %i.ew, 30
  %12 = ashr i32 %11, 31
  %13 = add nsw i32 %12, %i.da                    ; 2 uses
  %i.kw = select i1 %.not778.us, i32 0, i32 %13   ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %.lr.ph.i1107.us.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us

.lr.ph.i1107.us.preheader:                        ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us
  %i.ky = zext nneg i32 %i.kw to i64
  %notmask779.us = shl nsw i64 -1, %i.ky
  %i.kz = xor i64 %notmask779.us, -1
  %i.la = and i64 %.sroa.9.4.us, %i.kz
  br label %.lr.ph.i1107.us

.lr.ph.i1107.us:                                  ; preds = %.lr.ph.i1107.us.preheader, %bb.as
  %.sroa.182.32.us = phi i32 [ %.sroa.182.33.us, %bb.as ], [ %.sroa.182.31.us, %.lr.ph.i1107.us.preheader ]
  %.sroa.131.32.us = phi i32 [ %.sroa.131.33.us, %bb.as ], [ %.sroa.131.31.us, %.lr.ph.i1107.us.preheader ] ; 3 uses
  %.sroa.97.32.us = phi i32 [ %.sroa.97.33.us, %bb.as ], [ %.sroa.97.31.us, %.lr.ph.i1107.us.preheader ] ; 3 uses
  %.sroa.21.32.us = phi i32 [ %.sroa.21.33.us, %bb.as ], [ %.sroa.21.31.us, %.lr.ph.i1107.us.preheader ] ; 4 uses
  %.032.i1108.us = phi i32 [ %i.lo, %bb.as ], [ %13, %.lr.ph.i1107.us.preheader ] ; 2 uses
  %.02731.i1109.us = phi i64 [ %i.ln, %bb.as ], [ %i.la, %.lr.ph.i1107.us.preheader ] ; 2 uses
  %.not.i1110.us = icmp ult i32 %.sroa.21.32.us, 24030
  br i1 %.not.i1110.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i1107.us
  %i.lb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !40
  %i.ld = load ptr, ptr %i.lc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i1107.us
  %i.le = sub nsw i32 %.sroa.97.32.us, %.sroa.131.32.us
  %..0.i1111.us = call i32 @llvm.smin.i32(i32 %i.le, i32 %.032.i1108.us) ; 3 uses
  %i.lf = zext i32 %..0.i1111.us to i64           ; 2 uses
  %notmask.i1112.us = shl nsw i64 -1, %i.lf
  %i.lg = xor i64 %notmask.i1112.us, -1
  %i.lh = and i64 %.02731.i1109.us, %i.lg
  %i.li = zext nneg i32 %.sroa.131.32.us to i64
  %i.lj = shl i64 %i.lh, %i.li
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = or i32 %.sroa.182.32.us, %i.lk          ; 3 uses
  %i.lm = add nsw i32 %..0.i1111.us, %.sroa.131.32.us ; 2 uses
  %i.ln = lshr i64 %.02731.i1109.us, %i.lf
  %i.lo = sub nsw i32 %.032.i1108.us, %..0.i1111.us ; 2 uses
  %.not30.i1113.us = icmp slt i32 %i.lm, %.sroa.97.32.us
  br i1 %.not30.i1113.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lp = trunc i32 %i.ll to i8
  %i.lq = add nuw i32 %.sroa.21.32.us, 1
  %i.lr = zext i32 %.sroa.21.32.us to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lr
  store i8 %i.lp, ptr %i.ls, align 1, !tbaa !21
  %i.lt = icmp eq i32 %i.ll, 255
  %i.lu = select i1 %i.lt, i32 7, i32 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.182.33.us = phi i32 [ %i.ll, %bb.aq ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.131.33.us = phi i32 [ %i.lm, %bb.aq ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.97.33.us = phi i32 [ %.sroa.97.32.us, %bb.aq ], [ %i.lu, %bb.ar ] ; 2 uses
  %.sroa.21.33.us = phi i32 [ %.sroa.21.32.us, %bb.aq ], [ %i.lq, %bb.ar ] ; 2 uses
  %i.lv = icmp sgt i32 %i.lo, 0
  br i1 %i.lv, label %.lr.ph.i1107.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us: ; preds = %bb.as, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us, %bb.ag, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us
  %.sroa.182.34.us = phi i32 [ %.sroa.182.31.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us ], [ %.sroa.182.31506.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us ], [ %.sroa.182.31506.us, %bb.ag ], [ %.sroa.182.33.us, %bb.as ] ; 2 uses
  %.sroa.131.34.us = phi i32 [ %.sroa.131.31.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us ], [ %.sroa.131.31507.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us ], [ %.sroa.131.31507.us, %bb.ag ], [ %.sroa.131.33.us, %bb.as ] ; 2 uses
  %.sroa.97.34.us = phi i32 [ %.sroa.97.31.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us ], [ %.sroa.97.31508.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us ], [ %.sroa.97.31508.us, %bb.ag ], [ %.sroa.97.33.us, %bb.as ] ; 2 uses
  %.sroa.21.34.us = phi i32 [ %.sroa.21.31.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1105.us ], [ %.sroa.21.31509.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i.us ], [ %.sroa.21.31509.us, %bb.ag ], [ %.sroa.21.33.us, %bb.as ] ; 2 uses
  %i.lw = and i32 %.sroa.0363.10.us, 4            ; 2 uses
  %.not780.us = icmp eq i32 %i.lw, 0
  %14 = shl i32 %i.ew, 29
  %15 = ashr i32 %14, 31
  %16 = add nsw i32 %15, %i.da                    ; 2 uses
  %i.lx = select i1 %.not780.us, i32 0, i32 %16   ; 2 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.lr.ph.i1116.us.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us

.lr.ph.i1116.us.preheader:                        ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us
  %i.lz = zext nneg i32 %i.lx to i64
  %notmask781.us = shl nsw i64 -1, %i.lz
  %i.ma = xor i64 %notmask781.us, -1
  %i.mb = and i64 %.sroa.15.6.us, %i.ma
  br label %.lr.ph.i1116.us

.lr.ph.i1116.us:                                  ; preds = %.lr.ph.i1116.us.preheader, %bb.aw
  %.sroa.182.35.us = phi i32 [ %.sroa.182.36.us, %bb.aw ], [ %.sroa.182.34.us, %.lr.ph.i1116.us.preheader ]
  %.sroa.131.35.us = phi i32 [ %.sroa.131.36.us, %bb.aw ], [ %.sroa.131.34.us, %.lr.ph.i1116.us.preheader ] ; 3 uses
  %.sroa.97.35.us = phi i32 [ %.sroa.97.36.us, %bb.aw ], [ %.sroa.97.34.us, %.lr.ph.i1116.us.preheader ] ; 3 uses
  %.sroa.21.35.us = phi i32 [ %.sroa.21.36.us, %bb.aw ], [ %.sroa.21.34.us, %.lr.ph.i1116.us.preheader ] ; 4 uses
  %.032.i1117.us = phi i32 [ %i.mp, %bb.aw ], [ %16, %.lr.ph.i1116.us.preheader ] ; 2 uses
  %.02731.i1118.us = phi i64 [ %i.mo, %bb.aw ], [ %i.mb, %.lr.ph.i1116.us.preheader ] ; 2 uses
  %.not.i1119.us = icmp ult i32 %.sroa.21.35.us, 24030
  br i1 %.not.i1119.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i1116.us
  %i.mc = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !40
  %i.me = load ptr, ptr %i.md, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.me(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i1116.us
  %i.mf = sub nsw i32 %.sroa.97.35.us, %.sroa.131.35.us
  %..0.i1120.us = call i32 @llvm.smin.i32(i32 %i.mf, i32 %.032.i1117.us) ; 3 uses
  %i.mg = zext i32 %..0.i1120.us to i64           ; 2 uses
  %notmask.i1121.us = shl nsw i64 -1, %i.mg
  %i.mh = xor i64 %notmask.i1121.us, -1
  %i.mi = and i64 %.02731.i1118.us, %i.mh
  %i.mj = zext nneg i32 %.sroa.131.35.us to i64
  %i.mk = shl i64 %i.mi, %i.mj
  %i.ml = trunc i64 %i.mk to i32
  %i.mm = or i32 %.sroa.182.35.us, %i.ml          ; 3 uses
  %i.mn = add nsw i32 %..0.i1120.us, %.sroa.131.35.us ; 2 uses
  %i.mo = lshr i64 %.02731.i1118.us, %i.mg
  %i.mp = sub nsw i32 %.032.i1117.us, %..0.i1120.us ; 2 uses
  %.not30.i1122.us = icmp slt i32 %i.mn, %.sroa.97.35.us
  br i1 %.not30.i1122.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mq = trunc i32 %i.mm to i8
  %i.mr = add nuw i32 %.sroa.21.35.us, 1
  %i.ms = zext i32 %.sroa.21.35.us to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ms
  store i8 %i.mq, ptr %i.mt, align 1, !tbaa !21
  %i.mu = icmp eq i32 %i.mm, 255
  %i.mv = select i1 %i.mu, i32 7, i32 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.182.36.us = phi i32 [ %i.mm, %bb.au ], [ 0, %bb.av ] ; 2 uses
  %.sroa.131.36.us = phi i32 [ %i.mn, %bb.au ], [ 0, %bb.av ] ; 2 uses
  %.sroa.97.36.us = phi i32 [ %.sroa.97.35.us, %bb.au ], [ %i.mv, %bb.av ] ; 2 uses
  %.sroa.21.36.us = phi i32 [ %.sroa.21.35.us, %bb.au ], [ %i.mr, %bb.av ] ; 2 uses
  %i.mw = icmp sgt i32 %i.mp, 0
  br i1 %i.mw, label %.lr.ph.i1116.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us: ; preds = %bb.aw, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us
  %.sroa.182.37.us = phi i32 [ %.sroa.182.34.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us ], [ %.sroa.182.36.us, %bb.aw ] ; 2 uses
  %.sroa.131.37.us = phi i32 [ %.sroa.131.34.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us ], [ %.sroa.131.36.us, %bb.aw ] ; 2 uses
  %.sroa.97.37.us = phi i32 [ %.sroa.97.34.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us ], [ %.sroa.97.36.us, %bb.aw ] ; 2 uses
  %.sroa.21.37.us = phi i32 [ %.sroa.21.34.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1114.us ], [ %.sroa.21.36.us, %bb.aw ] ; 2 uses
  %.not782.us = icmp eq i32 %i.em, 0
  %17 = shl i32 %i.ew, 28
  %18 = ashr i32 %17, 31
  %19 = add nsw i32 %18, %i.da                    ; 2 uses
  %i.mx = select i1 %.not782.us, i32 0, i32 %19   ; 2 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph.i1125.us.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us

.lr.ph.i1125.us.preheader:                        ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us
  %i.mz = zext nneg i32 %i.mx to i64
  %notmask783.us = shl nsw i64 -1, %i.mz
  %i.na = xor i64 %notmask783.us, -1
  %i.nb = and i64 %.sroa.21.4.us, %i.na
  br label %.lr.ph.i1125.us

.lr.ph.i1125.us:                                  ; preds = %.lr.ph.i1125.us.preheader, %bb.ba
  %.sroa.182.38.us = phi i32 [ %.sroa.182.39.us, %bb.ba ], [ %.sroa.182.37.us, %.lr.ph.i1125.us.preheader ]
  %.sroa.131.38.us = phi i32 [ %.sroa.131.39.us, %bb.ba ], [ %.sroa.131.37.us, %.lr.ph.i1125.us.preheader ] ; 3 uses
  %.sroa.97.38.us = phi i32 [ %.sroa.97.39.us, %bb.ba ], [ %.sroa.97.37.us, %.lr.ph.i1125.us.preheader ] ; 3 uses
  %.sroa.21.38.us = phi i32 [ %.sroa.21.39.us, %bb.ba ], [ %.sroa.21.37.us, %.lr.ph.i1125.us.preheader ] ; 4 uses
  %.032.i1126.us = phi i32 [ %i.np, %bb.ba ], [ %19, %.lr.ph.i1125.us.preheader ] ; 2 uses
  %.02731.i1127.us = phi i64 [ %i.no, %bb.ba ], [ %i.nb, %.lr.ph.i1125.us.preheader ] ; 2 uses
  %.not.i1128.us = icmp ult i32 %.sroa.21.38.us, 24030
  br i1 %.not.i1128.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i1125.us
  %i.nc = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !40
  %i.ne = load ptr, ptr %i.nd, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ne(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i1125.us
  %i.nf = sub nsw i32 %.sroa.97.38.us, %.sroa.131.38.us
  %..0.i1129.us = call i32 @llvm.smin.i32(i32 %i.nf, i32 %.032.i1126.us) ; 3 uses
  %i.ng = zext i32 %..0.i1129.us to i64           ; 2 uses
  %notmask.i1130.us = shl nsw i64 -1, %i.ng
  %i.nh = xor i64 %notmask.i1130.us, -1
  %i.ni = and i64 %.02731.i1127.us, %i.nh
  %i.nj = zext nneg i32 %.sroa.131.38.us to i64
  %i.nk = shl i64 %i.ni, %i.nj
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = or i32 %.sroa.182.38.us, %i.nl          ; 3 uses
  %i.nn = add nsw i32 %..0.i1129.us, %.sroa.131.38.us ; 2 uses
  %i.no = lshr i64 %.02731.i1127.us, %i.ng
  %i.np = sub nsw i32 %.032.i1126.us, %..0.i1129.us ; 2 uses
  %.not30.i1131.us = icmp slt i32 %i.nn, %.sroa.97.38.us
  br i1 %.not30.i1131.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nq = trunc i32 %i.nm to i8
  %i.nr = add nuw i32 %.sroa.21.38.us, 1
  %i.ns = zext i32 %.sroa.21.38.us to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ns
  store i8 %i.nq, ptr %i.nt, align 1, !tbaa !21
  %i.nu = icmp eq i32 %i.nm, 255
  %i.nv = select i1 %i.nu, i32 7, i32 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.182.39.us = phi i32 [ %i.nm, %bb.ay ], [ 0, %bb.az ] ; 2 uses
  %.sroa.131.39.us = phi i32 [ %i.nn, %bb.ay ], [ 0, %bb.az ] ; 2 uses
  %.sroa.97.39.us = phi i32 [ %.sroa.97.38.us, %bb.ay ], [ %i.nv, %bb.az ] ; 2 uses
  %.sroa.21.39.us = phi i32 [ %.sroa.21.38.us, %bb.ay ], [ %i.nr, %bb.az ] ; 2 uses
  %i.nw = icmp sgt i32 %i.np, 0
  br i1 %i.nw, label %.lr.ph.i1125.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us: ; preds = %bb.ba, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us
  %.sroa.182.40.us = phi i32 [ %.sroa.182.37.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us ], [ %.sroa.182.39.us, %bb.ba ] ; 5 uses
  %.sroa.131.40.us = phi i32 [ %.sroa.131.37.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us ], [ %.sroa.131.39.us, %bb.ba ] ; 5 uses
  %.sroa.97.40.us = phi i32 [ %.sroa.97.37.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us ], [ %.sroa.97.39.us, %bb.ba ] ; 5 uses
  %.sroa.21.40.us = phi i32 [ %.sroa.21.37.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1123.us ], [ %.sroa.21.39.us, %bb.ba ] ; 5 uses
  %i.nx = or disjoint i32 %.07311515.us, 2
  %i.ny = icmp ult i32 %i.nx, %3
  br i1 %i.ny, label %bb.bb, label %bb.db

bb.bb:                                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us
  %i.nz = load i64, ptr %.5.us, align 8, !tbaa !80 ; 2 uses
  %i.oa = shl i64 %i.nz, 1
  %i.ob = lshr i64 %i.oa, %i.aa
  %i.oc = and i64 %i.ob, -2                       ; 3 uses
  %.not784.us = icmp eq i64 %i.oc, 0
  br i1 %.not784.us, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.od = add i64 %i.oc, -1
  %i.oe = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2) %i.od, i1 true)
  %i.of = trunc nuw nsw i64 %i.oe to i32
  %i.og = sub nuw nsw i32 64, %i.of
  %i.oh = add i64 %i.oc, -2
  %i.oi = lshr i64 %i.nz, 63
  %i.oj = or disjoint i64 %i.oh, %i.oi
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.47.4.us = phi i32 [ %i.og, %bb.bc ], [ 0, %bb.bb ] ; 3 uses
  %.sroa.41.8.us = phi i32 [ 1, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.27.4.us = phi i64 [ %i.oj, %bb.bc ], [ 0, %bb.bb ]
  br i1 %i.aq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %.5.us, i64 %i.ab
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !80
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.om = phi i64 [ %i.ol, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.5.us, i64 8 ; 3 uses
  %i.oo = shl i64 %i.om, 1
  %i.op = lshr i64 %i.oo, %i.aa
  %i.oq = and i64 %i.op, -2                       ; 3 uses
  %.not785.us = icmp eq i64 %i.oq, 0
  br i1 %.not785.us, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.or = or disjoint i32 %.sroa.41.8.us, 2
  %i.os = add i64 %i.oq, -1
  %i.ot = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2) %i.os, i1 true)
  %i.ou = trunc nuw nsw i64 %i.ot to i32
  %i.ov = sub nuw nsw i32 64, %i.ou               ; 2 uses
  %i.ow = call i32 @llvm.umax.i32(i32 %.sroa.47.4.us, i32 %i.ov)
  %i.ox = add i64 %i.oq, -2
  %i.oy = lshr i64 %i.om, 63
  %i.oz = or disjoint i64 %i.ox, %i.oy
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.37.8.us = phi i32 [ %i.ow, %bb.bg ], [ %.sroa.47.4.us, %bb.bf ] ; 3 uses
  %.sroa.55.4.us = phi i32 [ %i.ov, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.41.9.us = phi i32 [ %i.or, %bb.bg ], [ %.sroa.41.8.us, %bb.bf ] ; 3 uses
  %.sroa.33.4.us = phi i64 [ %i.oz, %bb.bg ], [ 0, %bb.bf ]
  %i.pa = or disjoint i32 %.07311515.us, 3
  %i.pb = icmp ult i32 %i.pa, %3
  br i1 %i.pb, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.pc = load i64, ptr %i.on, align 8, !tbaa !80 ; 2 uses
  %i.pd = shl i64 %i.pc, 1
  %i.pe = lshr i64 %i.pd, %i.aa
  %i.pf = and i64 %i.pe, -2                       ; 3 uses
  %.not786.us = icmp eq i64 %i.pf, 0
  br i1 %.not786.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pg = add nuw nsw i32 %.sroa.41.9.us, 4
  %i.ph = add i64 %i.pf, -1
  %i.pi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2) %i.ph, i1 true)
  %i.pj = trunc nuw nsw i64 %i.pi to i32
  %i.pk = sub nuw nsw i32 64, %i.pj               ; 2 uses
  %i.pl = call i32 @llvm.umax.i32(i32 %.sroa.37.8.us, i32 %i.pk)
  %i.pm = add i64 %i.pf, -2
  %i.pn = lshr i64 %i.pc, 63
  %i.po = or disjoint i64 %i.pm, %i.pn
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.37.9.us = phi i32 [ %i.pl, %bb.bj ], [ %.sroa.37.8.us, %bb.bi ] ; 2 uses
  %.sroa.69.5.us = phi i32 [ %i.pk, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.sroa.41.10.us = phi i32 [ %i.pg, %bb.bj ], [ %.sroa.41.9.us, %bb.bi ] ; 2 uses
  %.sroa.39.5.us = phi i64 [ %i.po, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  br i1 %i.aq, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.ab
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !80
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.pr = phi i64 [ %i.pq, %bb.bl ], [ 0, %bb.bk ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.5.us, i64 16 ; 2 uses
  %i.pt = shl i64 %i.pr, 1
  %i.pu = lshr i64 %i.pt, %i.aa
  %i.pv = and i64 %i.pu, -2                       ; 3 uses
  %.not787.us = icmp eq i64 %i.pv, 0
  br i1 %.not787.us, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pw = add nuw nsw i32 %.sroa.41.10.us, 8
  %i.px = add i64 %i.pv, -1
  %i.py = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2) %i.px, i1 true)
  %i.pz = trunc nuw nsw i64 %i.py to i32
  %i.qa = sub nuw nsw i32 64, %i.pz               ; 2 uses
  %i.qb = call i32 @llvm.umax.i32(i32 %.sroa.37.9.us, i32 %i.qa)
  %i.qc = add i64 %i.pv, -2
  %i.qd = lshr i64 %i.pr, 63
  %i.qe = or disjoint i64 %i.qc, %i.qd
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bh
  %.sroa.37.10.us = phi i32 [ %i.qb, %bb.bn ], [ %.sroa.37.9.us, %bb.bm ], [ %.sroa.37.8.us, %bb.bh ] ; 6 uses
  %.sroa.69.6.us = phi i32 [ %.sroa.69.5.us, %bb.bn ], [ %.sroa.69.5.us, %bb.bm ], [ 0, %bb.bh ]
  %.sroa.79.4.us = phi i32 [ %i.qa, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bh ] ; 2 uses
  %.sroa.41.11.us = phi i32 [ %i.pw, %bb.bn ], [ %.sroa.41.10.us, %bb.bm ], [ %.sroa.41.9.us, %bb.bh ] ; 8 uses
  %.sroa.39.6.us = phi i64 [ %.sroa.39.5.us, %bb.bn ], [ %.sroa.39.5.us, %bb.bm ], [ 0, %bb.bh ]
  %.sroa.45.4.us = phi i64 [ %i.qe, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bh ]
  %.6.us = phi ptr [ %i.ps, %bb.bn ], [ %i.ps, %bb.bm ], [ %i.on, %bb.bh ]
  %i.qf = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.sroa.41.11.us)
  %i.qg = call i32 @llvm.smax.i32(i32 %i.dx, i32 1)
  %.not788.inv.us = icmp samesign ugt i32 %i.qf, 1
  %i.qh = select i1 %.not788.inv.us, i32 %i.qg, i32 1 ; 3 uses
  %i.qi = lshr exact i32 %i.lw, 1
  %i.qj = lshr exact i32 %i.em, 2
  %i.qk = or i32 %i.qi, %i.qj
  %i.ql = or i32 %i.qk, %i.el                     ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ojph5local23ojph_encode_codeblock64EPmjjjjjPjPNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  %i.uy = or disjoint i32 %i.uw, %i.ux            ; 3 uses
  store i32 %i.uy, ptr %i.h, align 4, !tbaa !45
  %i.uz = add nsw i32 %i.ur, -1                   ; 3 uses
  store i32 %i.uz, ptr %i.g, align 8, !tbaa !46
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %bb.cd, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i1157.us

bb.cd:                                            ; preds = %bb.cc
  %i.vb = load i32, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.vc = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i29.i1160.us = icmp ult i32 %i.vb, %i.vc
  br i1 %.not.i29.i1160.us, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.vd = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !40
  %i.vf = load ptr, ptr %i.ve, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.vf(ptr noundef nonnull align 8 dereferenceable(8) %i.vd, i32 noundef 131073, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 311, ptr noundef nonnull @.str.2), !inline_history !2
  %.pre.i30.i1161.us = load i32, ptr %i.h, align 4, !tbaa !45
  %.pre12.i31.i1162.us = load i32, ptr %i.e, align 8, !tbaa !47
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.vg = phi i32 [ %.pre12.i31.i1162.us, %bb.ce ], [ %i.vb, %bb.cd ] ; 2 uses
  %i.vh = phi i32 [ %.pre.i30.i1161.us, %bb.ce ], [ %i.uy, %bb.cd ]
  %i.vi = trunc i32 %i.vh to i8
  %i.vj = load ptr, ptr %9, align 8, !tbaa !29
  %i.vk = add i32 %i.vg, 1
  store i32 %i.vk, ptr %i.e, align 8, !tbaa !47
  %i.vl = zext i32 %i.vg to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vl
  store i8 %i.vi, ptr %i.vm, align 1, !tbaa !21
  %i.vn = load i32, ptr %i.h, align 4, !tbaa !45
  %i.vo = icmp eq i32 %i.vn, 255
  %i.vp = select i1 %i.vo, i32 7, i32 8           ; 2 uses
  store i32 %i.vp, ptr %i.g, align 8, !tbaa !46
  store i32 0, ptr %i.h, align 4, !tbaa !45
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i1157.us

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i1157.us: ; preds = %bb.cf, %bb.cc
  %i.vq = phi i32 [ %i.uz, %bb.cc ], [ %i.vp, %bb.cf ]
  %i.vr = phi i32 [ %i.uy, %bb.cc ], [ 0, %bb.cf ]
  %i.vs = icmp sgt i32 %.033.i1156.us, 1
  br i1 %i.vs, label %bb.cc, label %._crit_edge.loopexit.i1158.us, !llvm.loop !3

._crit_edge.loopexit.i1158.us:                    ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit32.i1157.us
  %.pre.i1159.us = load i32, ptr %i.j, align 4, !tbaa !31
  br label %._crit_edge.i1153.us

._crit_edge.i1153.us:                             ; preds = %._crit_edge.loopexit.i1158.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit28.i1152.us
  %i.vt = phi i32 [ %.pre.i1159.us, %._crit_edge.loopexit.i1158.us ], [ %i.ul, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit28.i1152.us ]
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.vu = call i32 @llvm.smax.i32(i32 %i.vt, i32 1)
  %spec.select24.i1154.us = add nsw i32 %i.vu, -1 ; 2 uses
  store i32 %spec.select24.i1154.us, ptr %i.j, align 4, !tbaa !31
  %i.vv = zext nneg i32 %spec.select24.i1154.us to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !14
  %i.vy = shl nuw i32 1, %i.vx
  store i32 %i.vy, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1166.us

bb.cg:                                            ; preds = %bb.bx
  %i.vz = load i32, ptr %i.i, align 8, !tbaa !30
  %i.wa = add nsw i32 %i.vz, 1                    ; 2 uses
  store i32 %i.wa, ptr %i.i, align 8, !tbaa !30
  %i.wb = load i32, ptr %i.k, align 8, !tbaa !32
  %.not.i1146.us = icmp slt i32 %i.wa, %i.wb
  br i1 %.not.i1146.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.wc = load i32, ptr %i.h, align 4, !tbaa !45
  %i.wd = shl i32 %i.wc, 1
  %i.we = or disjoint i32 %i.wd, 1                ; 2 uses
  store i32 %i.we, ptr %i.h, align 4, !tbaa !45
  %i.wf = load i32, ptr %i.g, align 8, !tbaa !46
  %i.wg = add nsw i32 %i.wf, -1                   ; 2 uses
  store i32 %i.wg, ptr %i.g, align 8, !tbaa !46
  %i.wh = icmp eq i32 %i.wg, 0
  br i1 %i.wh, label %bb.ci, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1147.us

bb.ci:                                            ; preds = %bb.ch
  %i.wi = load i32, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %i.wj = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i.i1149.us = icmp ult i32 %i.wi, %i.wj
  br i1 %.not.i.i1149.us, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wk = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !40
  %i.wm = load ptr, ptr %i.wl, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.wm(ptr noundef nonnull align 8 dereferenceable(8) %i.wk, i32 noundef 131073, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 311, ptr noundef nonnull @.str.2), !inline_history !2
  %.pre.i.i1150.us = load i32, ptr %i.h, align 4, !tbaa !45
  %.pre12.i.i1151.us = load i32, ptr %i.e, align 8, !tbaa !47
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.wn = phi i32 [ %.pre12.i.i1151.us, %bb.cj ], [ %i.wi, %bb.ci ] ; 2 uses
  %i.wo = phi i32 [ %.pre.i.i1150.us, %bb.cj ], [ %i.we, %bb.ci ]
  %i.wp = trunc i32 %i.wo to i8
  %i.wq = load ptr, ptr %9, align 8, !tbaa !29
  %i.wr = add i32 %i.wn, 1
  store i32 %i.wr, ptr %i.e, align 8, !tbaa !47
  %i.ws = zext i32 %i.wn to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.ws
  store i8 %i.wp, ptr %i.wt, align 1, !tbaa !21
  %i.wu = load i32, ptr %i.h, align 4, !tbaa !45
  %i.wv = icmp eq i32 %i.wu, 255
  %i.ww = select i1 %i.wv, i32 7, i32 8
  store i32 %i.ww, ptr %i.g, align 8, !tbaa !46
  store i32 0, ptr %i.h, align 4, !tbaa !45
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1147.us

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1147.us: ; preds = %bb.ck, %bb.ch
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.wx = load i32, ptr %i.j, align 4, !tbaa !31
  %i.wy = call i32 @llvm.smin.i32(i32 %i.wx, i32 11)
  %spec.select.i1148.us = add nsw i32 %i.wy, 1    ; 2 uses
  store i32 %spec.select.i1148.us, ptr %i.j, align 4, !tbaa !31
  %i.wz = sext i32 %spec.select.i1148.us to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !14
  %i.xc = shl nuw i32 1, %i.xb
  store i32 %i.xc, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us

_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1166.us: ; preds = %._crit_edge.i1153.us, %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1145.us
  %i.xd = and i32 %.sroa.41.11.us, 1
  %.not789.us = icmp eq i32 %i.xd, 0
  %i.xe = and i32 %i.sg, 1
  %i.xf = sub nuw nsw i32 %i.qm, %i.xe            ; 2 uses
  %i.xg = select i1 %.not789.us, i32 0, i32 %i.xf ; 2 uses
  %i.xh = icmp sgt i32 %i.xg, 0
  br i1 %i.xh, label %.lr.ph.i1168.us.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us

.lr.ph.i1168.us.preheader:                        ; preds = %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1166.us
  %i.xi = zext nneg i32 %i.xg to i64
  %notmask790.us = shl nsw i64 -1, %i.xi
  %i.xj = xor i64 %notmask790.us, -1
  %i.xk = and i64 %.sroa.27.4.us, %i.xj
  br label %.lr.ph.i1168.us

.lr.ph.i1168.us:                                  ; preds = %.lr.ph.i1168.us.preheader, %bb.co
  %.sroa.182.41.us = phi i32 [ %.sroa.182.42.us, %bb.co ], [ %.sroa.182.40.us, %.lr.ph.i1168.us.preheader ]
  %.sroa.131.41.us = phi i32 [ %.sroa.131.42.us, %bb.co ], [ %.sroa.131.40.us, %.lr.ph.i1168.us.preheader ] ; 3 uses
  %.sroa.97.41.us = phi i32 [ %.sroa.97.42.us, %bb.co ], [ %.sroa.97.40.us, %.lr.ph.i1168.us.preheader ] ; 3 uses
  %.sroa.21.41.us = phi i32 [ %.sroa.21.42.us, %bb.co ], [ %.sroa.21.40.us, %.lr.ph.i1168.us.preheader ] ; 4 uses
  %.032.i1169.us = phi i32 [ %i.xy, %bb.co ], [ %i.xf, %.lr.ph.i1168.us.preheader ] ; 2 uses
  %.02731.i1170.us = phi i64 [ %i.xx, %bb.co ], [ %i.xk, %.lr.ph.i1168.us.preheader ] ; 2 uses
  %.not.i1171.us = icmp ult i32 %.sroa.21.41.us, 24030
  br i1 %.not.i1171.us, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i1168.us
  %i.xl = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !40
  %i.xn = load ptr, ptr %i.xm, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.xn(ptr noundef nonnull align 8 dereferenceable(8) %i.xl, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph.i1168.us
  %i.xo = sub nsw i32 %.sroa.97.41.us, %.sroa.131.41.us
  %..0.i1172.us = call i32 @llvm.smin.i32(i32 %i.xo, i32 %.032.i1169.us) ; 3 uses
  %i.xp = zext i32 %..0.i1172.us to i64           ; 2 uses
  %notmask.i1173.us = shl nsw i64 -1, %i.xp
  %i.xq = xor i64 %notmask.i1173.us, -1
  %i.xr = and i64 %.02731.i1170.us, %i.xq
  %i.xs = zext nneg i32 %.sroa.131.41.us to i64
  %i.xt = shl i64 %i.xr, %i.xs
  %i.xu = trunc i64 %i.xt to i32
  %i.xv = or i32 %.sroa.182.41.us, %i.xu          ; 3 uses
  %i.xw = add nsw i32 %..0.i1172.us, %.sroa.131.41.us ; 2 uses
  %i.xx = lshr i64 %.02731.i1170.us, %i.xp
  %i.xy = sub nsw i32 %.032.i1169.us, %..0.i1172.us ; 2 uses
  %.not30.i1174.us = icmp slt i32 %i.xw, %.sroa.97.41.us
  br i1 %.not30.i1174.us, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.xz = trunc i32 %i.xv to i8
  %i.ya = add nuw i32 %.sroa.21.41.us, 1
  %i.yb = zext i32 %.sroa.21.41.us to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yb
  store i8 %i.xz, ptr %i.yc, align 1, !tbaa !21
  %i.yd = icmp eq i32 %i.xv, 255
  %i.ye = select i1 %i.yd, i32 7, i32 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.sroa.182.42.us = phi i32 [ %i.xv, %bb.cm ], [ 0, %bb.cn ] ; 2 uses
  %.sroa.131.42.us = phi i32 [ %i.xw, %bb.cm ], [ 0, %bb.cn ] ; 2 uses
  %.sroa.97.42.us = phi i32 [ %.sroa.97.41.us, %bb.cm ], [ %i.ye, %bb.cn ] ; 2 uses
  %.sroa.21.42.us = phi i32 [ %.sroa.21.41.us, %bb.cm ], [ %i.ya, %bb.cn ] ; 2 uses
  %i.yf = icmp sgt i32 %i.xy, 0
  br i1 %i.yf, label %.lr.ph.i1168.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us: ; preds = %bb.co, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1166.us
  %.sroa.182.43.us = phi i32 [ %.sroa.182.40.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1166.us ], [ %.sroa.182.42.us, %bb.co ] ; 2 uses
  %.sroa.131.43.us = phi i32 [ %.sroa.131.40.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1166.us ], [ %.sroa.131.42.us, %bb.co ] ; 2 uses
  %.sroa.97.43.us = phi i32 [ %.sroa.97.40.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1166.us ], [ %.sroa.97.42.us, %bb.co ] ; 2 uses
  %.sroa.21.43.us = phi i32 [ %.sroa.21.40.us, %_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb.exit1166.us ], [ %.sroa.21.42.us, %bb.co ] ; 2 uses
  %.not791.us = icmp eq i32 %i.rl, 0
  %20 = shl i32 %i.sg, 30
  %21 = ashr i32 %20, 31
  %22 = add nsw i32 %21, %i.qm                    ; 2 uses
  %i.yg = select i1 %.not791.us, i32 0, i32 %22   ; 2 uses
  %i.yh = icmp sgt i32 %i.yg, 0
  br i1 %i.yh, label %.lr.ph.i1177.us.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us

.lr.ph.i1177.us.preheader:                        ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us
  %i.yi = zext nneg i32 %i.yg to i64
  %notmask792.us = shl nsw i64 -1, %i.yi
  %i.yj = xor i64 %notmask792.us, -1
  %i.yk = and i64 %.sroa.33.4.us, %i.yj
  br label %.lr.ph.i1177.us

.lr.ph.i1177.us:                                  ; preds = %.lr.ph.i1177.us.preheader, %bb.cs
  %.sroa.182.44.us = phi i32 [ %.sroa.182.45.us, %bb.cs ], [ %.sroa.182.43.us, %.lr.ph.i1177.us.preheader ]
  %.sroa.131.44.us = phi i32 [ %.sroa.131.45.us, %bb.cs ], [ %.sroa.131.43.us, %.lr.ph.i1177.us.preheader ] ; 3 uses
  %.sroa.97.44.us = phi i32 [ %.sroa.97.45.us, %bb.cs ], [ %.sroa.97.43.us, %.lr.ph.i1177.us.preheader ] ; 3 uses
  %.sroa.21.44.us = phi i32 [ %.sroa.21.45.us, %bb.cs ], [ %.sroa.21.43.us, %.lr.ph.i1177.us.preheader ] ; 4 uses
  %.032.i1178.us = phi i32 [ %i.yy, %bb.cs ], [ %22, %.lr.ph.i1177.us.preheader ] ; 2 uses
  %.02731.i1179.us = phi i64 [ %i.yx, %bb.cs ], [ %i.yk, %.lr.ph.i1177.us.preheader ] ; 2 uses
  %.not.i1180.us = icmp ult i32 %.sroa.21.44.us, 24030
  br i1 %.not.i1180.us, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i1177.us
  %i.yl = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !40
  %i.yn = load ptr, ptr %i.ym, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.yn(ptr noundef nonnull align 8 dereferenceable(8) %i.yl, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.lr.ph.i1177.us
  %i.yo = sub nsw i32 %.sroa.97.44.us, %.sroa.131.44.us
  %..0.i1181.us = call i32 @llvm.smin.i32(i32 %i.yo, i32 %.032.i1178.us) ; 3 uses
  %i.yp = zext i32 %..0.i1181.us to i64           ; 2 uses
  %notmask.i1182.us = shl nsw i64 -1, %i.yp
  %i.yq = xor i64 %notmask.i1182.us, -1
  %i.yr = and i64 %.02731.i1179.us, %i.yq
  %i.ys = zext nneg i32 %.sroa.131.44.us to i64
  %i.yt = shl i64 %i.yr, %i.ys
  %i.yu = trunc i64 %i.yt to i32
  %i.yv = or i32 %.sroa.182.44.us, %i.yu          ; 3 uses
  %i.yw = add nsw i32 %..0.i1181.us, %.sroa.131.44.us ; 2 uses
  %i.yx = lshr i64 %.02731.i1179.us, %i.yp
  %i.yy = sub nsw i32 %.032.i1178.us, %..0.i1181.us ; 2 uses
  %.not30.i1183.us = icmp slt i32 %i.yw, %.sroa.97.44.us
  br i1 %.not30.i1183.us, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yz = trunc i32 %i.yv to i8
  %i.za = add nuw i32 %.sroa.21.44.us, 1
  %i.zb = zext i32 %.sroa.21.44.us to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zb
  store i8 %i.yz, ptr %i.zc, align 1, !tbaa !21
  %i.zd = icmp eq i32 %i.yv, 255
  %i.ze = select i1 %i.zd, i32 7, i32 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.182.45.us = phi i32 [ %i.yv, %bb.cq ], [ 0, %bb.cr ] ; 2 uses
  %.sroa.131.45.us = phi i32 [ %i.yw, %bb.cq ], [ 0, %bb.cr ] ; 2 uses
  %.sroa.97.45.us = phi i32 [ %.sroa.97.44.us, %bb.cq ], [ %i.ze, %bb.cr ] ; 2 uses
  %.sroa.21.45.us = phi i32 [ %.sroa.21.44.us, %bb.cq ], [ %i.za, %bb.cr ] ; 2 uses
  %i.zf = icmp sgt i32 %i.yy, 0
  br i1 %i.zf, label %.lr.ph.i1177.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us: ; preds = %bb.cs, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1147.us, %bb.cg, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us
  %.sroa.182.46.us = phi i32 [ %.sroa.182.43.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us ], [ %.sroa.182.40.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1147.us ], [ %.sroa.182.40.us, %bb.cg ], [ %.sroa.182.45.us, %bb.cs ] ; 2 uses
  %.sroa.131.46.us = phi i32 [ %.sroa.131.43.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us ], [ %.sroa.131.40.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1147.us ], [ %.sroa.131.40.us, %bb.cg ], [ %.sroa.131.45.us, %bb.cs ] ; 2 uses
  %.sroa.97.46.us = phi i32 [ %.sroa.97.43.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us ], [ %.sroa.97.40.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1147.us ], [ %.sroa.97.40.us, %bb.cg ], [ %.sroa.97.45.us, %bb.cs ] ; 2 uses
  %.sroa.21.46.us = phi i32 [ %.sroa.21.43.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1175.us ], [ %.sroa.21.40.us, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i1147.us ], [ %.sroa.21.40.us, %bb.cg ], [ %.sroa.21.45.us, %bb.cs ] ; 2 uses
  %i.zg = and i32 %.sroa.41.11.us, 4
  %.not793.us = icmp eq i32 %i.zg, 0
  %23 = shl i32 %i.sg, 29
  %24 = ashr i32 %23, 31
  %25 = add nsw i32 %24, %i.qm                    ; 2 uses
  %i.zh = select i1 %.not793.us, i32 0, i32 %25   ; 2 uses
  %i.zi = icmp sgt i32 %i.zh, 0
  br i1 %i.zi, label %.lr.ph.i1186.us.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us

.lr.ph.i1186.us.preheader:                        ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us
  %i.zj = zext nneg i32 %i.zh to i64
  %notmask794.us = shl nsw i64 -1, %i.zj
  %i.zk = xor i64 %notmask794.us, -1
  %i.zl = and i64 %.sroa.39.6.us, %i.zk
  br label %.lr.ph.i1186.us

.lr.ph.i1186.us:                                  ; preds = %.lr.ph.i1186.us.preheader, %bb.cw
  %.sroa.182.47.us = phi i32 [ %.sroa.182.48.us, %bb.cw ], [ %.sroa.182.46.us, %.lr.ph.i1186.us.preheader ]
  %.sroa.131.47.us = phi i32 [ %.sroa.131.48.us, %bb.cw ], [ %.sroa.131.46.us, %.lr.ph.i1186.us.preheader ] ; 3 uses
  %.sroa.97.47.us = phi i32 [ %.sroa.97.48.us, %bb.cw ], [ %.sroa.97.46.us, %.lr.ph.i1186.us.preheader ] ; 3 uses
  %.sroa.21.47.us = phi i32 [ %.sroa.21.48.us, %bb.cw ], [ %.sroa.21.46.us, %.lr.ph.i1186.us.preheader ] ; 4 uses
  %.032.i1187.us = phi i32 [ %i.zz, %bb.cw ], [ %25, %.lr.ph.i1186.us.preheader ] ; 2 uses
  %.02731.i1188.us = phi i64 [ %i.zy, %bb.cw ], [ %i.zl, %.lr.ph.i1186.us.preheader ] ; 2 uses
  %.not.i1189.us = icmp ult i32 %.sroa.21.47.us, 24030
  br i1 %.not.i1189.us, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i1186.us
  %i.zm = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !40
  %i.zo = load ptr, ptr %i.zn, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.zo(ptr noundef nonnull align 8 dereferenceable(8) %i.zm, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.lr.ph.i1186.us
  %i.zp = sub nsw i32 %.sroa.97.47.us, %.sroa.131.47.us
  %..0.i1190.us = call i32 @llvm.smin.i32(i32 %i.zp, i32 %.032.i1187.us) ; 3 uses
  %i.zq = zext i32 %..0.i1190.us to i64           ; 2 uses
  %notmask.i1191.us = shl nsw i64 -1, %i.zq
  %i.zr = xor i64 %notmask.i1191.us, -1
  %i.zs = and i64 %.02731.i1188.us, %i.zr
  %i.zt = zext nneg i32 %.sroa.131.47.us to i64
  %i.zu = shl i64 %i.zs, %i.zt
  %i.zv = trunc i64 %i.zu to i32
  %i.zw = or i32 %.sroa.182.47.us, %i.zv          ; 3 uses
  %i.zx = add nsw i32 %..0.i1190.us, %.sroa.131.47.us ; 2 uses
  %i.zy = lshr i64 %.02731.i1188.us, %i.zq
  %i.zz = sub nsw i32 %.032.i1187.us, %..0.i1190.us ; 2 uses
  %.not30.i1192.us = icmp slt i32 %i.zx, %.sroa.97.47.us
  br i1 %.not30.i1192.us, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.aaa = trunc i32 %i.zw to i8
  %i.aab = add nuw i32 %.sroa.21.47.us, 1
  %i.aac = zext i32 %.sroa.21.47.us to i64
  %i.aad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aac
  store i8 %i.aaa, ptr %i.aad, align 1, !tbaa !21
  %i.aae = icmp eq i32 %i.zw, 255
  %i.aaf = select i1 %i.aae, i32 7, i32 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.182.48.us = phi i32 [ %i.zw, %bb.cu ], [ 0, %bb.cv ] ; 2 uses
  %.sroa.131.48.us = phi i32 [ %i.zx, %bb.cu ], [ 0, %bb.cv ] ; 2 uses
  %.sroa.97.48.us = phi i32 [ %.sroa.97.47.us, %bb.cu ], [ %i.aaf, %bb.cv ] ; 2 uses
  %.sroa.21.48.us = phi i32 [ %.sroa.21.47.us, %bb.cu ], [ %i.aab, %bb.cv ] ; 2 uses
  %i.aag = icmp sgt i32 %i.zz, 0
  br i1 %i.aag, label %.lr.ph.i1186.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us: ; preds = %bb.cw, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us
  %.sroa.182.49.us = phi i32 [ %.sroa.182.46.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us ], [ %.sroa.182.48.us, %bb.cw ] ; 2 uses
  %.sroa.131.49.us = phi i32 [ %.sroa.131.46.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us ], [ %.sroa.131.48.us, %bb.cw ] ; 2 uses
  %.sroa.97.49.us = phi i32 [ %.sroa.97.46.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us ], [ %.sroa.97.48.us, %bb.cw ] ; 2 uses
  %.sroa.21.49.us = phi i32 [ %.sroa.21.46.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1184.us ], [ %.sroa.21.48.us, %bb.cw ] ; 2 uses
  %.not795.us = icmp eq i32 %i.rw, 0
  %26 = shl i32 %i.sg, 28
  %27 = ashr i32 %26, 31
  %28 = add nsw i32 %27, %i.qm                    ; 2 uses
  %i.aah = select i1 %.not795.us, i32 0, i32 %28  ; 2 uses
  %i.aai = icmp sgt i32 %i.aah, 0
  br i1 %i.aai, label %.lr.ph.i1195.us.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us

.lr.ph.i1195.us.preheader:                        ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us
  %i.aaj = zext nneg i32 %i.aah to i64
  %notmask796.us = shl nsw i64 -1, %i.aaj
  %i.aak = xor i64 %notmask796.us, -1
  %i.aal = and i64 %.sroa.45.4.us, %i.aak
  br label %.lr.ph.i1195.us

.lr.ph.i1195.us:                                  ; preds = %.lr.ph.i1195.us.preheader, %bb.da
  %.sroa.182.50.us = phi i32 [ %.sroa.182.51.us, %bb.da ], [ %.sroa.182.49.us, %.lr.ph.i1195.us.preheader ]
  %.sroa.131.50.us = phi i32 [ %.sroa.131.51.us, %bb.da ], [ %.sroa.131.49.us, %.lr.ph.i1195.us.preheader ] ; 3 uses
  %.sroa.97.50.us = phi i32 [ %.sroa.97.51.us, %bb.da ], [ %.sroa.97.49.us, %.lr.ph.i1195.us.preheader ] ; 3 uses
  %.sroa.21.50.us = phi i32 [ %.sroa.21.51.us, %bb.da ], [ %.sroa.21.49.us, %.lr.ph.i1195.us.preheader ] ; 4 uses
  %.032.i1196.us = phi i32 [ %i.aaz, %bb.da ], [ %28, %.lr.ph.i1195.us.preheader ] ; 2 uses
  %.02731.i1197.us = phi i64 [ %i.aay, %bb.da ], [ %i.aal, %.lr.ph.i1195.us.preheader ] ; 2 uses
  %.not.i1198.us = icmp ult i32 %.sroa.21.50.us, 24030
  br i1 %.not.i1198.us, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i1195.us
  %i.aam = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !40
  %i.aao = load ptr, ptr %i.aan, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.aao(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph.i1195.us
  %i.aap = sub nsw i32 %.sroa.97.50.us, %.sroa.131.50.us
  %..0.i1199.us = call i32 @llvm.smin.i32(i32 %i.aap, i32 %.032.i1196.us) ; 3 uses
  %i.aaq = zext i32 %..0.i1199.us to i64          ; 2 uses
  %notmask.i1200.us = shl nsw i64 -1, %i.aaq
  %i.aar = xor i64 %notmask.i1200.us, -1
  %i.aas = and i64 %.02731.i1197.us, %i.aar
  %i.aat = zext nneg i32 %.sroa.131.50.us to i64
  %i.aau = shl i64 %i.aas, %i.aat
  %i.aav = trunc i64 %i.aau to i32
  %i.aaw = or i32 %.sroa.182.50.us, %i.aav        ; 3 uses
  %i.aax = add nsw i32 %..0.i1199.us, %.sroa.131.50.us ; 2 uses
  %i.aay = lshr i64 %.02731.i1197.us, %i.aaq
  %i.aaz = sub nsw i32 %.032.i1196.us, %..0.i1199.us ; 2 uses
  %.not30.i1201.us = icmp slt i32 %i.aax, %.sroa.97.50.us
  br i1 %.not30.i1201.us, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aba = trunc i32 %i.aaw to i8
  %i.abb = add nuw i32 %.sroa.21.50.us, 1
  %i.abc = zext i32 %.sroa.21.50.us to i64
  %i.abd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abc
  store i8 %i.aba, ptr %i.abd, align 1, !tbaa !21
  %i.abe = icmp eq i32 %i.aaw, 255
  %i.abf = select i1 %i.abe, i32 7, i32 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.182.51.us = phi i32 [ %i.aaw, %bb.cy ], [ 0, %bb.cz ] ; 2 uses
  %.sroa.131.51.us = phi i32 [ %i.aax, %bb.cy ], [ 0, %bb.cz ] ; 2 uses
  %.sroa.97.51.us = phi i32 [ %.sroa.97.50.us, %bb.cy ], [ %i.abf, %bb.cz ] ; 2 uses
  %.sroa.21.51.us = phi i32 [ %.sroa.21.50.us, %bb.cy ], [ %i.abb, %bb.cz ] ; 2 uses
  %i.abg = icmp sgt i32 %i.aaz, 0
  br i1 %i.abg, label %.lr.ph.i1195.us, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us: ; preds = %bb.da, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us
  %.sroa.182.52.us = phi i32 [ %.sroa.182.49.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us ], [ %.sroa.182.51.us, %bb.da ]
  %.sroa.131.52.us = phi i32 [ %.sroa.131.49.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us ], [ %.sroa.131.51.us, %bb.da ]
  %.sroa.97.52.us = phi i32 [ %.sroa.97.49.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us ], [ %.sroa.97.51.us, %bb.da ]
  %.sroa.21.52.us = phi i32 [ %.sroa.21.49.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1193.us ], [ %.sroa.21.51.us, %bb.da ]
  %i.abh = zext nneg i32 %i.qn to i64
  br label %bb.db

bb.db:                                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us
  %.sroa.182.4.us = phi i32 [ %.sroa.182.52.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %.sroa.182.40.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ] ; 3 uses
  %.sroa.131.4.us = phi i32 [ %.sroa.131.52.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %.sroa.131.40.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ] ; 3 uses
  %.sroa.97.4.us = phi i32 [ %.sroa.97.52.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %.sroa.97.40.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ] ; 3 uses
  %.sroa.21.41421.us = phi i32 [ %.sroa.21.52.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %.sroa.21.40.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ] ; 3 uses
  %.3750.us = phi ptr [ %i.dt, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %i.dr, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ]
  %.3746.us = phi ptr [ %i.eh, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %i.ee, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ]
  %.sroa.41.12.us = phi i32 [ %.sroa.41.11.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ 0, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ] ; 2 uses
  %.2742.us = phi i32 [ %i.rv, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %.17411512.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ]
  %.7.us = phi ptr [ %.6.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %.5.us, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ]
  %.1.us = phi i32 [ %i.ri, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ %i.dx, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ]
  %.0730.us = phi i64 [ %i.abh, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1202.us ], [ 0, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit1132.us ]
  %i.abi = zext nneg i32 %i.db to i64
  %i.abj = getelementptr inbounds nuw [6 x i8], ptr @_ZN4ojph5localL8uvlc_tblE, i64 %i.abi ; 6 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 1
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !20 ; 2 uses
  %.not3738.i1203.us = icmp eq i8 %i.abl, 0
  br i1 %.not3738.i1203.us, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1215.us, label %.lr.ph.i1204.us.preheader

.lr.ph.i1204.us.preheader:                        ; preds = %bb.db
  %i.abm = zext i8 %i.abl to i32
  %i.abn = load i8, ptr %i.abj, align 2, !tbaa !19
  %i.abo = zext i8 %i.abn to i32
  br label %.lr.ph.i1204.us

.lr.ph.i1204.us:                                  ; preds = %.lr.ph.i1204.us.preheader, %bb.dh
  %.040.i1205.us = phi i32 [ %i.acf, %bb.dh ], [ %i.abm, %.lr.ph.i1204.us.preheader ] ; 3 uses
  %.03239.i1206.us = phi i32 [ %i.acg, %bb.dh ], [ %i.abo, %.lr.ph.i1204.us.preheader ] ; 2 uses
  %i.abp = load i32, ptr %i.m, align 8, !tbaa !37
  %i.abq = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i1207.us = icmp ult i32 %i.abp, %i.abq
  br i1 %.not.i1207.us, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i1204.us
  %i.abr = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !40
  %i.abt = load ptr, ptr %i.abs, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.abt(ptr noundef nonnull align 8 dereferenceable(8) %i.abr, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.lr.ph.i1204.us
  %i.abu = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i1208.us = sub nuw nsw i8 8, %i.abu
  %i.abv = zext nneg i8 %narrow.i1208.us to i32
  %i.abw = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.abx = sub nsw i32 %i.abv, %i.abw             ; 2 uses
  %i.aby = call i32 @llvm.smin.i32(i32 %i.abx, i32 %.040.i1205.us) ; 4 uses
  %notmask.i1209.us = shl nsw i32 -1, %i.aby
  %i.abz = xor i32 %notmask.i1209.us, -1
  %i.aca = and i32 %.03239.i1206.us, %i.abz
  %i.acb = shl i32 %i.aca, %i.abw
  %i.acc = load i32, ptr %i.p, align 4, !tbaa !44
  %i.acd = or i32 %i.acb, %i.acc                  ; 3 uses
  store i32 %i.acd, ptr %i.p, align 4, !tbaa !44
  %i.ace = add nsw i32 %i.aby, %i.abw
  store i32 %i.ace, ptr %i.o, align 8, !tbaa !43
  %i.acf = sub nsw i32 %.040.i1205.us, %i.aby     ; 2 uses
  %i.acg = lshr i32 %.03239.i1206.us, %i.aby
  %.not34.i1210.us = icmp sgt i32 %i.abx, %.040.i1205.us
  br i1 %.not34.i1210.us, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ach = trunc nuw i8 %i.abu to i1
  %.not35.i1211.us = icmp ne i32 %i.acd, 127
  %or.cond.not.i1212.us = select i1 %i.ach, i1 %.not35.i1211.us, i1 false
  br i1 %or.cond.not.i1212.us, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aci = trunc i32 %i.acd to i8
  %i.acj = load ptr, ptr %10, align 8, !tbaa !35
  %i.ack = load i32, ptr %i.m, align 8, !tbaa !37
  %i.acl = zext i32 %i.ack to i64
  %i.acm = sub nsw i64 0, %i.acl
  %i.acn = getelementptr inbounds i8, ptr %i.acj, i64 %i.acm
  store i8 %i.aci, ptr %i.acn, align 1, !tbaa !21
  %i.aco = load i32, ptr %i.m, align 8, !tbaa !37
  %i.acp = add i32 %i.aco, 1
  store i32 %i.acp, ptr %i.m, align 8, !tbaa !37
  %i.acq = load i32, ptr %i.p, align 4, !tbaa !44
  %i.acr = icmp sgt i32 %i.acq, 143
  %i.acs = zext i1 %i.acr to i8
  store i8 %i.acs, ptr %i.q, align 8, !tbaa !36
  store i32 0, ptr %i.p, align 4, !tbaa !44
  store i32 0, ptr %i.o, align 8, !tbaa !43
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  store i8 0, ptr %i.q, align 8, !tbaa !36
  br label %bb.dh, !llvm.loop !1

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.dd
  %.not37.i1213.us = icmp eq i32 %i.acf, 0
  br i1 %.not37.i1213.us, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1215.us, label %.lr.ph.i1204.us

_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1215.us: ; preds = %bb.dh, %bb.db
  %i.act = getelementptr inbounds nuw [6 x i8], ptr @_ZN4ojph5localL8uvlc_tblE, i64 %.0730.us ; 6 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 1
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !20 ; 2 uses
  %.not3738.i1216.us = icmp eq i8 %i.acv, 0
  br i1 %.not3738.i1216.us, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1228.us, label %.lr.ph.i1217.us.preheader

.lr.ph.i1217.us.preheader:                        ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit1215.us
  %i.acw = zext i8 %i.acv to i32
  %i.acx = load i8, ptr %i.act, align 2, !tbaa !19
  %i.acy = zext i8 %i.acx to i32
  br label %.lr.ph.i1217.us

.lr.ph.i1217.us:                                  ; preds = %.lr.ph.i1217.us.preheader, %bb.dn
  %.040.i1218.us = phi i32 [ %i.adp, %bb.dn ], [ %i.acw, %.lr.ph.i1217.us.preheader ] ; 3 uses
  %.03239.i1219.us = phi i32 [ %i.adq, %bb.dn ], [ %i.acy, %.lr.ph.i1217.us.preheader ] ; 2 uses
  %i.acz = load i32, ptr %i.m, align 8, !tbaa !37
  %i.ada = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i1220.us = icmp ult i32 %i.acz, %i.ada
  br i1 %.not.i1220.us, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i1217.us
  %i.adb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !40
  %i.add = load ptr, ptr %i.adc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.add(ptr noundef nonnull align 8 dereferenceable(8) %i.adb, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.lr.ph.i1217.us
  %i.ade = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i1221.us = sub nuw nsw i8 8, %i.ade
  %i.adf = zext nneg i8 %narrow.i1221.us to i32
  %i.adg = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.adh = sub nsw i32 %i.adf, %i.adg             ; 2 uses
  %i.adi = call i32 @llvm.smin.i32(i32 %i.adh, i32 %.040.i1218.us) ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN4ojph5local23ojph_encode_codeblock64EPmjjjjjPjPNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  %i.amm = select i1 %i.aml, i32 2, i32 0
  %i.amn = or disjoint i32 %i.amm, %i.amk
  %i.amo = icmp eq i32 %.sroa.25.2, %.sroa.0535.4
  %i.amp = select i1 %i.amo, i32 4, i32 0
  %i.amq = or disjoint i32 %i.amn, %i.amp
  %i.amr = icmp eq i32 %.sroa.35.1, %.sroa.0535.4
  %i.ams = select i1 %i.amr, i32 8, i32 0
  %i.amt = or disjoint i32 %i.amq, %i.ams
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.0734 = phi i32 [ %i.amt, %bb.fa ], [ 0, %bb.ez ]
  %i.amu = load i8, ptr %.07471496, align 1, !tbaa !21
  %i.amv = zext i8 %i.amu to i32
  %i.amw = call i32 @llvm.umax.i32(i32 %.sroa.11.1, i32 %i.amv)
  %i.amx = trunc nuw i32 %i.amw to i8
  store i8 %i.amx, ptr %.07471496, align 1, !tbaa !21
  %i.amy = getelementptr inbounds nuw i8, ptr %.07471496, i64 1 ; 4 uses
  %i.amz = trunc nuw nsw i32 %.sroa.35.1 to i8
  store i8 %i.amz, ptr %i.amy, align 1, !tbaa !21
  %i.ana = load i8, ptr %.07431497, align 1, !tbaa !21
  %i.anb = and i32 %.sroa.0363.4, 2               ; 2 uses
  %i.anc = lshr exact i32 %i.anb, 1
  %i.and = trunc nuw nsw i32 %i.anc to i8
  %i.ane = or i8 %i.ana, %i.and
  store i8 %i.ane, ptr %.07431497, align 1, !tbaa !21
  %i.anf = getelementptr inbounds nuw i8, ptr %.07431497, i64 1 ; 4 uses
  %i.ang = and i32 %.sroa.0363.4, 8               ; 2 uses
  %i.anh = lshr exact i32 %i.ang, 3
  %i.ani = trunc nuw nsw i32 %i.anh to i8
  store i8 %i.ani, ptr %i.anf, align 1, !tbaa !21
  %i.anj = shl nuw nsw i32 %.07401498, 8
  %i.ank = shl nuw nsw i32 %.sroa.0363.4, 4
  %i.anl = add nuw nsw i32 %i.ank, %i.anj
  %i.anm = add nuw nsw i32 %i.anl, %.0734
  %i.ann = zext nneg i32 %i.anm to i64
  %i.ano = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5localL8vlc_tbl0E, i64 %i.ann
  %i.anp = load i16, ptr %i.ano, align 2, !tbaa !17
  %i.anq = zext i16 %i.anp to i32                 ; 6 uses
  %i.anr = lshr i32 %i.anq, 4
  %i.ans = and i32 %i.anr, 7                      ; 2 uses
  %.not3738.i = icmp eq i32 %i.ans, 0
  br i1 %.not3738.i, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.fb
  %i.ant = lshr i32 %i.anq, 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.fh
  %.040.i = phi i32 [ %i.aok, %bb.fh ], [ %i.ans, %.lr.ph.i.preheader ] ; 3 uses
  %.03239.i = phi i32 [ %i.aol, %bb.fh ], [ %i.ant, %.lr.ph.i.preheader ] ; 2 uses
  %i.anu = load i32, ptr %i.m, align 8, !tbaa !37
  %i.anv = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i = icmp ult i32 %i.anu, %i.anv
  br i1 %.not.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.i
  %i.anw = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !40
  %i.any = load ptr, ptr %i.anx, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.any(ptr noundef nonnull align 8 dereferenceable(8) %i.anw, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph.i
  %i.anz = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i = sub nuw nsw i8 8, %i.anz
  %i.aoa = zext nneg i8 %narrow.i to i32
  %i.aob = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.aoc = sub nsw i32 %i.aoa, %i.aob             ; 2 uses
  %i.aod = call i32 @llvm.smin.i32(i32 %i.aoc, i32 %.040.i) ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.aod
  %i.aoe = xor i32 %notmask.i, -1
  %i.aof = and i32 %.03239.i, %i.aoe
  %i.aog = shl i32 %i.aof, %i.aob
  %i.aoh = load i32, ptr %i.p, align 4, !tbaa !44
  %i.aoi = or i32 %i.aog, %i.aoh                  ; 3 uses
  store i32 %i.aoi, ptr %i.p, align 4, !tbaa !44
  %i.aoj = add nsw i32 %i.aod, %i.aob
  store i32 %i.aoj, ptr %i.o, align 8, !tbaa !43
  %i.aok = sub nsw i32 %.040.i, %i.aod            ; 2 uses
  %i.aol = lshr i32 %.03239.i, %i.aod
  %.not34.i = icmp sgt i32 %i.aoc, %.040.i
  br i1 %.not34.i, label %bb.fh, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aom = trunc nuw i8 %i.anz to i1
  %.not35.i = icmp ne i32 %i.aoi, 127
  %or.cond.not.i = select i1 %i.aom, i1 %.not35.i, i1 false
  br i1 %or.cond.not.i, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i8 0, ptr %i.q, align 8, !tbaa !36
  br label %bb.fh, !llvm.loop !1

bb.fg:                                            ; preds = %bb.fe
  %i.aon = trunc i32 %i.aoi to i8
  %i.aoo = load ptr, ptr %10, align 8, !tbaa !35
  %i.aop = load i32, ptr %i.m, align 8, !tbaa !37
  %i.aoq = zext i32 %i.aop to i64
  %i.aor = sub nsw i64 0, %i.aoq
  %i.aos = getelementptr inbounds i8, ptr %i.aoo, i64 %i.aor
  store i8 %i.aon, ptr %i.aos, align 1, !tbaa !21
  %i.aot = load i32, ptr %i.m, align 8, !tbaa !37
  %i.aou = add i32 %i.aot, 1
  store i32 %i.aou, ptr %i.m, align 8, !tbaa !37
  %i.aov = load i32, ptr %i.p, align 4, !tbaa !44
  %i.aow = icmp sgt i32 %i.aov, 143
  %i.aox = zext i1 %i.aow to i8
  store i8 %i.aox, ptr %i.q, align 8, !tbaa !36
  store i32 0, ptr %i.p, align 4, !tbaa !44
  store i32 0, ptr %i.o, align 8, !tbaa !43
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fd
  %.not37.i = icmp eq i32 %i.aok, 0
  br i1 %.not37.i, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit, label %.lr.ph.i

_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit: ; preds = %bb.fh, %bb.fb
  %i.aoy = icmp eq i32 %.07401498, 0
  br i1 %i.aoy, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit
  %i.aoz = icmp ne i32 %.sroa.0363.4, 0
  call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %9, i1 noundef zeroext %i.aoz)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit
  %i.apa = and i32 %.sroa.0363.4, 1               ; 2 uses
  %.not801 = icmp eq i32 %i.apa, 0
  %i.apb = and i32 %i.anq, 1
  %i.apc = sub nuw nsw i32 %i.amg, %i.apb         ; 2 uses
  %i.apd = select i1 %.not801, i32 0, i32 %i.apc  ; 2 uses
  %i.ape = icmp sgt i32 %i.apd, 0
  br i1 %i.ape, label %.lr.ph.i821.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit

.lr.ph.i821.preheader:                            ; preds = %bb.fj
  %i.apf = zext nneg i32 %i.apd to i64
  %notmask802 = shl nsw i64 -1, %i.apf
  %i.apg = xor i64 %notmask802, -1
  %i.aph = and i64 %.sroa.0.1, %i.apg
  br label %.lr.ph.i821

.lr.ph.i821:                                      ; preds = %.lr.ph.i821.preheader, %bb.fn
  %.sroa.182.5 = phi i32 [ %.sroa.182.6, %bb.fn ], [ %.sroa.182.01492, %.lr.ph.i821.preheader ]
  %.sroa.131.5 = phi i32 [ %.sroa.131.6, %bb.fn ], [ %.sroa.131.01493, %.lr.ph.i821.preheader ] ; 3 uses
  %.sroa.97.5 = phi i32 [ %.sroa.97.6, %bb.fn ], [ %.sroa.97.01494, %.lr.ph.i821.preheader ] ; 3 uses
  %.sroa.21.5 = phi i32 [ %.sroa.21.6, %bb.fn ], [ %.sroa.21.01495, %.lr.ph.i821.preheader ] ; 4 uses
  %.032.i = phi i32 [ %i.apv, %bb.fn ], [ %i.apc, %.lr.ph.i821.preheader ] ; 2 uses
  %.02731.i = phi i64 [ %i.apu, %bb.fn ], [ %i.aph, %.lr.ph.i821.preheader ] ; 2 uses
  %.not.i822 = icmp ult i32 %.sroa.21.5, 24030
  br i1 %.not.i822, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i821
  %i.api = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !40
  %i.apk = load ptr, ptr %i.apj, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.apk(ptr noundef nonnull align 8 dereferenceable(8) %i.api, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph.i821
  %i.apl = sub nuw nsw i32 %.sroa.97.5, %.sroa.131.5
  %..0.i = call i32 @llvm.smin.i32(i32 %i.apl, i32 %.032.i) ; 3 uses
  %i.apm = zext nneg i32 %..0.i to i64            ; 2 uses
  %notmask.i823 = shl nsw i64 -1, %i.apm
  %i.apn = xor i64 %notmask.i823, -1
  %i.apo = and i64 %.02731.i, %i.apn
  %i.app = zext nneg i32 %.sroa.131.5 to i64
  %i.apq = shl nuw nsw i64 %i.apo, %i.app
  %i.apr = trunc nuw nsw i64 %i.apq to i32
  %i.aps = or i32 %.sroa.182.5, %i.apr            ; 3 uses
  %i.apt = add nuw nsw i32 %..0.i, %.sroa.131.5   ; 2 uses
  %i.apu = lshr i64 %.02731.i, %i.apm
  %i.apv = sub nsw i32 %.032.i, %..0.i            ; 2 uses
  %.not30.i = icmp slt i32 %i.apt, %.sroa.97.5
  br i1 %.not30.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.apw = trunc i32 %i.aps to i8
  %i.apx = add nuw i32 %.sroa.21.5, 1
  %i.apy = zext i32 %.sroa.21.5 to i64
  %i.apz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apy
  store i8 %i.apw, ptr %i.apz, align 1, !tbaa !21
  %i.aqa = icmp eq i32 %i.aps, 255
  %i.aqb = select i1 %i.aqa, i32 7, i32 8
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.sroa.182.6 = phi i32 [ %i.aps, %bb.fl ], [ 0, %bb.fm ] ; 2 uses
  %.sroa.131.6 = phi i32 [ %i.apt, %bb.fl ], [ 0, %bb.fm ] ; 2 uses
  %.sroa.97.6 = phi i32 [ %.sroa.97.5, %bb.fl ], [ %i.aqb, %bb.fm ] ; 2 uses
  %.sroa.21.6 = phi i32 [ %.sroa.21.5, %bb.fl ], [ %i.apx, %bb.fm ] ; 2 uses
  %i.aqc = icmp sgt i32 %i.apv, 0
  br i1 %i.aqc, label %.lr.ph.i821, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit: ; preds = %bb.fn, %bb.fj
  %.sroa.182.7 = phi i32 [ %.sroa.182.01492, %bb.fj ], [ %.sroa.182.6, %bb.fn ] ; 2 uses
  %.sroa.131.7 = phi i32 [ %.sroa.131.01493, %bb.fj ], [ %.sroa.131.6, %bb.fn ] ; 2 uses
  %.sroa.97.7 = phi i32 [ %.sroa.97.01494, %bb.fj ], [ %.sroa.97.6, %bb.fn ] ; 2 uses
  %.sroa.21.7 = phi i32 [ %.sroa.21.01495, %bb.fj ], [ %.sroa.21.6, %bb.fn ] ; 2 uses
  %.not803 = icmp eq i32 %i.anb, 0
  %29 = shl i32 %i.anq, 30
  %30 = ashr i32 %29, 31
  %31 = add nsw i32 %30, %i.amg                   ; 2 uses
  %i.aqd = select i1 %.not803, i32 0, i32 %31     ; 2 uses
  %i.aqe = icmp sgt i32 %i.aqd, 0
  br i1 %i.aqe, label %.lr.ph.i824.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831

.lr.ph.i824.preheader:                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit
  %i.aqf = zext nneg i32 %i.aqd to i64
  %notmask804 = shl nsw i64 -1, %i.aqf
  %i.aqg = xor i64 %notmask804, -1
  %i.aqh = and i64 %.sroa.9.1, %i.aqg
  br label %.lr.ph.i824

.lr.ph.i824:                                      ; preds = %.lr.ph.i824.preheader, %bb.fr
  %.sroa.182.8 = phi i32 [ %.sroa.182.9, %bb.fr ], [ %.sroa.182.7, %.lr.ph.i824.preheader ]
  %.sroa.131.8 = phi i32 [ %.sroa.131.9, %bb.fr ], [ %.sroa.131.7, %.lr.ph.i824.preheader ] ; 3 uses
  %.sroa.97.8 = phi i32 [ %.sroa.97.9, %bb.fr ], [ %.sroa.97.7, %.lr.ph.i824.preheader ] ; 3 uses
  %.sroa.21.8 = phi i32 [ %.sroa.21.9, %bb.fr ], [ %.sroa.21.7, %.lr.ph.i824.preheader ] ; 4 uses
  %.032.i825 = phi i32 [ %i.aqv, %bb.fr ], [ %31, %.lr.ph.i824.preheader ] ; 2 uses
  %.02731.i826 = phi i64 [ %i.aqu, %bb.fr ], [ %i.aqh, %.lr.ph.i824.preheader ] ; 2 uses
  %.not.i827 = icmp ult i32 %.sroa.21.8, 24030
  br i1 %.not.i827, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph.i824
  %i.aqi = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !40
  %i.aqk = load ptr, ptr %i.aqj, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.aqk(ptr noundef nonnull align 8 dereferenceable(8) %i.aqi, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.lr.ph.i824
  %i.aql = sub nuw nsw i32 %.sroa.97.8, %.sroa.131.8
  %..0.i828 = call i32 @llvm.smin.i32(i32 %i.aql, i32 %.032.i825) ; 3 uses
  %i.aqm = zext nneg i32 %..0.i828 to i64         ; 2 uses
  %notmask.i829 = shl nsw i64 -1, %i.aqm
  %i.aqn = xor i64 %notmask.i829, -1
  %i.aqo = and i64 %.02731.i826, %i.aqn
  %i.aqp = zext nneg i32 %.sroa.131.8 to i64
  %i.aqq = shl nuw nsw i64 %i.aqo, %i.aqp
  %i.aqr = trunc nuw nsw i64 %i.aqq to i32
  %i.aqs = or i32 %.sroa.182.8, %i.aqr            ; 3 uses
  %i.aqt = add nuw nsw i32 %..0.i828, %.sroa.131.8 ; 2 uses
  %i.aqu = lshr i64 %.02731.i826, %i.aqm
  %i.aqv = sub nsw i32 %.032.i825, %..0.i828      ; 2 uses
  %.not30.i830 = icmp slt i32 %i.aqt, %.sroa.97.8
  br i1 %.not30.i830, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aqw = trunc i32 %i.aqs to i8
  %i.aqx = add nuw i32 %.sroa.21.8, 1
  %i.aqy = zext i32 %.sroa.21.8 to i64
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqy
  store i8 %i.aqw, ptr %i.aqz, align 1, !tbaa !21
  %i.ara = icmp eq i32 %i.aqs, 255
  %i.arb = select i1 %i.ara, i32 7, i32 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.sroa.182.9 = phi i32 [ %i.aqs, %bb.fp ], [ 0, %bb.fq ] ; 2 uses
  %.sroa.131.9 = phi i32 [ %i.aqt, %bb.fp ], [ 0, %bb.fq ] ; 2 uses
  %.sroa.97.9 = phi i32 [ %.sroa.97.8, %bb.fp ], [ %i.arb, %bb.fq ] ; 2 uses
  %.sroa.21.9 = phi i32 [ %.sroa.21.8, %bb.fp ], [ %i.aqx, %bb.fq ] ; 2 uses
  %i.arc = icmp sgt i32 %i.aqv, 0
  br i1 %i.arc, label %.lr.ph.i824, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831: ; preds = %bb.fr, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit
  %.sroa.182.10 = phi i32 [ %.sroa.182.7, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit ], [ %.sroa.182.9, %bb.fr ] ; 2 uses
  %.sroa.131.10 = phi i32 [ %.sroa.131.7, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit ], [ %.sroa.131.9, %bb.fr ] ; 2 uses
  %.sroa.97.10 = phi i32 [ %.sroa.97.7, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit ], [ %.sroa.97.9, %bb.fr ] ; 2 uses
  %.sroa.21.10 = phi i32 [ %.sroa.21.7, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit ], [ %.sroa.21.9, %bb.fr ] ; 2 uses
  %i.ard = and i32 %.sroa.0363.4, 4
  %.not805 = icmp eq i32 %i.ard, 0
  %32 = shl i32 %i.anq, 29
  %33 = ashr i32 %32, 31
  %34 = add nsw i32 %33, %i.amg                   ; 2 uses
  %i.are = select i1 %.not805, i32 0, i32 %34     ; 2 uses
  %i.arf = icmp sgt i32 %i.are, 0
  br i1 %i.arf, label %.lr.ph.i832.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839

.lr.ph.i832.preheader:                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831
  %i.arg = zext nneg i32 %i.are to i64
  %notmask806 = shl nsw i64 -1, %i.arg
  %i.arh = xor i64 %notmask806, -1
  %i.ari = and i64 %.sroa.15.2, %i.arh
  br label %.lr.ph.i832

.lr.ph.i832:                                      ; preds = %.lr.ph.i832.preheader, %bb.fv
  %.sroa.182.11 = phi i32 [ %.sroa.182.12, %bb.fv ], [ %.sroa.182.10, %.lr.ph.i832.preheader ]
  %.sroa.131.11 = phi i32 [ %.sroa.131.12, %bb.fv ], [ %.sroa.131.10, %.lr.ph.i832.preheader ] ; 3 uses
  %.sroa.97.11 = phi i32 [ %.sroa.97.12, %bb.fv ], [ %.sroa.97.10, %.lr.ph.i832.preheader ] ; 3 uses
  %.sroa.21.11 = phi i32 [ %.sroa.21.12, %bb.fv ], [ %.sroa.21.10, %.lr.ph.i832.preheader ] ; 4 uses
  %.032.i833 = phi i32 [ %i.arw, %bb.fv ], [ %34, %.lr.ph.i832.preheader ] ; 2 uses
  %.02731.i834 = phi i64 [ %i.arv, %bb.fv ], [ %i.ari, %.lr.ph.i832.preheader ] ; 2 uses
  %.not.i835 = icmp ult i32 %.sroa.21.11, 24030
  br i1 %.not.i835, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.i832
  %i.arj = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !40
  %i.arl = load ptr, ptr %i.ark, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.arl(ptr noundef nonnull align 8 dereferenceable(8) %i.arj, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.lr.ph.i832
  %i.arm = sub nuw nsw i32 %.sroa.97.11, %.sroa.131.11
  %..0.i836 = call i32 @llvm.smin.i32(i32 %i.arm, i32 %.032.i833) ; 3 uses
  %i.arn = zext nneg i32 %..0.i836 to i64         ; 2 uses
  %notmask.i837 = shl nsw i64 -1, %i.arn
  %i.aro = xor i64 %notmask.i837, -1
  %i.arp = and i64 %.02731.i834, %i.aro
  %i.arq = zext nneg i32 %.sroa.131.11 to i64
  %i.arr = shl nuw nsw i64 %i.arp, %i.arq
  %i.ars = trunc nuw nsw i64 %i.arr to i32
  %i.art = or i32 %.sroa.182.11, %i.ars           ; 3 uses
  %i.aru = add nuw nsw i32 %..0.i836, %.sroa.131.11 ; 2 uses
  %i.arv = lshr i64 %.02731.i834, %i.arn
  %i.arw = sub nsw i32 %.032.i833, %..0.i836      ; 2 uses
  %.not30.i838 = icmp slt i32 %i.aru, %.sroa.97.11
  br i1 %.not30.i838, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.arx = trunc i32 %i.art to i8
  %i.ary = add nuw i32 %.sroa.21.11, 1
  %i.arz = zext i32 %.sroa.21.11 to i64
  %i.asa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.arz
  store i8 %i.arx, ptr %i.asa, align 1, !tbaa !21
  %i.asb = icmp eq i32 %i.art, 255
  %i.asc = select i1 %i.asb, i32 7, i32 8
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.sroa.182.12 = phi i32 [ %i.art, %bb.ft ], [ 0, %bb.fu ] ; 2 uses
  %.sroa.131.12 = phi i32 [ %i.aru, %bb.ft ], [ 0, %bb.fu ] ; 2 uses
  %.sroa.97.12 = phi i32 [ %.sroa.97.11, %bb.ft ], [ %i.asc, %bb.fu ] ; 2 uses
  %.sroa.21.12 = phi i32 [ %.sroa.21.11, %bb.ft ], [ %i.ary, %bb.fu ] ; 2 uses
  %i.asd = icmp sgt i32 %i.arw, 0
  br i1 %i.asd, label %.lr.ph.i832, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839: ; preds = %bb.fv, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831
  %.sroa.182.13 = phi i32 [ %.sroa.182.10, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831 ], [ %.sroa.182.12, %bb.fv ] ; 2 uses
  %.sroa.131.13 = phi i32 [ %.sroa.131.10, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831 ], [ %.sroa.131.12, %bb.fv ] ; 2 uses
  %.sroa.97.13 = phi i32 [ %.sroa.97.10, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831 ], [ %.sroa.97.12, %bb.fv ] ; 2 uses
  %.sroa.21.13 = phi i32 [ %.sroa.21.10, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit831 ], [ %.sroa.21.12, %bb.fv ] ; 2 uses
  %.not807 = icmp eq i32 %i.ang, 0
  %35 = shl i32 %i.anq, 28
  %36 = ashr i32 %35, 31
  %37 = add nsw i32 %36, %i.amg                   ; 2 uses
  %i.ase = select i1 %.not807, i32 0, i32 %37     ; 2 uses
  %i.asf = icmp sgt i32 %i.ase, 0
  br i1 %i.asf, label %.lr.ph.i840.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit847

.lr.ph.i840.preheader:                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839
  %i.asg = zext nneg i32 %i.ase to i64
  %notmask808 = shl nsw i64 -1, %i.asg
  %i.ash = xor i64 %notmask808, -1
  %i.asi = and i64 %.sroa.21.1, %i.ash
  br label %.lr.ph.i840

.lr.ph.i840:                                      ; preds = %.lr.ph.i840.preheader, %bb.fz
  %.sroa.182.14 = phi i32 [ %.sroa.182.15, %bb.fz ], [ %.sroa.182.13, %.lr.ph.i840.preheader ]
  %.sroa.131.14 = phi i32 [ %.sroa.131.15, %bb.fz ], [ %.sroa.131.13, %.lr.ph.i840.preheader ] ; 3 uses
  %.sroa.97.14 = phi i32 [ %.sroa.97.15, %bb.fz ], [ %.sroa.97.13, %.lr.ph.i840.preheader ] ; 3 uses
  %.sroa.21.14 = phi i32 [ %.sroa.21.15, %bb.fz ], [ %.sroa.21.13, %.lr.ph.i840.preheader ] ; 4 uses
  %.032.i841 = phi i32 [ %i.asw, %bb.fz ], [ %37, %.lr.ph.i840.preheader ] ; 2 uses
  %.02731.i842 = phi i64 [ %i.asv, %bb.fz ], [ %i.asi, %.lr.ph.i840.preheader ] ; 2 uses
  %.not.i843 = icmp ult i32 %.sroa.21.14, 24030
  br i1 %.not.i843, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i840
  %i.asj = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !40
  %i.asl = load ptr, ptr %i.ask, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.asl(ptr noundef nonnull align 8 dereferenceable(8) %i.asj, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.lr.ph.i840
  %i.asm = sub nuw nsw i32 %.sroa.97.14, %.sroa.131.14
  %..0.i844 = call i32 @llvm.smin.i32(i32 %i.asm, i32 %.032.i841) ; 3 uses
  %i.asn = zext nneg i32 %..0.i844 to i64         ; 2 uses
  %notmask.i845 = shl nsw i64 -1, %i.asn
  %i.aso = xor i64 %notmask.i845, -1
  %i.asp = and i64 %.02731.i842, %i.aso
  %i.asq = zext nneg i32 %.sroa.131.14 to i64
  %i.asr = shl nuw nsw i64 %i.asp, %i.asq
  %i.ass = trunc nuw nsw i64 %i.asr to i32
  %i.ast = or i32 %.sroa.182.14, %i.ass           ; 3 uses
  %i.asu = add nuw nsw i32 %..0.i844, %.sroa.131.14 ; 2 uses
  %i.asv = lshr i64 %.02731.i842, %i.asn
  %i.asw = sub nsw i32 %.032.i841, %..0.i844      ; 2 uses
  %.not30.i846 = icmp slt i32 %i.asu, %.sroa.97.14
  br i1 %.not30.i846, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.asx = trunc i32 %i.ast to i8
  %i.asy = add nuw i32 %.sroa.21.14, 1
  %i.asz = zext i32 %.sroa.21.14 to i64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.asz
  store i8 %i.asx, ptr %i.ata, align 1, !tbaa !21
  %i.atb = icmp eq i32 %i.ast, 255
  %i.atc = select i1 %i.atb, i32 7, i32 8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.sroa.182.15 = phi i32 [ %i.ast, %bb.fx ], [ 0, %bb.fy ] ; 2 uses
  %.sroa.131.15 = phi i32 [ %i.asu, %bb.fx ], [ 0, %bb.fy ] ; 2 uses
  %.sroa.97.15 = phi i32 [ %.sroa.97.14, %bb.fx ], [ %i.atc, %bb.fy ] ; 2 uses
  %.sroa.21.15 = phi i32 [ %.sroa.21.14, %bb.fx ], [ %i.asy, %bb.fy ] ; 2 uses
  %i.atd = icmp sgt i32 %i.asw, 0
  br i1 %i.atd, label %.lr.ph.i840, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit847, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit847: ; preds = %bb.fz, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839
  %.sroa.182.16 = phi i32 [ %.sroa.182.13, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839 ], [ %.sroa.182.15, %bb.fz ] ; 3 uses
  %.sroa.131.16 = phi i32 [ %.sroa.131.13, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839 ], [ %.sroa.131.15, %bb.fz ] ; 3 uses
  %.sroa.97.16 = phi i32 [ %.sroa.97.13, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839 ], [ %.sroa.97.15, %bb.fz ] ; 3 uses
  %.sroa.21.16 = phi i32 [ %.sroa.21.13, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit839 ], [ %.sroa.21.15, %bb.fz ] ; 3 uses
  %i.ate = or disjoint i32 %.07361500, 2
  %i.atf = icmp ult i32 %i.ate, %3
  br i1 %i.atf, label %bb.ga, label %.thread1468

bb.ga:                                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit847
  %i.atg = load i64, ptr %.1738, align 8, !tbaa !80 ; 2 uses
  %i.ath = shl i64 %i.atg, 1
  %i.ati = lshr i64 %i.ath, %i.s
  %i.atj = and i64 %i.ati, -2                     ; 3 uses
  %.not809 = icmp eq i64 %i.atj, 0
  br i1 %.not809, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.atk = add i64 %i.atj, -1
  %i.atl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2) %i.atk, i1 true)
  %i.atm = trunc nuw nsw i64 %i.atl to i32
  %i.atn = sub nuw nsw i32 64, %i.atm
  %i.ato = add i64 %i.atj, -2
  %i.atp = lshr i64 %i.atg, 63
  %i.atq = or disjoint i64 %i.ato, %i.atp
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.sroa.47.1 = phi i32 [ %i.atn, %bb.gb ], [ 0, %bb.ga ] ; 3 uses
  %.sroa.41.1 = phi i32 [ 1, %bb.gb ], [ 0, %bb.ga ] ; 2 uses
  %.sroa.27.1 = phi i64 [ %i.atq, %bb.gb ], [ 0, %bb.ga ]
  br i1 %i.t, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %.1738, i64 %i.u
  %i.ats = load i64, ptr %i.atr, align 8, !tbaa !80
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.gd
  %i.att = phi i64 [ %i.ats, %bb.gd ], [ 0, %bb.gc ] ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.1738, i64 8 ; 3 uses
  %i.atv = shl i64 %i.att, 1
  %i.atw = lshr i64 %i.atv, %i.s
  %i.atx = and i64 %i.atw, -2                     ; 3 uses
  %.not810 = icmp eq i64 %i.atx, 0
  br i1 %.not810, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aty = or disjoint i32 %.sroa.41.1, 2
  %i.atz = add i64 %i.atx, -1
  %i.aua = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2) %i.atz, i1 true)
  %i.aub = trunc nuw nsw i64 %i.aua to i32
  %i.auc = sub nuw nsw i32 64, %i.aub             ; 2 uses
  %i.aud = call i32 @llvm.umax.i32(i32 %.sroa.47.1, i32 %i.auc)
  %i.aue = add i64 %i.atx, -2
  %i.auf = lshr i64 %i.att, 63
  %i.aug = or disjoint i64 %i.aue, %i.auf
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.sroa.37.2 = phi i32 [ %i.aud, %bb.gf ], [ %.sroa.47.1, %bb.ge ] ; 3 uses
  %.sroa.55.1 = phi i32 [ %i.auc, %bb.gf ], [ 0, %bb.ge ] ; 2 uses
  %.sroa.41.2 = phi i32 [ %i.aty, %bb.gf ], [ %.sroa.41.1, %bb.ge ] ; 3 uses
  %.sroa.33.1 = phi i64 [ %i.aug, %bb.gf ], [ 0, %bb.ge ]
  %i.auh = or disjoint i32 %.07361500, 3
  %i.aui = icmp ult i32 %i.auh, %3
  br i1 %i.aui, label %bb.gh, label %bb.gn

bb.gh:                                            ; preds = %bb.gg
  %i.auj = load i64, ptr %i.atu, align 8, !tbaa !80 ; 2 uses
  %i.auk = shl i64 %i.auj, 1
  %i.aul = lshr i64 %i.auk, %i.s
  %i.aum = and i64 %i.aul, -2                     ; 3 uses
  %.not811 = icmp eq i64 %i.aum, 0
  br i1 %.not811, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aun = add nuw nsw i32 %.sroa.41.2, 4
  %i.auo = add i64 %i.aum, -1
  %i.aup = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2) %i.auo, i1 true)
  %i.auq = trunc nuw nsw i64 %i.aup to i32
  %i.aur = sub nuw nsw i32 64, %i.auq             ; 2 uses
  %i.aus = call i32 @llvm.umax.i32(i32 %.sroa.37.2, i32 %i.aur)
  %i.aut = add i64 %i.aum, -2
  %i.auu = lshr i64 %i.auj, 63
  %i.auv = or disjoint i64 %i.aut, %i.auu
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.sroa.37.3 = phi i32 [ %i.aus, %bb.gi ], [ %.sroa.37.2, %bb.gh ] ; 2 uses
  %.sroa.69.1 = phi i32 [ %i.aur, %bb.gi ], [ 0, %bb.gh ] ; 2 uses
  %.sroa.41.3 = phi i32 [ %i.aun, %bb.gi ], [ %.sroa.41.2, %bb.gh ] ; 2 uses
  %.sroa.39.1 = phi i64 [ %i.auv, %bb.gi ], [ 0, %bb.gh ] ; 2 uses
  br i1 %i.t, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.auw = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.u
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !80
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  %i.auy = phi i64 [ %i.aux, %bb.gk ], [ 0, %bb.gj ] ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %.1738, i64 16 ; 2 uses
  %i.ava = shl i64 %i.auy, 1
  %i.avb = lshr i64 %i.ava, %i.s
  %i.avc = and i64 %i.avb, -2                     ; 3 uses
  %.not812 = icmp eq i64 %i.avc, 0
  br i1 %.not812, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.avd = add nuw nsw i32 %.sroa.41.3, 8
  %i.ave = add i64 %i.avc, -1
  %i.avf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -2) %i.ave, i1 true)
  %i.avg = trunc nuw nsw i64 %i.avf to i32
  %i.avh = sub nuw nsw i32 64, %i.avg             ; 2 uses
  %i.avi = call i32 @llvm.umax.i32(i32 %.sroa.37.3, i32 %i.avh)
  %i.avj = add i64 %i.avc, -2
  %i.avk = lshr i64 %i.auy, 63
  %i.avl = or disjoint i64 %i.avj, %i.avk
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm, %bb.gg
  %.sroa.37.4 = phi i32 [ %i.avi, %bb.gm ], [ %.sroa.37.3, %bb.gl ], [ %.sroa.37.2, %bb.gg ] ; 6 uses
  %.sroa.69.2 = phi i32 [ %.sroa.69.1, %bb.gm ], [ %.sroa.69.1, %bb.gl ], [ 0, %bb.gg ]
  %.sroa.79.1 = phi i32 [ %i.avh, %bb.gm ], [ 0, %bb.gl ], [ 0, %bb.gg ] ; 2 uses
  %.sroa.41.4 = phi i32 [ %i.avd, %bb.gm ], [ %.sroa.41.3, %bb.gl ], [ %.sroa.41.2, %bb.gg ] ; 11 uses
  %.sroa.39.2 = phi i64 [ %.sroa.39.1, %bb.gm ], [ %.sroa.39.1, %bb.gl ], [ 0, %bb.gg ]
  %.sroa.45.1 = phi i64 [ %i.avl, %bb.gm ], [ 0, %bb.gl ], [ 0, %bb.gg ]
  %.2 = phi ptr [ %i.auz, %bb.gm ], [ %i.auz, %bb.gl ], [ %i.atu, %bb.gg ] ; 5 uses
  %i.avm = lshr i32 %.sroa.0363.4, 1
  %i.avn = or i32 %i.avm, %i.apa                  ; 2 uses
  %i.avo = call i32 @llvm.umax.i32(i32 %.sroa.37.4, i32 1) ; 8 uses
  %i.avp = add nsw i32 %i.avo, -1                 ; 3 uses
  %i.avq = icmp samesign ugt i32 %.sroa.37.4, 1
  br i1 %i.avq, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
end_hunk_5
begin_hunk_6_@_ZN4ojph5local23ojph_encode_codeblock64EPmjjjjjPjPNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  %i.avu = select i1 %i.avt, i32 2, i32 0
  %i.avv = or disjoint i32 %i.avu, %i.avs
  %i.avw = icmp eq i32 %.sroa.69.2, %.sroa.37.4
  %i.avx = select i1 %i.avw, i32 4, i32 0
  %i.avy = or disjoint i32 %i.avv, %i.avx
  %i.avz = icmp eq i32 %.sroa.79.1, %.sroa.37.4
  %i.awa = select i1 %i.avz, i32 8, i32 0
  %i.awb = or disjoint i32 %i.avy, %i.awa
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.0733 = phi i32 [ %i.awb, %bb.go ], [ 0, %bb.gn ]
  %i.awc = load i8, ptr %i.amy, align 1, !tbaa !21
  %i.awd = zext i8 %i.awc to i32
  %i.awe = call i32 @llvm.umax.i32(i32 %.sroa.55.1, i32 %i.awd)
  %i.awf = trunc nuw i32 %i.awe to i8
  store i8 %i.awf, ptr %i.amy, align 1, !tbaa !21
  %i.awg = getelementptr inbounds nuw i8, ptr %.07471496, i64 2 ; 6 uses
  %i.awh = trunc nuw nsw i32 %.sroa.79.1 to i8
  store i8 %i.awh, ptr %i.awg, align 1, !tbaa !21
  %i.awi = load i8, ptr %i.anf, align 1, !tbaa !21
  %i.awj = and i32 %.sroa.41.4, 2                 ; 2 uses
  %i.awk = lshr exact i32 %i.awj, 1
  %i.awl = trunc nuw nsw i32 %i.awk to i8
  %i.awm = or i8 %i.awi, %i.awl
  store i8 %i.awm, ptr %i.anf, align 1, !tbaa !21
  %i.awn = getelementptr inbounds nuw i8, ptr %.07431497, i64 2 ; 6 uses
  %i.awo = and i32 %.sroa.41.4, 8                 ; 2 uses
  %i.awp = lshr exact i32 %i.awo, 3
  %i.awq = trunc nuw nsw i32 %i.awp to i8
  store i8 %i.awq, ptr %i.awn, align 1, !tbaa !21
  %i.awr = shl nuw nsw i32 %i.avn, 8
  %i.aws = shl nuw nsw i32 %.sroa.41.4, 4
  %i.awt = add nuw nsw i32 %i.aws, %i.awr
  %i.awu = add nuw nsw i32 %i.awt, %.0733
  %i.awv = zext nneg i32 %i.awu to i64
  %i.aww = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5localL8vlc_tbl0E, i64 %i.awv
  %i.awx = load i16, ptr %i.aww, align 2, !tbaa !17
  %i.awy = zext i16 %i.awx to i32                 ; 6 uses
  %i.awz = lshr i32 %i.awy, 4
  %i.axa = and i32 %i.awz, 7                      ; 2 uses
  %.not3738.i848 = icmp eq i32 %i.axa, 0
  br i1 %.not3738.i848, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit859, label %.lr.ph.i849.preheader

.lr.ph.i849.preheader:                            ; preds = %bb.gp
  %i.axb = lshr i32 %i.awy, 8
  br label %.lr.ph.i849

.lr.ph.i849:                                      ; preds = %.lr.ph.i849.preheader, %bb.gv
  %.040.i850 = phi i32 [ %i.axs, %bb.gv ], [ %i.axa, %.lr.ph.i849.preheader ] ; 3 uses
  %.03239.i851 = phi i32 [ %i.axt, %bb.gv ], [ %i.axb, %.lr.ph.i849.preheader ] ; 2 uses
  %i.axc = load i32, ptr %i.m, align 8, !tbaa !37
  %i.axd = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i852 = icmp ult i32 %i.axc, %i.axd
  br i1 %.not.i852, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph.i849
  %i.axe = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !40
  %i.axg = load ptr, ptr %i.axf, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.axg(ptr noundef nonnull align 8 dereferenceable(8) %i.axe, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %.lr.ph.i849
  %i.axh = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i853 = sub nuw nsw i8 8, %i.axh
  %i.axi = zext nneg i8 %narrow.i853 to i32
  %i.axj = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.axk = sub nsw i32 %i.axi, %i.axj             ; 2 uses
  %i.axl = call i32 @llvm.smin.i32(i32 %i.axk, i32 %.040.i850) ; 4 uses
  %notmask.i854 = shl nsw i32 -1, %i.axl
  %i.axm = xor i32 %notmask.i854, -1
  %i.axn = and i32 %.03239.i851, %i.axm
  %i.axo = shl i32 %i.axn, %i.axj
  %i.axp = load i32, ptr %i.p, align 4, !tbaa !44
  %i.axq = or i32 %i.axo, %i.axp                  ; 3 uses
  store i32 %i.axq, ptr %i.p, align 4, !tbaa !44
  %i.axr = add nsw i32 %i.axl, %i.axj
  store i32 %i.axr, ptr %i.o, align 8, !tbaa !43
  %i.axs = sub nsw i32 %.040.i850, %i.axl         ; 2 uses
  %i.axt = lshr i32 %.03239.i851, %i.axl
  %.not34.i855 = icmp sgt i32 %i.axk, %.040.i850
  br i1 %.not34.i855, label %bb.gv, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.axu = trunc nuw i8 %i.axh to i1
  %.not35.i856 = icmp ne i32 %i.axq, 127
  %or.cond.not.i857 = select i1 %i.axu, i1 %.not35.i856, i1 false
  br i1 %or.cond.not.i857, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  store i8 0, ptr %i.q, align 8, !tbaa !36
  br label %bb.gv, !llvm.loop !1

bb.gu:                                            ; preds = %bb.gs
  %i.axv = trunc i32 %i.axq to i8
  %i.axw = load ptr, ptr %10, align 8, !tbaa !35
  %i.axx = load i32, ptr %i.m, align 8, !tbaa !37
  %i.axy = zext i32 %i.axx to i64
  %i.axz = sub nsw i64 0, %i.axy
  %i.aya = getelementptr inbounds i8, ptr %i.axw, i64 %i.axz
  store i8 %i.axv, ptr %i.aya, align 1, !tbaa !21
  %i.ayb = load i32, ptr %i.m, align 8, !tbaa !37
  %i.ayc = add i32 %i.ayb, 1
  store i32 %i.ayc, ptr %i.m, align 8, !tbaa !37
  %i.ayd = load i32, ptr %i.p, align 4, !tbaa !44
  %i.aye = icmp sgt i32 %i.ayd, 143
  %i.ayf = zext i1 %i.aye to i8
  store i8 %i.ayf, ptr %i.q, align 8, !tbaa !36
  store i32 0, ptr %i.p, align 4, !tbaa !44
  store i32 0, ptr %i.o, align 8, !tbaa !43
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gr
  %.not37.i858 = icmp eq i32 %i.axs, 0
  br i1 %.not37.i858, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit859, label %.lr.ph.i849

_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit859: ; preds = %bb.gv, %bb.gp
  %i.ayg = icmp eq i32 %i.avn, 0
  br i1 %i.ayg, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit859
  %i.ayh = icmp ne i32 %.sroa.41.4, 0
  call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %9, i1 noundef zeroext %i.ayh)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit859
  %i.ayi = and i32 %.sroa.41.4, 1
  %.not813 = icmp eq i32 %i.ayi, 0
  %i.ayj = and i32 %i.awy, 1
  %i.ayk = sub nuw nsw i32 %i.avo, %i.ayj         ; 2 uses
  %i.ayl = select i1 %.not813, i32 0, i32 %i.ayk  ; 2 uses
  %i.aym = icmp sgt i32 %i.ayl, 0
  br i1 %i.aym, label %.lr.ph.i860.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867

.lr.ph.i860.preheader:                            ; preds = %bb.gx
  %i.ayn = zext nneg i32 %i.ayl to i64
  %notmask814 = shl nsw i64 -1, %i.ayn
  %i.ayo = xor i64 %notmask814, -1
  %i.ayp = and i64 %.sroa.27.1, %i.ayo
  br label %.lr.ph.i860

.lr.ph.i860:                                      ; preds = %.lr.ph.i860.preheader, %bb.hb
  %.sroa.182.17 = phi i32 [ %.sroa.182.18, %bb.hb ], [ %.sroa.182.16, %.lr.ph.i860.preheader ]
  %.sroa.131.17 = phi i32 [ %.sroa.131.18, %bb.hb ], [ %.sroa.131.16, %.lr.ph.i860.preheader ] ; 3 uses
  %.sroa.97.17 = phi i32 [ %.sroa.97.18, %bb.hb ], [ %.sroa.97.16, %.lr.ph.i860.preheader ] ; 3 uses
  %.sroa.21.17 = phi i32 [ %.sroa.21.18, %bb.hb ], [ %.sroa.21.16, %.lr.ph.i860.preheader ] ; 4 uses
  %.032.i861 = phi i32 [ %i.azd, %bb.hb ], [ %i.ayk, %.lr.ph.i860.preheader ] ; 2 uses
  %.02731.i862 = phi i64 [ %i.azc, %bb.hb ], [ %i.ayp, %.lr.ph.i860.preheader ] ; 2 uses
  %.not.i863 = icmp ult i32 %.sroa.21.17, 24030
  br i1 %.not.i863, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.i860
  %i.ayq = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !40
  %i.ays = load ptr, ptr %i.ayr, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ays(ptr noundef nonnull align 8 dereferenceable(8) %i.ayq, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.lr.ph.i860
  %i.ayt = sub nuw nsw i32 %.sroa.97.17, %.sroa.131.17
  %..0.i864 = call i32 @llvm.smin.i32(i32 %i.ayt, i32 %.032.i861) ; 3 uses
  %i.ayu = zext nneg i32 %..0.i864 to i64         ; 2 uses
  %notmask.i865 = shl nsw i64 -1, %i.ayu
  %i.ayv = xor i64 %notmask.i865, -1
  %i.ayw = and i64 %.02731.i862, %i.ayv
  %i.ayx = zext nneg i32 %.sroa.131.17 to i64
  %i.ayy = shl nuw nsw i64 %i.ayw, %i.ayx
  %i.ayz = trunc nuw nsw i64 %i.ayy to i32
  %i.aza = or i32 %.sroa.182.17, %i.ayz           ; 3 uses
  %i.azb = add nuw nsw i32 %..0.i864, %.sroa.131.17 ; 2 uses
  %i.azc = lshr i64 %.02731.i862, %i.ayu
  %i.azd = sub nsw i32 %.032.i861, %..0.i864      ; 2 uses
  %.not30.i866 = icmp slt i32 %i.azb, %.sroa.97.17
  br i1 %.not30.i866, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aze = trunc i32 %i.aza to i8
  %i.azf = add nuw i32 %.sroa.21.17, 1
  %i.azg = zext i32 %.sroa.21.17 to i64
  %i.azh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.azg
  store i8 %i.aze, ptr %i.azh, align 1, !tbaa !21
  %i.azi = icmp eq i32 %i.aza, 255
  %i.azj = select i1 %i.azi, i32 7, i32 8
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.sroa.182.18 = phi i32 [ %i.aza, %bb.gz ], [ 0, %bb.ha ] ; 2 uses
  %.sroa.131.18 = phi i32 [ %i.azb, %bb.gz ], [ 0, %bb.ha ] ; 2 uses
  %.sroa.97.18 = phi i32 [ %.sroa.97.17, %bb.gz ], [ %i.azj, %bb.ha ] ; 2 uses
  %.sroa.21.18 = phi i32 [ %.sroa.21.17, %bb.gz ], [ %i.azf, %bb.ha ] ; 2 uses
  %i.azk = icmp sgt i32 %i.azd, 0
  br i1 %i.azk, label %.lr.ph.i860, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867: ; preds = %bb.hb, %bb.gx
  %.sroa.182.19 = phi i32 [ %.sroa.182.16, %bb.gx ], [ %.sroa.182.18, %bb.hb ] ; 2 uses
  %.sroa.131.19 = phi i32 [ %.sroa.131.16, %bb.gx ], [ %.sroa.131.18, %bb.hb ] ; 2 uses
  %.sroa.97.19 = phi i32 [ %.sroa.97.16, %bb.gx ], [ %.sroa.97.18, %bb.hb ] ; 2 uses
  %.sroa.21.19 = phi i32 [ %.sroa.21.16, %bb.gx ], [ %.sroa.21.18, %bb.hb ] ; 2 uses
  %.not815 = icmp eq i32 %i.awj, 0
  %38 = shl i32 %i.awy, 30
  %39 = ashr i32 %38, 31
  %40 = add nsw i32 %39, %i.avo                   ; 2 uses
  %i.azl = select i1 %.not815, i32 0, i32 %40     ; 2 uses
  %i.azm = icmp sgt i32 %i.azl, 0
  br i1 %i.azm, label %.lr.ph.i868.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875

.lr.ph.i868.preheader:                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867
  %i.azn = zext nneg i32 %i.azl to i64
  %notmask816 = shl nsw i64 -1, %i.azn
  %i.azo = xor i64 %notmask816, -1
  %i.azp = and i64 %.sroa.33.1, %i.azo
  br label %.lr.ph.i868

.lr.ph.i868:                                      ; preds = %.lr.ph.i868.preheader, %bb.hf
  %.sroa.182.20 = phi i32 [ %.sroa.182.21, %bb.hf ], [ %.sroa.182.19, %.lr.ph.i868.preheader ]
  %.sroa.131.20 = phi i32 [ %.sroa.131.21, %bb.hf ], [ %.sroa.131.19, %.lr.ph.i868.preheader ] ; 3 uses
  %.sroa.97.20 = phi i32 [ %.sroa.97.21, %bb.hf ], [ %.sroa.97.19, %.lr.ph.i868.preheader ] ; 3 uses
  %.sroa.21.20 = phi i32 [ %.sroa.21.21, %bb.hf ], [ %.sroa.21.19, %.lr.ph.i868.preheader ] ; 4 uses
  %.032.i869 = phi i32 [ %i.bad, %bb.hf ], [ %40, %.lr.ph.i868.preheader ] ; 2 uses
  %.02731.i870 = phi i64 [ %i.bac, %bb.hf ], [ %i.azp, %.lr.ph.i868.preheader ] ; 2 uses
  %.not.i871 = icmp ult i32 %.sroa.21.20, 24030
  br i1 %.not.i871, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph.i868
  %i.azq = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !40
  %i.azs = load ptr, ptr %i.azr, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.azs(ptr noundef nonnull align 8 dereferenceable(8) %i.azq, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %.lr.ph.i868
  %i.azt = sub nuw nsw i32 %.sroa.97.20, %.sroa.131.20
  %..0.i872 = call i32 @llvm.smin.i32(i32 %i.azt, i32 %.032.i869) ; 3 uses
  %i.azu = zext nneg i32 %..0.i872 to i64         ; 2 uses
  %notmask.i873 = shl nsw i64 -1, %i.azu
  %i.azv = xor i64 %notmask.i873, -1
  %i.azw = and i64 %.02731.i870, %i.azv
  %i.azx = zext nneg i32 %.sroa.131.20 to i64
  %i.azy = shl nuw nsw i64 %i.azw, %i.azx
  %i.azz = trunc nuw nsw i64 %i.azy to i32
  %i.baa = or i32 %.sroa.182.20, %i.azz           ; 3 uses
  %i.bab = add nuw nsw i32 %..0.i872, %.sroa.131.20 ; 2 uses
  %i.bac = lshr i64 %.02731.i870, %i.azu
  %i.bad = sub nsw i32 %.032.i869, %..0.i872      ; 2 uses
  %.not30.i874 = icmp slt i32 %i.bab, %.sroa.97.20
  br i1 %.not30.i874, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bae = trunc i32 %i.baa to i8
  %i.baf = add nuw i32 %.sroa.21.20, 1
  %i.bag = zext i32 %.sroa.21.20 to i64
  %i.bah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bag
  store i8 %i.bae, ptr %i.bah, align 1, !tbaa !21
  %i.bai = icmp eq i32 %i.baa, 255
  %i.baj = select i1 %i.bai, i32 7, i32 8
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.sroa.182.21 = phi i32 [ %i.baa, %bb.hd ], [ 0, %bb.he ] ; 2 uses
  %.sroa.131.21 = phi i32 [ %i.bab, %bb.hd ], [ 0, %bb.he ] ; 2 uses
  %.sroa.97.21 = phi i32 [ %.sroa.97.20, %bb.hd ], [ %i.baj, %bb.he ] ; 2 uses
  %.sroa.21.21 = phi i32 [ %.sroa.21.20, %bb.hd ], [ %i.baf, %bb.he ] ; 2 uses
  %i.bak = icmp sgt i32 %i.bad, 0
  br i1 %i.bak, label %.lr.ph.i868, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875: ; preds = %bb.hf, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867
  %.sroa.182.22 = phi i32 [ %.sroa.182.19, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867 ], [ %.sroa.182.21, %bb.hf ] ; 2 uses
  %.sroa.131.22 = phi i32 [ %.sroa.131.19, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867 ], [ %.sroa.131.21, %bb.hf ] ; 2 uses
  %.sroa.97.22 = phi i32 [ %.sroa.97.19, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867 ], [ %.sroa.97.21, %bb.hf ] ; 2 uses
  %.sroa.21.22 = phi i32 [ %.sroa.21.19, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit867 ], [ %.sroa.21.21, %bb.hf ] ; 2 uses
  %i.bal = and i32 %.sroa.41.4, 4
  %.not817 = icmp eq i32 %i.bal, 0
  %41 = shl i32 %i.awy, 29
  %42 = ashr i32 %41, 31
  %43 = add nsw i32 %42, %i.avo                   ; 2 uses
  %i.bam = select i1 %.not817, i32 0, i32 %43     ; 2 uses
  %i.ban = icmp sgt i32 %i.bam, 0
  br i1 %i.ban, label %.lr.ph.i876.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883

.lr.ph.i876.preheader:                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875
  %i.bao = zext nneg i32 %i.bam to i64
  %notmask818 = shl nsw i64 -1, %i.bao
  %i.bap = xor i64 %notmask818, -1
  %i.baq = and i64 %.sroa.39.2, %i.bap
  br label %.lr.ph.i876

.lr.ph.i876:                                      ; preds = %.lr.ph.i876.preheader, %bb.hj
  %.sroa.182.23 = phi i32 [ %.sroa.182.24, %bb.hj ], [ %.sroa.182.22, %.lr.ph.i876.preheader ]
  %.sroa.131.23 = phi i32 [ %.sroa.131.24, %bb.hj ], [ %.sroa.131.22, %.lr.ph.i876.preheader ] ; 3 uses
  %.sroa.97.23 = phi i32 [ %.sroa.97.24, %bb.hj ], [ %.sroa.97.22, %.lr.ph.i876.preheader ] ; 3 uses
  %.sroa.21.23 = phi i32 [ %.sroa.21.24, %bb.hj ], [ %.sroa.21.22, %.lr.ph.i876.preheader ] ; 4 uses
  %.032.i877 = phi i32 [ %i.bbe, %bb.hj ], [ %43, %.lr.ph.i876.preheader ] ; 2 uses
  %.02731.i878 = phi i64 [ %i.bbd, %bb.hj ], [ %i.baq, %.lr.ph.i876.preheader ] ; 2 uses
  %.not.i879 = icmp ult i32 %.sroa.21.23, 24030
  br i1 %.not.i879, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph.i876
  %i.bar = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !40
  %i.bat = load ptr, ptr %i.bas, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bat(ptr noundef nonnull align 8 dereferenceable(8) %i.bar, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.lr.ph.i876
  %i.bau = sub nuw nsw i32 %.sroa.97.23, %.sroa.131.23
  %..0.i880 = call i32 @llvm.smin.i32(i32 %i.bau, i32 %.032.i877) ; 3 uses
  %i.bav = zext nneg i32 %..0.i880 to i64         ; 2 uses
  %notmask.i881 = shl nsw i64 -1, %i.bav
  %i.baw = xor i64 %notmask.i881, -1
  %i.bax = and i64 %.02731.i878, %i.baw
  %i.bay = zext nneg i32 %.sroa.131.23 to i64
  %i.baz = shl nuw nsw i64 %i.bax, %i.bay
  %i.bba = trunc nuw nsw i64 %i.baz to i32
  %i.bbb = or i32 %.sroa.182.23, %i.bba           ; 3 uses
  %i.bbc = add nuw nsw i32 %..0.i880, %.sroa.131.23 ; 2 uses
  %i.bbd = lshr i64 %.02731.i878, %i.bav
  %i.bbe = sub nsw i32 %.032.i877, %..0.i880      ; 2 uses
  %.not30.i882 = icmp slt i32 %i.bbc, %.sroa.97.23
  br i1 %.not30.i882, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bbf = trunc i32 %i.bbb to i8
  %i.bbg = add nuw i32 %.sroa.21.23, 1
  %i.bbh = zext i32 %.sroa.21.23 to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bbh
  store i8 %i.bbf, ptr %i.bbi, align 1, !tbaa !21
  %i.bbj = icmp eq i32 %i.bbb, 255
  %i.bbk = select i1 %i.bbj, i32 7, i32 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.sroa.182.24 = phi i32 [ %i.bbb, %bb.hh ], [ 0, %bb.hi ] ; 2 uses
  %.sroa.131.24 = phi i32 [ %i.bbc, %bb.hh ], [ 0, %bb.hi ] ; 2 uses
  %.sroa.97.24 = phi i32 [ %.sroa.97.23, %bb.hh ], [ %i.bbk, %bb.hi ] ; 2 uses
  %.sroa.21.24 = phi i32 [ %.sroa.21.23, %bb.hh ], [ %i.bbg, %bb.hi ] ; 2 uses
  %i.bbl = icmp sgt i32 %i.bbe, 0
  br i1 %i.bbl, label %.lr.ph.i876, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883: ; preds = %bb.hj, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875
  %.sroa.182.25 = phi i32 [ %.sroa.182.22, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875 ], [ %.sroa.182.24, %bb.hj ] ; 2 uses
  %.sroa.131.25 = phi i32 [ %.sroa.131.22, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875 ], [ %.sroa.131.24, %bb.hj ] ; 2 uses
  %.sroa.97.25 = phi i32 [ %.sroa.97.22, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875 ], [ %.sroa.97.24, %bb.hj ] ; 2 uses
  %.sroa.21.25 = phi i32 [ %.sroa.21.22, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit875 ], [ %.sroa.21.24, %bb.hj ] ; 2 uses
  %.not819 = icmp eq i32 %i.awo, 0
  %44 = shl i32 %i.awy, 28
  %45 = ashr i32 %44, 31
  %46 = add nsw i32 %45, %i.avo                   ; 2 uses
  %i.bbm = select i1 %.not819, i32 0, i32 %46     ; 2 uses
  %i.bbn = icmp sgt i32 %i.bbm, 0
  br i1 %i.bbn, label %.lr.ph.i884.preheader, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit891

.lr.ph.i884.preheader:                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883
  %i.bbo = zext nneg i32 %i.bbm to i64
  %notmask820 = shl nsw i64 -1, %i.bbo
  %i.bbp = xor i64 %notmask820, -1
  %i.bbq = and i64 %.sroa.45.1, %i.bbp
  br label %.lr.ph.i884

.lr.ph.i884:                                      ; preds = %.lr.ph.i884.preheader, %bb.hn
  %.sroa.182.26 = phi i32 [ %.sroa.182.27, %bb.hn ], [ %.sroa.182.25, %.lr.ph.i884.preheader ]
  %.sroa.131.26 = phi i32 [ %.sroa.131.27, %bb.hn ], [ %.sroa.131.25, %.lr.ph.i884.preheader ] ; 3 uses
  %.sroa.97.26 = phi i32 [ %.sroa.97.27, %bb.hn ], [ %.sroa.97.25, %.lr.ph.i884.preheader ] ; 3 uses
  %.sroa.21.26 = phi i32 [ %.sroa.21.27, %bb.hn ], [ %.sroa.21.25, %.lr.ph.i884.preheader ] ; 4 uses
  %.032.i885 = phi i32 [ %i.bce, %bb.hn ], [ %46, %.lr.ph.i884.preheader ] ; 2 uses
  %.02731.i886 = phi i64 [ %i.bcd, %bb.hn ], [ %i.bbq, %.lr.ph.i884.preheader ] ; 2 uses
  %.not.i887 = icmp ult i32 %.sroa.21.26, 24030
  br i1 %.not.i887, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph.i884
  %i.bbr = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !40
  %i.bbt = load ptr, ptr %i.bbs, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bbt(ptr noundef nonnull align 8 dereferenceable(8) %i.bbr, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 499, ptr noundef nonnull @.str.3), !inline_history !74
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %.lr.ph.i884
  %i.bbu = sub nuw nsw i32 %.sroa.97.26, %.sroa.131.26
  %..0.i888 = call i32 @llvm.smin.i32(i32 %i.bbu, i32 %.032.i885) ; 3 uses
  %i.bbv = zext nneg i32 %..0.i888 to i64         ; 2 uses
  %notmask.i889 = shl nsw i64 -1, %i.bbv
  %i.bbw = xor i64 %notmask.i889, -1
  %i.bbx = and i64 %.02731.i886, %i.bbw
  %i.bby = zext nneg i32 %.sroa.131.26 to i64
  %i.bbz = shl nuw nsw i64 %i.bbx, %i.bby
  %i.bca = trunc nuw nsw i64 %i.bbz to i32
  %i.bcb = or i32 %.sroa.182.26, %i.bca           ; 3 uses
  %i.bcc = add nuw nsw i32 %..0.i888, %.sroa.131.26 ; 2 uses
  %i.bcd = lshr i64 %.02731.i886, %i.bbv
  %i.bce = sub nsw i32 %.032.i885, %..0.i888      ; 2 uses
  %.not30.i890 = icmp slt i32 %i.bcc, %.sroa.97.26
  br i1 %.not30.i890, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bcf = trunc i32 %i.bcb to i8
  %i.bcg = add nuw i32 %.sroa.21.26, 1
  %i.bch = zext i32 %.sroa.21.26 to i64
  %i.bci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bch
  store i8 %i.bcf, ptr %i.bci, align 1, !tbaa !21
  %i.bcj = icmp eq i32 %i.bcb, 255
  %i.bck = select i1 %i.bcj, i32 7, i32 8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.sroa.182.27 = phi i32 [ %i.bcb, %bb.hl ], [ 0, %bb.hm ] ; 2 uses
  %.sroa.131.27 = phi i32 [ %i.bcc, %bb.hl ], [ 0, %bb.hm ] ; 2 uses
  %.sroa.97.27 = phi i32 [ %.sroa.97.26, %bb.hl ], [ %i.bck, %bb.hm ] ; 2 uses
  %.sroa.21.27 = phi i32 [ %.sroa.21.26, %bb.hl ], [ %i.bcg, %bb.hm ] ; 2 uses
  %i.bcl = icmp sgt i32 %i.bce, 0
  br i1 %i.bcl, label %.lr.ph.i884, label %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit891, !llvm.loop !75

_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit891: ; preds = %bb.hn, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883
  %.sroa.182.1 = phi i32 [ %.sroa.182.25, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883 ], [ %.sroa.182.27, %bb.hn ] ; 5 uses
  %.sroa.131.1 = phi i32 [ %.sroa.131.25, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883 ], [ %.sroa.131.27, %bb.hn ] ; 5 uses
  %.sroa.97.1 = phi i32 [ %.sroa.97.25, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883 ], [ %.sroa.97.27, %bb.hn ] ; 5 uses
  %.sroa.21.11420 = phi i32 [ %.sroa.21.25, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit883 ], [ %.sroa.21.27, %bb.hn ] ; 5 uses
  %i.bcm = icmp sgt i32 %i.avo, 1                 ; 2 uses
  %or.cond = and i1 %i.ami, %i.bcm
  br i1 %or.cond, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit891
  %i.bcn = call i32 @llvm.smin.i32(i32 %i.amh, i32 %i.avp)
  %i.bco = icmp sgt i32 %i.bcn, 2
  call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %9, i1 noundef zeroext %i.bco)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %_ZN4ojph5localL11ms_encode64EPNS0_9ms_structEmi.exit891
  %i.bcp = icmp sgt i32 %.sroa.0535.4, 3          ; 2 uses
  %i.bcq = icmp sgt i32 %i.avo, 3
  %or.cond3 = and i1 %i.bcp, %i.bcq
  br i1 %or.cond3, label %bb.hq, label %bb.jb

bb.hq:                                            ; preds = %bb.hp
  %i.bcr = zext nneg i32 %i.amg to i64
  %i.bcs = getelementptr [6 x i8], ptr @_ZN4ojph5localL8uvlc_tblE, i64 %i.bcr ; 6 uses
  %i.bct = getelementptr i8, ptr %i.bcs, i64 -17
  %i.bcu = load i8, ptr %i.bct, align 1, !tbaa !20 ; 2 uses
  %.not3738.i892 = icmp eq i8 %i.bcu, 0
  br i1 %.not3738.i892, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit903, label %.lr.ph.i893.preheader

.lr.ph.i893.preheader:                            ; preds = %bb.hq
  %i.bcv = zext i8 %i.bcu to i32
  %i.bcw = getelementptr i8, ptr %i.bcs, i64 -18
  %i.bcx = load i8, ptr %i.bcw, align 2, !tbaa !19
  %i.bcy = zext i8 %i.bcx to i32
  br label %.lr.ph.i893

.lr.ph.i893:                                      ; preds = %.lr.ph.i893.preheader, %bb.hw
  %.040.i894 = phi i32 [ %i.bdp, %bb.hw ], [ %i.bcv, %.lr.ph.i893.preheader ] ; 3 uses
  %.03239.i895 = phi i32 [ %i.bdq, %bb.hw ], [ %i.bcy, %.lr.ph.i893.preheader ] ; 2 uses
  %i.bcz = load i32, ptr %i.m, align 8, !tbaa !37
  %i.bda = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i896 = icmp ult i32 %i.bcz, %i.bda
  br i1 %.not.i896, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph.i893
  %i.bdb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bdc = load ptr, ptr %i.bdb, align 8, !tbaa !40
  %i.bdd = load ptr, ptr %i.bdc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bdd(ptr noundef nonnull align 8 dereferenceable(8) %i.bdb, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %.lr.ph.i893
  %i.bde = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
  %narrow.i897 = sub nuw nsw i8 8, %i.bde
  %i.bdf = zext nneg i8 %narrow.i897 to i32
  %i.bdg = load i32, ptr %i.o, align 8, !tbaa !43 ; 3 uses
  %i.bdh = sub nsw i32 %i.bdf, %i.bdg             ; 2 uses
  %i.bdi = call i32 @llvm.smin.i32(i32 %i.bdh, i32 %.040.i894) ; 4 uses
  %notmask.i898 = shl nsw i32 -1, %i.bdi
  %i.bdj = xor i32 %notmask.i898, -1
  %i.bdk = and i32 %.03239.i895, %i.bdj
  %i.bdl = shl i32 %i.bdk, %i.bdg
  %i.bdm = load i32, ptr %i.p, align 4, !tbaa !44
  %i.bdn = or i32 %i.bdl, %i.bdm                  ; 3 uses
  store i32 %i.bdn, ptr %i.p, align 4, !tbaa !44
  %i.bdo = add nsw i32 %i.bdi, %i.bdg
  store i32 %i.bdo, ptr %i.o, align 8, !tbaa !43
  %i.bdp = sub nsw i32 %.040.i894, %i.bdi         ; 2 uses
  %i.bdq = lshr i32 %.03239.i895, %i.bdi
  %.not34.i899 = icmp sgt i32 %i.bdh, %.040.i894
  br i1 %.not34.i899, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bdr = trunc nuw i8 %i.bde to i1
  %.not35.i900 = icmp ne i32 %i.bdn, 127
  %or.cond.not.i901 = select i1 %i.bdr, i1 %.not35.i900, i1 false
  br i1 %or.cond.not.i901, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  store i8 0, ptr %i.q, align 8, !tbaa !36
  br label %bb.hw, !llvm.loop !1

bb.hv:                                            ; preds = %bb.ht
  %i.bds = trunc i32 %i.bdn to i8
  %i.bdt = load ptr, ptr %10, align 8, !tbaa !35
  %i.bdu = load i32, ptr %i.m, align 8, !tbaa !37
  %i.bdv = zext i32 %i.bdu to i64
  %i.bdw = sub nsw i64 0, %i.bdv
  %i.bdx = getelementptr inbounds i8, ptr %i.bdt, i64 %i.bdw
  store i8 %i.bds, ptr %i.bdx, align 1, !tbaa !21
  %i.bdy = load i32, ptr %i.m, align 8, !tbaa !37
  %i.bdz = add i32 %i.bdy, 1
  store i32 %i.bdz, ptr %i.m, align 8, !tbaa !37
  %i.bea = load i32, ptr %i.p, align 4, !tbaa !44
  %i.beb = icmp sgt i32 %i.bea, 143
  %i.bec = zext i1 %i.beb to i8
  store i8 %i.bec, ptr %i.q, align 8, !tbaa !36
  store i32 0, ptr %i.p, align 4, !tbaa !44
  store i32 0, ptr %i.o, align 8, !tbaa !43
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %bb.hs
  %.not37.i902 = icmp eq i32 %i.bdp, 0
  br i1 %.not37.i902, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit903, label %.lr.ph.i893

_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit903: ; preds = %bb.hw, %bb.hq
  %i.bed = zext nneg i32 %i.avp to i64
  %i.bee = getelementptr [6 x i8], ptr @_ZN4ojph5localL8uvlc_tblE, i64 %i.bed ; 6 uses
  %i.bef = getelementptr i8, ptr %i.bee, i64 -11
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !20 ; 2 uses
  %.not3738.i904 = icmp eq i8 %i.beg, 0
  br i1 %.not3738.i904, label %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit915, label %.lr.ph.i905.preheader

.lr.ph.i905.preheader:                            ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_10vlc_structEii.exit903
  %i.beh = zext i8 %i.beg to i32
  %i.bei = getelementptr i8, ptr %i.bee, i64 -12
  %i.bej = load i8, ptr %i.bei, align 2, !tbaa !19
  %i.bek = zext i8 %i.bej to i32
  br label %.lr.ph.i905

.lr.ph.i905:                                      ; preds = %.lr.ph.i905.preheader, %bb.ic
  %.040.i906 = phi i32 [ %i.bfb, %bb.ic ], [ %i.beh, %.lr.ph.i905.preheader ] ; 3 uses
  %.03239.i907 = phi i32 [ %i.bfc, %bb.ic ], [ %i.bek, %.lr.ph.i905.preheader ] ; 2 uses
  %i.bel = load i32, ptr %i.m, align 8, !tbaa !37
  %i.bem = load i32, ptr %i.n, align 4, !tbaa !38
  %.not.i908 = icmp ult i32 %i.bel, %i.bem
  br i1 %.not.i908, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %.lr.ph.i905
  %i.ben = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !40
  %i.bep = load ptr, ptr %i.beo, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bep(ptr noundef nonnull align 8 dereferenceable(8) %i.ben, i32 noundef 131074, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 384, ptr noundef nonnull @.str.1), !inline_history !0
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %.lr.ph.i905
  %i.beq = load i8, ptr %i.q, align 8, !tbaa !36, !range !41, !noundef !42 ; 2 uses
end_hunk_6
