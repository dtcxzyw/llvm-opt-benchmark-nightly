Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/handshake_server?download=true
inline.NumInlined: 635
inline.NumDeleted: 334
begin_hunk_0_@_ZN4bssl20ssl_server_handshakeEPNS_13SSL_HANDSHAKEE:bb.a
  %i.aek = call noundef zeroext i1 %i.aej(ptr noundef nonnull %i.aeg, ptr noundef nonnull %15) #7, !inline_history !165
  br i1 %i.aek, label %bb.kw, label %_ZN4bsslL27do_read_client_key_exchangeEPNS_13SSL_HANDSHAKEE.exit

bb.kw:                                            ; preds = %bb.kv
  %i.ael = call noundef zeroext i1 @_ZN4bssl22ssl_check_message_typeEP6ssl_stRKNS_10SSLMessageEi(ptr noundef nonnull %i.aeg, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 16) #7
  br i1 %i.ael, label %bb.kx, label %_ZN4bsslL27do_read_client_key_exchangeEPNS_13SSL_HANDSHAKEE.exit

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !279
  %i.aem = load ptr, ptr %i.an, align 8, !tbaa !331 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 20
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !329 ; 5 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 24
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !330
  %i.aer = and i32 %i.aeq, 4
  %.not.i95 = icmp eq i32 %i.aer, 0               ; 2 uses
  br i1 %.not.i95, label %bb.li, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  %i.aes = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %16, ptr noundef nonnull %17) #7
  %.not96.i = icmp eq i32 %i.aes, 0
  br i1 %.not96.i, label %bb.lb, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.aet = and i32 %i.aeo, 4
  %.not97.i = icmp eq i32 %i.aet, 0
  br i1 %.not97.i, label %bb.lc, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aeu = call i64 @CBS_len(ptr noundef nonnull %16) #7
  %.not98.i = icmp eq i64 %i.aeu, 0
  br i1 %.not98.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.ky
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 1323) #7
  br label %.critedge117.i

bb.lc:                                            ; preds = %bb.la, %bb.kz
  %i.aev = call i64 @CBS_len(ptr noundef nonnull %17) #7
  %i.aew = icmp ugt i64 %i.aev, 128
  br i1 %i.aew, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.aex = call i32 @CBS_contains_zero_byte(ptr noundef nonnull %17) #7
  %.not99.i96 = icmp eq i32 %i.aex, 0
  br i1 %.not99.i96, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 136, ptr noundef nonnull @.str, i32 noundef 1330) #7
  br label %.critedge117.i

bb.lf:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.aey = call i32 @CBS_strdup(ptr noundef nonnull %17, ptr noundef nonnull %i.c) #7
  %.not100.not.i = icmp eq i32 %i.aey, 0
  br i1 %.not100.not.i, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aez = load ptr, ptr %i.ad, align 8, !tbaa !336
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 128 ; 2 uses
  %i.afb = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.afc = load ptr, ptr %i.afa, align 8, !tbaa !20 ; 2 uses
  store ptr %i.afb, ptr %i.afa, align 8, !tbaa !20
  %.not.i.i.i97 = icmp eq ptr %i.afc, null
  br i1 %.not.i.i.i97, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.thread.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @OPENSSL_free(ptr noundef nonnull %i.afc) #7
  br label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.thread.i

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.thread.i: ; preds = %bb.lh, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  br label %bb.li

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.i: ; preds = %bb.lf
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.aeg, i32 noundef 2, i32 noundef 80) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  br label %bb.my

bb.li:                                            ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.thread.i, %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.afd = and i32 %i.aeo, 1
  %.not101.i = icmp eq i32 %i.afd, 0
  br i1 %.not101.i, label %bb.lw, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #7
  %i.afe = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %16, ptr noundef nonnull %19) #7
  %.not106.i = icmp eq i32 %i.afe, 0
  br i1 %.not106.i, label %.thread.i98, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.aff = call i64 @CBS_len(ptr noundef nonnull %16) #7
  %.not107.i = icmp eq i64 %i.aff, 0
  br i1 %.not107.i, label %bb.ll, label %.thread.i98

.thread.i98:                                      ; preds = %bb.lk, %bb.lj
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 1349) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.aeg, i32 noundef 2, i32 noundef 50) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  br label %bb.mx

bb.ll:                                            ; preds = %bb.lk
  %i.afg = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.afh = call i32 @EVP_PKEY_size(ptr noundef %i.afg) #7 ; 2 uses
  %i.afi = sext i32 %i.afh to i64                 ; 3 uses
  call void @OPENSSL_free(ptr noundef null) #7
  %i.afj = icmp eq i32 %i.afh, 0
  br i1 %i.afj, label %.loopexit.loopexit.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.afk = call ptr @OPENSSL_malloc(i64 noundef %i.afi) #7 ; 2 uses
  %i.afl = icmp eq ptr %i.afk, null
  br i1 %i.afl, label %.thread136.i, label %.loopexit.loopexit.i

.thread136.i:                                     ; preds = %bb.lm
  call void @OPENSSL_free(ptr noundef null) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  br label %bb.mx

