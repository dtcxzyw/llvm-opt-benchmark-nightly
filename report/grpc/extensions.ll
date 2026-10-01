Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/extensions?download=true
inline.NumInlined: 1428
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bsslL32cert_compression_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.01634, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  %i.t = trunc nuw i8 %.118 to i1
  br i1 %i.t, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.u = call i32 @CBB_flush(ptr noundef %2)
  %i.v = icmp ne i32 %i.u, 0
  br label %select.unfold

select.unfold:                                    ; preds = %bb.f, %bb.d, %bb.e, %bb.c, %bb.a, %._crit_edge, %bb.h
  %.3 = phi i1 [ %i.v, %bb.h ], [ true, %._crit_edge ], [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL34cert_compression_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readnone captures(address_is_null) %2) #14 {
bb.a:
  %i.a = icmp eq ptr %2, null
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL34cert_compression_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 7 uses
  %i.a = alloca i16, align 2                      ; 10 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !190  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 528 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !341
  %.fr106 = freeze i64 %i.h                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.i = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZN4bssl5ArrayItED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29
  %.not55 = icmp eq i64 %i.k, 0
  br i1 %.not55, label %bb.d, label %_ZN4bssl5ArrayItED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29   ; 6 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i64 %i.m, 1
  %.not56 = icmp eq i64 %i.o, 0
  %or.cond87 = and i1 %i.n, %.not56
  br i1 %or.cond87, label %bb.e, label %_ZN4bssl5ArrayItED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = lshr exact i64 %i.m, 1                   ; 3 uses
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  %i.q = invoke ptr @OPENSSL_malloc(i64 noundef %i.m)
          to label %.noexc65 unwind label %bb.k   ; 9 uses

.noexc65:                                         ; preds = %.noexc
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader: ; preds = %.noexc65
  %i.s = load i64, ptr %i.l, align 8, !tbaa !29
  %.not5795 = icmp eq i64 %i.s, 0
  br i1 %.not5795, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader
  %.not107 = icmp eq i64 %.fr106, 0
  br i1 %.not107, label %.lr.ph98.split, label %.lr.ph98.split.us

