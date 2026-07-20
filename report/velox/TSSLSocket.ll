inline.NumInlined: 742
inline.NumDeleted: 228
begin_hunk_0_@_ZN6apache6thrift9transport17TSSLSocketFactory33loadTrustedCertificatesFromBufferEPKcS4_:bb.a
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6apache6thrift9transport13TSSLExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN6apache6thrift9transport13TSSLExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #33
          to label %bb.ab unwind label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t
  %.0 = phi i1 [ false, %bb.u ], [ true, %bb.t ]  ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bd = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.w
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !29
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %.0, label %bb.x, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %.0, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn68 = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  call void @__cxa_free_exception(ptr %i.az) #32
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.x, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn68, %bb.x ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.ba, %bb.v ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.bi = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ax
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.y
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.aa

bb.z:                                             ; preds = %bb.q, %bb.p
  ret void

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn45.pn = phi { ptr, i32 } [ %.pn4562, %bb.f ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn45.pn

bb.ab:                                            ; preds = %bb.u, %bb.k, %bb.d
  unreachable
}

declare ptr @SSL_CTX_get_cert_store(ptr noundef) local_unnamed_addr #3

declare i32 @X509_STORE_add_cert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift9transport17TSSLSocketFactory9randomizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i32 @RAND_poll()               ; 0 uses
  ret void
}

declare i32 @RAND_poll() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift9transport17TSSLSocketFactory31overrideDefaultPasswordCallbackEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  tail call void @SSL_CTX_set_default_passwd_cb(ptr noundef %i.d, ptr noundef nonnull @_ZN6apache6thrift9transport17TSSLSocketFactory16passwordCallbackEPciiPv)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  tail call void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef %i.g, ptr noundef nonnull %0)
  ret void
}

declare void @SSL_CTX_set_default_passwd_cb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6apache6thrift9transport17TSSLSocketFactory16passwordCallbackEPciiPv(ptr noundef %0, i32 noundef %1, i32 %2, ptr noundef %3) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !42
  store i8 0, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %3, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %spec.select = call i32 @llvm.smin.i32(i32 %1, i32 %i.g) ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !33
  %i.i = sext i32 %spec.select to i64
  %i.j = call ptr @strncpy(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.i) #32 ; 0 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.f, i64 noundef %i.f, i8 noundef signext 42)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit unwind label %bb.d ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %i.o = load i64, ptr %i.a, align 8, !tbaa !29
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i32 %spec.select

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.l, %bb.c ]
  %i.r = load ptr, ptr %4, align 8, !tbaa !33     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !29
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn
}

declare void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6apache6thrift9transport26DefaultClientAccessManager6verifyERK16sockaddr_storage(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #20 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 2) i32 @_ZN6apache6thrift9transport26DefaultClientAccessManager6verifyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  %i.c = icmp eq i64 %i.b, 0
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.d, %i.c
  %i.e = icmp slt i32 %3, 1
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %_ZN6apache6thrift9transportL9matchNameEPKcS3_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %bb.b
  %indvars.iv35.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next36.i, %.backedge.i ] ; 2 uses
  %.033.i = phi i32 [ 0, %bb.b ], [ %.0.be.i, %.backedge.i ] ; 2 uses
  %i.g = sext i32 %.033.i to i64                  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 5 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZN6apache6thrift9transportL9matchNameEPKcS3_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv35.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29    ; 4 uses
  %i.l = add i8 %i.k, -97
  %or.cond.i.i = icmp ult i8 %i.l, 26
  %narrow.i.i = add nsw i8 %i.k, -32
  %.0.i.i = select i1 %or.cond.i.i, i8 %narrow.i.i, i8 %i.k
  %i.m = add i8 %i.i, -97
  %or.cond.i29.i = icmp ult i8 %i.m, 26
  %narrow.i30.i = add nsw i8 %i.i, -32
  %.0.i31.i = select i1 %or.cond.i29.i, i8 %narrow.i30.i, i8 %i.i
  %i.n = icmp eq i8 %.0.i.i, %.0.i31.i
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %.033.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.critedge2.i, %bb.e
  %.0.be.i = phi i32 [ %i.o, %bb.e ], [ %i.r, %.critedge2.i ] ; 2 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i.loopexit, label %bb.c, !llvm.loop !167

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i8 %i.k, 42
  br i1 %i.p, label %.preheader.i, label %_ZN6apache6thrift9transportL9matchNameEPKcS3_i.exit

