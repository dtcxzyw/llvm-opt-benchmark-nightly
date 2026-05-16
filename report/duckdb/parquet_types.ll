inline.NumInlined: 8495
inline.NumDeleted: 1611
begin_hunk_0_@_ZN14duckdb_parquet11LogicalType4readEPN13duckdb_apache6thrift8protocol9TProtocolE:bb.a
  store i16 %i.cb, ptr %i.w, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.af:                                            ; preds = %bb.d
  %i.cc = icmp eq i32 %i.ah, 12
  br i1 %i.cc, label %bb.ag, label %.invoke

bb.ag:                                            ; preds = %bb.af
  %i.cd = invoke noundef i32 @_ZN14duckdb_parquet8NullType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr nonnull align 8 poison, ptr noundef nonnull %1)
          to label %bb.ah unwind label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.ce = load i16, ptr %i.w, align 8
  %i.cf = or i16 %i.ce, 512
  store i16 %i.cf, ptr %i.w, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.ai:                                            ; preds = %bb.d
  %i.cg = icmp eq i32 %i.ah, 12
  br i1 %i.cg, label %bb.aj, label %.invoke

bb.aj:                                            ; preds = %bb.ai
  %i.ch = invoke noundef i32 @_ZN14duckdb_parquet8JsonType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr nonnull align 8 poison, ptr noundef nonnull %1)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.ci = load i16, ptr %i.w, align 8
  %i.cj = or i16 %i.ci, 1024
  store i16 %i.cj, ptr %i.w, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.al:                                            ; preds = %bb.d
  %i.ck = icmp eq i32 %i.ah, 12
  br i1 %i.ck, label %bb.am, label %.invoke

bb.am:                                            ; preds = %bb.al
  %i.cl = invoke noundef i32 @_ZN14duckdb_parquet8BsonType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr nonnull align 8 poison, ptr noundef nonnull %1)
          to label %bb.an unwind label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.cm = load i16, ptr %i.w, align 8
  %i.cn = or i16 %i.cm, 2048
  store i16 %i.cn, ptr %i.w, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.ao:                                            ; preds = %bb.d
  %i.co = icmp eq i32 %i.ah, 12
  br i1 %i.co, label %bb.ap, label %.invoke

bb.ap:                                            ; preds = %bb.ao
  %i.cp = invoke noundef i32 @_ZN14duckdb_parquet8UUIDType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr nonnull align 8 poison, ptr noundef nonnull %1)
          to label %bb.aq unwind label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.cq = load i16, ptr %i.w, align 8
  %i.cr = or i16 %i.cq, 4096
  store i16 %i.cr, ptr %i.w, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.ar:                                            ; preds = %bb.d
  %i.cs = icmp eq i32 %i.ah, 12
  br i1 %i.cs, label %bb.as, label %.invoke

bb.as:                                            ; preds = %bb.ar
  %i.ct = invoke noundef i32 @_ZN14duckdb_parquet11Float16Type4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr nonnull align 8 poison, ptr noundef nonnull %1)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.cu = load i16, ptr %i.w, align 8
  %i.cv = or i16 %i.cu, 8192
  store i16 %i.cv, ptr %i.w, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.au:                                            ; preds = %bb.d
  %i.cw = icmp eq i32 %i.ah, 12
  br i1 %i.cw, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au
  %i.cx = invoke noundef i32 @_ZN14duckdb_parquet11VariantType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(10) %i.x, ptr noundef nonnull %1)
          to label %bb.aw unwind label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.cy = load i16, ptr %i.w, align 8
  %i.cz = or i16 %i.cy, 16384
  store i16 %i.cz, ptr %i.w, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.ax:                                            ; preds = %bb.d
  %i.da = icmp eq i32 %i.ah, 12
  br i1 %i.da, label %bb.ay, label %.invoke

bb.ay:                                            ; preds = %bb.ax
  %i.db = invoke noundef i32 @_ZN14duckdb_parquet12GeometryType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(41) %i.v, ptr noundef nonnull %1)
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.dc = load i16, ptr %i.w, align 8
  %i.dd = or i16 %i.dc, -32768
  store i16 %i.dd, ptr %i.w, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.ba:                                            ; preds = %bb.d
  %i.de = icmp eq i32 %i.ah, 12
  br i1 %i.de, label %bb.bb, label %.invoke

bb.bb:                                            ; preds = %bb.ba
  %i.df = invoke noundef i32 @_ZN14duckdb_parquet13GeographyType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(45) %i.t, ptr noundef nonnull %1)
          to label %bb.bc unwind label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.dg = load i8, ptr %i.u, align 2
  %i.dh = or i8 %i.dg, 1
  store i8 %i.dh, ptr %i.u, align 2
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit: ; preds = %.invoke, %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.aq, %bb.an, %bb.ak, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g
  %.pn = phi i32 [ %i.cp, %bb.aq ], [ %i.ap, %bb.g ], [ %i.ch, %bb.ak ], [ %i.ax, %bb.j ], [ %i.cd, %bb.ah ], [ %i.bb, %bb.m ], [ %i.av, %.invoke ], [ %i.bf, %bb.p ], [ %i.cx, %bb.aw ], [ %i.bj, %bb.s ], [ %i.df, %bb.bc ], [ %i.bn, %bb.v ], [ %i.ct, %bb.at ], [ %i.br, %bb.y ], [ %i.db, %bb.az ], [ %i.bv, %bb.ab ], [ %i.cl, %bb.an ], [ %i.bz, %bb.ae ]
  %i.di = load ptr, ptr %1, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 224
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readFieldEndEv.exit unwind label %.loopexit, !inline_history !121

_ZN13duckdb_apache6thrift8protocol9TProtocol12readFieldEndEv.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit
  %.1 = add i32 %.pn, %i.ag
  %i.dm = add i32 %.1, %i.dl
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol15readStructBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !362

bb.bd:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14readFieldBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_5TTypeERs.exit
  %i.dn = load ptr, ptr %1, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 208
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef i32 %i.dp(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit unwind label %.loopexit.split-lp, !inline_history !123

_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dr = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.n
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit
  call void @_ZdlPv(ptr noundef %i.dr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  %i.dt = add i32 %i.dq, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.du = load i32, ptr %i.e, align 8, !tbaa !101
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr %i.e, align 8, !tbaa !101
  ret i32 %i.dt
}

; Function Attrs: uwtable
define hidden noundef i32 @_ZTv0_n32_N14duckdb_parquet11LogicalType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef %0, ptr noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef i32 @_ZN14duckdb_parquet11LogicalType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(347) %i.d, ptr noundef %1)
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK14duckdb_parquet11LogicalType5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(347) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 66 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !124
  %i.e = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !124
  %i.f = icmp ult i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 48) #28 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !39
  store i8 0, ptr %i.i, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %i.g, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 6, ptr %i.k, align 8, !tbaa !102
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #29
  unreachable

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.189)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit unwind label %bb.f, !inline_history !125 ; 2 uses

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 16 uses
  %i.q = load i16, ptr %i.p, align 8              ; 2 uses
  %i.r = trunc i16 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.190, i32 noundef 12, i16 noundef signext 1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit: ; preds = %bb.c
  %i.w = load i32, ptr %i.a, align 8, !tbaa !94
  %i.x = load i32, ptr %i.c, align 4, !tbaa !124
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.c, align 4, !tbaa !124
  %i.z = icmp ult i32 %i.w, %i.y
  br i1 %i.z, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit
  %i.aa = load ptr, ptr %1, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.123)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i unwind label %bb.d, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i
  %i.ae = load ptr, ptr %1, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i unwind label %bb.d, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.e unwind label %bb.d, !inline_history !135

bb.d:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !124
  br label %.body

bb.e:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !124
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !124
  %i.ar = load ptr, ptr %1, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit: ; preds = %bb.e
  %i.av = add i32 %i.v, %i.o
  %i.aw = add i32 %i.av, %i.ad
  %i.ax = add i32 %i.aw, %i.ah
  %i.ay = add i32 %i.ax, %i.al
  %i.az = add i32 %i.ay, %i.au
  %.pre = load i16, ptr %i.p, align 8
  br label %bb.g

bb.f:                                             ; preds = %.invoke, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit, %bb.bl, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.e, %bb.c, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit241, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit237, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit233, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit179, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit175, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit171, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit157
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %.pre260 = load i32, ptr %i.c, align 4, !tbaa !124
  br label %.body

.body:                                            ; preds = %bb.i, %bb.q, %bb.ak, %bb.as, %bb.f, %bb.ba, %bb.aw, %bb.ao, %bb.x, %bb.m, %bb.d
  %i.bb = phi i32 [ %i.ao, %bb.d ], [ %i.cb, %bb.i ], [ %i.dl, %bb.m ], [ %i.ev, %bb.q ], [ %i.gu, %bb.x ], [ %i.ju, %bb.ak ], [ %i.le, %bb.ao ], [ %i.mo, %bb.as ], [ %i.ny, %bb.aw ], [ %.pre260, %bb.f ], [ %i.pn, %bb.ba ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.bz, %bb.i ], [ %i.dj, %bb.m ], [ %i.et, %bb.q ], [ %i.gs, %bb.x ], [ %i.js, %bb.ak ], [ %i.lc, %bb.ao ], [ %i.mm, %bb.as ], [ %i.nw, %bb.aw ], [ %i.ba, %bb.f ], [ %i.pl, %bb.ba ]
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !124
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit
  %i.bd = phi i16 [ %.pre, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit ], [ %i.q, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit ] ; 2 uses
  %.0 = phi i32 [ %i.az, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit ], [ %i.o, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit ] ; 2 uses
  %i.be = and i16 %i.bd, 2
  %.not = icmp eq i16 %i.be, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %1, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.9, i32 noundef 12, i16 noundef signext 2)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit127 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit127: ; preds = %bb.h
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !94
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !124
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !124
  %i.bm = icmp ult i32 %i.bj, %i.bl
  br i1 %i.bm, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i128

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i128: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit127
  %i.bn = load ptr, ptr %1, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.127)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i129 unwind label %bb.i, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i129: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i128
  %i.br = load ptr, ptr %1, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i130 unwind label %bb.i, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i130: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i129
  %i.bv = load ptr, ptr %1, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.j unwind label %bb.i, !inline_history !135

bb.i:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i130, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i129, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i128
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !124
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.c, align 4, !tbaa !124
  br label %.body