.loopexit.loopexit.i:                             ; preds = %bb.lm, %bb.ll
  %.sroa.0.0.ph = phi ptr [ null, %bb.ll ], [ %i.afk, %bb.lm ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.afm = load ptr, ptr %19, align 8, !tbaa !184
  %i.afn = load i64, ptr %i.ap, align 8, !tbaa !185
  %i.afo = call noundef i32 @_ZN4bssl23ssl_private_key_decryptEPNS_13SSL_HANDSHAKEEPhPmmNS_4SpanIKhEE(ptr noundef nonnull %0, ptr noundef %.sroa.0.0.ph, ptr noundef nonnull %i.d, i64 noundef %i.afi, ptr %i.afm, i64 %i.afn) #7
  switch i32 %i.afo, label %bb.lo [
    i32 1, label %bb.ln
    i32 2, label %.thread139.i
  ]

bb.ln:                                            ; preds = %.loopexit.loopexit.i
  br label %.thread139.i

bb.lo:                                            ; preds = %.loopexit.loopexit.i
  %i.afp = load i64, ptr %i.d, align 8, !tbaa !278
  %.not108.i = icmp eq i64 %i.afp, %i.afi
  br i1 %.not108.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 138, ptr noundef nonnull @.str, i32 noundef 1375) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.aeg, i32 noundef 2, i32 noundef 51) #7
  br label %.thread139.i

bb.lq:                                            ; preds = %bb.lo
  %i.afq = call noundef zeroext i1 @_ZN4bssl5ArrayIhE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 noundef 48)
  br i1 %i.afq, label %bb.lr, label %.thread139.i

bb.lr:                                            ; preds = %bb.lq
  %i.afr = load ptr, ptr %18, align 8, !tbaa !144
  %i.afs = load i64, ptr %i.aq, align 8, !tbaa !143
  %i.aft = call i32 @RAND_bytes(ptr noundef %i.afr, i64 noundef %i.afs) #7
  %.not109.i = icmp eq i32 %i.aft, 0
  br i1 %.not109.i, label %.thread139.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.afu = load i64, ptr %i.d, align 8, !tbaa !278 ; 3 uses
  %i.afv = load i64, ptr %i.aq, align 8, !tbaa !143 ; 4 uses
  %i.afw = add i64 %i.afv, 11
  %i.afx = icmp ult i64 %i.afu, %i.afw
  br i1 %i.afx, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 138, ptr noundef nonnull @.str, i32 noundef 1392) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.aeg, i32 noundef 2, i32 noundef 51) #7
  br label %.thread139.i

bb.lu:                                            ; preds = %bb.ls
  %i.afy = sub i64 %i.afu, %i.afv                 ; 2 uses
  %i.afz = load i8, ptr %.sroa.0.0.ph, align 1, !tbaa !141
  %i.aga = zext i8 %i.afz to i64
  %i.agb = add nsw i64 %i.aga, -1
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 1
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !141
  %i.age = xor i8 %i.agd, 2
  %i.agf = zext i8 %i.age to i64
  %i.agg = add nsw i64 %i.agf, -1
  %.neg.i.i.i.i.i148.i = and i64 %i.agg, %i.agb
  %i.agh = ashr i64 %.neg.i.i.i.i.i148.i, 63
  %i.agi = trunc nsw i64 %i.agh to i32
  %i.agj = and i32 %i.agi, 255                    ; 3 uses
  %i.agk = add i64 %i.afy, -1                     ; 3 uses
  %i.agl = icmp ugt i64 %i.agk, 2
  br i1 %i.agl, label %.lr.ph.i.preheader, label %._crit_edge.i100

.lr.ph.i.preheader:                               ; preds = %bb.lu
  %i.agm = add i64 %i.afu, -3
  %i.agn = sub i64 %i.agm, %i.afv                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.agn, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.agn, -8                     ; 3 uses
  %i.ago = or disjoint i64 %n.vec, 2
  %65 = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.agj, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %65, %vector.ph ], [ %68, %vector.body ]
  %vec.phi219 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %69, %vector.body ]
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 %index ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 2
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 6
  %wide.load = load <4 x i8>, ptr %i.agq, align 1, !tbaa !141
  %wide.load220 = load <4 x i8>, ptr %i.agr, align 1, !tbaa !141
  %i.ags = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.agt = icmp eq <4 x i8> %wide.load220, zeroinitializer
  %66 = select <4 x i1> %i.ags, <4 x i32> splat (i32 -256), <4 x i32> splat (i32 -1)
  %67 = select <4 x i1> %i.agt, <4 x i32> splat (i32 -256), <4 x i32> splat (i32 -1)
  %68 = and <4 x i32> %66, %vec.phi               ; 2 uses
  %69 = and <4 x i32> %67, %vec.phi219            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.agu = icmp eq i64 %index.next, %n.vec
  br i1 %i.agu, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %69, %68
  %70 = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.agn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i100, label %.lr.ph.i.preheader223