.lr.ph98.split.us:                                ; preds = %.lr.ph98, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us
  %.03897.us = phi i64 [ %i.u, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us ], [ 0, %.lr.ph98 ] ; 3 uses
  %.03996.us = phi i64 [ %.5.us, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us ], [ %.fr106, %.lr.ph98 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.t = invoke i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %.lr.ph98.split.us
  %.not61.not.us = icmp eq i32 %i.t, 0
  br i1 %.not61.not.us, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nuw i64 %.03897.us, 1
  %exitcond114.not = icmp eq i64 %.03897.us, %i.p
  br i1 %exitcond114.not, label %.split100.us, label %_ZN4bssl5ArrayItEixEm.exit.us

_ZN4bssl5ArrayItEixEm.exit.us:                    ; preds = %bb.g
  %i.v = load i16, ptr %i.a, align 2, !tbaa !35   ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.03897.us
  store i16 %i.v, ptr %i.w, align 2, !tbaa !35
  %i.x = load i64, ptr %i.g, align 8, !tbaa !341
  br label %bb.h

bb.h:                                             ; preds = %_ZN4bssl5ArrayItEixEm.exit.us, %bb.i
  %.03794.us = phi i64 [ 0, %_ZN4bssl5ArrayItEixEm.exit.us ], [ %i.ae, %bb.i ] ; 4 uses
  %exitcond.not = icmp eq i64 %.03794.us, %i.x
  br i1 %exitcond.not, label %.split102.us, label %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit.us

_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit.us: ; preds = %bb.h
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !340
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03794.us ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !343
  %i.ac = icmp ne i16 %i.ab, %i.v
  %i.ad = load ptr, ptr %i.z, align 8
  %.not62.us = icmp eq ptr %i.ad, null
  %or.cond.us = select i1 %i.ac, i1 true, i1 %.not62.us
  br i1 %or.cond.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit.us
  %i.ae = add nuw i64 %.03794.us, 1               ; 2 uses
  %exitcond113.not = icmp eq i64 %i.ae, %.fr106
  br i1 %exitcond113.not, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us, label %bb.h, !llvm.loop !622

bb.j:                                             ; preds = %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit.us
  %spec.select.us = call i64 @llvm.umin.i64(i64 %.03794.us, i64 %.03996.us)
  br label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us:    ; preds = %bb.i, %bb.j
  %.5.us = phi i64 [ %spec.select.us, %bb.j ], [ %.03996.us, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.af = load i64, ptr %i.l, align 8, !tbaa !29
  %.not57.us = icmp eq i64 %i.af, 0
  br i1 %.not57.us, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge, label %.lr.ph98.split.us, !llvm.loop !623

.split.us:                                        ; preds = %.lr.ph98.split.us
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %.noexc, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph98.split:                                   ; preds = %.lr.ph98, %_ZN4bssl5ArrayItEixEm.exit
  %.03897 = phi i64 [ %i.ak, %_ZN4bssl5ArrayItEixEm.exit ], [ 0, %.lr.ph98 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ai = invoke i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.a)
          to label %bb.l unwind label %.split

bb.l:                                             ; preds = %.lr.ph98.split
  %.not61.not = icmp eq i32 %i.ai, 0
  br i1 %.not61.not, label %.critedge, label %bb.n

.split:                                           ; preds = %.lr.ph98.split
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.aj, %.split ], [ %i.ag, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %exitcond115.not = icmp eq i64 %.03897, %i.p
  br i1 %exitcond115.not, label %.split100.us, label %_ZN4bssl5ArrayItEixEm.exit

.split100.us:                                     ; preds = %bb.g, %bb.n
  call void @abort() #22
  unreachable

_ZN4bssl5ArrayItEixEm.exit:                       ; preds = %bb.n
  %i.ak = add nuw i64 %.03897, 1
  %i.al = load i16, ptr %i.a, align 2, !tbaa !35
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.03897
  store i16 %i.al, ptr %i.am, align 2, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.an = load i64, ptr %i.l, align 8, !tbaa !29
  %.not57 = icmp eq i64 %i.an, 0
  br i1 %.not57, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge, label %.lr.ph98.split, !llvm.loop !623

.split102.us:                                     ; preds = %bb.h
  call void @abort() #22
  unreachable

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge: ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us, %_ZN4bssl5ArrayItEixEm.exit, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader
  %.039.lcssa = phi i64 [ %.fr106, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.preheader ], [ 0, %_ZN4bssl5ArrayItEixEm.exit ], [ %.5.us, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.us ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  invoke void @_ZSt4sortIPtEvT_S1_(ptr noundef nonnull %i.q, ptr noundef nonnull %i.ao)
          to label %.preheader.split unwind label %bb.p

.preheader.split:                                 ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge
  %.not58104 = icmp ugt i64 %i.m, 2
  br i1 %.not58104, label %_ZN4bssl5ArrayItEixEm.exit66, label %.critedge64

bb.o:                                             ; preds = %_ZN4bssl5ArrayItEixEm.exit66
  %i.ap = add nuw nsw i64 %.0105, 1               ; 2 uses
  %exitcond116.not = icmp eq i64 %i.ap, %i.p
  br i1 %exitcond116.not, label %.critedge64, label %_ZN4bssl5ArrayItEixEm.exit66, !llvm.loop !624

bb.p:                                             ; preds = %bb.q, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit._crit_edge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZN4bssl5ArrayItEixEm.exit66:                     ; preds = %.preheader.split, %bb.o
  %.0105 = phi i64 [ %i.ap, %bb.o ], [ 1, %.preheader.split ] ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.q, i64 %.0105 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !35
  %i.au = load i16, ptr %i.ar, align 2, !tbaa !35
  %i.av = icmp eq i16 %i.at, %i.au
  br i1 %i.av, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, label %bb.o

.critedge64:                                      ; preds = %bb.o, %.preheader.split
  %i.aw = icmp ult i64 %.039.lcssa, %.fr106
  br i1 %i.aw, label %bb.q, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

bb.q:                                             ; preds = %.critedge64
  %i.ax = load ptr, ptr %0, align 8, !tbaa !158
  %i.ay = invoke noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.ax)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.az = icmp ugt i16 %i.ay, 771
  br i1 %i.az, label %bb.s, label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = or i32 %i.bb, 2097152
  store i32 %i.bc, ptr %i.ba, align 8
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !341
  %i.be = icmp ult i64 %.039.lcssa, %i.bd
  br i1 %i.be, label %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit68, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @abort() #22
  unreachable

_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit68: ; preds = %bb.s
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !340
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.039.lcssa
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !343
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i16 %i.bi, ptr %i.bj, align 8, !tbaa !625
  br label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

.critedge:                                        ; preds = %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread

_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread: ; preds = %_ZN4bssl5ArrayItEixEm.exit66, %.noexc65, %.critedge, %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit68, %bb.r, %.critedge64
  %.452 = phi i1 [ false, %.noexc65 ], [ true, %.critedge64 ], [ false, %.critedge ], [ true, %bb.r ], [ true, %_ZNK4bssl6VectorINS_18CertCompressionAlgEEixEm.exit68 ], [ false, %_ZN4bssl5ArrayItEixEm.exit66 ]
  invoke void @OPENSSL_free(ptr noundef %i.q)
          to label %_ZN4bssl5ArrayItED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #22
  unreachable

bb.v:                                             ; preds = %bb.m, %bb.p, %bb.k
  %.sroa.0.1 = phi ptr [ %i.q, %bb.p ], [ %i.q, %bb.m ], [ null, %bb.k ]
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %.us-phi, %bb.m ], [ %i.ah, %bb.k ]
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.1)
          to label %_ZN4bssl5ArrayItED2Ev.exit69 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #22
  unreachable

