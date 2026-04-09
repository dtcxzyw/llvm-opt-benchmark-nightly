inline.NumInlined: 110
inline.NumDeleted: 70
begin_hunk_0_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8readBoolERb.exit unwind label %bb.d

_ZN13duckdb_apache6thrift8protocol9TProtocol8readBoolERb.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
end_hunk_0
begin_hunk_1_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 296
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol8readByteERa.exit unwind label %bb.f

_ZN13duckdb_apache6thrift8protocol9TProtocol8readByteERa.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_1
begin_hunk_2_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 304
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI16ERs.exit unwind label %bb.h

_ZN13duckdb_apache6thrift8protocol9TProtocol7readI16ERs.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
end_hunk_2
begin_hunk_3_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 312
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit unwind label %bb.j

_ZN13duckdb_apache6thrift8protocol9TProtocol7readI32ERi.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
end_hunk_3
begin_hunk_4_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol7readI64ERl.exit unwind label %bb.l

_ZN13duckdb_apache6thrift8protocol9TProtocol7readI64ERl.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
end_hunk_4
begin_hunk_5_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol10readDoubleERd.exit unwind label %bb.n

_ZN13duckdb_apache6thrift8protocol9TProtocol10readDoubleERd.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
end_hunk_5
begin_hunk_6_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 344
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol10readBinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.p

_ZN13duckdb_apache6thrift8protocol9TProtocol10readBinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.o
  %i.bk = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.be
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_6
begin_hunk_7_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.be
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

end_hunk_7
begin_hunk_8_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol15readStructBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp

_ZN13duckdb_apache6thrift8protocol9TProtocol15readStructBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readFieldEndEv.exit
  %.058 = phi i32 [ %i.ck, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readFieldEndEv.exit ], [ %i.bu, %bb.q ]
end_hunk_8
begin_hunk_9_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 216
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 2 dereferenceable(2) %i.g)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol14readFieldBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_5TTypeERs.exit unwind label %.loopexit

_ZN13duckdb_apache6thrift8protocol9TProtocol14readFieldBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_5TTypeERs.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol15readStructBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bz = add i32 %i.by, %.058                    ; 2 uses
  %i.ca = load i32, ptr %i.h, align 4, !tbaa !38  ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.s

end_hunk_9
begin_hunk_10_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %i.cc = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bp
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

end_hunk_10
begin_hunk_11_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 224
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef i32 %i.ch(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readFieldEndEv.exit unwind label %.loopexit

_ZN13duckdb_apache6thrift8protocol9TProtocol12readFieldEndEv.exit: ; preds = %bb.t
  %i.cj = add i32 %i.ce, %i.bz
  %i.ck = add i32 %i.cj, %i.ci
  br label %_ZN13duckdb_apache6thrift8protocol9TProtocol15readStructBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !40

bb.u:                                             ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol14readFieldBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_5TTypeERs.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 208
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit unwind label %.loopexit.split-lp

_ZN13duckdb_apache6thrift8protocol9TProtocol13readStructEndEv.exit: ; preds = %bb.u
  %i.cp = add i32 %i.co, %i.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %i.cq = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bp
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

end_hunk_11
begin_hunk_12_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 232
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef i32 %i.cu(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit.preheader unwind label %.loopexit.split-lp84 ; 2 uses

_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit.preheader: ; preds = %bb.v
  %i.cw = load i32, ptr %i.k, align 4, !tbaa !3
end_hunk_12
begin_hunk_13_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
.lr.ph109:                                        ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit.preheader, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit
  %.056108 = phi i32 [ %i.dd, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit ], [ 0, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit.preheader ]
  %.057107 = phi i32 [ %i.dc, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit ], [ %i.cv, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit.preheader ]
  %i.cx = load i32, ptr %i.i, align 4, !tbaa !38
  %i.cy = invoke noundef i32 @_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.cx)
          to label %bb.w unwind label %.loopexit83

bb.w:                                             ; preds = %.lr.ph109
  %i.cz = load i32, ptr %i.j, align 4, !tbaa !38
  %i.da = invoke noundef i32 @_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.cz)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit unwind label %.loopexit83

end_hunk_13
begin_hunk_14_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.dd = add nuw i32 %.056108, 1                 ; 2 uses
  %i.de = load i32, ptr %i.k, align 4, !tbaa !3
  %i.df = icmp ult i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph109, label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit._crit_edge, !llvm.loop !42

.loopexit83:                                      ; preds = %.lr.ph109, %bb.w
  %lpad.loopexit85 = landingpad { ptr, i32 }