.lr.ph.i.preheader223:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.093153.i.ph = phi i64 [ 2, %.lr.ph.i.preheader ], [ %i.ago, %middle.block ]
  %.094152.i.ph = phi i32 [ %i.agj, %.lr.ph.i.preheader ], [ %70, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i100:                                 ; preds = %.lr.ph.i, %middle.block, %bb.lu
  %.094.lcssa.i = phi i32 [ %i.agj, %bb.lu ], [ %70, %middle.block ], [ %79, %.lr.ph.i ]
  %.not159.i = icmp eq i64 %i.afv, 0
  br i1 %.not159.i, label %._crit_edge158.i, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %._crit_edge.i100
  %i.agv = getelementptr i8, ptr %.sroa.0.0.ph, i64 %i.afy ; 3 uses
  %71 = getelementptr i8, ptr %i.agv, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !141
  %73 = load i16, ptr %i.ar, align 4, !tbaa !287  ; 2 uses
  %74 = trunc i16 %73 to i8
  %isneg150.i = icmp eq i8 %72, %74
  %75 = lshr i16 %73, 8
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !141
  %76 = zext i8 %i.agw to i16
  %isneg149.i = icmp eq i16 %75, %76
  %77 = select i1 %isneg150.i, i1 %isneg149.i, i1 false
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 %i.agk
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !141
  %isneg.i = icmp eq i8 %i.agy, 0
  %78 = select i1 %77, i1 %isneg.i, i1 false
  %i.agz = zext nneg i32 %.094.lcssa.i to i64
  %i.aha = select i1 %78, i64 %i.agz, i64 0       ; 2 uses
  %i.ahb = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.aha) #9, !srcloc !371
  %i.ahc = xor i64 %i.aha, -1
  %i.ahd = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -256, 256) %i.ahc) #9, !srcloc !371
  br label %bb.lv

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader223, %.lr.ph.i
  %.093153.i = phi i64 [ %i.ahh, %.lr.ph.i ], [ %.093153.i.ph, %.lr.ph.i.preheader223 ] ; 2 uses
  %.094152.i = phi i32 [ %79, %.lr.ph.i ], [ %.094152.i.ph, %.lr.ph.i.preheader223 ]
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 %.093153.i
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !141
  %.not151.i = icmp eq i8 %i.ahf, 0
  %i.ahg = select i1 %.not151.i, i32 -256, i32 -1
  %79 = and i32 %i.ahg, %.094152.i                ; 2 uses
  %i.ahh = add nuw i64 %.093153.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ahh, %i.agk
  br i1 %exitcond.not.i, label %._crit_edge.i100, label %.lr.ph.i, !llvm.loop !167

bb.lv:                                            ; preds = %bb.lv, %.lr.ph157.i
  %.092155.i = phi i64 [ 0, %.lr.ph157.i ], [ %i.aht, %bb.lv ] ; 3 uses
  %i.ahi = getelementptr i8, ptr %i.agv, i64 %.092155.i
  %i.ahj = load i8, ptr %i.ahi, align 1, !tbaa !141
  %i.ahk = load ptr, ptr %18, align 8, !tbaa !144
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %.092155.i ; 2 uses
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !141
  %i.ahn = zext i8 %i.ahj to i64
  %i.aho = zext i8 %i.ahm to i64
  %i.ahp = and i64 %i.ahb, %i.ahn
  %i.ahq = and i64 %i.ahd, %i.aho
  %i.ahr = or i64 %i.ahq, %i.ahp
  %i.ahs = trunc nuw i64 %i.ahr to i8
  store i8 %i.ahs, ptr %i.ahl, align 1, !tbaa !141
  %i.aht = add nuw i64 %.092155.i, 1              ; 2 uses
  %i.ahu = load i64, ptr %i.aq, align 8, !tbaa !143
  %i.ahv = icmp ult i64 %i.aht, %i.ahu
  br i1 %i.ahv, label %bb.lv, label %._crit_edge158.i, !llvm.loop !168

.thread139.i:                                     ; preds = %bb.lt, %bb.lr, %bb.lq, %bb.lp, %bb.ln, %.loopexit.loopexit.i
  %.3.ph.i = phi i32 [ 0, %bb.lr ], [ 9, %bb.ln ], [ 0, %.loopexit.loopexit.i ], [ 0, %bb.lq ], [ 0, %bb.lt ], [ 0, %bb.lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @OPENSSL_free(ptr noundef %.sroa.0.0.ph) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  br label %bb.mx

._crit_edge158.i:                                 ; preds = %bb.lv, %._crit_edge.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @OPENSSL_free(ptr noundef nonnull %.sroa.0.0.ph) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  br label %bb.me

bb.lw:                                            ; preds = %bb.li
  %i.ahw = and i32 %i.aeo, 2
  %.not102.i = icmp eq i32 %i.ahw, 0
  br i1 %.not102.i, label %bb.mc, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #7
  %i.ahx = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %16, ptr noundef nonnull %20) #7
  %.not104.i = icmp eq i32 %i.ahx, 0
  br i1 %.not104.i, label %.critedge119.i, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.ahy = call i64 @CBS_len(ptr noundef nonnull %16) #7
  %.not105.i = icmp eq i64 %i.ahy, 0
  br i1 %.not105.i, label %bb.lz, label %.critedge119.i

.critedge119.i:                                   ; preds = %bb.ly, %bb.lx
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 1424) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.aeg, i32 noundef 2, i32 noundef 50) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  br label %bb.mx