bb.j:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i130
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !124
  %i.cd = add i32 %i.cc, -1
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !124
  %i.ce = load ptr, ptr %1, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit135 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit135: ; preds = %bb.j
  %i.ci = add i32 %i.bi, %.0
  %i.cj = add i32 %i.ci, %i.bq
  %i.ck = add i32 %i.cj, %i.bu
  %i.cl = add i32 %i.ck, %i.by
  %i.cm = add i32 %i.cl, %i.ch
  %.pre247.a = load i16, ptr %i.p, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit135, %bb.g
  %i.cn = phi i16 [ %.pre247.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit135 ], [ %i.bd, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.cm, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit135 ], [ %.0, %bb.g ] ; 2 uses
  %i.co = and i16 %i.cn, 4
  %.not112 = icmp eq i16 %i.co, 0
  br i1 %.not112, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %1, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.11, i32 noundef 12, i16 noundef signext 3)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit137 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit137: ; preds = %bb.l
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !94
  %i.cu = load i32, ptr %i.c, align 4, !tbaa !124
  %i.cv = add i32 %i.cu, 1                        ; 2 uses
  store i32 %i.cv, ptr %i.c, align 4, !tbaa !124
  %i.cw = icmp ult i32 %i.ct, %i.cv
  br i1 %i.cw, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i138

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i138: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit137
  %i.cx = load ptr, ptr %1, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef i32 %i.cz(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.129)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i139 unwind label %bb.m, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i139: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i138
  %i.db = load ptr, ptr %1, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef i32 %i.dd(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i140 unwind label %bb.m, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i140: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i139
  %i.df = load ptr, ptr %1, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef i32 %i.dh(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.n unwind label %bb.m, !inline_history !135

bb.m:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i140, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i139, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i138
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !124
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr %i.c, align 4, !tbaa !124
  br label %.body
end_hunk_0
begin_hunk_1_@_ZNK14duckdb_parquet11LogicalType5writeEPN13duckdb_apache6thrift8protocol9TProtocolE:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef i32 %i.eb(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.12, i32 noundef 12, i16 noundef signext 4)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit147 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit147: ; preds = %bb.p
  %i.ed = load i32, ptr %i.a, align 8, !tbaa !94
  %i.ee = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ef = add i32 %i.ee, 1                        ; 2 uses
  store i32 %i.ef, ptr %i.c, align 4, !tbaa !124
  %i.eg = icmp ult i32 %i.ed, %i.ef
  br i1 %i.eg, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i148

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i148: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit147
  %i.eh = load ptr, ptr %1, align 8, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef i32 %i.ej(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.131)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i149 unwind label %bb.q, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i149: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i148
  %i.el = load ptr, ptr %1, align 8, !tbaa !22
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef i32 %i.en(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i150 unwind label %bb.q, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i150: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i149
  %i.ep = load ptr, ptr %1, align 8, !tbaa !22
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.r unwind label %bb.q, !inline_history !135

bb.q:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i150, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i149, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i148
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ev = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.c, align 4, !tbaa !124
  br label %.body

bb.r:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i150
  %i.ew = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr %i.c, align 4, !tbaa !124
  %i.ey = load ptr, ptr %1, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef i32 %i.fa(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit155 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit155: ; preds = %bb.r
  %i.fc = add i32 %i.ec, %.2
  %i.fd = add i32 %i.fc, %i.ek
  %i.fe = add i32 %i.fd, %i.eo
  %i.ff = add i32 %i.fe, %i.es
  %i.fg = add i32 %i.ff, %i.fb
  %.pre249.a = load i16, ptr %i.p, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit155, %bb.o
  %i.fh = phi i16 [ %.pre249.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit155 ], [ %i.dx, %bb.o ] ; 2 uses
  %.3 = phi i32 [ %i.fg, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit155 ], [ %.2, %bb.o ] ; 2 uses
  %i.fi = and i16 %i.fh, 16
  %.not114 = icmp eq i16 %i.fi, 0
  br i1 %.not114, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fj = load ptr, ptr %1, align 8, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef i32 %i.fl(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.13, i32 noundef 12, i16 noundef signext 5)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit157 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit157: ; preds = %bb.t
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fo = invoke noundef i32 @_ZNK14duckdb_parquet11DecimalType5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull %1)
          to label %bb.u unwind label %bb.f

bb.u:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit157
  %i.fp = load ptr, ptr %1, align 8, !tbaa !22
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit159 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit159: ; preds = %bb.u
  %i.ft = add i32 %i.fm, %.3
  %i.fu = add i32 %i.ft, %i.fo
  %i.fv = add i32 %i.fu, %i.fs
  %.pre250.a = load i16, ptr %i.p, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit159, %bb.s
  %i.fw = phi i16 [ %.pre250.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit159 ], [ %i.fh, %bb.s ] ; 2 uses
  %.4 = phi i32 [ %i.fv, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit159 ], [ %.3, %bb.s ] ; 2 uses
  %i.fx = and i16 %i.fw, 32
  %.not115 = icmp eq i16 %i.fx, 0
  br i1 %.not115, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fy = load ptr, ptr %1, align 8, !tbaa !22
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.14, i32 noundef 12, i16 noundef signext 6)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit161 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit161: ; preds = %bb.w
  %i.gc = load i32, ptr %i.a, align 8, !tbaa !94
  %i.gd = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ge = add i32 %i.gd, 1                        ; 2 uses
  store i32 %i.ge, ptr %i.c, align 4, !tbaa !124
  %i.gf = icmp ult i32 %i.gc, %i.ge
  br i1 %i.gf, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i162

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i162: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit161
  %i.gg = load ptr, ptr %1, align 8, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = invoke noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.133)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i163 unwind label %bb.x, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i163: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i162
  %i.gk = load ptr, ptr %1, align 8, !tbaa !22
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 64
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i164 unwind label %bb.x, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i164: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i163
  %i.go = load ptr, ptr %1, align 8, !tbaa !22
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = invoke noundef i32 %i.gq(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.y unwind label %bb.x, !inline_history !135

bb.x:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i164, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i163, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i162
  %i.gs = landingpad { ptr, i32 }
          cleanup
  %i.gt = load i32, ptr %i.c, align 4, !tbaa !124
  %i.gu = add i32 %i.gt, -1                       ; 2 uses
  store i32 %i.gu, ptr %i.c, align 4, !tbaa !124
  br label %.body

bb.y:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i164
  %i.gv = load i32, ptr %i.c, align 4, !tbaa !124
  %i.gw = add i32 %i.gv, -1
  store i32 %i.gw, ptr %i.c, align 4, !tbaa !124
  %i.gx = load ptr, ptr %1, align 8, !tbaa !22
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = invoke noundef i32 %i.gz(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit169 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit169: ; preds = %bb.y
  %i.hb = add i32 %i.gb, %.4
  %i.hc = add i32 %i.hb, %i.gj
  %i.hd = add i32 %i.hc, %i.gn
  %i.he = add i32 %i.hd, %i.gr
  %i.hf = add i32 %i.he, %i.ha
  %.pre251.a = load i16, ptr %i.p, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit169, %bb.v
  %i.hg = phi i16 [ %.pre251.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit169 ], [ %i.fw, %bb.v ] ; 2 uses
  %.5 = phi i32 [ %i.hf, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit169 ], [ %.4, %bb.v ] ; 2 uses
  %i.hh = and i16 %i.hg, 64
  %.not116 = icmp eq i16 %i.hh, 0
  br i1 %.not116, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hi = load ptr, ptr %1, align 8, !tbaa !22
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = invoke noundef i32 %i.hk(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.191, i32 noundef 12, i16 noundef signext 7)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit171 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit171: ; preds = %bb.aa
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = invoke noundef i32 @_ZNK14duckdb_parquet8TimeType5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(56) %i.hm, ptr noundef nonnull %1)
          to label %bb.ab unwind label %bb.f

bb.ab:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit171
  %i.ho = load ptr, ptr %1, align 8, !tbaa !22
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef i32 %i.hq(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173: ; preds = %bb.ab
  %i.hs = add i32 %i.hl, %.5
  %i.ht = add i32 %i.hs, %i.hn
  %i.hu = add i32 %i.ht, %i.hr
  %.pre252.a = load i16, ptr %i.p, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173, %bb.z
  %i.hv = phi i16 [ %.pre252.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173 ], [ %i.hg, %bb.z ] ; 2 uses
  %.6 = phi i32 [ %i.hu, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173 ], [ %.5, %bb.z ] ; 2 uses
  %i.hw = and i16 %i.hv, 128
  %.not117 = icmp eq i16 %i.hw, 0
  br i1 %.not117, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hx = load ptr, ptr %1, align 8, !tbaa !22
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = invoke noundef i32 %i.hz(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.192, i32 noundef 12, i16 noundef signext 8)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit175 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit175: ; preds = %bb.ad
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ic = invoke noundef i32 @_ZNK14duckdb_parquet13TimestampType5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(56) %i.ib, ptr noundef nonnull %1)
          to label %bb.ae unwind label %bb.f

bb.ae:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit175
  %i.id = load ptr, ptr %1, align 8, !tbaa !22
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = invoke noundef i32 %i.if(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177: ; preds = %bb.ae
  %i.ih = add i32 %i.ia, %.6
  %i.ii = add i32 %i.ih, %i.ic
  %i.ij = add i32 %i.ii, %i.ig
  %.pre253 = load i16, ptr %i.p, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177, %bb.ac
  %2 = phi i16 [ %.pre253, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177 ], [ %i.hv, %bb.ac ] ; 2 uses
  %.7 = phi i32 [ %i.ij, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177 ], [ %.6, %bb.ac ] ; 2 uses
  %3 = and i16 %2, 256
  %.not118 = icmp eq i16 %3, 0
  br i1 %.not118, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ik = load ptr, ptr %1, align 8, !tbaa !22
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = invoke noundef i32 %i.im(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.193, i32 noundef 12, i16 noundef signext 10)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit179 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit179: ; preds = %bb.ag
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ip = invoke noundef i32 @_ZNK14duckdb_parquet7IntType5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(10) %i.io, ptr noundef nonnull %1)
          to label %bb.ah unwind label %bb.f

bb.ah:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit179
  %i.iq = load ptr, ptr %1, align 8, !tbaa !22
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = invoke noundef i32 %i.is(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit181 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit181: ; preds = %bb.ah
  %i.iu = add i32 %i.in, %.7
  %i.iv = add i32 %i.iu, %i.ip
  %i.iw = add i32 %i.iv, %i.it
  %.pre254 = load i16, ptr %i.p, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit181, %bb.af
  %4 = phi i16 [ %.pre254, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit181 ], [ %2, %bb.af ] ; 2 uses
  %.8 = phi i32 [ %i.iw, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit181 ], [ %.7, %bb.af ] ; 2 uses
  %i.ix = and i16 %4, 512
  %.not119.a = icmp eq i16 %i.ix, 0
  br i1 %.not119.a, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iy = load ptr, ptr %1, align 8, !tbaa !22
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef i32 %i.ja(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.194, i32 noundef 12, i16 noundef signext 11)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit183 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit183: ; preds = %bb.aj
  %i.jc = load i32, ptr %i.a, align 8, !tbaa !94
  %i.jd = load i32, ptr %i.c, align 4, !tbaa !124
  %i.je = add i32 %i.jd, 1                        ; 2 uses
  store i32 %i.je, ptr %i.c, align 4, !tbaa !124
  %i.jf = icmp ult i32 %i.jc, %i.je
  br i1 %i.jf, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i184

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i184: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit183
  %i.jg = load ptr, ptr %1, align 8, !tbaa !22
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = invoke noundef i32 %i.ji(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.137)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i185 unwind label %bb.ak, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i185: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i184
  %i.jk = load ptr, ptr %1, align 8, !tbaa !22
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = invoke noundef i32 %i.jm(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i186 unwind label %bb.ak, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i186: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i185
  %i.jo = load ptr, ptr %1, align 8, !tbaa !22
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = invoke noundef i32 %i.jq(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.al unwind label %bb.ak, !inline_history !135

bb.ak:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i186, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i185, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i184
  %i.js = landingpad { ptr, i32 }
          cleanup
  %i.jt = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ju = add i32 %i.jt, -1                       ; 2 uses
  store i32 %i.ju, ptr %i.c, align 4, !tbaa !124
  br label %.body

bb.al:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i186
  %i.jv = load i32, ptr %i.c, align 4, !tbaa !124
  %i.jw = add i32 %i.jv, -1
  store i32 %i.jw, ptr %i.c, align 4, !tbaa !124
  %i.jx = load ptr, ptr %1, align 8, !tbaa !22
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 56
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = invoke noundef i32 %i.jz(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit191 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit191: ; preds = %bb.al
  %i.kb = add i32 %i.jb, %.8
  %i.kc = add i32 %i.kb, %i.jj
  %i.kd = add i32 %i.kc, %i.jn
  %i.ke = add i32 %i.kd, %i.jr
  %i.kf = add i32 %i.ke, %i.ka
  %.pre255.a = load i16, ptr %i.p, align 8
  br label %bb.am

bb.am:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit191, %bb.ai
  %i.kg = phi i16 [ %.pre255.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit191 ], [ %4, %bb.ai ] ; 2 uses
  %.9 = phi i32 [ %i.kf, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit191 ], [ %.8, %bb.ai ] ; 2 uses
  %i.kh = and i16 %i.kg, 1024
  %.not120.a = icmp eq i16 %i.kh, 0
  br i1 %.not120.a, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ki = load ptr, ptr %1, align 8, !tbaa !22
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = invoke noundef i32 %i.kk(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.27, i32 noundef 12, i16 noundef signext 12)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit193 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit193: ; preds = %bb.an
  %i.km = load i32, ptr %i.a, align 8, !tbaa !94
  %i.kn = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ko = add i32 %i.kn, 1                        ; 2 uses
  store i32 %i.ko, ptr %i.c, align 4, !tbaa !124
  %i.kp = icmp ult i32 %i.km, %i.ko
  br i1 %i.kp, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i194

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i194: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit193
  %i.kq = load ptr, ptr %1, align 8, !tbaa !22
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = invoke noundef i32 %i.ks(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.173)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i195 unwind label %bb.ao, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i195: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i194
  %i.ku = load ptr, ptr %1, align 8, !tbaa !22
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 64
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = invoke noundef i32 %i.kw(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i196 unwind label %bb.ao, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i196: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i195
  %i.ky = load ptr, ptr %1, align 8, !tbaa !22
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = invoke noundef i32 %i.la(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.ap unwind label %bb.ao, !inline_history !135

bb.ao:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i196, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i195, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i194
  %i.lc = landingpad { ptr, i32 }
          cleanup
  %i.ld = load i32, ptr %i.c, align 4, !tbaa !124
  %i.le = add i32 %i.ld, -1                       ; 2 uses
  store i32 %i.le, ptr %i.c, align 4, !tbaa !124
  br label %.body

bb.ap:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i196
  %i.lf = load i32, ptr %i.c, align 4, !tbaa !124
  %i.lg = add i32 %i.lf, -1
  store i32 %i.lg, ptr %i.c, align 4, !tbaa !124
  %i.lh = load ptr, ptr %1, align 8, !tbaa !22
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = invoke noundef i32 %i.lj(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit201 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit201: ; preds = %bb.ap
  %i.ll = add i32 %i.kl, %.9
  %i.lm = add i32 %i.ll, %i.kt
  %i.ln = add i32 %i.lm, %i.kx
  %i.lo = add i32 %i.ln, %i.lb
  %i.lp = add i32 %i.lo, %i.lk
  %.pre256.a = load i16, ptr %i.p, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit201, %bb.am
  %i.lq = phi i16 [ %.pre256.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit201 ], [ %i.kg, %bb.am ] ; 2 uses
  %.10 = phi i32 [ %i.lp, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit201 ], [ %.9, %bb.am ] ; 2 uses
  %i.lr = and i16 %i.lq, 2048
  %.not121.a = icmp eq i16 %i.lr, 0
  br i1 %.not121.a, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ls = load ptr, ptr %1, align 8, !tbaa !22
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = invoke noundef i32 %i.lu(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.28, i32 noundef 12, i16 noundef signext 13)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit203 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit203: ; preds = %bb.ar
  %i.lw = load i32, ptr %i.a, align 8, !tbaa !94
  %i.lx = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ly = add i32 %i.lx, 1                        ; 2 uses
  store i32 %i.ly, ptr %i.c, align 4, !tbaa !124
  %i.lz = icmp ult i32 %i.lw, %i.ly
  br i1 %i.lz, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i204

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i204: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit203
  %i.ma = load ptr, ptr %1, align 8, !tbaa !22
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = invoke noundef i32 %i.mc(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.175)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i205 unwind label %bb.as, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i205: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i204
  %i.me = load ptr, ptr %1, align 8, !tbaa !22
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 64
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = invoke noundef i32 %i.mg(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i206 unwind label %bb.as, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i206: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i205
  %i.mi = load ptr, ptr %1, align 8, !tbaa !22
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = invoke noundef i32 %i.mk(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.at unwind label %bb.as, !inline_history !135

bb.as:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i206, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i205, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i204
  %i.mm = landingpad { ptr, i32 }
          cleanup
  %i.mn = load i32, ptr %i.c, align 4, !tbaa !124
  %i.mo = add i32 %i.mn, -1                       ; 2 uses
  store i32 %i.mo, ptr %i.c, align 4, !tbaa !124
  br label %.body

bb.at:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i206
  %i.mp = load i32, ptr %i.c, align 4, !tbaa !124
  %i.mq = add i32 %i.mp, -1
  store i32 %i.mq, ptr %i.c, align 4, !tbaa !124
  %i.mr = load ptr, ptr %1, align 8, !tbaa !22
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = invoke noundef i32 %i.mt(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit211 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit211: ; preds = %bb.at
  %i.mv = add i32 %i.lv, %.10
  %i.mw = add i32 %i.mv, %i.md
  %i.mx = add i32 %i.mw, %i.mh
  %i.my = add i32 %i.mx, %i.ml
  %i.mz = add i32 %i.my, %i.mu
  %.pre257.a = load i16, ptr %i.p, align 8
  br label %bb.au

bb.au:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit211, %bb.aq
  %i.na = phi i16 [ %.pre257.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit211 ], [ %i.lq, %bb.aq ] ; 2 uses
  %.11 = phi i32 [ %i.mz, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit211 ], [ %.10, %bb.aq ] ; 2 uses
  %i.nb = and i16 %i.na, 4096
  %.not122.a = icmp eq i16 %i.nb, 0
  br i1 %.not122.a, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nc = load ptr, ptr %1, align 8, !tbaa !22
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 48
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = invoke noundef i32 %i.ne(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.195, i32 noundef 12, i16 noundef signext 14)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit213 unwind label %bb.f, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit213: ; preds = %bb.av
  %i.ng = load i32, ptr %i.a, align 8, !tbaa !94
  %i.nh = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ni = add i32 %i.nh, 1                        ; 2 uses
  store i32 %i.ni, ptr %i.c, align 4, !tbaa !124
  %i.nj = icmp ult i32 %i.ng, %i.ni
  br i1 %i.nj, label %.invoke, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i214

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i214: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit213
  %i.nk = load ptr, ptr %1, align 8, !tbaa !22
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = invoke noundef i32 %i.nm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.125)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i215 unwind label %bb.aw, !inline_history !125

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i215: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i214
  %i.no = load ptr, ptr %1, align 8, !tbaa !22
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 64
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = invoke noundef i32 %i.nq(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i216 unwind label %bb.aw, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i216: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i215
  %i.ns = load ptr, ptr %1, align 8, !tbaa !22
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = invoke noundef i32 %i.nu(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.ax unwind label %bb.aw, !inline_history !135

bb.aw:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i216, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit.i215, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit.i214
  %i.nw = landingpad { ptr, i32 }
          cleanup
  %i.nx = load i32, ptr %i.c, align 4, !tbaa !124
  %i.ny = add i32 %i.nx, -1                       ; 2 uses
  store i32 %i.ny, ptr %i.c, align 4, !tbaa !124
  br label %.body

bb.ax:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit.i216
  %i.nz = load i32, ptr %i.c, align 4, !tbaa !124
  %i.oa = add i32 %i.nz, -1
  store i32 %i.oa, ptr %i.c, align 4, !tbaa !124
  %i.ob = load ptr, ptr %1, align 8, !tbaa !22
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 56
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = invoke noundef i32 %i.od(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit221 unwind label %bb.f, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit221: ; preds = %bb.ax
end_hunk_1
begin_hunk_2_@_ZN14duckdb_parquet11LogicalTypeaSEOS0_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  br i1 %i.ai, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  br i1 %i.ai, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !39 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZN14duckdb_parquet12GeometryTypeaSEOS0_.exit, label %bb.c, !prof !224

bb.c:                                             ; preds = %bb.b
  switch i64 %i.ak, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !38
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !39
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !38
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !36
  br label %_ZN14duckdb_parquet12GeometryTypeaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !39
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !38
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !38
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !38
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !39
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !38
  store i64 %i.az, ptr %i.ae, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !36
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !38
  br label %_ZN14duckdb_parquet12GeometryTypeaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !36
  br label %_ZN14duckdb_parquet12GeometryTypeaSEOS0_.exit

_ZN14duckdb_parquet12GeometryTypeaSEOS0_.exit:    ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.ba = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ad, %bb.f ], [ %i.ah, %bb.g ], [ %i.ag, %bb.b ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 0, ptr %i.bb, align 8, !tbaa !39
  store i8 0, ptr %i.ba, align 1, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.be = load i8, ptr %i.bc, align 8, !tbaa !38
  store i8 %i.be, ptr %i.bd, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 6 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl                ; 2 uses
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZN14duckdb_parquet12GeometryTypeaSEOS0_.exit
  br i1 %i.bm, label %bb.h, label %.thread.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19: ; preds = %_ZN14duckdb_parquet12GeometryTypeaSEOS0_.exit
  br i1 %i.bm, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i20

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !39 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bp)
  %.not21.i.i22 = icmp eq ptr %1, %0
  br i1 %.not21.i.i22, label %_ZN14duckdb_parquet13GeographyTypeaSEOS0_.exit, label %bb.i, !prof !224

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bo, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i23
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !38
  store i8 %i.bq, ptr %i.bh, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i23

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bk, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i23: ; preds = %bb.k, %bb.j, %bb.i
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !39
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !38
  %.pre.i.i24 = load ptr, ptr %i.bf, align 8, !tbaa !36
  br label %_ZN14duckdb_parquet13GeographyTypeaSEOS0_.exit

.thread.i.i26:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !36
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !39
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !39
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !38
  store i64 %i.by, ptr %i.bi, align 8, !tbaa !38
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19
  %i.bz = load i64, ptr %i.bi, align 8, !tbaa !38
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !39
  %i.cd = load i64, ptr %i.bl, align 8, !tbaa !38
  store i64 %i.cd, ptr %i.bi, align 8, !tbaa !38
  %.not.i.i21 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i20
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !36
  store i64 %i.bz, ptr %i.bl, align 8, !tbaa !38
  br label %_ZN14duckdb_parquet13GeographyTypeaSEOS0_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i20, %.thread.i.i26
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !36
  br label %_ZN14duckdb_parquet13GeographyTypeaSEOS0_.exit

_ZN14duckdb_parquet13GeographyTypeaSEOS0_.exit:   ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i23, %bb.l, %bb.m
  %i.ce = phi ptr [ %.pre.i.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i23 ], [ %i.bh, %bb.l ], [ %i.bl, %bb.m ], [ %i.bk, %bb.h ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 0, ptr %i.cf, align 8, !tbaa !39
  store i8 0, ptr %i.ce, align 1, !tbaa !38
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !353
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !353
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.cl = load i8, ptr %i.cj, align 4, !tbaa !38
  store i8 %i.cl, ptr %i.ck, align 4, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cn, ptr noundef nonnull align 8 dereferenceable(3) %i.cm, i64 3, i1 false), !tbaa.struct !363
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK14duckdb_parquet11LogicalType7printToERSo(ptr noundef nonnull align 8 dereferenceable(347) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.200, i64 noundef 12) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.201, i64 noundef 7) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 16 uses
  %i.d = load i16, ptr %i.c, align 8
  %i.e = trunc i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %2, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.g, i64 noundef %i.i)
          to label %bb.d unwind label %bb.am      ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.202, i64 noundef 4) ; 0 uses
  %i.q = load i16, ptr %i.c, align 8
  %i.r = and i16 %i.q, 2
  %.not.not.not = icmp eq i16 %i.r, 0
  br i1 %.not.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet7MapTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.t = load ptr, ptr %3, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit271 unwind label %bb.an ; 0 uses

bb.f:                                             ; preds = %.critedge
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge206

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit271: ; preds = %bb.e
  %i.y = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit271
  call void @_ZdlPv(ptr noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.critedge206

.critedge206:                                     ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.203, i64 noundef 5) ; 0 uses
  %i.ad = load i16, ptr %i.c, align 8
  %i.ae = and i16 %i.ad, 4
  %.not.not.not191 = icmp eq i16 %i.ae, 0
  br i1 %.not.not.not191, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8ListTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit276 unwind label %bb.ao ; 0 uses

bb.h:                                             ; preds = %.critedge206
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge208

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit276: ; preds = %bb.g
  %i.al = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit276
  call void @_ZdlPv(ptr noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge208

.critedge208:                                     ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.204, i64 noundef 5) ; 0 uses
  %i.aq = load i16, ptr %i.c, align 8
  %i.ar = and i16 %i.aq, 8
  %.not.not.not192 = icmp eq i16 %i.ar, 0
  br i1 %.not.not.not192, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge208
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8EnumTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.as)
  %i.at = load ptr, ptr %5, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.at, i64 noundef %i.av)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit281 unwind label %bb.ap ; 0 uses

bb.j:                                             ; preds = %.critedge208
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge210

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit281: ; preds = %bb.i
  %i.ay = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit281
  call void @_ZdlPv(ptr noundef %i.ay) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge210

.critedge210:                                     ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.205, i64 noundef 8) ; 0 uses
  %i.bd = load i16, ptr %i.c, align 8
  %i.be = and i16 %i.bd, 16
  %.not.not.not193 = icmp eq i16 %i.be, 0
  br i1 %.not.not.not193, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge210
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet11DecimalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
  %i.bg = load ptr, ptr %6, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !39
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bg, i64 noundef %i.bi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286 unwind label %bb.aq ; 0 uses

bb.l:                                             ; preds = %.critedge210
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge212

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286: ; preds = %bb.k
  %i.bl = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286
  call void @_ZdlPv(ptr noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge212

.critedge212:                                     ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.206, i64 noundef 5) ; 0 uses
  %i.bq = load i16, ptr %i.c, align 8
  %i.br = and i16 %i.bq, 32
  %.not.not.not194 = icmp eq i16 %i.br, 0
  br i1 %.not.not.not194, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge212
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8DateTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
  %i.bt = load ptr, ptr %7, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !39
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bt, i64 noundef %i.bv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit291 unwind label %bb.ar ; 0 uses

bb.n:                                             ; preds = %.critedge212
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge214

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit291: ; preds = %bb.m
  %i.by = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit291
  call void @_ZdlPv(ptr noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge214

.critedge214:                                     ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.207, i64 noundef 5) ; 0 uses
  %i.cd = load i16, ptr %i.c, align 8
  %i.ce = and i16 %i.cd, 64
  %.not.not.not195 = icmp eq i16 %i.ce, 0
  br i1 %.not.not.not195, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge214
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8TimeTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.cf)
  %i.cg = load ptr, ptr %8, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !39
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cg, i64 noundef %i.ci)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit296 unwind label %bb.as ; 0 uses

bb.p:                                             ; preds = %.critedge214
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge216

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit296: ; preds = %bb.o
  %i.cl = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit296
  call void @_ZdlPv(ptr noundef %i.cl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge216

.critedge216:                                     ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.208, i64 noundef 10) ; 0 uses
  %i.cq = load i16, ptr %i.c, align 8
  %i.cr = and i16 %i.cq, 128
  %.not.not.not196 = icmp eq i16 %i.cr, 0
  br i1 %.not.not.not196, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge216
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet13TimestampTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.cs)
  %i.ct = load ptr, ptr %9, align 8, !tbaa !36
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !39
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ct, i64 noundef %i.cv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit301 unwind label %bb.at ; 0 uses

bb.r:                                             ; preds = %.critedge216
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge218

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit301: ; preds = %bb.q
  %i.cy = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit301
  call void @_ZdlPv(ptr noundef %i.cy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge218

.critedge218:                                     ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.209, i64 noundef 8) ; 0 uses
  %19 = load i16, ptr %i.c, align 8
  %20 = and i16 %19, 256
  %.not.not.not197 = icmp eq i16 %20, 0
  br i1 %.not.not.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge218
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet7IntTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(10) %i.dd)
  %i.de = load ptr, ptr %10, align 8, !tbaa !36
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !39
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.de, i64 noundef %i.dg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit306 unwind label %bb.au ; 0 uses

bb.t:                                             ; preds = %.critedge218
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge220

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit306: ; preds = %bb.s
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit306
  call void @_ZdlPv(ptr noundef %i.dj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.critedge220

.critedge220:                                     ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.210, i64 noundef 8) ; 0 uses
  %i.do = load i16, ptr %i.c, align 8
  %i.dp = and i16 %i.do, 512
  %.not.not.not198.a = icmp eq i16 %i.dp, 0
  br i1 %.not.not.not198.a, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge220
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8NullTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
  %i.dr = load ptr, ptr %11, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !39
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dr, i64 noundef %i.dt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311 unwind label %bb.av ; 0 uses

bb.v:                                             ; preds = %.critedge220
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge222

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311: ; preds = %bb.u
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311
  call void @_ZdlPv(ptr noundef %i.dw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.critedge222

.critedge222:                                     ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.211, i64 noundef 5) ; 0 uses
  %i.eb = load i16, ptr %i.c, align 8
  %i.ec = and i16 %i.eb, 1024
  %.not.not.not199.a = icmp eq i16 %i.ec, 0
  br i1 %.not.not.not199.a, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge222
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8JsonTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
  %i.ee = load ptr, ptr %12, align 8, !tbaa !36
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !39
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ee, i64 noundef %i.eg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316 unwind label %bb.aw ; 0 uses

bb.x:                                             ; preds = %.critedge222
  %i.ei = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge224

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316: ; preds = %bb.w
  %i.ej = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316
  call void @_ZdlPv(ptr noundef %i.ej) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.critedge224

.critedge224:                                     ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.en = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.212, i64 noundef 5) ; 0 uses
  %i.eo = load i16, ptr %i.c, align 8
  %i.ep = and i16 %i.eo, 2048
  %.not.not.not200.a = icmp eq i16 %i.ep, 0
  br i1 %.not.not.not200.a, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge224
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8BsonTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
  %i.er = load ptr, ptr %13, align 8, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !39
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.er, i64 noundef %i.et)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit321 unwind label %bb.ax ; 0 uses

bb.z:                                             ; preds = %.critedge224
  %i.ev = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge226

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit321: ; preds = %bb.y
  %i.ew = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit321
  call void @_ZdlPv(ptr noundef %i.ew) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.critedge226

.critedge226:                                     ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.213, i64 noundef 5) ; 0 uses
  %i.fb = load i16, ptr %i.c, align 8
  %i.fc = and i16 %i.fb, 4096
  %.not.not.not201.a = icmp eq i16 %i.fc, 0
  br i1 %.not.not.not201.a, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge226
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8UUIDTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.fd)
  %i.fe = load ptr, ptr %14, align 8, !tbaa !36
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !39
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fe, i64 noundef %i.fg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326 unwind label %bb.ay ; 0 uses

