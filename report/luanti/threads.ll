Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/threads?download=true
inline.NumInlined: 1881
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3con23ConnectionReceiveThread24handlePacketType_ControlEPNS_7ChannelERK12SharedBufferIhEPNS_4PeerEhb:bb.a

bb.e:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %3, align 8, !tbaa !141    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !27    ; 2 uses
  %i.z = zext i8 %i.y to i32
  switch i8 %i.y, label %bb.dz [
    i8 0, label %bb.f
    i8 1, label %bb.bf
    i8 2, label %bb.cp
    i8 3, label %bb.db
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %i.s, 4
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN3con28InvalidIncomingDataExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull @.str.113)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN3con28InvalidIncomingDataExceptionE, ptr nonnull @_ZN13BaseExceptionD2Ev) #26
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ab) #24
  br label %bb.eo

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %.0.copyload.i = load i16, ptr %i.ad, align 1
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i)
  store i16 %rev.i.i, ptr %i.o, align 2, !tbaa !132
  %.not.i = icmp eq ptr @_ZTH8dout_con, null
  br i1 %.not.i, label %_ZTW8dout_con.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZTH8dout_con()
  br label %_ZTW8dout_con.exit

_ZTW8dout_con.exit:                               ; preds = %bb.j, %bb.k
  %i.ae = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @dout_con) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !267
  call void @_ZN3con10Connection7getDescB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(520) %i.ag)
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !68, !nonnull !69, !align !70 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc unwind label %bb.aa, !inline_history !92

.noexc:                                           ; preds = %_ZTW8dout_con.exit
  %.v.i = select i1 %i.ak, i64 976, i64 984
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.v.i ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72 ; 5 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !79
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %.noexc58 unwind label %bb.aa

.noexc58:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %.noexc58, %bb.l
  %i.au = phi ptr [ %.pre.i.i, %.noexc58 ], [ %i.am, %bb.l ]
  %i.av = load ptr, ptr %8, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit unwind label %bb.aa ; 0 uses

_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit: ; preds = %.noexc, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @.str.114, ptr %i.n, align 8, !tbaa !71
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  %i.ba = zext i8 %5 to i32
  store i32 %i.ba, ptr %i.p, align 4, !tbaa !55
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIiEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @.str.115, ptr %i.m, align 8, !tbaa !71
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.q unwind label %bb.ab

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRKtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 2 dereferenceable(2) %i.bd)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @.str.27, ptr %i.l, align 8, !tbaa !71
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 2 dereferenceable(2) %i.o)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @.str.116, ptr %i.k, align 8, !tbaa !71
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.u unwind label %bb.ab      ; 2 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !72 ; 5 uses
  %.not.i67 = icmp eq ptr %i.bi, null
  br i1 %.not.i67, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !30
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !79
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %.noexc68 unwind label %bb.ab

.noexc68:                                         ; preds = %bb.w
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !72
  br label %bb.x