bb.lz:                                            ; preds = %bb.ly
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i8 50, ptr %i.e, align 1, !tbaa !141
  %i.ahz = load ptr, ptr %i.as, align 8, !tbaa !356 ; 2 uses
  %i.aia = load ptr, ptr %20, align 8, !tbaa !184
  %i.aib = load i64, ptr %i.at, align 8, !tbaa !185
  %i.aic = load ptr, ptr %i.ahz, align 8, !tbaa !358
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 40
  %i.aie = load ptr, ptr %i.aid, align 8
  %i.aif = call noundef zeroext i1 %i.aie(ptr noundef nonnull align 8 dereferenceable(8) %i.ahz, ptr noundef nonnull %18, ptr noundef nonnull %i.e, ptr %i.aia, i64 %i.aib) #7, !inline_history !165
  br i1 %i.aif, label %bb.ma, label %.critedge.i102

bb.ma:                                            ; preds = %bb.lz
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aeg, i64 56
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !142
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 376
  %i.aij = load ptr, ptr %20, align 8, !tbaa !184
  %i.aik = load i64, ptr %i.at, align 8, !tbaa !185
  %i.ail = call noundef zeroext i1 @_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aii, ptr %i.aij, i64 %i.aik)
  br i1 %i.ail, label %bb.mb, label %.critedge.i102

.critedge.i102:                                   ; preds = %bb.ma, %bb.lz
  %i.aim = load i8, ptr %i.e, align 1, !tbaa !141
  %i.ain = zext i8 %i.aim to i32
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.aeg, i32 noundef 2, i32 noundef %i.ain) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  br label %bb.mx

bb.mb:                                            ; preds = %bb.ma
  %i.aio = load ptr, ptr %i.as, align 8, !tbaa !356 ; 4 uses
  store ptr null, ptr %i.as, align 8, !tbaa !356
  %.not.i.i130.i = icmp eq ptr %i.aio, null
  br i1 %.not.i.i130.i, label %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit.i, label %_ZN4bssl8internal7DeleterclINS_11SSLKeyShareEEEvPT_.exit.i.i.i

_ZN4bssl8internal7DeleterclINS_11SSLKeyShareEEEvPT_.exit.i.i.i: ; preds = %bb.mb
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !358
  %i.aiq = load ptr, ptr %i.aip, align 8
  call void %i.aiq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aio) #7, !inline_history !169
  call void @OPENSSL_free(ptr noundef nonnull %i.aio) #7
  br label %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit.i

_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit.i: ; preds = %_ZN4bssl8internal7DeleterclINS_11SSLKeyShareEEEvPT_.exit.i.i.i, %bb.mb
  %i.air = load ptr, ptr %i.au, align 8, !tbaa !356 ; 4 uses
  store ptr null, ptr %i.au, align 8, !tbaa !356
  %.not.i.i131.i = icmp eq ptr %i.air, null
  br i1 %.not.i.i131.i, label %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit133.i, label %_ZN4bssl8internal7DeleterclINS_11SSLKeyShareEEEvPT_.exit.i.i132.i

_ZN4bssl8internal7DeleterclINS_11SSLKeyShareEEEvPT_.exit.i.i132.i: ; preds = %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit.i
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !358
  %i.ait = load ptr, ptr %i.ais, align 8
  call void %i.ait(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.air) #7, !inline_history !169
  call void @OPENSSL_free(ptr noundef nonnull %i.air) #7
  br label %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit133.i

_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit133.i: ; preds = %_ZN4bssl8internal7DeleterclINS_11SSLKeyShareEEEvPT_.exit.i.i132.i, %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  br label %bb.me

bb.mc:                                            ; preds = %bb.lw
  %i.aiu = and i32 %i.aeo, 4
  %.not103.i = icmp eq i32 %i.aiu, 0
  br i1 %.not103.i, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 1442) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.aeg, i32 noundef 2, i32 noundef 40) #7
  br label %bb.mx

bb.me:                                            ; preds = %bb.mc, %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit133.i, %._crit_edge158.i
  br i1 %.not.i95, label %bb.mu, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.aiv = load ptr, ptr %i.ae, align 8, !tbaa !187
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 80
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !319 ; 2 uses
  %i.aiy = icmp eq ptr %i.aix, null
  br i1 %i.aiy, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 1451) #7
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.aeg, i32 noundef 2, i32 noundef 80) #7
  br label %bb.mx

bb.mh:                                            ; preds = %bb.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.aiz = load ptr, ptr %i.ad, align 8, !tbaa !336
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 128
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !20
  %i.ajc = call noundef i32 %i.aix(ptr noundef nonnull %i.aeg, ptr noundef %i.ajb, ptr noundef nonnull %i.f, i32 noundef 256) #7, !inline_history !165 ; 5 uses
  %i.ajd = icmp ugt i32 %i.ajc, 256
  br i1 %i.ajd, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 1461) #7
  br label %.thread142.sink.split.i

bb.mj:                                            ; preds = %bb.mh
  %i.aje = icmp eq i32 %i.ajc, 0
  br i1 %i.aje, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %bb.mj
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 195, ptr noundef nonnull @.str, i32 noundef 1466) #7
  br label %.thread142.sink.split.i