bb.ab:                                            ; preds = %.critedge226
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge228

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326: ; preds = %bb.aa
  %i.fj = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326
  call void @_ZdlPv(ptr noundef %i.fj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.critedge228

.critedge228:                                     ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.214, i64 noundef 8) ; 0 uses
  %i.fo = load i16, ptr %i.c, align 8
  %i.fp = and i16 %i.fo, 8192
  %.not.not.not202.a = icmp eq i16 %i.fp, 0
  br i1 %.not.not.not202.a, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.critedge228
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet11Float16TypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
  %i.fr = load ptr, ptr %15, align 8, !tbaa !36
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !39
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fr, i64 noundef %i.ft)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit331 unwind label %bb.az ; 0 uses

bb.ad:                                            ; preds = %.critedge228
  %i.fv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge230

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit331: ; preds = %bb.ac
  %i.fw = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
end_hunk_2
begin_hunk_3_@_ZN14duckdb_parquet13SchemaElement4readEPN13duckdb_apache6thrift8protocol9TProtocolE:bb.a
.loopexit.split-lp134:                            ; preds = %select.unfold.i107
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp134, %.loopexit133
  %lpad.phi137 = phi { ptr, i32 } [ %lpad.loopexit135, %.loopexit133 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.ai

bb.w:                                             ; preds = %bb.d
  %i.dv = icmp eq i32 %i.am, 8
  br i1 %i.dv, label %bb.x, label %.invoke

bb.x:                                             ; preds = %bb.w
  %i.dw = load ptr, ptr %1, align 8, !tbaa !22
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 312
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.aa)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit112 unwind label %.loopexit, !inline_history !185