.preheader.i:                                     ; preds = %bb.f, %bb.g
  %i.q = phi i8 [ %.pre.i, %bb.g ], [ %i.i, %bb.f ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ %i.g, %bb.f ] ; 2 uses
  switch i8 %i.q, label %bb.g [
    i8 46, label %.critedge2.i
    i8 0, label %.critedge2.i
  ]

bb.g:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !29
  br label %.preheader.i, !llvm.loop !168

.critedge2.i:                                     ; preds = %.preheader.i, %.preheader.i
  %i.r = trunc nsw i64 %indvars.iv.i to i32
  br label %.backedge.i

.critedge.thread.i.loopexit:                      ; preds = %.backedge.i
  %.pre = sext i32 %.0.be.i to i64
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.f, i64 %.pre
  %.pre15 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !29
  %4 = icmp eq i8 %.pre15, 0
  %5 = zext i1 %4 to i32
  br label %_ZN6apache6thrift9transportL9matchNameEPKcS3_i.exit

_ZN6apache6thrift9transportL9matchNameEPKcS3_i.exit: ; preds = %bb.c, %bb.f, %.critedge.thread.i.loopexit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %5, %.critedge.thread.i.loopexit ], [ 0, %bb.f ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZN6apache6thrift9transport26DefaultClientAccessManager6verifyERK16sockaddr_storagePKci(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !130    ; 2 uses
  %i.b = icmp eq i16 %i.a, 2
  %i.c = icmp eq i32 %3, 4
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i16 %i.a, 10
  %i.e = icmp eq i32 %3, 16
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink18 = phi i64 [ 4, %bb.a ], [ 8, %bb.b ]
  %.sink17 = phi i64 [ 4, %bb.a ], [ 16, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sink18
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.f, ptr noundef nonnull dereferenceable(4) %2, i64 %.sink17)
  %i.g = icmp eq i32 %bcmp, 0
  %i.h = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0.shrunk = phi i32 [ 0, %bb.b ], [ %i.h, %.sink.split ]
  ret i32 %.0.shrunk
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6apache6thrift9transport17TVirtualTransportINS1_7TSocketENS1_18TTransportDefaultsEE9read_virtEPhj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, i32 noundef %2)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6apache6thrift9transport17TVirtualTransportINS1_7TSocketENS1_18TTransportDefaultsEE12readAll_virtEPhj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6apache6thrift9transport7readAllINS1_7TSocketEEEjRT_Phj(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN6apache6thrift9transport10TTransport7readEndEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6apache6thrift9transport17TVirtualTransportINS1_7TSocketENS1_18TTransportDefaultsEE10write_virtEPKhj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN6apache6thrift9transport10TTransport8writeEndEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6apache6thrift9transport17TVirtualTransportINS1_7TSocketENS1_18TTransportDefaultsEE11borrow_virtEPhPj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6apache6thrift9transport17TVirtualTransportINS1_7TSocketENS1_18TTransportDefaultsEE12consume_virtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN6apache6thrift9transport10TTransport12consume_virtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  ret void
}

declare void @_ZNK6apache6thrift9transport7TSocket9getOriginB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(264)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6apache6thrift9transport10TSSLSocket6accessESt10shared_ptrINS1_13AccessManagerEE(ptr noundef nonnull align 8 dereferenceable(321) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %1, align 8, !tbaa !129
  store ptr %i.b, ptr %i.a, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 4 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6apache6thrift9transport13AccessManagerEEaSERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.l = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.d ], [ %.pr.pre.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !27
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #32, !inline_history !169
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #32, !inline_history !169
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i9.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !30

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.e, ptr %i.c, align 8, !tbaa !22
  br label %_ZNSt10shared_ptrIN6apache6thrift9transport13AccessManagerEEaSERKS4_.exit

_ZNSt10shared_ptrIN6apache6thrift9transport13AccessManagerEEaSERKS4_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6apache6thrift9transport17TSSLSocketFactory6serverEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.a, ptr %i.b, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6apache6thrift9transport17TSSLSocketFactory6serverEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !96, !noundef !97
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6apache6thrift9transport17TSSLSocketFactory6accessESt10shared_ptrINS1_13AccessManagerEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %1, align 8, !tbaa !129
end_hunk_0