bb.ml:                                            ; preds = %bb.mj
  %i.ajf = and i32 %i.aeo, 4
  %.not110.i = icmp eq i32 %i.ajf, 0
  br i1 %.not110.i, label %_ZL14OPENSSL_memsetPvim.exit.i, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.ajg = zext nneg i32 %i.ajc to i64
  %i.ajh = call noundef zeroext i1 @_ZN4bssl5ArrayIhE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 noundef %i.ajg)
  br i1 %i.ajh, label %bb.mn, label %.thread142.i

bb.mn:                                            ; preds = %bb.mm
  %i.aji = load i64, ptr %i.aq, align 8, !tbaa !143 ; 2 uses
  %i.ajj = icmp eq i64 %i.aji, 0
  br i1 %i.ajj, label %_ZL14OPENSSL_memsetPvim.exit.i, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.ajk = load ptr, ptr %18, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr align 1 %i.ajk, i8 0, i64 %i.aji, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit.i

_ZL14OPENSSL_memsetPvim.exit.i:                   ; preds = %bb.mo, %bb.mn, %bb.ml
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #7
  call void @CBB_zero(ptr noundef nonnull align 8 dereferenceable(48) %21) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #7
  %i.ajl = add nuw nsw i32 %i.ajc, 4
  %i.ajm = zext nneg i32 %i.ajl to i64
  %i.ajn = load i64, ptr %i.aq, align 8, !tbaa !143
  %i.ajo = add i64 %i.ajn, %i.ajm
  %i.ajp = call i32 @CBB_init(ptr noundef nonnull %21, i64 noundef %i.ajo) #7
  %.not111.i = icmp eq i32 %i.ajp, 0
  br i1 %.not111.i, label %.thread146.i, label %bb.mp

bb.mp:                                            ; preds = %_ZL14OPENSSL_memsetPvim.exit.i
  %i.ajq = call i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %21, ptr noundef nonnull %22) #7
  %.not112.i = icmp eq i32 %i.ajq, 0
  br i1 %.not112.i, label %.thread146.i, label %bb.mq
end_hunk_0
begin_hunk_1_@_ZN4bssl19ssl_get_new_sessionEPNS_13SSL_HANDSHAKEE

declare i32 @RAND_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl18ssl_negotiate_alpnEPNS_13SSL_HANDSHAKEEPhPK22ssl_early_callback_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl13SSLTranscript8InitHashEtPK13ssl_cipher_st(ptr noundef nonnull align 8 dereferenceable(56), i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl16ssl_hash_messageEPNS_13SSL_HANDSHAKEERKNS_10SSLMessageE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN4bssl13SSLTranscript10FreeBufferEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @SSL_SESSION_free(ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl20ssl_get_current_timeEPK6ssl_stPNS_15OPENSSL_timevalE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !144
  tail call void @OPENSSL_free(ptr noundef %i.a) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZN4bssl5ArrayIhE4InitEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef %2) #7 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !144
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4bssl5ArrayIhE4InitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !143
  %i.f = icmp sgt i64 %2, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !385

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4bssl5ArrayIhE4InitEm.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.f, label %_ZN4bssl5ArrayIhE4InitEm.exit

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %1, align 1, !tbaa !141
  store i8 %i.h, ptr %i.c, align 1, !tbaa !141
  br label %_ZN4bssl5ArrayIhE4InitEm.exit

_ZN4bssl5ArrayIhE4InitEm.exit:                    ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.b
  %.07.i5 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.a ]
  ret i1 %.07.i5
}

declare noundef zeroext i1 @_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @CBB_add_u16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @CBB_add_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @SSL_CIPHER_get_protocol_id(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl26ssl_add_serverhello_tlsextEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl19ssl_add_message_cbbEP6ssl_stP6cbb_st(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl5ArrayIhE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !144
  tail call void @OPENSSL_free(ptr noundef %i.a) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef %1) #7 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !144
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.e, align 8, !tbaa !143
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %.07 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %.loopexit.loopexit ]
  ret i1 %.07
}

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @CBB_zero(ptr noundef) local_unnamed_addr #2

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl21ssl_output_cert_chainEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_add_u24_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_BUFFER_data(ptr noundef) local_unnamed_addr #2

