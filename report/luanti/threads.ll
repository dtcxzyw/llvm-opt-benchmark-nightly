Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/threads?download=true
inline.NumInlined: 1881
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3con23ConnectionReceiveThread13processPacketEPNS_7ChannelERK12SharedBufferIhEthb:bb.a
  br label %bb.t

bb.t:                                             ; preds = %.noexc42, %bb.r
  %i.az = phi ptr [ %.pre.i41, %.noexc42 ], [ %i.ar, %bb.r ]
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit44 unwind label %bb.x, !inline_history !3 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit44:              ; preds = %bb.q, %bb.t
  %i.bb = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  %i.bc = load ptr, ptr %8, align 8, !tbaa !28
  invoke void @_ZN3con28InvalidIncomingDataExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef %i.bc)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit44
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN3con28InvalidIncomingDataExceptionE, ptr nonnull @_ZN13BaseExceptionD2Ev) #26
          to label %bb.au unwind label %bb.x

bb.v:                                             ; preds = %bb.ak
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.w:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.w
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !27
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.u, %_ZTW11errorstream.exit39
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit44
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bb) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn27 = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %bb.y ] ; 2 uses
  %i.bm = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.z
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !27
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn27.pn = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn27, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.at

bb.aa:                                            ; preds = %bb.m
  %i.br = zext i8 %i.ai to i32
  %i.bs = icmp ugt i8 %i.ai, 3
  br i1 %i.bs, label %bb.ab, label %bb.aq

bb.ab:                                            ; preds = %bb.aa
  %.not.i51 = icmp eq ptr @_ZTH8derr_con, null
  br i1 %.not.i51, label %_ZTW8derr_con.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZTH8derr_con()
  br label %_ZTW8derr_con.exit

_ZTW8derr_con.exit:                               ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !267
  invoke void @_ZN3con10Connection7getDescB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(520) %i.bt)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %_ZTW8derr_con.exit
  %i.bu = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @derr_con)
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_(ptr noundef nonnull align 8 dereferenceable(992) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.110, ptr %i.a, align 8, !tbaa !71
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 %i.br, ptr %i.c, align 4, !tbaa !55
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIiEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ag unwind label %bb.an     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !72 ; 5 uses
  %.not.i53 = icmp eq ptr %i.by, null
  br i1 %.not.i53, label %_ZN11StreamProxylsEPFRSoS0_E.exit57, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !79
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %.noexc55 unwind label %bb.an

.noexc55:                                         ; preds = %bb.ai
  %.pre.i54 = load ptr, ptr %i.bx, align 8, !tbaa !72
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc55, %bb.ah
  %i.cg = phi ptr [ %.pre.i54, %.noexc55 ], [ %i.by, %bb.ah ]
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit57 unwind label %bb.an, !inline_history !3 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit57:              ; preds = %bb.ag, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.ci = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit57
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !27
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.cn = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN3con28InvalidIncomingDataExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull @.str.111)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN3con28InvalidIncomingDataExceptionE, ptr nonnull @_ZN13BaseExceptionD2Ev) #26
          to label %bb.au unwind label %bb.v

bb.al:                                            ; preds = %_ZTW8derr_con.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.am:                                            ; preds = %bb.ae, %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj, %bb.ai, %bb.af
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.an ], [ %i.cp, %bb.am ] ; 2 uses
  %i.cr = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ao
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %i.co, %bb.al ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.at

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cn) #24
  br label %bb.at

bb.aq:                                            ; preds = %bb.aa
  %i.cx = zext nneg i8 %i.ai to i64
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr @_ZN3con23ConnectionReceiveThread16packetTypeRouterE, i64 %i.cx
  %.unpack = load i64, ptr %i.cy, align 16, !tbaa !360
  %11 = inttoptr i64 %.unpack to ptr
  invoke void %11(ptr dead_on_unwind writable sret(%class.SharedBuffer) align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.f, i8 noundef zeroext %5, i1 noundef zeroext %6)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN3con10PeerHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.as:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.ap, %bb.as, %bb.l, %bb.i, %bb.h
  %.pn31 = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.z, %bb.i ], [ %i.ag, %bb.l ], [ %.pn27.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.bd, %bb.v ], [ %i.cw, %bb.ap ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.cz, %bb.as ]
  call void @_ZN3con10PeerHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  resume { ptr, i32 } %.pn31