_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit112: ; preds = %bb.x
  %i.ea = load i16, ptr %i.x, align 8
  %i.eb = or i16 %i.ea, 32
  store i16 %i.eb, ptr %i.x, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.y:                                             ; preds = %bb.d
  %i.ec = icmp eq i32 %i.am, 8
  br i1 %i.ec, label %bb.z, label %.invoke

bb.z:                                             ; preds = %bb.y
  %i.ed = load ptr, ptr %1, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 312
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i32 %i.ef(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit116 unwind label %.loopexit, !inline_history !185

_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit116: ; preds = %bb.z
  %i.eh = load i16, ptr %i.x, align 8
  %i.ei = or i16 %i.eh, 64
  store i16 %i.ei, ptr %i.x, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.aa:                                            ; preds = %bb.d
  %i.ej = icmp eq i32 %i.am, 8
  br i1 %i.ej, label %bb.ab, label %.invoke

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load ptr, ptr %1, align 8, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 312
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef i32 %i.em(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.y)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit120 unwind label %.loopexit, !inline_history !185

_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit120: ; preds = %bb.ab
  %i.eo = load i16, ptr %i.x, align 8
  %i.ep = or i16 %i.eo, 128
  store i16 %i.ep, ptr %i.x, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

bb.ac:                                            ; preds = %bb.d
  %i.eq = icmp eq i32 %i.am, 12
  br i1 %i.eq, label %bb.ad, label %.invoke

bb.ad:                                            ; preds = %bb.ac
  %i.er = invoke noundef i32 @_ZN14duckdb_parquet11LogicalType4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(347) %i.w, ptr noundef nonnull %1)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i16, ptr %i.x, align 8
  %i.et = or i16 %i.es, 256
  store i16 %i.et, ptr %i.x, align 8
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit

_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit: ; preds = %.invoke, %bb.p, %bb.ae, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit120, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit116, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit112, %_ZN14duckdb_parquetL12SafeEnumCastINS_13ConvertedTypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit92, %_ZN14duckdb_parquetL12SafeEnumCastINS_19FieldRepetitionTypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit69, %_ZN14duckdb_parquetL12SafeEnumCastINS_4TypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit
  %.pn = phi i32 [ %i.dz, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit112 ], [ %i.au, %_ZN14duckdb_parquetL12SafeEnumCastINS_4TypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit ], [ %i.en, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit120 ], [ %i.bs, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit69 ], [ %i.eg, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit116 ], [ %i.bz, %_ZN14duckdb_parquetL12SafeEnumCastINS_19FieldRepetitionTypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit ], [ %i.bn, %.invoke ], [ %i.df, %_ZN14duckdb_parquetL12SafeEnumCastINS_13ConvertedTypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit ], [ %i.er, %bb.ae ], [ %i.cy, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit92 ], [ %i.ct, %bb.p ]
  %.1 = phi i1 [ %.0, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit112 ], [ %.0, %_ZN14duckdb_parquetL12SafeEnumCastINS_4TypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit ], [ %.0, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit120 ], [ %.0, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit69 ], [ %.0, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit116 ], [ %.0, %_ZN14duckdb_parquetL12SafeEnumCastINS_19FieldRepetitionTypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit ], [ %.0, %.invoke ], [ %.0, %_ZN14duckdb_parquetL12SafeEnumCastINS_13ConvertedTypeEEENT_4typeERKSt3mapIiPKcSt4lessIiESaISt4pairIKiS6_EEERSA_.exit ], [ %.0, %bb.ae ], [ %.0, %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit92 ], [ true, %bb.p ]
  %i.eu = load ptr, ptr %1, align 8, !tbaa !22
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 224
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef i32 %i.ew(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readFieldEndEv.exit unwind label %.loopexit, !inline_history !121

_ZN13duckdb_apache6thrift8protocol9TProtocol12readFieldEndEv.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol4skipENS1_5TTypeE.exit
  %.160 = add i32 %.pn, %i.al
  %i.ey = add i32 %.160, %i.ex
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol15readStructBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !531

bb.af:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14readFieldBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_5TTypeERs.exit
  %i.ez = load ptr, ptr %1, align 8, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 208
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit unwind label %.loopexit.split-lp, !inline_history !123

_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit: ; preds = %bb.af
  br i1 %.0, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit
  %i.fd = call ptr @__cxa_allocate_exception(i64 48) #28 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 2 uses
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !33
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 0, ptr %i.fg, align 8, !tbaa !39
  store i8 0, ptr %i.ff, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %i.fd, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store i32 1, ptr %i.fh, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #29
          to label %bb.aj unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.fi = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.q
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.fi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fk = add i32 %i.fc, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.fl = load i32, ptr %i.h, align 8, !tbaa !101
  %i.fm = add i32 %i.fl, -1
  store i32 %i.fm, ptr %i.h, align 8, !tbaa !101
  ret i32 %i.fk

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.n, %bb.v, %bb.c
  %.pn62.pn = phi { ptr, i32 } [ %i.ao, %bb.c ], [ %lpad.phi142, %bb.n ], [ %lpad.phi137, %bb.v ], [ %lpad.phi147, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.fn = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.q
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.fn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.fp = load i32, ptr %i.h, align 8, !tbaa !101
  %i.fq = add i32 %i.fp, -1
  store i32 %i.fq, ptr %i.h, align 8, !tbaa !101
  resume { ptr, i32 } %.pn62.pn

bb.aj:                                            ; preds = %bb.ag
  unreachable
}

; Function Attrs: uwtable
define hidden noundef i32 @_ZTv0_n32_N14duckdb_parquet13SchemaElement4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef %0, ptr noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef i32 @_ZN14duckdb_parquet13SchemaElement4readEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(434) %i.d, ptr noundef %1)
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK14duckdb_parquet13SchemaElement5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(434) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !124
  %i.e = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !124
  %i.f = icmp ult i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 48) #28 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !39
  store i8 0, ptr %i.i, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %i.g, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 6, ptr %i.k, align 8, !tbaa !102
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #29
  unreachable

_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.218)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit unwind label %bb.d, !inline_history !125 ; 2 uses

_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 9 uses
  %i.q = load i16, ptr %i.p, align 8              ; 2 uses
  %i.r = trunc i16 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.219, i32 noundef 8, i16 noundef signext 1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !507
  %i.y = load ptr, ptr %1, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.x)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit unwind label %bb.d, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit
  %i.ag = add i32 %i.v, %i.o
  %i.ah = add i32 %i.ag, %i.ab
  %i.ai = add i32 %i.ah, %i.af
  %.pre = load i16, ptr %i.p, align 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit, %bb.v, %bb.u, %bb.t, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit98, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit97, %bb.r, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit95, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit94, %bb.p, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit92, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit91, %bb.n, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit89, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit88, %bb.l, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit86, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit85, %bb.j, %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit83, %bb.i, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit81, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit80, %bb.h, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit78, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit77, %bb.f, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit, %bb.c, %_ZN13duckdb_apache6thrift8protocol23TOutputRecursionTrackerC2ERNS1_9TProtocolE.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit100
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !124
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.c, align 4, !tbaa !124
  resume { ptr, i32 } %i.aj

bb.e:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit
  %i.am = phi i16 [ %.pre, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit ], [ %i.q, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit ] ; 2 uses
  %.0 = phi i32 [ %i.ai, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit ], [ %i.o, %_ZN13duckdb_apache6thrift8protocol9TProtocol16writeStructBeginEPKc.exit ] ; 2 uses
  %i.an = and i16 %i.am, 2
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %1, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.220, i32 noundef 8, i16 noundef signext 2)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit77 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit77: ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !524
  %i.au = load ptr, ptr %1, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.at)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit78 unwind label %bb.d, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit78: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit77
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit79 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit79: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit78
  %i.bc = add i32 %i.ar, %.0
  %i.bd = add i32 %i.bc, %i.ax
  %i.be = add i32 %i.bd, %i.bb
  %.pre103.a = load i16, ptr %i.p, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit79, %bb.e
  %i.bf = phi i16 [ %.pre103.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit79 ], [ %i.am, %bb.e ]
  %.1 = phi i32 [ %i.be, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit79 ], [ %.0, %bb.e ] ; 2 uses
  %i.bg = and i16 %i.bf, 4
  %.not70 = icmp eq i16 %i.bg, 0
  br i1 %.not70, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %1, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.221, i32 noundef 8, i16 noundef signext 3)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit80 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit80: ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !525
  %i.bn = load ptr, ptr %1, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.bm)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit81 unwind label %bb.d, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit81: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit80
  %i.br = load ptr, ptr %1, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit82 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit82: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit81
  %i.bv = add i32 %i.bk, %.1
  %i.bw = add i32 %i.bv, %i.bq
  %i.bx = add i32 %i.bw, %i.bu
  br label %bb.i

bb.i:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit82, %bb.g
  %.2 = phi i32 [ %i.bx, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit82 ], [ %.1, %bb.g ]
  %i.by = load ptr, ptr %1, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.222, i32 noundef 11, i16 noundef signext 4)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit83 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit83: ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %1, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 168
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d, !inline_history !349