bb.x:                                             ; preds = %.noexc68, %bb.v
  %i.bq = phi ptr [ %.pre.i, %.noexc68 ], [ %i.bi, %bb.v ]
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ab, !inline_history !3 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.u, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  %i.bs = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !27
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.by = load i16, ptr %i.o, align 2, !tbaa !132
  invoke void @_ZN3con20ReliablePacketBuffer9popSeqnumEt(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.85") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i16 noundef zeroext %i.by)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bz = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %7) #24 ; 0 uses
  %i.ca = load i64, ptr %7, align 8, !tbaa !94
  %i.cb = mul i64 %i.ca, 1000
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !95
  %i.ce = udiv i64 %i.cd, 1000000
  %i.cf = add i64 %i.ce, %i.cb                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.cg = load ptr, ptr %9, align 8, !tbaa !190   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !263 ; 2 uses
  %i.cj = icmp ugt i64 %i.cf, %i.ci
  br i1 %i.cj, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ck = sub nuw i64 %i.cf, %i.ci
  %i.cl = uitofp nsz i64 %i.ck to float
  %i.cm = fdiv nsz float %i.cl, 1.000000e+03
  br label %.invoke

.invoke:                                          ; preds = %bb.ae, %bb.z
  %i.cn = phi float [ %i.cm, %bb.z ], [ %i.cx, %bb.ae ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  invoke void @_ZN3con7UDPPeer9reportRTTEf(ptr noundef nonnull align 8 dereferenceable(1696) %4, float noundef %i.cn)
          to label %bb.ag unwind label %bb.af

bb.aa:                                            ; preds = %_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_.exit, %bb.n, %bb.m, %_ZTW8dout_con.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.t, %bb.r, %bb.p, %bb.s, %bb.q, %bb.o
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn45 = phi { ptr, i32 } [ %i.cp, %bb.ab ], [ %i.co, %bb.aa ]
  %i.cq = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ac
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !27
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.be

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3con17NotFoundExceptionE
  br label %bb.al

bb.ae:                                            ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !366 ; 2 uses
  %i.cy = fcmp nsz ogt float %i.cx, 0.000000e+00
  br i1 %i.cy, label %.invoke, label %bb.ag

bb.af:                                            ; preds = %.invoke, %bb.ag, %bb.ah, %bb.aj
  %i.cz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3con17NotFoundExceptionE
  call void @_ZNSt12__shared_ptrIN3con14BufferedPacketELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  br label %bb.al

bb.ag:                                            ; preds = %.invoke, %bb.ae
  %i.da = load ptr, ptr %9, align 8, !tbaa !190   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !225
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !226
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = trunc i64 %i.dh to i32
  invoke void @_ZN3con7Channel15UpdateBytesSentEjj(ptr noundef nonnull align 8 dereferenceable(512) %2, i32 noundef %i.di, i32 noundef 1)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %i.dj = invoke noundef i32 @_ZN3con20ReliablePacketBuffer4sizeEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bx)
          to label %bb.ai unwind label %bb.af

bb.ai:                                            ; preds = %bb.ah
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dl = load ptr, ptr %i.af, align 8, !tbaa !267
  invoke void @_ZN3con10Connection11TriggerSendEv(ptr noundef nonnull align 8 dereferenceable(520) %i.dl)
          to label %bb.ak unwind label %bb.af

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @_ZNSt12__shared_ptrIN3con14BufferedPacketELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ax

bb.al:                                            ; preds = %bb.af, %bb.ad
  %.pn49.pn = phi { ptr, i32 } [ %i.cz, %bb.af ], [ %i.cv, %bb.ad ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn49.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.dm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3con17NotFoundExceptionE) #24
  %i.dn = icmp eq i32 %.3, %i.dm
  br i1 %i.dn, label %bb.am, label %bb.be

bb.am:                                            ; preds = %bb.al
  %.332 = extractvalue { ptr, i32 } %.pn49.pn, 0
  %i.do = call ptr @__cxa_begin_catch(ptr %.332) #24 ; 0 uses
  %.not.i73 = icmp eq ptr @_ZTH8derr_con, null
  br i1 %.not.i73, label %_ZTW8derr_con.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZTH8derr_con()
  br label %_ZTW8derr_con.exit

_ZTW8derr_con.exit:                               ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.dp = load ptr, ptr %i.af, align 8, !tbaa !267
  invoke void @_ZN3con10Connection7getDescB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(520) %i.dp)
          to label %bb.ao unwind label %bb.az

bb.ao:                                            ; preds = %_ZTW8derr_con.exit
  %i.dq = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @derr_con)
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN9LogStreamlsIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEER11StreamProxyOT_(ptr noundef nonnull align 8 dereferenceable(992) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @.str.117, ptr %i.j, align 8, !tbaa !71
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.aq unwind label %bb.ba

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.105, ptr %i.i, align 8, !tbaa !71
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.ar unwind label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRtEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull align 2 dereferenceable(2) %i.o)
          to label %bb.as unwind label %bb.ba     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !72 ; 5 uses
  %.not.i78 = icmp eq ptr %i.dv, null
  br i1 %.not.i78, label %_ZN11StreamProxylsEPFRSoS0_E.exit82, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !30
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !79
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %.noexc80 unwind label %bb.ba

.noexc80:                                         ; preds = %bb.au
  %.pre.i79 = load ptr, ptr %i.du, align 8, !tbaa !72
  br label %bb.av

bb.av:                                            ; preds = %.noexc80, %bb.at
  %i.ed = phi ptr [ %.pre.i79, %.noexc80 ], [ %i.dv, %bb.at ]
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit82 unwind label %bb.ba, !inline_history !3 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit82:              ; preds = %bb.as, %bb.av
  %i.ef = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit82
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !27
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  invoke void @_ZN3con7Channel26UpdatePacketTooLateCounterEv(ptr noundef nonnull align 8 dereferenceable(512) %2)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @__cxa_end_catch()
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ak
  %i.ek = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN3con26ProcessedSilentlyExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull @.str.118)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  call void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTIN3con26ProcessedSilentlyExceptionE, ptr nonnull @_ZN13BaseExceptionD2Ev) #26
  unreachable

bb.az:                                            ; preds = %_ZTW8derr_con.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.ba:                                            ; preds = %bb.av, %bb.au, %bb.aq, %bb.ap, %bb.ar, %bb.ao
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ba
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !27
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.az
  %.pn52 = phi { ptr, i32 } [ %i.el, %bb.az ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.em, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn54 = phi { ptr, i32 } [ %i.es, %bb.bb ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.ep

bb.bd:                                            ; preds = %bb.ax
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ek) #24
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.merged57 = phi { ptr, i32 } [ %i.et, %bb.bd ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn49.pn, %bb.al ], [ %.pn54, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24
  br label %bb.eo

bb.bf:                                            ; preds = %bb.e
  %i.eu = icmp ult i64 %i.s, 4
  br i1 %i.eu, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.ev = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN3con28InvalidIncomingDataExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, ptr noundef nonnull @.str.119)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTIN3con28InvalidIncomingDataExceptionE, ptr nonnull @_ZN13BaseExceptionD2Ev) #26
end_hunk_0