declare i64 @CRYPTO_BUFFER_len(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl39ssl_cipher_requires_server_key_exchangeEPK13ssl_cipher_st(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @CBB_add_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl11SSLKeyShare6CreateEt(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.39") align 8, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @CBB_data(ptr noundef) local_unnamed_addr #2

declare i64 @CBB_len(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl14CBBFinishArrayEP6cbb_stPNS_5ArrayIhEE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_size(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_reserve(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl20ssl_private_key_signEPNS_13SSL_HANDSHAKEEPhPmmtNS_4SpanIKhEE(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef byval(%"class.bssl::Span") align 8) local_unnamed_addr #2

declare i32 @CBB_did_write(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl24tls12_add_verify_sigalgsEPKNS_13SSL_HANDSHAKEEP6cbb_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl22ssl_add_client_CA_listEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl20ssl_parse_cert_chainEPhPSt10unique_ptrI22stack_st_CRYPTO_BUFFERNS_8internal7DeleterEEPS1_I11evp_pkey_stS4_ES0_P6cbs_stP21crypto_buffer_pool_st(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl20ssl_verify_peer_certEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl23ssl_private_key_decryptEPNS_13SSL_HANDSHAKEEPhPmmNS_4SpanIKhEE(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl27tls1_generate_master_secretEPNS_13SSL_HANDSHAKEEPhNS_4SpanIKhEE(ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

declare void @CRYPTO_BUFFER_init_CBS(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl24ssl_cert_check_key_usageEPK6cbs_stNS_15ssl_key_usage_tE(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl23tls12_check_peer_sigalgEPKNS_13SSL_HANDSHAKEEPht(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl35tls1_get_legacy_signature_algorithmEPtPK11evp_pkey_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl21ssl_public_key_verifyEP6ssl_stNS_4SpanIKhEEtP11evp_pkey_stS4_(ptr noundef, ptr, i64, i16 noundef zeroext, ptr noundef, ptr noundef byval(%"class.bssl::Span") align 8) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl24tls1_change_cipher_stateEPNS_13SSL_HANDSHAKEE20evp_aead_direction_t(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl22tls1_verify_channel_idEPNS_13SSL_HANDSHAKEERKNS_10SSLMessageE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl16ssl_get_finishedEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl43tls1_record_handshake_hashes_for_channel_idEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl23ssl_session_rebase_timeEP6ssl_stP14ssl_session_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl15SSL_SESSION_dupEP14ssl_session_sti(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.14") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CBB_add_u32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl18ssl_encrypt_ticketEPNS_13SSL_HANDSHAKEEP6cbb_stPK14ssl_session_st(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl17ssl_send_finishedEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl16ssl_update_cacheEP6ssl_st(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4bssl8internal11DeleterImplI22stack_st_CRYPTO_BUFFERvE4FreeEPS2_ENUlPFvPvES5_E_8__invokeES7_S5_(ptr noundef %0, ptr noundef %1) #4 comdat align 2 {
bb.a:
  tail call void @CRYPTO_BUFFER_free(ptr noundef %1) #7
  ret void
}

declare void @CRYPTO_BUFFER_free(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_SESSION_up_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !17}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS6ssl_st", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!"_ZTS22ssl_early_callback_ctx", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !11, i64 32, !12, i64 40, !11, i64 48, !12, i64 56, !11, i64 64, !12, i64 72, !11, i64 80, !12, i64 88, !11, i64 96, !12, i64 104}
!15 = !{!14, !11, i64 64}
!16 = !{!14, !12, i64 72}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !9, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!11, !11, i64 0}
!21 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !9, i64 0}
!22 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !9, i64 0}
!23 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !22, i64 0}
!24 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !23, i64 0}
!25 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !24, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !25, i64 0}
!27 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !26, i64 0}
!28 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !27, i64 0}
!29 = !{!"p1 _ZTS6bio_st", !9, i64 0}
!30 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !29, i64 0}
!31 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !30, i64 0}
!32 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !33, i64 0}
!35 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !34, i64 0}
!36 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !9, i64 0}
!37 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !9, i64 0}
!38 = !{!"p1 _ZTS14ssl_session_st", !9, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !38, i64 0}
!40 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !39, i64 0}
!41 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !41, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !42, i64 0}
!44 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !43, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm0EP19stack_st_SSL_CIPHERLb0EE", !18, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !45, i64 0}
!47 = !{!"_ZTSSt5tupleIJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataI19stack_st_SSL_CIPHERN4bssl8internal7DeleterELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !49, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !11, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !51, i64 0}
!53 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !54, i64 0}
!56 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !55, i64 0}
!57 = !{!"p1 _ZTS10ssl_ctx_st", !9, i64 0}
!58 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !57, i64 0}
!59 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !58, i64 0}
!60 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !61, i64 0}
!63 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !62, i64 0}
!64 = !{!"p1 _ZTS13stack_st_void", !9, i64 0}
!65 = !{!"_ZTS17crypto_ex_data_st", !64, i64 0}
!66 = !{!"p1 _ZTS18ssl_quic_method_st", !9, i64 0}
!67 = !{!"_ZTS22ssl_renegotiate_mode_t", !5, i64 0}
!68 = !{!"bool", !5, i64 0}
!69 = !{!"_ZTS6ssl_st", !21, i64 0, !28, i64 8, !13, i64 16, !13, i64 18, !12, i64 24, !35, i64 32, !35, i64 40, !9, i64 48, !36, i64 56, !37, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !6, i64 104, !44, i64 112, !50, i64 120, !56, i64 128, !13, i64 136, !9, i64 144, !63, i64 152, !63, i64 160, !65, i64 168, !12, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !56, i64 200, !66, i64 208, !67, i64 216, !68, i64 220, !68, i64 220, !68, i64 220, !68, i64 220, !68, i64 220}
!70 = !{!13, !13, i64 0}
!71 = !{!"_ZTSN4bssl13ssl_hs_wait_tE", !5, i64 0}
!72 = !{!"p1 _ZTS17err_save_state_st", !9, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm0EP17err_save_state_stLb0EE", !72, i64 0}
!74 = !{!"_ZTSSt11_Tuple_implILm0EJP17err_save_state_stN4bssl8internal7DeleterEEE", !73, i64 0}
!75 = !{!"_ZTSSt5tupleIJP17err_save_state_stN4bssl8internal7DeleterEEE", !74, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_implI17err_save_state_stN4bssl8internal7DeleterEE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_dataI17err_save_state_stN4bssl8internal7DeleterELb1ELb1EE", !76, i64 0}
!78 = !{!"_ZTSSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEE", !77, i64 0}
!79 = !{!"p1 _ZTS10buf_mem_st", !9, i64 0}
!80 = !{!"_ZTSSt10_Head_baseILm0EP10buf_mem_stLb0EE", !79, i64 0}
!81 = !{!"_ZTSSt11_Tuple_implILm0EJP10buf_mem_stN4bssl8internal7DeleterEEE", !80, i64 0}
!82 = !{!"_ZTSSt5tupleIJP10buf_mem_stN4bssl8internal7DeleterEEE", !81, i64 0}
!83 = !{!"_ZTSSt15__uniq_ptr_implI10buf_mem_stN4bssl8internal7DeleterEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_dataI10buf_mem_stN4bssl8internal7DeleterELb1ELb1EE", !83, i64 0}
!85 = !{!"_ZTSSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE", !84, i64 0}
!86 = !{!"p1 _ZTS9env_md_st", !9, i64 0}
!87 = !{!"p1 _ZTS15evp_pkey_ctx_st", !9, i64 0}
!88 = !{!"p1 _ZTS15evp_md_pctx_ops", !9, i64 0}
!89 = !{!"_ZTS13env_md_ctx_st", !86, i64 0, !9, i64 8, !9, i64 16, !87, i64 24, !88, i64 32, !12, i64 40}
!90 = !{!"_ZTSN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEE", !89, i64 0}
!91 = !{!"_ZTSN4bssl13SSLTranscriptE", !85, i64 0, !90, i64 8}
!92 = !{!"_ZTSN4bssl5ArrayIhEE", !11, i64 0, !12, i64 8}
!93 = !{!"p1 short", !9, i64 0}
!94 = !{!"_ZTSN4bssl5ArrayItEE", !93, i64 0, !12, i64 8}
!95 = !{!"p1 _ZTS15evp_hpke_kem_st", !9, i64 0}
!96 = !{!"p1 _ZTS16evp_hpke_aead_st", !9, i64 0}
!97 = !{!"p1 _ZTS15evp_hpke_kdf_st", !9, i64 0}
!98 = !{!"p1 _ZTS11evp_aead_st", !9, i64 0}
!99 = !{!"_ZTS15evp_aead_ctx_st", !98, i64 0, !5, i64 8, !5, i64 576, !5, i64 577}
!100 = !{!"_ZTS15evp_hpke_ctx_st", !95, i64 0, !96, i64 8, !97, i64 16, !99, i64 24, !5, i64 608, !5, i64 632, !12, i64 696, !6, i64 704}
!101 = !{!"_ZTSN4bssl8internal14StackAllocatedI15evp_hpke_ctx_stvXadL_Z17EVP_HPKE_CTX_zeroEEXadL_Z20EVP_HPKE_CTX_cleanupEEEE", !100, i64 0}
!102 = !{!"p1 _ZTS22stack_st_CRYPTO_BUFFER", !9, i64 0}
!103 = !{!"_ZTSSt10_Head_baseILm0EP22stack_st_CRYPTO_BUFFERLb0EE", !102, i64 0}
!104 = !{!"_ZTSSt11_Tuple_implILm0EJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !103, i64 0}
!105 = !{!"_ZTSSt5tupleIJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !104, i64 0}
!106 = !{!"_ZTSSt15__uniq_ptr_implI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_dataI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterELb1ELb1EE", !106, i64 0}
!108 = !{!"_ZTSSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !107, i64 0}
!109 = !{!"p1 _ZTS11evp_pkey_st", !9, i64 0}
!110 = !{!"_ZTSSt10_Head_baseILm0EP11evp_pkey_stLb0EE", !109, i64 0}
!111 = !{!"_ZTSSt11_Tuple_implILm0EJP11evp_pkey_stN4bssl8internal7DeleterEEE", !110, i64 0}
!112 = !{!"_ZTSSt5tupleIJP11evp_pkey_stN4bssl8internal7DeleterEEE", !111, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_implI11evp_pkey_stN4bssl8internal7DeleterEE", !112, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_dataI11evp_pkey_stN4bssl8internal7DeleterELb1ELb1EE", !113, i64 0}
!115 = !{!"_ZTSSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE", !114, i64 0}
!116 = !{!"p1 _ZTS15ssl_ech_keys_st", !9, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0EP15ssl_ech_keys_stLb0EE", !116, i64 0}
!118 = !{!"_ZTSSt11_Tuple_implILm0EJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !117, i64 0}
!119 = !{!"_ZTSSt5tupleIJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !118, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_dataI15ssl_ech_keys_stN4bssl8internal7DeleterELb1ELb1EE", !120, i64 0}
!122 = !{!"_ZTSSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !121, i64 0}
!123 = !{!"p1 _ZTSN4bssl9ECHConfigE", !9, i64 0}
!124 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl9ECHConfigELb0EE", !123, i64 0}
!125 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !124, i64 0}
!126 = !{!"_ZTSSt5tupleIJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !125, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl9ECHConfigENS0_8internal7DeleterEE", !126, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl9ECHConfigENS0_8internal7DeleterELb1ELb1EE", !127, i64 0}
!129 = !{!"_ZTSSt10unique_ptrIN4bssl9ECHConfigENS0_8internal7DeleterEE", !128, i64 0}
!130 = !{!"p1 _ZTS13ssl_cipher_st", !9, i64 0}
!131 = !{!"p1 _ZTSN4bssl19SSL_HANDSHAKE_HINTSE", !9, i64 0}
!132 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl19SSL_HANDSHAKE_HINTSELb0EE", !131, i64 0}
!133 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !132, i64 0}
!134 = !{!"_ZTSSt5tupleIJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !133, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !134, i64 0}
!136 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterELb1ELb1EE", !135, i64 0}
!137 = !{!"_ZTSSt10unique_ptrIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !136, i64 0}
!138 = !{!"_ZTSN4bssl13SSL_HANDSHAKEE", !10, i64 0, !22, i64 8, !71, i64 16, !6, i64 20, !6, i64 24, !13, i64 28, !13, i64 30, !13, i64 32, !12, i64 40, !5, i64 48, !5, i64 96, !5, i64 144, !5, i64 192, !5, i64 240, !5, i64 288, !5, i64 336, !5, i64 384, !6, i64 388, !5, i64 392, !78, i64 400, !5, i64 408, !91, i64 424, !91, i64 480, !5, i64 536, !92, i64 568, !92, i64 584, !92, i64 600, !92, i64 616, !92, i64 632, !92, i64 648, !92, i64 664, !94, i64 680, !94, i64 696, !94, i64 712, !92, i64 728, !13, i64 744, !101, i64 752, !92, i64 1464, !56, i64 1480, !108, i64 1488, !92, i64 1496, !115, i64 1512, !115, i64 1520, !44, i64 1528, !44, i64 1536, !122, i64 1544, !129, i64 1552, !130, i64 1560, !92, i64 1568, !137, i64 1584, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1592, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1593, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1594, !68, i64 1595, !13, i64 1596, !13, i64 1598, !13, i64 1600, !5, i64 1602, !5, i64 1603, !5, i64 1635, !5, i64 1636}
!139 = !{!138, !6, i64 20}
!140 = !{!138, !10, i64 0}
!141 = !{!5, !5, i64 0}
!142 = !{!69, !36, i64 56}
!143 = !{!92, !12, i64 8}
!144 = !{!92, !11, i64 0}
!145 = distinct !{!145, !17}
!146 = !{!69, !13, i64 136}
!147 = distinct !{null}
!148 = distinct !{!148, !"_ZN4bssl5UpRefERKSt10unique_ptrI15ssl_ech_keys_stNS_8internal7DeleterEE"}
!149 = distinct !{!149, !148, !"_ZN4bssl5UpRefERKSt10unique_ptrI15ssl_ech_keys_stNS_8internal7DeleterEE: argument 0"}
!150 = distinct !{!150, !"_ZN4bssl5UpRefEP15ssl_ech_keys_st"}
!151 = distinct !{!151, !150, !"_ZN4bssl5UpRefEP15ssl_ech_keys_st: argument 0"}
!152 = distinct !{null}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, !17}
!155 = distinct !{null}
!156 = distinct !{!156, !17}
!157 = distinct !{null}
!158 = distinct !{null}
!159 = distinct !{null}
!160 = distinct !{null, null, null, null, null, null, null, null}
!161 = distinct !{null, null, null, null, null}
!162 = distinct !{null}
!163 = distinct !{null}
!164 = distinct !{null}
!165 = distinct !{null}
!166 = distinct !{!166, !17, !369, !370}
!167 = distinct !{!167, !17, !370, !369}
!168 = distinct !{!168, !17}
!169 = distinct !{null, null, null, null, null, null}
!170 = distinct !{null}
!171 = distinct !{null}
!172 = distinct !{null}
!173 = distinct !{null}
!174 = distinct !{null}
!175 = distinct !{!175, !"_ZN4bssl5UpRefERKSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEE"}
!176 = distinct !{!176, !175, !"_ZN4bssl5UpRefERKSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEE: argument 0"}
!177 = distinct !{!177, !"_ZN4bssl5UpRefEP14ssl_session_st"}
!178 = distinct !{!178, !177, !"_ZN4bssl5UpRefEP14ssl_session_st: argument 0"}
!179 = !{!57, !57, i64 0}
!180 = !{!69, !21, i64 0}
!181 = !{!"_ZTSN4bssl19SSL_PROTOCOL_METHODE", !68, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144}
!182 = !{!181, !9, i64 24}
!183 = !{!"_ZTS6cbs_st", !11, i64 0, !12, i64 8}
!184 = !{!183, !11, i64 0}
end_hunk_1