_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit83
  %i.ch = load ptr, ptr %1, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit84 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit84: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cl = add i32 %i.cb, %.2
  %i.cm = add i32 %i.cl, %i.cg
  %i.cn = add i32 %i.cm, %i.ck                    ; 2 uses
  %i.co = load i16, ptr %i.p, align 8             ; 2 uses
  %i.cp = and i16 %i.co, 8
  %.not71 = icmp eq i16 %i.cp, 0
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit84
  %i.cq = load ptr, ptr %1, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.223, i32 noundef 8, i16 noundef signext 5)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit85 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit85: ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !526
  %i.cw = load ptr, ptr %1, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 144
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.cv)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit86 unwind label %bb.d, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit86: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit85
  %i.da = load ptr, ptr %1, align 8, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef i32 %i.dc(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit87 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit87: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit86
  %i.de = add i32 %i.ct, %i.cn
  %i.df = add i32 %i.de, %i.cz
  %i.dg = add i32 %i.df, %i.dd
  %.pre104.a = load i16, ptr %i.p, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit87, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit84
  %i.dh = phi i16 [ %.pre104.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit87 ], [ %i.co, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit84 ] ; 2 uses
  %.3 = phi i32 [ %i.dg, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit87 ], [ %i.cn, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit84 ] ; 2 uses
  %i.di = and i16 %i.dh, 16
  %.not72 = icmp eq i16 %i.di, 0
  br i1 %.not72, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = load ptr, ptr %1, align 8, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef i32 %i.dl(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.224, i32 noundef 8, i16 noundef signext 6)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit88 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit88: ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !527
  %i.dp = load ptr, ptr %1, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 144
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i32 %i.dr(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.do)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit89 unwind label %bb.d, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit89: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit88
  %i.dt = load ptr, ptr %1, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit90 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit90: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit89
  %i.dx = add i32 %i.dm, %.3
  %i.dy = add i32 %i.dx, %i.ds
  %i.dz = add i32 %i.dy, %i.dw
  %.pre105.a = load i16, ptr %i.p, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit90, %bb.k
  %i.ea = phi i16 [ %.pre105.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit90 ], [ %i.dh, %bb.k ] ; 2 uses
  %.4 = phi i32 [ %i.dz, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit90 ], [ %.3, %bb.k ] ; 2 uses
  %i.eb = and i16 %i.ea, 32
  %.not73 = icmp eq i16 %i.eb, 0
  br i1 %.not73, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = load ptr, ptr %1, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke noundef i32 %i.ee(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.140, i32 noundef 8, i16 noundef signext 7)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit91 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit91: ; preds = %bb.n
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !528
  %i.ei = load ptr, ptr %1, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = invoke noundef i32 %i.ek(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.eh)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit92 unwind label %bb.d, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit92: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit91
  %i.em = load ptr, ptr %1, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit93 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit93: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit92
  %i.eq = add i32 %i.ef, %.4
  %i.er = add i32 %i.eq, %i.el
  %i.es = add i32 %i.er, %i.ep
  %.pre106.a = load i16, ptr %i.p, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit93, %bb.m
  %i.et = phi i16 [ %.pre106.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit93 ], [ %i.ea, %bb.m ] ; 2 uses
  %.5 = phi i32 [ %i.es, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit93 ], [ %.4, %bb.m ] ; 2 uses
  %i.eu = and i16 %i.et, 64
  %.not74 = icmp eq i16 %i.eu, 0
  br i1 %.not74, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ev = load ptr, ptr %1, align 8, !tbaa !22
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = invoke noundef i32 %i.ex(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.141, i32 noundef 8, i16 noundef signext 8)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit94 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit94: ; preds = %bb.p
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !529
  %i.fb = load ptr, ptr %1, align 8, !tbaa !22
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = invoke noundef i32 %i.fd(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.fa)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit95 unwind label %bb.d, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit95: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit94
  %i.ff = load ptr, ptr %1, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = invoke noundef i32 %i.fh(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit96 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit96: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit95
  %i.fj = add i32 %i.ey, %.5
  %i.fk = add i32 %i.fj, %i.fe
  %i.fl = add i32 %i.fk, %i.fi
  %.pre107.a = load i16, ptr %i.p, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit96, %bb.o
  %i.fm = phi i16 [ %.pre107.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit96 ], [ %i.et, %bb.o ] ; 2 uses
  %.6 = phi i32 [ %i.fl, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit96 ], [ %.5, %bb.o ] ; 2 uses
  %i.fn = and i16 %i.fm, 128
  %.not75 = icmp eq i16 %i.fn, 0
  br i1 %.not75, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = load ptr, ptr %1, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef i32 %i.fq(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.225, i32 noundef 8, i16 noundef signext 9)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit97 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit97: ; preds = %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !530
  %i.fu = load ptr, ptr %1, align 8, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 144
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = invoke noundef i32 %i.fw(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.ft)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit98 unwind label %bb.d, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit98: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit97
  %i.fy = load ptr, ptr %1, align 8, !tbaa !22
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit99 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit99: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit98
  %i.gc = add i32 %i.fr, %.6
  %i.gd = add i32 %i.gc, %i.fx
  %i.ge = add i32 %i.gd, %i.gb
  %.pre108 = load i16, ptr %i.p, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit99, %bb.q
  %2 = phi i16 [ %.pre108, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit99 ], [ %i.fm, %bb.q ]
  %.7 = phi i32 [ %i.ge, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit99 ], [ %.6, %bb.q ] ; 2 uses
  %3 = and i16 %2, 256
  %.not76 = icmp eq i16 %3, 0
  br i1 %.not76, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gf = load ptr, ptr %1, align 8, !tbaa !22
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = invoke noundef i32 %i.gh(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.226, i32 noundef 12, i16 noundef signext 10)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit100 unwind label %bb.d, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit100: ; preds = %bb.t
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gk = invoke noundef i32 @_ZNK14duckdb_parquet11LogicalType5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(347) %i.gj, ptr noundef nonnull %1)
          to label %bb.u unwind label %bb.d

bb.u:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit100
  %i.gl = load ptr, ptr %1, align 8, !tbaa !22
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = invoke noundef i32 %i.gn(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit101 unwind label %bb.d, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit101: ; preds = %bb.u
  %i.gp = add i32 %i.gi, %.7
  %i.gq = add i32 %i.gp, %i.gk
  %i.gr = add i32 %i.gq, %i.go
  br label %bb.v

bb.v:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit101, %bb.s
  %.8 = phi i32 [ %i.gr, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit101 ], [ %.7, %bb.s ]
  %i.gs = load ptr, ptr %1, align 8, !tbaa !22
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = invoke noundef i32 %i.gu(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit unwind label %bb.d, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit: ; preds = %bb.v
  %i.gw = load ptr, ptr %1, align 8, !tbaa !22
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = invoke noundef i32 %i.gy(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeStructEndEv.exit unwind label %bb.d, !inline_history !135

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeStructEndEv.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit
  %i.ha = add i32 %i.gv, %.8
  %i.hb = add i32 %i.ha, %i.gz
  %i.hc = load i32, ptr %i.c, align 4, !tbaa !124
  %i.hd = add i32 %i.hc, -1
  store i32 %i.hd, ptr %i.c, align 4, !tbaa !124
  ret i32 %i.hb
}

; Function Attrs: uwtable
define hidden noundef i32 @_ZTv0_n40_NK14duckdb_parquet13SchemaElement5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef %0, ptr noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef i32 @_ZNK14duckdb_parquet13SchemaElement5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(434) %i.d, ptr noundef %1)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN14duckdb_parquet4swapERNS_13SchemaElementES1_(ptr noundef nonnull align 8 dereferenceable(434) %0, ptr noundef nonnull align 8 dereferenceable(434) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.duckdb_parquet::_LogicalType__isset", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !38
  %i.d = load <2 x i32>, ptr %i.a, align 8, !tbaa !38
  store <2 x i32> %i.c, ptr %i.a, align 8, !tbaa !38
  store <2 x i32> %i.d, ptr %i.b, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !50
  %i.h = load i32, ptr %i.f, align 8, !tbaa !50
  store i32 %i.h, ptr %i.e, align 8, !tbaa !50
  store i32 %i.g, ptr %i.f, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load <2 x i32>, ptr %i.l, align 8, !tbaa !38
  %i.n = load <2 x i32>, ptr %i.k, align 8, !tbaa !38
  store <2 x i32> %i.m, ptr %i.k, align 8, !tbaa !38
  store <2 x i32> %i.n, ptr %i.l, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !3
  %i.r = load i32, ptr %i.p, align 8, !tbaa !3
  store i32 %i.r, ptr %i.o, align 8, !tbaa !3
  store i32 %i.q, ptr %i.p, align 8, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  store i32 %i.u, ptr %i.t, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.y = load i32, ptr %i.w, align 8, !tbaa !3
  %i.z = load i32, ptr %i.x, align 8, !tbaa !3
  store i32 %i.z, ptr %i.w, align 8, !tbaa !3
  store i32 %i.y, ptr %i.x, align 8, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !3
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !3
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !3
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !3
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ak = load i8, ptr %i.ai, align 8, !tbaa !223, !range !220, !noundef !221
  %i.al = load i8, ptr %i.aj, align 8, !tbaa !223, !range !220, !noundef !221
  store i8 %i.al, ptr %i.ai, align 8, !tbaa !223
  store i8 %i.ak, ptr %i.aj, align 8, !tbaa !223
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.am, align 8, !tbaa !38
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !38
  store i8 %i.ao, ptr %i.am, align 8, !tbaa !38
  store i8 %.sroa.0.0.copyload.i.i.i.i, ptr %i.an, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.ar = load i8, ptr %i.ap, align 8, !tbaa !223, !range !220, !noundef !221
  %i.as = load i8, ptr %i.aq, align 8, !tbaa !223, !range !220, !noundef !221
  store i8 %i.as, ptr %i.ap, align 8, !tbaa !223
  store i8 %i.ar, ptr %i.aq, align 8, !tbaa !223
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %.sroa.0.0.copyload.i.i.i36.i = load i8, ptr %i.at, align 8, !tbaa !38
  %i.av = load i8, ptr %i.au, align 8, !tbaa !38
  store i8 %i.av, ptr %i.at, align 8, !tbaa !38
  store i8 %.sroa.0.0.copyload.i.i.i36.i, ptr %i.au, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ay = load i8, ptr %i.aw, align 8, !tbaa !38
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !38
  store i8 %i.az, ptr %i.aw, align 8, !tbaa !38
  store i8 %i.ay, ptr %i.ax, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 265 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 265 ; 2 uses
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !223, !range !220, !noundef !221
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !223, !range !220, !noundef !221
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !223
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !223
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.bg = load i8, ptr %i.be, align 8, !tbaa !38
  %i.bh = load i8, ptr %i.bf, align 8, !tbaa !38
  store i8 %i.bh, ptr %i.be, align 8, !tbaa !38
  store i8 %i.bg, ptr %i.bf, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 321 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.bi, align 1, !tbaa !38
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !38
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !38
  store i8 %.sroa.0.0.copyload.i.i.i, ptr %i.bj, align 1, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 336
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bm) #28
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %.sroa.0.0.copyload.i.i37.i = load i8, ptr %i.bn, align 8, !tbaa !38
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !38
  store i8 %i.bp, ptr %i.bn, align 8, !tbaa !38
  store i8 %.sroa.0.0.copyload.i.i37.i, ptr %i.bo, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.br) #28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 8, !tbaa !55
  %i.bv = load i32, ptr %i.bt, align 8, !tbaa !55
  store i32 %i.bv, ptr %i.bs, align 8, !tbaa !55
  store i32 %i.bu, ptr %i.bt, align 8, !tbaa !55
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 420 ; 2 uses
  %.sroa.0.0.copyload.i.i38.i = load i8, ptr %i.bw, align 4, !tbaa !38
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !38
  store i8 %i.by, ptr %i.bw, align 4, !tbaa !38
  store i8 %.sroa.0.0.copyload.i.i38.i, ptr %i.bx, align 4, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 8 dereferenceable(3) %i.bz, i64 3, i1 false), !tbaa.struct !363
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bz, ptr noundef nonnull align 8 dereferenceable(3) %i.ca, i64 3, i1 false), !tbaa.struct !363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ca, ptr noundef nonnull align 1 dereferenceable(3) %2, i64 3, i1 false), !tbaa.struct !363
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.cb, align 8, !tbaa !38
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !38
  store i16 %i.cd, ptr %i.cb, align 8, !tbaa !38
end_hunk_3
begin_hunk_4_@_ZN14duckdb_parquet13SchemaElementaSERKS0_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load <4 x i32>, ptr %i.i, align 8, !tbaa !38
  store <4 x i32> %i.k, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !530
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.m, ptr %i.n, align 8, !tbaa !530
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load <2 x i32>, ptr %i.o, align 8, !tbaa !3
  store <2 x i32> %i.q, ptr %i.p, align 8, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load i8, ptr %i.r, align 8, !tbaa !317, !range !220, !noundef !221
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.s, ptr %i.t, align 8, !tbaa !317
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = load i8, ptr %i.u, align 8, !tbaa !38
  store i8 %i.w, ptr %i.v, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.y = load i8, ptr %i.x, align 8, !tbaa !300, !range !220, !noundef !221
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 %i.y, ptr %i.z, align 8, !tbaa !300
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load i8, ptr %i.aa, align 8, !tbaa !38
  store i8 %i.ac, ptr %i.ab, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !321
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %i.ae, ptr %i.af, align 8, !tbaa !321
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 265
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !323, !range !220, !noundef !221
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !323
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !340
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 %i.ak, ptr %i.al, align 8, !tbaa !340
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 321
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !38
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.at = load i8, ptr %i.ar, align 8, !tbaa !38
  store i8 %i.at, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !353
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !353
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.bb = load i8, ptr %i.az, align 4, !tbaa !38
  store i8 %i.bb, ptr %i.ba, align 4, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bd, ptr noundef nonnull align 8 dereferenceable(3) %i.bc, i64 3, i1 false), !tbaa.struct !363
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bg = load i16, ptr %i.be, align 8, !tbaa !38
  store i16 %i.bg, ptr %i.bf, align 8, !tbaa !38
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull align 8 dereferenceable(434) ptr @_ZN14duckdb_parquet13SchemaElementaSEOS0_(ptr noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(434) initializes((8, 20)) %0, ptr noundef nonnull align 8 dereferenceable(434) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !38
  store <2 x i32> %i.c, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !525
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.f, align 8, !tbaa !525
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !36   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.n = icmp eq ptr %i.l, %i.m                   ; 2 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.n, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.n, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !224

bb.c:                                             ; preds = %bb.b
  switch i64 %i.p, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.l, align 1, !tbaa !38
  store i8 %i.r, ptr %i.i, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.s = load i64, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !39
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !38
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.l, ptr %i.h, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !39
  store i64 %i.y, ptr %i.w, align 8, !tbaa !39
  %i.z = load i64, ptr %i.m, align 8, !tbaa !38
  store i64 %i.z, ptr %i.j, align 8, !tbaa !38
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !38
  store ptr %i.l, ptr %i.h, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !39
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !38
  store i64 %i.ae, ptr %i.j, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.i, ptr %i.g, align 8, !tbaa !36
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.m, ptr %i.g, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.af = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.i, %bb.f ], [ %i.m, %bb.g ], [ %i.l, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !39
  store i8 0, ptr %i.af, align 1, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load <4 x i32>, ptr %i.ah, align 8, !tbaa !38
  store <4 x i32> %i.aj, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !530
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.al, ptr %i.am, align 8, !tbaa !530
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = tail call noundef nonnull align 8 dereferenceable(347) ptr @_ZN14duckdb_parquet11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(347) %i.ao, ptr noundef nonnull align 8 dereferenceable(347) %i.an) #28 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.as = load i16, ptr %i.aq, align 8, !tbaa !38
  store i16 %i.as, ptr %i.ar, align 8, !tbaa !38
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK14duckdb_parquet13SchemaElement7printToERSo(ptr noundef nonnull align 8 dereferenceable(434) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.227, i64 noundef 14) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.228, i64 noundef 5) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 9 uses
  %i.d = load i16, ptr %i.c, align 8
  %i.e = trunc i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN14duckdb_parquet9to_stringB5cxx11ERKNS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.g = load ptr, ptr %2, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.g, i64 noundef %i.i)
          to label %bb.d unwind label %bb.u       ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.229, i64 noundef 12) ; 0 uses
  %i.q = load i16, ptr %i.c, align 8
  %i.r = and i16 %i.q, 2
  %.not.not.not = icmp eq i16 %i.r, 0
  br i1 %.not.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @_ZN13duckdb_apache6thrift9to_stringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  %i.t = load ptr, ptr %3, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit146 unwind label %bb.v ; 0 uses