_ZN4bssl5ArrayItED2Ev.exit69:                     ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn.pn

_ZN4bssl5ArrayItED2Ev.exit:                       ; preds = %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread, %bb.b, %bb.c, %bb.d
  %.553 = phi i1 [ false, %bb.b ], [ %.452, %_ZN4bssl5ArrayItE16InitForOverwriteEm.exit.thread ], [ false, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZN4bssl5ArrayItED2Ev.exit
  %.6 = phi i1 [ %.553, %_ZN4bssl5ArrayItED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL32cert_compression_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4bsslL40ext_delegated_credential_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3) #14 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL42ext_delegated_credential_parse_clienthelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !158
  %i.c = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.b)
  %i.d = icmp ult i16 %i.c, 772
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.e = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %.not7 = icmp eq i64 %i.j, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.l = call fastcc noundef zeroext i1 @_ZN4bsslL15parse_u16_arrayEPK6cbs_stPNS_5ArrayItEE(ptr noundef nonnull %3, ptr noundef nonnull %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.c ], [ %i.l, %bb.e ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  %.1 = phi i1 [ %.0, %bb.f ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL24ext_alps_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL29ext_alps_add_clienthello_implEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tEb(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL26ext_alps_parse_serverhelloEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL31ext_alps_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL24ext_alps_add_serverhelloEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL29ext_alps_add_serverhello_implEPNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL28ext_alps_add_clienthello_oldEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL29ext_alps_add_clienthello_implEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tEb(ptr noundef %0, ptr noundef %2, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL30ext_alps_parse_serverhello_oldEPNS_13SSL_HANDSHAKEEPhP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL31ext_alps_parse_serverhello_implEPNS_13SSL_HANDSHAKEEPhP6cbs_stb(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL28ext_alps_add_serverhello_oldEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4bsslL29ext_alps_add_serverhello_implEPNS_13SSL_HANDSHAKEEP6cbb_stb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4bsslL43ext_certificate_authorities_add_clienthelloEPKNS_13SSL_HANDSHAKEEP6cbb_stS4_NS_23ssl_client_hello_type_tE(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.cbb_st, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155
  %i.c = tail call noundef zeroext i1 @_ZN4bssl16ssl_has_CA_namesEPKNS_10SSL_CONFIGE(ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = tail call i32 @CBB_add_u16(ptr noundef %2, i16 noundef zeroext 47)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @CBB_add_u16_length_prefixed(ptr noundef %2, ptr noundef nonnull %4)
end_hunk_0
begin_hunk_1_@_ZN4bsslL30decrypt_ticket_with_cipher_ctxEPNS_5ArrayIhEEP17evp_cipher_ctx_stP11hmac_ctx_stNS_4SpanIKhEE:bb.a
bb.d:                                             ; preds = %_ZNK4bssl4SpanIKhE4lastEm.exit
  %i.t = icmp ugt i64 %i.g, %i.l
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @abort() #22
  unreachable

bb.f:                                             ; preds = %bb.r, %bb.i, %bb.h
  %.sroa.0.0 = phi ptr [ %.sroa.0.5.ph, %bb.r ], [ null, %bb.i ], [ null, %bb.h ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  %i.w = sub nuw i64 %i.l, %i.g                   ; 4 uses
  %i.x = icmp ugt i64 %i.w, 2147483646
  br i1 %i.x, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc31 unwind label %bb.f

.noexc31:                                         ; preds = %bb.h
  %i.y = icmp eq i64 %i.l, %i.g
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc31
  %i.z = invoke ptr @OPENSSL_malloc(i64 noundef %i.w)
          to label %.noexc32 unwind label %bb.f   ; 2 uses

.noexc32:                                         ; preds = %bb.i
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit, label %bb.j

bb.j:                                             ; preds = %.noexc32, %.noexc31
  %.sroa.0.5.ph = phi ptr [ null, %.noexc31 ], [ %i.z, %.noexc32 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.ab = trunc nuw nsw i64 %i.w to i32
  %i.ac = invoke i32 @EVP_DecryptUpdate(ptr noundef %1, ptr noundef %.sroa.0.5.ph, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v, i32 noundef %i.ab)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %.not23 = icmp eq i32 %i.ac, 0
  br i1 %.not23, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !188
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.5.ph, i64 %i.ae
  %i.ag = invoke i32 @EVP_DecryptFinal_ex(ptr noundef %1, ptr noundef %i.af, ptr noundef nonnull %i.c)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not24 = icmp eq i32 %i.ag, 0
  br i1 %.not24, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.k
  invoke void @ERR_clear_error()
          to label %.critedge unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !188
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !188
  %i.al = sext i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, %i.aj                ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.w
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @abort() #22
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ao = load ptr, ptr %0, align 8, !tbaa !191
  invoke void @OPENSSL_free(ptr noundef %i.ao)
          to label %_ZN4bssl5ArrayIhEaSEOS1_.exit unwind label %bb.f

_ZN4bssl5ArrayIhEaSEOS1_.exit:                    ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.5.ph, ptr %0, align 8, !tbaa !26
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !27
  br label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit

.critedge:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit

_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit:       ; preds = %.noexc32, %_ZN4bssl5ArrayIhEaSEOS1_.exit, %.critedge, %bb.g
  %.sroa.0.2 = phi ptr [ null, %bb.g ], [ %.sroa.0.5.ph, %.critedge ], [ null, %_ZN4bssl5ArrayIhEaSEOS1_.exit ], [ null, %.noexc32 ]
  %.1 = phi i32 [ 2, %bb.g ], [ 2, %.critedge ], [ 0, %_ZN4bssl5ArrayIhEaSEOS1_.exit ], [ 3, %.noexc32 ]
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.2)
          to label %_ZN4bssl5ArrayIhED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #22
  unreachable

bb.t:                                             ; preds = %bb.o, %bb.f
  %.sroa.0.3 = phi ptr [ %.sroa.0.5.ph, %bb.o ], [ %.sroa.0.0, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.u, %bb.f ]
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.3)
          to label %_ZN4bssl5ArrayIhED2Ev.exit34 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #22
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit34:                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn

_ZN4bssl5ArrayIhED2Ev.exit:                       ; preds = %_ZNK4bssl4SpanIKhE4lastEm.exit, %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit, %bb.a
  %.3 = phi i32 [ 2, %bb.a ], [ 2, %_ZNK4bssl4SpanIKhE4lastEm.exit ], [ %.1, %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.3
}

declare void @EVP_CIPHER_CTX_init(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_cleanup(ptr noundef) local_unnamed_addr #2

declare void @HMAC_CTX_init(ptr noundef) local_unnamed_addr #2

declare void @HMAC_CTX_cleanup(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_iv_length(ptr noundef) local_unnamed_addr #2

declare i64 @HMAC_size(ptr noundef) local_unnamed_addr #2

declare i32 @HMAC_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @HMAC_Final(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl36ssl_ctx_rotate_ticket_encryption_keyEP10ssl_ctx_st(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_aes_128_cbc() local_unnamed_addr #2

declare i32 @EVP_CIPHER_iv_length(ptr noundef) local_unnamed_addr #2

declare i32 @HMAC_Init_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_sha256() local_unnamed_addr #2

declare i32 @EVP_DecryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_MUTEX_lock_read(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_MUTEX_unlock_read(ptr noundef) local_unnamed_addr #2

declare void @SSL_SESSION_free(ptr noundef) local_unnamed_addr #2

declare void @EC_KEY_free(ptr noundef) local_unnamed_addr #2

declare void @CBB_zero(ptr noundef) local_unnamed_addr #2

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl10spake2plus6ProverC1Ev(ptr noundef nonnull align 8 dereferenceable(545)) unnamed_addr #2

declare void @ECDSA_SIG_free(ptr noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2

declare void @EC_POINT_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SSLKeyShare", scope: !242, file: !237, line: 1343, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4bssl11SSLKeyShareE")
!4 = distinct !{null, null, null, null, null}
!5 = distinct !{!5, !34}
!6 = distinct !{!6, !34}
!7 = distinct !{!7, !34}
!8 = distinct !{!8, !34}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 _ZTS6ssl_st", !20, i64 0}
!22 = !{!"p1 omnipotent char", !20, i64 0}
!23 = !{!"long", !16, i64 0}
!24 = !{!"short", !16, i64 0}
!25 = !{!"_ZTS22ssl_early_callback_ctx", !21, i64 0, !22, i64 8, !23, i64 16, !24, i64 24, !22, i64 32, !23, i64 40, !22, i64 48, !23, i64 56, !22, i64 64, !23, i64 72, !22, i64 80, !23, i64 88, !22, i64 96, !23, i64 104, !22, i64 112, !23, i64 120}
!26 = !{!22, !22, i64 0}
!27 = !{!23, !23, i64 0}
!28 = !{!"_ZTS6cbs_st", !22, i64 0, !23, i64 8}
!29 = !{!28, !23, i64 8}
!30 = !{!28, !22, i64 0}
!31 = !{!25, !22, i64 112}
!32 = !{!25, !23, i64 120}
!33 = !{i64 0, i64 8, !26, i64 8, i64 8, !27}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!24, !24, i64 0}
!36 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !20, i64 0}
!37 = !{!"_ZTSN4bssl13ssl_hs_wait_tE", !16, i64 0}
!38 = !{!"_ZTSN4bssl13InplaceVectorIhLm48EEE", !16, i64 0, !16, i64 48}
!39 = !{!"p1 _ZTS17err_save_state_st", !20, i64 0}
!40 = !{!"_ZTSSt10_Head_baseILm0EP17err_save_state_stLb0EE", !39, i64 0}
!41 = !{!"_ZTSSt11_Tuple_implILm0EJP17err_save_state_stN4bssl8internal7DeleterEEE", !40, i64 0}
!42 = !{!"_ZTSSt5tupleIJP17err_save_state_stN4bssl8internal7DeleterEEE", !41, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_implI17err_save_state_stN4bssl8internal7DeleterEE", !42, i64 0}
!44 = !{!"_ZTSSt15__uniq_ptr_dataI17err_save_state_stN4bssl8internal7DeleterELb1ELb1EE", !43, i64 0}
!45 = !{!"_ZTSSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEE", !44, i64 0}
!46 = !{!"p1 _ZTS10buf_mem_st", !20, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm0EP10buf_mem_stLb0EE", !46, i64 0}
!48 = !{!"_ZTSSt11_Tuple_implILm0EJP10buf_mem_stN4bssl8internal7DeleterEEE", !47, i64 0}
!49 = !{!"_ZTSSt5tupleIJP10buf_mem_stN4bssl8internal7DeleterEEE", !48, i64 0}
!50 = !{!"_ZTSSt15__uniq_ptr_implI10buf_mem_stN4bssl8internal7DeleterEE", !49, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_dataI10buf_mem_stN4bssl8internal7DeleterELb1ELb1EE", !50, i64 0}
!52 = !{!"_ZTSSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE", !51, i64 0}
!53 = !{!"p1 _ZTS9env_md_st", !20, i64 0}
!54 = !{!"p1 _ZTS15evp_pkey_ctx_st", !20, i64 0}
!55 = !{!"p1 _ZTS15evp_md_pctx_ops", !20, i64 0}
!56 = !{!"_ZTS13env_md_ctx_st", !53, i64 0, !20, i64 8, !54, i64 16, !55, i64 24}
!57 = !{!"_ZTSN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEE", !56, i64 0}
!58 = !{!"bool", !16, i64 0}
!59 = !{!"_ZTSN4bssl13SSLTranscriptE", !52, i64 0, !57, i64 8, !58, i64 40, !24, i64 42}
!60 = !{!"_ZTSN4bssl5ArrayIhEE", !22, i64 0, !23, i64 8}
!61 = !{!"p1 short", !20, i64 0}
!62 = !{!"_ZTSN4bssl5ArrayItEE", !61, i64 0, !23, i64 8}
!63 = !{!"p1 _ZTS15evp_hpke_kem_st", !20, i64 0}
!64 = !{!"p1 _ZTS16evp_hpke_aead_st", !20, i64 0}
!65 = !{!"p1 _ZTS15evp_hpke_kdf_st", !20, i64 0}
!66 = !{!"p1 _ZTS11evp_aead_st", !20, i64 0}
!67 = !{!"_ZTS15evp_aead_ctx_st", !66, i64 0, !16, i64 8, !16, i64 568}
!68 = !{!"_ZTS15evp_hpke_ctx_st", !63, i64 0, !64, i64 8, !65, i64 16, !67, i64 24, !16, i64 600, !16, i64 624, !23, i64 688, !17, i64 696}
!69 = !{!"_ZTSN4bssl8internal14StackAllocatedI15evp_hpke_ctx_stvXadL_Z17EVP_HPKE_CTX_zeroEEXadL_Z20EVP_HPKE_CTX_cleanupEEEE", !68, i64 0}
!70 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !22, i64 0}
!71 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !70, i64 0}
!72 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !71, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !72, i64 0}
!74 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !73, i64 0}
!75 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !74, i64 0}
!76 = !{!"p1 _ZTS22stack_st_CRYPTO_BUFFER", !20, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EP22stack_st_CRYPTO_BUFFERLb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !81, i64 0}
!83 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl5ArrayIhEEE", !16, i64 0, !58, i64 16}
!84 = !{!"_ZTSSt17_Optional_payloadIN4bssl5ArrayIhEELb1ELb0ELb0EE", !83, i64 0}
!85 = !{!"_ZTSSt17_Optional_payloadIN4bssl5ArrayIhEELb0ELb0ELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt14_Optional_baseIN4bssl5ArrayIhEELb0ELb0EE", !85, i64 0}
!87 = !{!"_ZTSSt8optionalIN4bssl5ArrayIhEEE", !86, i64 0}
!88 = !{!"p1 _ZTS18stack_st_X509_NAME", !20, i64 0}
!89 = !{!"p1 _ZTS17ssl_credential_st", !20, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EP17ssl_credential_stLb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJP17ssl_credential_stN4bssl8internal7DeleterEEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJP17ssl_credential_stN4bssl8internal7DeleterEEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implI17ssl_credential_stN4bssl8internal7DeleterEE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataI17ssl_credential_stN4bssl8internal7DeleterELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrI17ssl_credential_stN4bssl8internal7DeleterEE", !94, i64 0}
!96 = !{!"p1 _ZTS11evp_pkey_st", !20, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EP11evp_pkey_stLb0EE", !96, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJP11evp_pkey_stN4bssl8internal7DeleterEEE", !97, i64 0}
!99 = !{!"_ZTSSt5tupleIJP11evp_pkey_stN4bssl8internal7DeleterEEE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_implI11evp_pkey_stN4bssl8internal7DeleterEE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataI11evp_pkey_stN4bssl8internal7DeleterELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE", !101, i64 0}
!103 = !{!"p1 _ZTS14ssl_session_st", !20, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !103, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !104, i64 0}
!106 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !108, i64 0}
!110 = !{!"p1 _ZTS15ssl_ech_keys_st", !20, i64 0}
!111 = !{!"_ZTSSt10_Head_baseILm0EP15ssl_ech_keys_stLb0EE", !110, i64 0}
!112 = !{!"_ZTSSt11_Tuple_implILm0EJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !111, i64 0}
!113 = !{!"_ZTSSt5tupleIJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !112, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_implI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_dataI15ssl_ech_keys_stN4bssl8internal7DeleterELb1ELb1EE", !114, i64 0}
!116 = !{!"_ZTSSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !115, i64 0}
!117 = !{!"p1 _ZTSN4bssl9ECHConfigE", !20, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl9ECHConfigELb0EE", !117, i64 0}
!119 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !118, i64 0}
!120 = !{!"_ZTSSt5tupleIJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl9ECHConfigENS0_8internal7DeleterEE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl9ECHConfigENS0_8internal7DeleterELb1ELb1EE", !121, i64 0}
!123 = !{!"_ZTSSt10unique_ptrIN4bssl9ECHConfigENS0_8internal7DeleterEE", !122, i64 0}
!124 = !{!"p1 _ZTS13ssl_cipher_st", !20, i64 0}
!125 = !{!"p1 _ZTSN4bssl19SSL_HANDSHAKE_HINTSE", !20, i64 0}
!126 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl19SSL_HANDSHAKE_HINTSELb0EE", !125, i64 0}
!127 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !126, i64 0}
!128 = !{!"_ZTSSt5tupleIJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !127, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !128, i64 0}
!130 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterELb1ELb1EE", !129, i64 0}
!131 = !{!"_ZTSSt10unique_ptrIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !130, i64 0}
!132 = !{!"_ZTSN4bssl13InplaceVectorIhLm32EEE", !16, i64 0, !16, i64 32}
!133 = !{!"p1 _ZTSN4bssl12SSLPAKEShareE", !20, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl12SSLPAKEShareELb0EE", !133, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl12SSLPAKEShareENS0_8internal7DeleterEEE", !134, i64 0}
!136 = !{!"_ZTSSt5tupleIJPN4bssl12SSLPAKEShareENS0_8internal7DeleterEEE", !135, i64 0}
!137 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl12SSLPAKEShareENS0_8internal7DeleterEE", !136, i64 0}
!138 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl12SSLPAKEShareENS0_8internal7DeleterELb1ELb1EE", !137, i64 0}
!139 = !{!"_ZTSSt10unique_ptrIN4bssl12SSLPAKEShareENS0_8internal7DeleterEE", !138, i64 0}
!140 = !{!"p1 _ZTSN4bssl10spake2plus6ProverE", !20, i64 0}
!141 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10spake2plus6ProverELb0EE", !140, i64 0}
!142 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10spake2plus6ProverENS0_8internal7DeleterEEE", !141, i64 0}
!143 = !{!"_ZTSSt5tupleIJPN4bssl10spake2plus6ProverENS0_8internal7DeleterEEE", !142, i64 0}
!144 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10spake2plus6ProverENS0_8internal7DeleterEE", !143, i64 0}
!145 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10spake2plus6ProverENS0_8internal7DeleterELb1ELb1EE", !144, i64 0}
!146 = !{!"_ZTSSt10unique_ptrIN4bssl10spake2plus6ProverENS0_8internal7DeleterEE", !145, i64 0}
!147 = !{!"p1 _ZTSN4bssl10spake2plus8VerifierE", !20, i64 0}
!148 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10spake2plus8VerifierELb0EE", !147, i64 0}
!149 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10spake2plus8VerifierENS0_8internal7DeleterEEE", !148, i64 0}
!150 = !{!"_ZTSSt5tupleIJPN4bssl10spake2plus8VerifierENS0_8internal7DeleterEEE", !149, i64 0}
!151 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10spake2plus8VerifierENS0_8internal7DeleterEE", !150, i64 0}
!152 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10spake2plus8VerifierENS0_8internal7DeleterELb1ELb1EE", !151, i64 0}
!153 = !{!"_ZTSSt10unique_ptrIN4bssl10spake2plus8VerifierENS0_8internal7DeleterEE", !152, i64 0}
!154 = !{!"_ZTSN4bssl13SSL_HANDSHAKEE", !21, i64 0, !36, i64 8, !37, i64 16, !17, i64 20, !17, i64 24, !24, i64 28, !24, i64 30, !38, i64 32, !38, i64 81, !38, i64 130, !38, i64 179, !38, i64 228, !38, i64 277, !38, i64 326, !16, i64 376, !17, i64 380, !45, i64 384, !16, i64 392, !59, i64 408, !59, i64 456, !16, i64 504, !60, i64 536, !60, i64 552, !60, i64 568, !60, i64 584, !60, i64 600, !60, i64 616, !60, i64 632, !62, i64 648, !62, i64 664, !62, i64 680, !60, i64 696, !60, i64 712, !24, i64 728, !69, i64 736, !60, i64 1440, !75, i64 1456, !82, i64 1464, !87, i64 1472, !60, i64 1496, !88, i64 1512, !60, i64 1520, !95, i64 1536, !102, i64 1544, !109, i64 1552, !109, i64 1560, !116, i64 1568, !123, i64 1576, !124, i64 1584, !60, i64 1592, !131, i64 1608, !58, i64 1616, !58, i64 1616, !58, i64 1616, !58, i64 1616, !58, i64 1616, !58, i64 1616, !58, i64 1616, !58, i64 1616, !58, i64 1617, !58, i64 1617, !58, i64 1617, !58, i64 1617, !58, i64 1617, !58, i64 1617, !58, i64 1617, !58, i64 1617, !58, i64 1618, !58, i64 1618, !58, i64 1618, !58, i64 1618, !58, i64 1618, !58, i64 1618, !58, i64 1618, !58, i64 1618, !58, i64 1619, !58, i64 1619, !58, i64 1619, !58, i64 1619, !24, i64 1620, !24, i64 1622, !24, i64 1624, !24, i64 1626, !16, i64 1628, !132, i64 1629, !16, i64 1662, !139, i64 1672, !60, i64 1680, !146, i64 1696, !153, i64 1704}
!155 = !{!154, !36, i64 8}
!156 = !{!62, !23, i64 8}
!157 = !{!62, !61, i64 0}
!158 = !{!154, !21, i64 0}
!159 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !20, i64 0}
!160 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !36, i64 0}
!161 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !160, i64 0}
!162 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !161, i64 0}
!163 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !162, i64 0}
!164 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !163, i64 0}
!165 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !164, i64 0}
!166 = !{!"p1 _ZTS6bio_st", !20, i64 0}
!167 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !166, i64 0}
!168 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !167, i64 0}
!169 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !168, i64 0}
!170 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !169, i64 0}
end_hunk_1