end_hunk_14
begin_hunk_15_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef i32 %i.di(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol10readMapEndEv.exit unwind label %.loopexit.split-lp84

_ZN13duckdb_apache6thrift8protocol9TProtocol10readMapEndEv.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12readMapBeginERNS1_5TTypeES4_Rj.exit._crit_edge
  %i.dk = add i32 %i.dj, %.057.lcssa
end_hunk_15
begin_hunk_16_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 264
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef i32 %i.dn(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit.preheader unwind label %.loopexit.split-lp89 ; 2 uses

_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit.preheader: ; preds = %bb.y
  %i.dp = load i32, ptr %i.m, align 4, !tbaa !3
end_hunk_16
begin_hunk_17_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
.lr.ph105:                                        ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit.preheader, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit
  %.054104 = phi i32 [ %i.dt, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit ], [ 0, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit.preheader ]
  %.055103 = phi i32 [ %i.ds, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit ], [ %i.do, %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit.preheader ]
  %i.dq = load i32, ptr %i.l, align 4, !tbaa !38
  %i.dr = invoke noundef i32 @_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.dq)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit unwind label %.loopexit88

end_hunk_17
begin_hunk_18_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.dt = add nuw i32 %.054104, 1                 ; 2 uses
  %i.du = load i32, ptr %i.m, align 4, !tbaa !3
  %i.dv = icmp ult i32 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph105, label %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit._crit_edge, !llvm.loop !43

.loopexit88:                                      ; preds = %.lr.ph105
  %lpad.loopexit90 = landingpad { ptr, i32 }
end_hunk_18
begin_hunk_19_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 272
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol10readSetEndEv.exit unwind label %.loopexit.split-lp89

_ZN13duckdb_apache6thrift8protocol9TProtocol10readSetEndEv.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol12readSetBeginERNS1_5TTypeERj.exit._crit_edge
  %i.ea = add i32 %i.dz, %.055.lcssa
end_hunk_19
begin_hunk_20_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 248
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit.preheader unwind label %.loopexit.split-lp94 ; 2 uses

_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit.preheader: ; preds = %bb.aa
  %i.ef = load i32, ptr %i.o, align 4, !tbaa !3
end_hunk_20
begin_hunk_21_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
.lr.ph:                                           ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit.preheader, %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit
  %.052102 = phi i32 [ %i.ej, %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit ], [ 0, %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit.preheader ]
  %.053101 = phi i32 [ %i.ei, %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit ], [ %i.ee, %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit.preheader ]
  %i.eg = load i32, ptr %i.n, align 4, !tbaa !38
  %i.eh = invoke noundef i32 @_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.eg)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit unwind label %.loopexit93

end_hunk_21
begin_hunk_22_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.ej = add nuw i32 %.052102, 1                 ; 2 uses
  %i.ek = load i32, ptr %i.o, align 4, !tbaa !3
  %i.el = icmp ult i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph, label %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit._crit_edge, !llvm.loop !44

.loopexit93:                                      ; preds = %.lr.ph
  %lpad.loopexit95 = landingpad { ptr, i32 }
end_hunk_22
begin_hunk_23_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 256
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %_ZN13duckdb_apache6thrift8protocol9TProtocol11readListEndEv.exit unwind label %.loopexit.split-lp94

_ZN13duckdb_apache6thrift8protocol9TProtocol11readListEndEv.exit: ; preds = %_ZN13duckdb_apache6thrift8protocol9TProtocol13readListBeginERNS1_5TTypeERj.exit._crit_edge
  %i.eq = add i32 %i.ep, %.053.lcssa
end_hunk_23
begin_hunk_24_@_ZN13duckdb_apache6thrift8protocol4skipINS1_9TProtocolEEEjRT_NS1_5TTypeE:bb.a
  %.0 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eu = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
end_hunk_24
begin_hunk_25_@_ZN13duckdb_apache6thrift8protocol16TProtocolFactory11getProtocolESt10shared_ptrINS0_9transport10TTransportEES6_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !45
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !45
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN13duckdb_apache6thrift9transport10TTransportEEC2ERKS4_.exit, label %bb.b

end_hunk_25
begin_hunk_26_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_26
begin_hunk_27_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_27
begin_hunk_28_@_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !26
  %i.d = load ptr, ptr %2, align 8, !tbaa !37     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.f, ptr %i.a, align 8, !tbaa !47
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

end_hunk_28
begin_hunk_29_@_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !37
  %i.i = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.i, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i.i

end_hunk_29
begin_hunk_30_@_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  resume { ptr, i32 } %i.l

_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !29
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
end_hunk_30
begin_hunk_31_@_ZN13duckdb_apache6thrift10TExceptionD2Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift10TExceptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_31
begin_hunk_32_@_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionD0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift10TExceptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #15, !inline_history !48
  br label %_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit

_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit:   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(44) %0) #12, !inline_history !48
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}
end_hunk_32
begin_hunk_33_@_ZNK13duckdb_apache6thrift8protocol18TProtocolException4whatEv:bb.a

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  br label %bb.d

switch.lookup:                                    ; preds = %bb.b
end_hunk_33
begin_hunk_34_@_ZN13duckdb_apache6thrift10TExceptionD0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift10TExceptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #15, !inline_history !48
  br label %_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit

_ZN13duckdb_apache6thrift10TExceptionD2Ev.exit:   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #12, !inline_history !48
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}
end_hunk_34
begin_hunk_35_@llvm.memcpy.p0.p0.i64
!34 = !{!"_ZTSN13duckdb_apache6thrift10TExceptionE", !35, i64 0, !30, i64 8}
!35 = !{!"_ZTSSt9exception"}
!36 = !{!"_ZTSN13duckdb_apache6thrift8protocol18TProtocolException22TProtocolExceptionTypeE", !5, i64 0}
!37 = !{!30, !28, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"_ZTSN13duckdb_apache6thrift8protocol5TTypeE", !5, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = !{!12, !12, i64 0}
!46 = distinct !{null}
!47 = !{!31, !31, i64 0}
!48 = !{ptr @_ZN13duckdb_apache6thrift10TExceptionD2Ev}
end_hunk_35