bb.f:                                             ; preds = %.critedge
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge113

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit146: ; preds = %bb.e
  %i.y = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit146
  call void @_ZdlPv(ptr noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.critedge113

.critedge113:                                     ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.230, i64 noundef 16) ; 0 uses
  %i.ad = load i16, ptr %i.c, align 8
  %i.ae = and i16 %i.ad, 4
  %.not.not.not104 = icmp eq i16 %i.ae, 0
  br i1 %.not.not.not104, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN14duckdb_parquet9to_stringB5cxx11ERKNS_19FieldRepetitionType4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.af)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151 unwind label %bb.w ; 0 uses

bb.h:                                             ; preds = %.critedge113
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge115

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151: ; preds = %bb.g
  %i.al = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151
  call void @_ZdlPv(ptr noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge115

.critedge115:                                     ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.231, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN13duckdb_apache6thrift9to_stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  %i.ar = load ptr, ptr %5, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ar, i64 noundef %i.at)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit156 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit156: ; preds = %.critedge115
  %i.av = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit156
  call void @_ZdlPv(ptr noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.232, i64 noundef 13) ; 0 uses
  %i.ba = load i16, ptr %i.c, align 8
  %i.bb = and i16 %i.ba, 8
  %.not.not.not105 = icmp eq i16 %i.bb, 0
  br i1 %.not.not.not105, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN13duckdb_apache6thrift9to_stringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.bc)
  %i.bd = load ptr, ptr %6, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !39
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit160 unwind label %bb.y ; 0 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge117

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit160: ; preds = %bb.i
  %i.bi = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit160
  call void @_ZdlPv(ptr noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge117

.critedge117:                                     ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.233, i64 noundef 15) ; 0 uses
  %i.bn = load i16, ptr %i.c, align 8
  %i.bo = and i16 %i.bn, 16
  %.not.not.not106 = icmp eq i16 %i.bo, 0
  br i1 %.not.not.not106, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @_ZN14duckdb_parquet9to_stringB5cxx11ERKNS_13ConvertedType4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.bp)
  %i.bq = load ptr, ptr %7, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bq, i64 noundef %i.bs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165 unwind label %bb.z ; 0 uses

bb.l:                                             ; preds = %.critedge117
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge119

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165: ; preds = %bb.k
  %i.bv = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165
  call void @_ZdlPv(ptr noundef %i.bv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge119

.critedge119:                                     ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.143, i64 noundef 6) ; 0 uses
  %i.ca = load i16, ptr %i.c, align 8
  %i.cb = and i16 %i.ca, 32
  %.not.not.not107 = icmp eq i16 %i.cb, 0
  br i1 %.not.not.not107, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge119
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN13duckdb_apache6thrift9to_stringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.cc)
  %i.cd = load ptr, ptr %8, align 8, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !39
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cd, i64 noundef %i.cf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit170 unwind label %bb.aa ; 0 uses

bb.n:                                             ; preds = %.critedge119
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge121

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit170: ; preds = %bb.m
  %i.ci = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit170
  call void @_ZdlPv(ptr noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge121

.critedge121:                                     ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.144, i64 noundef 10) ; 0 uses
  %i.cn = load i16, ptr %i.c, align 8
  %i.co = and i16 %i.cn, 64
  %.not.not.not108 = icmp eq i16 %i.co, 0
  br i1 %.not.not.not108, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge121
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 68
  call void @_ZN13duckdb_apache6thrift9to_stringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.cp)
  %i.cq = load ptr, ptr %9, align 8, !tbaa !36
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cq, i64 noundef %i.cs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit175 unwind label %bb.ab ; 0 uses

bb.p:                                             ; preds = %.critedge121
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge123

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit175: ; preds = %bb.o
  %i.cv = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit175
  call void @_ZdlPv(ptr noundef %i.cv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge123

.critedge123:                                     ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.234, i64 noundef 9) ; 0 uses
  %i.da = load i16, ptr %i.c, align 8
  %i.db = and i16 %i.da, 128
  %.not.not.not109 = icmp eq i16 %i.db, 0
  br i1 %.not.not.not109, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge123
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZN13duckdb_apache6thrift9to_stringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.dc)
  %i.dd = load ptr, ptr %10, align 8, !tbaa !36
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !39
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dd, i64 noundef %i.df)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit180 unwind label %bb.ac ; 0 uses

bb.r:                                             ; preds = %.critedge123
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge125

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit180: ; preds = %bb.q
  %i.di = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit180
  call void @_ZdlPv(ptr noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.critedge125

.critedge125:                                     ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.235, i64 noundef 12) ; 0 uses
  %12 = load i16, ptr %i.c, align 8
  %13 = and i16 %12, 256
  %.not.not.not111 = icmp eq i16 %13, 0
  br i1 %.not.not.not111, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge125
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet11LogicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(347) %i.dn)
  %i.do = load ptr, ptr %11, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !39
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.do, i64 noundef %i.dq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit185 unwind label %bb.ad ; 0 uses

bb.t:                                             ; preds = %.critedge125
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge127

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit185: ; preds = %bb.s
  %i.dt = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit185
  call void @_ZdlPv(ptr noundef %i.dt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.critedge127

.critedge127:                                     ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.80, i64 noundef 1) ; 0 uses
  ret void

bb.u:                                             ; preds = %bb.b
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.dy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge129

bb.v:                                             ; preds = %bb.e
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.critedge129

bb.w:                                             ; preds = %bb.g
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.eg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge129

bb.x:                                             ; preds = %.critedge115
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.ek) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge129

bb.y:                                             ; preds = %bb.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.eo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge129

bb.z:                                             ; preds = %bb.k
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.es) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge129

bb.aa:                                            ; preds = %bb.m
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.ew) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge129

bb.ab:                                            ; preds = %bb.o
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.fa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge129

bb.ac:                                            ; preds = %bb.q
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.fe) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.critedge129

bb.ad:                                            ; preds = %bb.s
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.fi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.critedge129

.critedge129:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %.pn = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet11LogicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(347) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
end_hunk_4
begin_hunk_5_@_ZNK14duckdb_parquet14ColumnMetaData5writeEPN13duckdb_apache6thrift8protocol9TProtocolE:bb.a
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit142, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit
  %.0.lcssa = phi i32 [ %i.ay, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit ], [ %i.bg, %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit142 ]
  %i.bk = load ptr, ptr %1, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit unwind label %.loopexit.split-lp220, !inline_history !132

_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit: ; preds = %._crit_edge
  %i.bo = load ptr, ptr %1, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit143 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit143: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.329, i32 noundef 15, i16 noundef signext 3)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit144 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit144: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit143
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !727
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !724
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 5
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load ptr, ptr %1, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef i32 %i.ch(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 11, i32 noundef %i.ce)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit145 unwind label %bb.c, !inline_history !129

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit145: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit144
  %i.cj = add i32 %i.bn, %.0.lcssa
  %i.ck = add i32 %i.cj, %i.br
  %i.cl = add i32 %i.ck, %i.bv
  %i.cm = add i32 %i.cl, %i.ci                    ; 2 uses
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !780 ; 2 uses
  %i.co = load ptr, ptr %i.bx, align 8, !tbaa !780
  %.not206231 = icmp eq ptr %i.cn, %i.co
  br i1 %.not206231, label %._crit_edge235, label %.lr.ph234

.lr.ph234:                                        ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit145, %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.1233 = phi i32 [ %i.ct, %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.cm, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit145 ]
  %.sroa.0196.0232 = phi ptr [ %i.cu, %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.cn, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit145 ] ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0196.0232)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit214, !inline_history !349

_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph234
  %i.ct = add i32 %i.cs, %.1233                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0196.0232, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.bx, align 8, !tbaa !780
  %.not206.a = icmp eq ptr %i.cu, %i.cv
  br i1 %.not206.a, label %._crit_edge235, label %.lr.ph234, !llvm.loop !781