bb.au:                                            ; preds = %bb.ak, %bb.u
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN3con23ConnectionReceiveThread20checkIncomingBuffersEPNS_7ChannelERtR12SharedBufferIhE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 6 uses
  %4 = alloca %"class.std::shared_ptr.85", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %class.SharedBuffer, align 8        ; 9 uses
  %7 = alloca %class.SharedBuffer, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i16 0, ptr %i.e, align 2, !tbaa !132
  %i.f = call noundef zeroext i1 @_ZN3con20ReliablePacketBuffer14getFirstSeqnumERt(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.e)
  br i1 %i.f, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %i.e, align 2, !tbaa !132
  %i.h = call noundef zeroext i16 @_ZN3con7Channel22readNextIncomingSeqNumEv(ptr noundef nonnull align 8 dereferenceable(512) %1)
  %.not = icmp eq i16 %i.g, %i.h
  br i1 %.not, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN3con20ReliablePacketBuffer8popFirstEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.85") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.i = load ptr, ptr %4, align 8, !tbaa !190    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val30 = load i16, ptr %i.k, align 1
  %rev.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %.val30)
  store i16 %rev.i.i.i, ptr %2, align 2, !tbaa !132
  %i.l = getelementptr i8, ptr %i.j, i64 6
  %.val = load i8, ptr %i.l, align 1, !tbaa !27   ; 2 uses
  %i.m = invoke noundef zeroext i16 @_ZNK3con14BufferedPacket9getSeqnumEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %bb.d unwind label %bb.as

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr @_ZTH8dout_con, null
  br i1 %.not.i, label %_ZTW8dout_con.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZTH8dout_con()
  br label %_ZTW8dout_con.exit

_ZTW8dout_con.exit:                               ; preds = %bb.d, %bb.e
  %i.n = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @dout_con) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !267
  invoke void @_ZN3con10Connection7getDescB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(520) %i.p)
          to label %bb.f unwind label %bb.at

bb.f:                                             ; preds = %_ZTW8dout_con.exit
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !68, !nonnull !69, !align !70 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.noexc unwind label %bb.au, !inline_history !92

.noexc:                                           ; preds = %bb.f
  %.v.i = select i1 %i.t, i64 976, i64 984
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %.v.i ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 5 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !79
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc31 unwind label %bb.au

.noexc31:                                         ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %.noexc31, %bb.g
  %i.ad = phi ptr [ %.pre.i.i, %.noexc31 ], [ %i.v, %bb.g ]
  %i.ae = load ptr, ptr %5, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit unwind label %bb.au ; 0 uses

_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit: ; preds = %.noexc, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.104, ptr %i.d, align 8, !tbaa !71
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.j unwind label %bb.au

bb.j:                                             ; preds = %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.105, ptr %i.c, align 8, !tbaa !71
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.k unwind label %bb.au      ; 3 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 5 uses
  %.not.i36 = icmp eq ptr %i.ak, null
  br i1 %.not.i36, label %_ZN11StreamProxylsIRtEERS_OT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !79
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.noexc37 unwind label %bb.au

.noexc37:                                         ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %.noexc37, %bb.l
  %i.as = phi ptr [ %.pre.i, %.noexc37 ], [ %i.ak, %bb.l ]
  %i.at = zext i16 %i.m to i64
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %i.at)
          to label %_ZN11StreamProxylsIRtEERS_OT_.exit unwind label %bb.au ; 0 uses

_ZN11StreamProxylsIRtEERS_OT_.exit:               ; preds = %bb.k, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.106, ptr %i.b, align 8, !tbaa !71
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %bb.au      ; 3 uses

bb.o:                                             ; preds = %_ZN11StreamProxylsIRtEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72 ; 5 uses
  %.not.i41 = icmp eq ptr %i.aw, null
  br i1 %.not.i41, label %_ZN11StreamProxylsIRtEERS_OT_.exit45, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !79
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %.noexc43 unwind label %bb.au

.noexc43:                                         ; preds = %bb.q
  %.pre.i42 = load ptr, ptr %i.av, align 8, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %.noexc43, %bb.p
  %i.be = phi ptr [ %.pre.i42, %.noexc43 ], [ %i.aw, %bb.p ]
  %i.bf = load i16, ptr %2, align 2, !tbaa !132
  %i.bg = zext i16 %i.bf to i64
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef %i.bg)
          to label %_ZN11StreamProxylsIRtEERS_OT_.exit45 unwind label %bb.au ; 0 uses

_ZN11StreamProxylsIRtEERS_OT_.exit45:             ; preds = %bb.o, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.15, ptr %i.a, align 8, !tbaa !71
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.s unwind label %bb.au      ; 4 uses

bb.s:                                             ; preds = %_ZN11StreamProxylsIRtEERS_OT_.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = zext i8 %.val to i32
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 5 uses
  %.not.i48 = icmp eq ptr %i.bk, null
  br i1 %.not.i48, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.t

end_hunk_0