.loopexit214:                                     ; preds = %.lr.ph234
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp215:                            ; preds = %._crit_edge235
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge235:                                   ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit145
  %.1.lcssa = phi i32 [ %i.cm, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit145 ], [ %i.ct, %_ZN13duckdb_apache6thrift8protocol9TProtocol11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.cw = load ptr, ptr %1, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit146 unwind label %.loopexit.split-lp215, !inline_history !132

_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit146: ; preds = %._crit_edge235
  %i.da = load ptr, ptr %1, align 8, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef i32 %i.dc(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit147 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit147: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit146
  %i.de = load ptr, ptr %1, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.330, i32 noundef 8, i16 noundef signext 4)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit148 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit148: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit147
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !759
  %i.dk = load ptr, ptr %1, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef i32 %i.dm(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.dj)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit149 unwind label %bb.c, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit149: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit148
  %i.do = load ptr, ptr %1, align 8, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef i32 %i.dq(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit150 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit150: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit149
  %i.ds = load ptr, ptr %1, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = invoke noundef i32 %i.du(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.237, i32 noundef 10, i16 noundef signext 5)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit151 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit151: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit150
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !760
  %i.dy = load ptr, ptr %1, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 152
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef i32 %i.ea(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.dx)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit unwind label %bb.c, !inline_history !127

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit151
  %i.ec = load ptr, ptr %1, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke noundef i32 %i.ee(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit152 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit152: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit
  %i.eg = load ptr, ptr %1, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef i32 %i.ei(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.331, i32 noundef 10, i16 noundef signext 6)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit153 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit153: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit152
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !761
  %i.em = load ptr, ptr %1, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.el)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit154 unwind label %bb.c, !inline_history !127

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit154: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit153
  %i.eq = load ptr, ptr %1, align 8, !tbaa !22
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef i32 %i.es(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit155 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit155: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit154
  %i.eu = load ptr, ptr %1, align 8, !tbaa !22
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef i32 %i.ew(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.332, i32 noundef 10, i16 noundef signext 7)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit156 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit156: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit155
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !762
  %i.fa = load ptr, ptr %1, align 8, !tbaa !22
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 152
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = invoke noundef i32 %i.fc(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.ez)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit157 unwind label %bb.c, !inline_history !127

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit157: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit156
  %i.fe = load ptr, ptr %1, align 8, !tbaa !22
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef i32 %i.fg(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit158 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit158: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit157
  %i.fi = add i32 %i.cz, %.1.lcssa
  %i.fj = add i32 %i.fi, %i.dd
  %i.fk = add i32 %i.fj, %i.dh
  %i.fl = add i32 %i.fk, %i.dn
  %i.fm = add i32 %i.fl, %i.dr
  %i.fn = add i32 %i.fm, %i.dv
  %i.fo = add i32 %i.fn, %i.eb
  %i.fp = add i32 %i.fo, %i.ef
  %i.fq = add i32 %i.fp, %i.ej
  %i.fr = add i32 %i.fq, %i.ep
  %i.fs = add i32 %i.fr, %i.et
  %i.ft = add i32 %i.fs, %i.ex
  %i.fu = add i32 %i.ft, %i.fd
  %i.fv = add i32 %i.fu, %i.fh                    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 9 uses
  %i.fx = load i16, ptr %i.fw, align 8
  %i.fy = trunc i16 %i.fx to i1
  br i1 %i.fy, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit158
  %i.fz = load ptr, ptr %1, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = invoke noundef i32 %i.gb(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.333, i32 noundef 15, i16 noundef signext 8)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit159 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit159: ; preds = %bb.d
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !721
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !718
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = sdiv exact i64 %i.gj, 80
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = load ptr, ptr %1, align 8, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 88
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = invoke noundef i32 %i.go(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 12, i32 noundef %i.gl)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit160 unwind label %bb.c, !inline_history !129

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit160: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit159
  %i.gq = add i32 %i.gc, %i.fv
  %i.gr = add i32 %i.gq, %i.gp                    ; 2 uses
  %i.gs = load ptr, ptr %i.gd, align 8, !tbaa !782 ; 2 uses
  %i.gt = load ptr, ptr %i.ge, align 8, !tbaa !782
  %.not207237 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not207237, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit160, %bb.e
  %.2239 = phi i32 [ %i.gy, %bb.e ], [ %i.gr, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit160 ]
  %.sroa.0192.0238 = phi ptr [ %i.gz, %bb.e ], [ %i.gs, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit160 ] ; 3 uses
  %i.gu = load ptr, ptr %.sroa.0192.0238, align 8, !tbaa !22
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = invoke noundef i32 %i.gw(ptr noundef nonnull align 8 dereferenceable(73) %.sroa.0192.0238, ptr noundef nonnull %1)
          to label %bb.e unwind label %.loopexit209

bb.e:                                             ; preds = %.lr.ph240
  %i.gy = add i32 %i.gx, %.2239                   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0192.0238, i64 80 ; 2 uses
  %i.ha = load ptr, ptr %i.ge, align 8, !tbaa !782
  %.not207.a = icmp eq ptr %i.gz, %i.ha
  br i1 %.not207.a, label %._crit_edge241, label %.lr.ph240, !llvm.loop !783

.loopexit209:                                     ; preds = %.lr.ph240
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp210:                            ; preds = %._crit_edge241
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge241:                                   ; preds = %bb.e, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit160
  %.2.lcssa = phi i32 [ %i.gr, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit160 ], [ %i.gy, %bb.e ]
  %i.hb = load ptr, ptr %1, align 8, !tbaa !22
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = invoke noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit161 unwind label %.loopexit.split-lp210, !inline_history !132

_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit161: ; preds = %._crit_edge241
  %i.hf = load ptr, ptr %1, align 8, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit162 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit162: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit161
  %i.hj = add i32 %i.he, %.2.lcssa
  %i.hk = add i32 %i.hj, %i.hi
  br label %bb.f

bb.f:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit162, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit158
  %.3 = phi i32 [ %i.hk, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit162 ], [ %i.fv, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit158 ]
  %i.hl = load ptr, ptr %1, align 8, !tbaa !22
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = invoke noundef i32 %i.hn(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.334, i32 noundef 10, i16 noundef signext 9)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit163 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit163: ; preds = %bb.f
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !763
  %i.hr = load ptr, ptr %1, align 8, !tbaa !22
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 152
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = invoke noundef i32 %i.ht(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.hq)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit164 unwind label %bb.c, !inline_history !127

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit164: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit163
  %i.hv = load ptr, ptr %1, align 8, !tbaa !22
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = invoke noundef i32 %i.hx(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit165 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit165: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit164
  %i.hz = add i32 %i.ho, %.3
  %i.ia = add i32 %i.hz, %i.hu
  %i.ib = add i32 %i.ia, %i.hy                    ; 2 uses
  %i.ic = load i16, ptr %i.fw, align 8            ; 2 uses
  %i.id = and i16 %i.ic, 2
  %.not = icmp eq i16 %i.id, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit165
  %i.ie = load ptr, ptr %1, align 8, !tbaa !22
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = invoke noundef i32 %i.ig(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.335, i32 noundef 10, i16 noundef signext 10)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit166 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit166: ; preds = %bb.g
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !764
  %i.ik = load ptr, ptr %1, align 8, !tbaa !22
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 152
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = invoke noundef i32 %i.im(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.ij)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit167 unwind label %bb.c, !inline_history !127

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit167: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit166
  %i.io = load ptr, ptr %1, align 8, !tbaa !22
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = invoke noundef i32 %i.iq(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit168 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit168: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit167
  %i.is = add i32 %i.ih, %i.ib
  %i.it = add i32 %i.is, %i.in
  %i.iu = add i32 %i.it, %i.ir
  %.pre = load i16, ptr %i.fw, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit168, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit165
  %i.iv = phi i16 [ %.pre, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit168 ], [ %i.ic, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit165 ] ; 2 uses
  %.4 = phi i32 [ %i.iu, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit168 ], [ %i.ib, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit165 ] ; 2 uses
  %i.iw = and i16 %i.iv, 4
  %.not133 = icmp eq i16 %i.iw, 0
  br i1 %.not133, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ix = load ptr, ptr %1, align 8, !tbaa !22
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef i32 %i.iz(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.336, i32 noundef 10, i16 noundef signext 11)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit169 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit169: ; preds = %bb.i
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !765
  %i.jd = load ptr, ptr %1, align 8, !tbaa !22
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 152
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = invoke noundef i32 %i.jf(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.jc)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit170 unwind label %bb.c, !inline_history !127

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit170: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit169
  %i.jh = load ptr, ptr %1, align 8, !tbaa !22
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = invoke noundef i32 %i.jj(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit171 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit171: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit170
  %i.jl = add i32 %i.ja, %.4
  %i.jm = add i32 %i.jl, %i.jg
  %i.jn = add i32 %i.jm, %i.jk
  %.pre252.a = load i16, ptr %i.fw, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit171, %bb.h
  %i.jo = phi i16 [ %.pre252.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit171 ], [ %i.iv, %bb.h ] ; 2 uses
  %.5 = phi i32 [ %i.jn, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit171 ], [ %.4, %bb.h ] ; 2 uses
  %i.jp = and i16 %i.jo, 8
  %.not134 = icmp eq i16 %i.jp, 0
  br i1 %.not134, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.jq = load ptr, ptr %1, align 8, !tbaa !22
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = invoke noundef i32 %i.js(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.241, i32 noundef 12, i16 noundef signext 12)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit172 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit172: ; preds = %bb.k
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jv = invoke noundef i32 @_ZNK14duckdb_parquet10Statistics5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(155) %i.ju, ptr noundef nonnull %1)
          to label %bb.l unwind label %bb.c

bb.l:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit172
  %i.jw = load ptr, ptr %1, align 8, !tbaa !22
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = invoke noundef i32 %i.jy(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173: ; preds = %bb.l
  %i.ka = add i32 %i.jt, %.5
  %i.kb = add i32 %i.ka, %i.jv
  %i.kc = add i32 %i.kb, %i.jz
  %.pre253.a = load i16, ptr %i.fw, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173, %bb.j
  %i.kd = phi i16 [ %.pre253.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173 ], [ %i.jo, %bb.j ] ; 2 uses
  %.6 = phi i32 [ %i.kc, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit173 ], [ %.5, %bb.j ] ; 2 uses
  %i.ke = and i16 %i.kd, 16
  %.not135 = icmp eq i16 %i.ke, 0
  br i1 %.not135, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kf = load ptr, ptr %1, align 8, !tbaa !22
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = invoke noundef i32 %i.kh(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.337, i32 noundef 15, i16 noundef signext 13)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit174 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit174: ; preds = %bb.n
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !715
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !712
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = sdiv exact i64 %i.kp, 24
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = load ptr, ptr %1, align 8, !tbaa !22
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 88
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = invoke noundef i32 %i.ku(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 12, i32 noundef %i.kr)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit175 unwind label %bb.c, !inline_history !129

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit175: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit174
  %i.kw = add i32 %i.ki, %.6
  %i.kx = add i32 %i.kw, %i.kv                    ; 2 uses
  %i.ky = load ptr, ptr %i.kj, align 8, !tbaa !784 ; 2 uses
  %i.kz = load ptr, ptr %i.kk, align 8, !tbaa !784
  %.not208243 = icmp eq ptr %i.ky, %i.kz
  br i1 %.not208243, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit175, %bb.o
  %.7245 = phi i32 [ %i.le, %bb.o ], [ %i.kx, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit175 ]
  %.sroa.0188.0244 = phi ptr [ %i.lf, %bb.o ], [ %i.ky, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit175 ] ; 3 uses
  %i.la = load ptr, ptr %.sroa.0188.0244, align 8, !tbaa !22
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = invoke noundef i32 %i.lc(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0188.0244, ptr noundef nonnull %1)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %.lr.ph246
  %i.le = add i32 %i.ld, %.7245                   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0188.0244, i64 24 ; 2 uses
  %i.lg = load ptr, ptr %i.kk, align 8, !tbaa !784
  %.not208 = icmp eq ptr %i.lf, %i.lg
  br i1 %.not208, label %._crit_edge247, label %.lr.ph246, !llvm.loop !785

.loopexit:                                        ; preds = %.lr.ph246
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %._crit_edge247
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge247:                                   ; preds = %bb.o, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit175
  %.7.lcssa = phi i32 [ %i.kx, %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeListBeginENS1_5TTypeEj.exit175 ], [ %i.le, %bb.o ]
  %i.lh = load ptr, ptr %1, align 8, !tbaa !22
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 96
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = invoke noundef i32 %i.lj(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit176 unwind label %.loopexit.split-lp, !inline_history !132

_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit176: ; preds = %._crit_edge247
  %i.ll = load ptr, ptr %1, align 8, !tbaa !22
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = invoke noundef i32 %i.ln(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12writeListEndEv.exit176
  %i.lp = add i32 %i.lk, %.7.lcssa
  %i.lq = add i32 %i.lp, %i.lo
  %.pre254.a = load i16, ptr %i.fw, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177, %bb.m
  %i.lr = phi i16 [ %.pre254.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177 ], [ %i.kd, %bb.m ] ; 2 uses
  %.8 = phi i32 [ %i.lq, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit177 ], [ %.6, %bb.m ] ; 2 uses
  %i.ls = and i16 %i.lr, 32
  %.not136 = icmp eq i16 %i.ls, 0
  br i1 %.not136, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lt = load ptr, ptr %1, align 8, !tbaa !22
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = invoke noundef i32 %i.lv(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.338, i32 noundef 10, i16 noundef signext 14)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit178 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit178: ; preds = %bb.q
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !766
  %i.lz = load ptr, ptr %1, align 8, !tbaa !22
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 152
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef i32 %i.mb(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.ly)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit179 unwind label %bb.c, !inline_history !127

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit179: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit178
  %i.md = load ptr, ptr %1, align 8, !tbaa !22
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = invoke noundef i32 %i.mf(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit180 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit180: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI64El.exit179
  %i.mh = add i32 %i.lw, %.8
  %i.mi = add i32 %i.mh, %i.mc
  %i.mj = add i32 %i.mi, %i.mg
  %.pre255.a = load i16, ptr %i.fw, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit180, %bb.p
  %i.mk = phi i16 [ %.pre255.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit180 ], [ %i.lr, %bb.p ] ; 2 uses
  %.9 = phi i32 [ %i.mj, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit180 ], [ %.8, %bb.p ] ; 2 uses
  %i.ml = and i16 %i.mk, 64
  %.not137 = icmp eq i16 %i.ml, 0
  br i1 %.not137, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mm = load ptr, ptr %1, align 8, !tbaa !22
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = invoke noundef i32 %i.mo(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.339, i32 noundef 8, i16 noundef signext 15)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit181 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit181: ; preds = %bb.s
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !767
  %i.ms = load ptr, ptr %1, align 8, !tbaa !22
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 144
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = invoke noundef i32 %i.mu(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.mr)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit182 unwind label %bb.c, !inline_history !189

_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit182: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit181
  %i.mw = load ptr, ptr %1, align 8, !tbaa !22
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 56
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = invoke noundef i32 %i.my(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit183 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit183: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol8writeI32Ei.exit182
  %i.na = add i32 %i.mp, %.9
  %i.nb = add i32 %i.na, %i.mv
  %i.nc = add i32 %i.nb, %i.mz
  %.pre256.a = load i16, ptr %i.fw, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit183, %bb.r
  %i.nd = phi i16 [ %.pre256.a, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit183 ], [ %i.mk, %bb.r ] ; 2 uses
  %.10 = phi i32 [ %i.nc, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit183 ], [ %.9, %bb.r ] ; 2 uses
  %i.ne = and i16 %i.nd, 128
  %.not138 = icmp eq i16 %i.ne, 0
  br i1 %.not138, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.nf = load ptr, ptr %1, align 8, !tbaa !22
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 48
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = invoke noundef i32 %i.nh(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.340, i32 noundef 12, i16 noundef signext 16)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit184 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit184: ; preds = %bb.u
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.nk = invoke noundef i32 @_ZNK14duckdb_parquet14SizeStatistics5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(65) %i.nj, ptr noundef nonnull %1)
          to label %bb.v unwind label %bb.c

bb.v:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit184
  %i.nl = load ptr, ptr %1, align 8, !tbaa !22
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 56
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = invoke noundef i32 %i.nn(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit185 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit185: ; preds = %bb.v
  %i.np = add i32 %i.ni, %.10
  %i.nq = add i32 %i.np, %i.nk
  %i.nr = add i32 %i.nq, %i.no
  %.pre257 = load i16, ptr %i.fw, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit185, %bb.t
  %2 = phi i16 [ %.pre257, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit185 ], [ %i.nd, %bb.t ]
  %.11 = phi i32 [ %i.nr, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit185 ], [ %.10, %bb.t ] ; 2 uses
  %3 = and i16 %2, 256
  %.not139 = icmp eq i16 %3, 0
  br i1 %.not139, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ns = load ptr, ptr %1, align 8, !tbaa !22
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = invoke noundef i32 %i.nu(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.341, i32 noundef 12, i16 noundef signext 17)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit186 unwind label %bb.c, !inline_history !126

_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit186: ; preds = %bb.x
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.nx = invoke noundef i32 @_ZNK14duckdb_parquet20GeospatialStatistics5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(113) %i.nw, ptr noundef nonnull %1)
          to label %bb.y unwind label %bb.c

bb.y:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15writeFieldBeginEPKcNS1_5TTypeEs.exit186
  %i.ny = load ptr, ptr %1, align 8, !tbaa !22
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 56
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = invoke noundef i32 %i.oa(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit187 unwind label %bb.c, !inline_history !128

_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit187: ; preds = %bb.y
  %i.oc = add i32 %i.nv, %.11
  %i.od = add i32 %i.oc, %i.nx
  %i.oe = add i32 %i.od, %i.ob
  br label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit187, %bb.w
  %.12 = phi i32 [ %i.oe, %_ZN13duckdb_apache6thrift8protocol9TProtocol13writeFieldEndEv.exit187 ], [ %.11, %bb.w ]
  %i.of = load ptr, ptr %1, align 8, !tbaa !22
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 64
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = invoke noundef i32 %i.oh(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit unwind label %bb.c, !inline_history !134

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit: ; preds = %bb.z
  %i.oj = load ptr, ptr %1, align 8, !tbaa !22
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 40
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = invoke noundef i32 %i.ol(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeStructEndEv.exit unwind label %bb.c, !inline_history !135

_ZN13duckdb_apache6thrift8protocol9TProtocol14writeStructEndEv.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14writeFieldStopEv.exit
  %i.on = add i32 %i.oi, %.12
  %i.oo = add i32 %i.on, %i.om
  %i.op = load i32, ptr %i.c, align 4, !tbaa !124
  %i.oq = add i32 %i.op, -1
  store i32 %i.oq, ptr %i.c, align 4, !tbaa !124
  ret i32 %i.oo

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit209, %.loopexit.split-lp210, %.loopexit214, %.loopexit.split-lp215, %.loopexit219, %.loopexit.split-lp220, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.c ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp220 ], [ %lpad.loopexit.split-lp217, %.loopexit.split-lp215 ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp210 ], [ %lpad.loopexit221, %.loopexit219 ], [ %lpad.loopexit216, %.loopexit214 ], [ %lpad.loopexit211, %.loopexit209 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.or = load i32, ptr %i.c, align 4, !tbaa !124
  %i.os = add i32 %i.or, -1
  store i32 %i.os, ptr %i.c, align 4, !tbaa !124
  resume { ptr, i32 } %.pn
}

; Function Attrs: uwtable
define hidden noundef i32 @_ZTv0_n40_NK14duckdb_parquet14ColumnMetaData5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef %0, ptr noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef i32 @_ZNK14duckdb_parquet14ColumnMetaData5writeEPN13duckdb_apache6thrift8protocol9TProtocolE(ptr noundef nonnull align 8 dereferenceable(538) %i.d, ptr noundef %1)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN14duckdb_parquet4swapERNS_14ColumnMetaDataES1_(ptr noundef nonnull align 8 dereferenceable(538) %0, ptr noundef nonnull align 8 dereferenceable(538) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !14
  %i.d = load i32, ptr %i.b, align 8, !tbaa !14
  store i32 %i.d, ptr %i.a, align 8, !tbaa !14
  store i32 %i.c, ptr %i.b, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !786
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.e, align 8, !tbaa !778
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.k = load <2 x ptr>, ptr %i.f, align 8, !tbaa !778
  store <2 x ptr> %i.k, ptr %i.e, align 8, !tbaa !778
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !786
  store ptr %i.l, ptr %i.g, align 8, !tbaa !786
  store <2 x ptr> %i.j, ptr %i.f, align 8, !tbaa !778
  store ptr %i.h, ptr %i.i, align 8, !tbaa !786
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !787
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.s = load <2 x ptr>, ptr %i.n, align 8, !tbaa !780
  store <2 x ptr> %i.s, ptr %i.m, align 8, !tbaa !780
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !787
  store ptr %i.t, ptr %i.o, align 8, !tbaa !787
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !780
  store ptr %i.p, ptr %i.q, align 8, !tbaa !787
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.w = load i32, ptr %i.u, align 8, !tbaa !65
  %i.x = load i32, ptr %i.v, align 8, !tbaa !65
  store i32 %i.x, ptr %i.u, align 8, !tbaa !65
  store i32 %i.w, ptr %i.v, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !35
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !35
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !35
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !35
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !35
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !35
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !35
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !788
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !782
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.aq = load <2 x ptr>, ptr %i.al, align 8, !tbaa !782
  store <2 x ptr> %i.aq, ptr %i.ak, align 8, !tbaa !782
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !788
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !788
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !782
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !788
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.au = load i64, ptr %i.as, align 8, !tbaa !35
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  store i64 %i.av, ptr %i.as, align 8, !tbaa !35
  store i64 %i.au, ptr %i.at, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !35
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !35
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !35
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !35
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !35
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bf) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh) #28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !35
  store i64 %i.bl, ptr %i.bi, align 8, !tbaa !35
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !35
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !35
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !35
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.br) #28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bt) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.bw = load i8, ptr %i.bu, align 8, !tbaa !223, !range !220, !noundef !221
  %i.bx = load i8, ptr %i.bv, align 8, !tbaa !223, !range !220, !noundef !221
  store i8 %i.bx, ptr %i.bu, align 8, !tbaa !223
  store i8 %i.bw, ptr %i.bv, align 8, !tbaa !223
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 297 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 297 ; 2 uses
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !223, !range !220, !noundef !221
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !223, !range !220, !noundef !221
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !223
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !223
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 298 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 298 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.cc, align 2, !tbaa !38
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !38
  store i8 %i.ce, ptr %i.cc, align 2, !tbaa !38
  store i8 %.sroa.0.0.copyload.i.i, ptr %i.cd, align 2, !tbaa !38
end_hunk_5
begin_hunk_6_@_ZN14duckdb_parquet14ColumnMetaDataaSEOS0_:bb.a

bb.h:                                             ; preds = %_ZN14duckdb_parquet14SizeStatisticsaSEOS0_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.de) #30
  br label %_ZN14duckdb_parquet20GeospatialStatisticsaSEOS0_.exit

_ZN14duckdb_parquet20GeospatialStatisticsaSEOS0_.exit: ; preds = %_ZN14duckdb_parquet14SizeStatisticsaSEOS0_.exit, %bb.h
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.dl = load i8, ptr %i.dj, align 8, !tbaa !38
  store i8 %i.dl, ptr %i.dk, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.do = load i16, ptr %i.dm, align 8, !tbaa !38
  store i16 %i.do, ptr %i.dn, align 8, !tbaa !38
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK14duckdb_parquet14ColumnMetaData7printToERSo(ptr noundef nonnull align 8 dereferenceable(538) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.342, i64 noundef 15) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.228, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN14duckdb_parquet9to_stringB5cxx11ERKNS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.d = load ptr, ptr %2, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZdlPv(ptr noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.343, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8Encoding4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN6duckdb6vectorIT_Lb1ESaISD_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  %i.n = load ptr, ptr %3, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit153 unwind label %bb.v ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit153
  call void @_ZdlPv(ptr noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.344, i64 noundef 15) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN13duckdb_apache6thrift9to_stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKN6duckdb6vectorIT_Lb1ESaISA_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  %i.x = load ptr, ptr %4, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.x, i64 noundef %i.z)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157 unwind label %bb.w ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.ab = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157
  call void @_ZdlPv(ptr noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.345, i64 noundef 6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN14duckdb_parquet9to_stringB5cxx11ERKNS_16CompressionCodec4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.ag)
  %i.ah = load ptr, ptr %5, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ah, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit161 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.al = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit161
  call void @_ZdlPv(ptr noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.243, i64 noundef 11) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZN13duckdb_apache6thrift9to_stringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %i.ar = load ptr, ptr %6, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ar, i64 noundef %i.at)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165 unwind label %bb.y ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.av = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165
  call void @_ZdlPv(ptr noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.346, i64 noundef 24) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN13duckdb_apache6thrift9to_stringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  %i.bb = load ptr, ptr %7, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit169 unwind label %bb.z ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.bf = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit169
  call void @_ZdlPv(ptr noundef %i.bf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.347, i64 noundef 22) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN13duckdb_apache6thrift9to_stringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
  %i.bl = load ptr, ptr %8, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !39
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173 unwind label %bb.aa ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.bp = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173
  call void @_ZdlPv(ptr noundef %i.bp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.348, i64 noundef 19) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 9 uses
  %i.bv = load i16, ptr %i.bu, align 8
  %i.bw = trunc i16 %i.bv to i1
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet8KeyValueEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN6duckdb6vectorIT_Lb1ESaISC_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.bx)
  %i.by = load ptr, ptr %9, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !39
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.by, i64 noundef %i.ca)
          to label %bb.d unwind label %bb.ab      ; 0 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.cd = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.349, i64 noundef 17) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN13duckdb_apache6thrift9to_stringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %i.cj = load ptr, ptr %10, align 8, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !39
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cj, i64 noundef %i.cl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181 unwind label %bb.ac ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181: ; preds = %.critedge
  %i.cn = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181
  call void @_ZdlPv(ptr noundef %i.cn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.350, i64 noundef 18) ; 0 uses
  %i.cs = load i16, ptr %i.bu, align 8
  %i.ct = and i16 %i.cs, 2
  %.not.not.not = icmp eq i16 %i.ct, 0
  br i1 %.not.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZN13duckdb_apache6thrift9to_stringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
  %i.cv = load ptr, ptr %11, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !39
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cv, i64 noundef %i.cx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit185 unwind label %bb.ad ; 0 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge120

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit185: ; preds = %bb.e
  %i.da = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit185
  call void @_ZdlPv(ptr noundef %i.da) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.critedge120

.critedge120:                                     ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.351, i64 noundef 23) ; 0 uses
  %i.df = load i16, ptr %i.bu, align 8
  %i.dg = and i16 %i.df, 4
  %.not.not.not111 = icmp eq i16 %i.dg, 0
  br i1 %.not.not.not111, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge120
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @_ZN13duckdb_apache6thrift9to_stringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
  %i.di = load ptr, ptr %12, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !39
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.di, i64 noundef %i.dk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit190 unwind label %bb.ae ; 0 uses

bb.h:                                             ; preds = %.critedge120
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge122

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit190: ; preds = %bb.g
  %i.dn = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit190
  call void @_ZdlPv(ptr noundef %i.dn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.critedge122

.critedge122:                                     ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.dq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.247, i64 noundef 11) ; 0 uses
  %i.ds = load i16, ptr %i.bu, align 8
  %i.dt = and i16 %i.ds, 8
  %.not.not.not112 = icmp eq i16 %i.dt, 0
  br i1 %.not.not.not112, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge122
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet10StatisticsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(155) %i.du)
  %i.dv = load ptr, ptr %13, align 8, !tbaa !36
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !39
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dv, i64 noundef %i.dx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit195 unwind label %bb.af ; 0 uses

bb.j:                                             ; preds = %.critedge122
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge124

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit195: ; preds = %bb.i
  %i.ea = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit195
  call void @_ZdlPv(ptr noundef %i.ea) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.critedge124

.critedge124:                                     ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.352, i64 noundef 15) ; 0 uses
  %i.ef = load i16, ptr %i.bu, align 8
  %i.eg = and i16 %i.ef, 16
  %.not.not.not113 = icmp eq i16 %i.eg, 0
  br i1 %.not.not.not113, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge124
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet17PageEncodingStatsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN6duckdb6vectorIT_Lb1ESaISC_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.eh)
  %i.ei = load ptr, ptr %14, align 8, !tbaa !36
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !39
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ei, i64 noundef %i.ek)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit200 unwind label %bb.ag ; 0 uses

bb.l:                                             ; preds = %.critedge124
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge126

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit200: ; preds = %bb.k
  %i.en = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit200
  call void @_ZdlPv(ptr noundef %i.en) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.critedge126

.critedge126:                                     ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.353, i64 noundef 20) ; 0 uses
  %i.es = load i16, ptr %i.bu, align 8
  %i.et = and i16 %i.es, 32
  %.not.not.not114 = icmp eq i16 %i.et, 0
  br i1 %.not.not.not114, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge126
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @_ZN13duckdb_apache6thrift9to_stringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
  %i.ev = load ptr, ptr %15, align 8, !tbaa !36
  %i.ew = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !39
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ev, i64 noundef %i.ex)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit205 unwind label %bb.ah ; 0 uses

bb.n:                                             ; preds = %.critedge126
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge128

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit205: ; preds = %bb.m
  %i.fa = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit205
  call void @_ZdlPv(ptr noundef %i.fa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %.critedge128

.critedge128:                                     ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.fd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.354, i64 noundef 20) ; 0 uses
  %i.ff = load i16, ptr %i.bu, align 8
  %i.fg = and i16 %i.ff, 64
  %.not.not.not115 = icmp eq i16 %i.fg, 0
  br i1 %.not.not.not115, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge128
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN13duckdb_apache6thrift9to_stringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %i.fh)
  %i.fi = load ptr, ptr %16, align 8, !tbaa !36
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !39
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fi, i64 noundef %i.fk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit210 unwind label %bb.ai ; 0 uses

bb.p:                                             ; preds = %.critedge128
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge130

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit210: ; preds = %bb.o
  %i.fn = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit210
  call void @_ZdlPv(ptr noundef %i.fn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.critedge130

.critedge130:                                     ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  %i.fq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.fr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.355, i64 noundef 16) ; 0 uses
  %i.fs = load i16, ptr %i.bu, align 8
  %i.ft = and i16 %i.fs, 128
  %.not.not.not116 = icmp eq i16 %i.ft, 0
  br i1 %.not.not.not116, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge130
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 344
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet14SizeStatisticsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(65) %i.fu)
  %i.fv = load ptr, ptr %17, align 8, !tbaa !36
  %i.fw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !39
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fv, i64 noundef %i.fx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215 unwind label %bb.aj ; 0 uses

bb.r:                                             ; preds = %.critedge130
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge132

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215: ; preds = %bb.q
  %i.ga = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215
  call void @_ZdlPv(ptr noundef %i.ga) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.critedge132

.critedge132:                                     ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 2) ; 0 uses
  %i.ge = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.356, i64 noundef 22) ; 0 uses
  %19 = load i16, ptr %i.bu, align 8
  %20 = and i16 %19, 256
  %.not.not.not118 = icmp eq i16 %20, 0
  br i1 %.not.not.not118, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge132
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @_ZN13duckdb_apache6thrift9to_stringIN14duckdb_parquet20GeospatialStatisticsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(113) %i.gf)
  %i.gg = load ptr, ptr %18, align 8, !tbaa !36
  %i.gh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !39
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.gg, i64 noundef %i.gi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit220 unwind label %bb.ak ; 0 uses

bb.t:                                             ; preds = %.critedge132
  %i.gk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 6) ; 0 uses
  br label %.critedge134

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit220: ; preds = %bb.s
  %i.gl = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit220
  call void @_ZdlPv(ptr noundef %i.gl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %.critedge134

.critedge134:                                     ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.go = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.80, i64 noundef 1) ; 0 uses
  ret void

bb.u:                                             ; preds = %bb.a
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %i.gq = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.gq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge136

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.gu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.critedge136

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.gy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge136

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.hc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge136

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.hf = landingpad { ptr, i32 }
          cleanup
  %i.hg = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.hg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge136

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.hk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge136

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.hn = landingpad { ptr, i32 }
          cleanup
  %i.ho = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.ho) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge136

bb.ab:                                            ; preds = %bb.b
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.hs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge136

bb.ac:                                            ; preds = %.critedge
  %i.hv = landingpad { ptr, i32 }
          cleanup
  %i.hw = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.hw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.critedge136

bb.ad:                                            ; preds = %bb.e
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.ia) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.critedge136

bb.ae:                                            ; preds = %bb.g
  %i.id = landingpad { ptr, i32 }
          cleanup
  %i.ie = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
end_hunk_6
