inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb25CoordinateReferenceSystem16TryParsePROJJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_:bb.a
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !153
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !153
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.aj, i64 %i.am, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.as = load i64, ptr %i.b, align 8, !tbaa !108 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !152
  %i.au = load ptr, ptr %2, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.093.add = add nuw nsw i64 %.093.idx353, 8     ; 2 uses
  %.not108.not = icmp eq i64 %.093.add, 72
  br i1 %.not108.not, label %.thread298, label %bb.l

bb.k:                                             ; preds = %.noexc.i, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i275

bb.l:                                             ; preds = %bb.i, %bb.j
  %.093.idx353 = phi i64 [ 0, %bb.i ], [ %.093.add, %bb.j ] ; 2 uses
  %.093.ptr = getelementptr inbounds nuw i8, ptr @constinit.259, i64 %.093.idx353
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.az = load ptr, ptr %.093.ptr, align 8, !tbaa !945 ; 4 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !151
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.436) #51
          to label %.noexc216 unwind label %.loopexit.split-lp

.noexc216:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !108
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i215, label %._crit_edge.i.i214

.noexc.i215:                                      ; preds = %bb.n
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc217 unwind label %.loopexit ; 2 uses

.noexc217:                                        ; preds = %.noexc.i215
  store ptr %i.bd, ptr %3, align 8, !tbaa !89
  %i.be = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !153
  br label %._crit_edge.i.i214

._crit_edge.i.i214:                               ; preds = %.noexc217, %bb.n
  %i.bf = phi ptr [ %i.bd, %.noexc217 ], [ %i.aw, %bb.n ] ; 2 uses
  switch i64 %i.bb, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i214
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !153
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !153
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i214
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %i.az, i64 %i.bb, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i214
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  store i64 %i.bh, ptr %i.ax, align 8, !tbaa !152
  %i.bi = load ptr, ptr %3, align 8, !tbaa !89
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.bk = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br i1 %i.bk, label %._crit_edge.i.i222, label %bb.j

.loopexit:                                        ; preds = %.noexc.i215
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.s:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aw
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bo) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.s, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  %.pn = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.bn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %bb.bj

._crit_edge.i.i222:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bq, ptr %4, align 8, !tbaa !151
  store i64 6003935351867273026, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.br, align 8, !tbaa !152
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.bs, align 8, !tbaa !153
  %i.bt = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %._crit_edge.i.i222
  %i.bu = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bq
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bu) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !3174 ; 3 uses
  br i1 %i.bt, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228._crit_edge

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.bx = and i64 %i.bw, 7
  %i.by = icmp ne i64 %i.bx, 7
  %i.bz = lshr i64 %i.bw, 8                       ; 2 uses
  %.not.i159.not354 = icmp eq i64 %i.bz, 0
  %or.cond = or i1 %i.by, %.not.i159.not354
  br i1 %or.cond, label %.thread298, label %.lr.ph356, !prof !3177

.lr.ph356:                                        ; preds = %bb.u, %.noexc161
  %.in369.a = phi i64 [ %i.ca, %.noexc161 ], [ %i.bz, %bb.u ]
  %.011.i158355 = phi ptr [ %i.cv, %.noexc161 ], [ %i.m, %bb.u ] ; 5 uses
  %i.ca = add nsw i64 %.in369.a, -1               ; 2 uses
  %i.cb = load i64, ptr %.011.i158355, align 8, !tbaa !3174
  %.mask331.a = and i64 %i.cb, -256
  %i.cc = icmp eq i64 %.mask331.a, 3584
  br i1 %i.cc, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit198, label %.noexc161

_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit198: ; preds = %.lr.ph356
  %i.cd = getelementptr inbounds nuw i8, ptr %.011.i158355, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !153 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 1
  %i.cg = xor i64 %i.cf, 8245922088697819764
  %i.ch = getelementptr i8, ptr %i.ce, i64 6
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = xor i64 %i.ci, 7957695015158641263
  %i.ck = or i64 %i.cg, %i.cj
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %18, label %.noexc161

.noexc161:                                        ; preds = %.lr.ph356, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit198
  %i.co = getelementptr inbounds nuw i8, ptr %.011.i158355, i64 16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !3174
  %i.cq = and i64 %i.cp, 6
  %i.cr = icmp eq i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw i8, ptr %.011.i158355, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !153
  %i.cu = select i1 %i.cr, i64 %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cu
  %.not.i159.not = icmp eq i64 %i.ca, 0
  br i1 %.not.i159.not, label %.thread298, label %.lr.ph356, !llvm.loop !3176

bb.v:                                             ; preds = %._crit_edge.i.i222
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bq
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.cx) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br label %bb.bj

18:                                               ; preds = %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit198
  %19 = getelementptr inbounds nuw i8, ptr %.011.i158355, i64 16 ; 2 uses
  %20 = load i64, ptr %19, align 8, !tbaa !3174   ; 2 uses
  %21 = and i64 %20, 7
  %22 = icmp eq i64 %21, 7
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228._crit_edge, label %.thread298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %18
  %i.cz = phi i64 [ %20, %18 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ] ; 7 uses
  %.195 = phi ptr [ %19, %18 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ] ; 3 uses
  %i.da = and i64 %i.cz, 7
  %i.db = icmp eq i64 %i.da, 7
  br i1 %i.db, label %bb.w, label %_ZN13duckdb_yyjsonL14yyjson_obj_getEPNS_10yyjson_valEPKc.exit149.thread, !prof !470

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228._crit_edge
  %i.dc = lshr i64 %i.cz, 8                       ; 2 uses
  %.not.i166.not357 = icmp eq i64 %i.dc, 0
  br i1 %.not.i166.not357, label %_ZN13duckdb_yyjsonL14yyjson_obj_getEPNS_10yyjson_valEPKc.exit149.thread, label %.lr.ph359.preheader

.lr.ph359.preheader:                              ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %.195, i64 16
  br label %.lr.ph359

.lr.ph359:                                        ; preds = %.lr.ph359.preheader, %.noexc168
  %.in370.a = phi i64 [ %i.de, %.noexc168 ], [ %i.dc, %.lr.ph359.preheader ]
  %.011.i165358 = phi ptr [ %i.du, %.noexc168 ], [ %i.dd, %.lr.ph359.preheader ] ; 6 uses
  %i.de = add nsw i64 %.in370.a, -1               ; 2 uses
  %i.df = load i64, ptr %.011.i165358, align 8, !tbaa !3174
  %.mask332.a = and i64 %i.df, -256
  %i.dg = icmp eq i64 %.mask332.a, 1024
  br i1 %i.dg, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit196, label %.noexc168

_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit196: ; preds = %.lr.ph359
  %i.dh = getelementptr inbounds nuw i8, ptr %.011.i165358, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !153
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = icmp ne i32 %i.dj, 1701667182
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.x, label %.noexc168

.noexc168:                                        ; preds = %.lr.ph359, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit196
  %i.dn = getelementptr inbounds nuw i8, ptr %.011.i165358, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !3174
  %i.dp = and i64 %i.do, 6
  %i.dq = icmp eq i64 %i.dp, 6
  %i.dr = getelementptr inbounds nuw i8, ptr %.011.i165358, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !153
  %i.dt = select i1 %i.dq, i64 %i.ds, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dt
  %.not.i166.not = icmp eq i64 %i.de, 0
  br i1 %.not.i166.not, label %_ZN13duckdb_yyjsonL14yyjson_obj_getEPNS_10yyjson_valEPKc.exit149.thread, label %.lr.ph359, !llvm.loop !3176

bb.x:                                             ; preds = %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit196
  %i.dv = getelementptr inbounds nuw i8, ptr %.011.i165358, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !3174
  %i.dx = and i64 %i.dw, 7
  %i.dy = icmp eq i64 %i.dx, 5
  br i1 %i.dy, label %bb.y, label %_ZN13duckdb_yyjsonL14yyjson_obj_getEPNS_10yyjson_valEPKc.exit149.thread

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %.011.i165358, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !153 ; 2 uses
  %.not114 = icmp eq ptr %i.ea, null
  br i1 %.not114, label %_ZN13duckdb_yyjsonL14yyjson_obj_getEPNS_10yyjson_valEPKc.exit149.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.ea, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ec = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %5) #48 ; 0 uses
  %i.ed = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.ed) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %.pre383 = load i64, ptr %.195, align 8, !tbaa !3174
  br label %_ZN13duckdb_yyjsonL14yyjson_obj_getEPNS_10yyjson_valEPKc.exit149.thread

bb.ab:                                            ; preds = %bb.z
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %bb.bj

_ZN13duckdb_yyjsonL14yyjson_obj_getEPNS_10yyjson_valEPKc.exit149.thread: ; preds = %.noexc168, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228._crit_edge, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %bb.x
  %i.eh = phi i64 [ %i.cz, %bb.x ], [ %i.cz, %bb.w ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228._crit_edge ], [ %i.cz, %bb.y ], [ %.pre383, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %i.cz, %.noexc168 ] ; 2 uses
  %i.ei = and i64 %i.eh, 7
  %i.ej = icmp eq i64 %i.ei, 7
  br i1 %i.ej, label %bb.ac, label %.critedge.a, !prof !470

bb.ac:                                            ; preds = %_ZN13duckdb_yyjsonL14yyjson_obj_getEPNS_10yyjson_valEPKc.exit149.thread
  %i.ek = lshr i64 %i.eh, 8                       ; 2 uses
  %.not.i173.not360 = icmp eq i64 %i.ek, 0
  br i1 %.not.i173.not360, label %.critedge.a, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %bb.ac
  %i.el = getelementptr inbounds nuw i8, ptr %.195, i64 16
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.noexc175
  %.in371.a = phi i64 [ %i.em, %.noexc175 ], [ %i.ek, %.lr.ph362.preheader ]
  %.011.i172361 = phi ptr [ %i.fc, %.noexc175 ], [ %i.el, %.lr.ph362.preheader ] ; 6 uses
  %i.em = add nsw i64 %.in371.a, -1               ; 2 uses
  %i.en = load i64, ptr %.011.i172361, align 8, !tbaa !3174
  %.mask333.a = and i64 %i.en, -256
  %i.eo = icmp eq i64 %.mask333.a, 512
  br i1 %i.eo, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit194, label %.noexc175

_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit194: ; preds = %.lr.ph362
  %i.ep = getelementptr inbounds nuw i8, ptr %.011.i172361, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !153
  %i.er = load i16, ptr %i.eq, align 1
  %i.es = icmp ne i16 %i.er, 25705
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ad, label %.noexc175

.noexc175:                                        ; preds = %.lr.ph362, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit194
  %i.ev = getelementptr inbounds nuw i8, ptr %.011.i172361, i64 16 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !3174
  %i.ex = and i64 %i.ew, 6
  %i.ey = icmp eq i64 %i.ex, 6
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i172361, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !153
  %i.fb = select i1 %i.ey, i64 %i.fa, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fb
  %.not.i173.not = icmp eq i64 %i.em, 0
  br i1 %.not.i173.not, label %.critedge.a, label %.lr.ph362, !llvm.loop !3176

bb.ad:                                            ; preds = %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit194
  %i.fd = getelementptr inbounds nuw i8, ptr %.011.i172361, i64 16 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !3174 ; 2 uses
  %i.ff = and i64 %i.fe, 7
  %i.fg = icmp eq i64 %i.ff, 7
  br i1 %i.fg, label %bb.ae, label %.critedge.a

bb.ae:                                            ; preds = %bb.ad
  %i.fh = lshr i64 %i.fe, 8                       ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.011.i172361, i64 32 ; 2 uses
  %.not.i180.not363 = icmp eq i64 %i.fh, 0
  br i1 %.not.i180.not363, label %.critedge.a, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.ae, %.noexc182
  %.in372 = phi i64 [ %i.fj, %.noexc182 ], [ %i.fh, %bb.ae ]
  %.011.i179364 = phi ptr [ %i.gf, %.noexc182 ], [ %i.fi, %bb.ae ] ; 6 uses
  %i.fj = add nsw i64 %.in372, -1                 ; 2 uses
  %i.fk = load i64, ptr %.011.i179364, align 8, !tbaa !3174
  %.mask334 = and i64 %i.fk, -256
  %i.fl = icmp eq i64 %.mask334, 2304
  br i1 %i.fl, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit192, label %.noexc182

_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit192: ; preds = %.lr.ph365
  %i.fm = getelementptr inbounds nuw i8, ptr %.011.i179364, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !153 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 1
  %i.fp = xor i64 %i.fo, 8388361603773658465
  %i.fq = getelementptr i8, ptr %i.fn, i64 8
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i64
  %i.ft = xor i64 %i.fs, 121
  %i.fu = or i64 %i.fp, %i.ft
  %i.fv = icmp ne i64 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.af, label %.noexc182

.noexc182:                                        ; preds = %.lr.ph365, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit192
  %i.fy = getelementptr inbounds nuw i8, ptr %.011.i179364, i64 16 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !3174
  %i.ga = and i64 %i.fz, 6
  %i.gb = icmp eq i64 %i.ga, 6
  %i.gc = getelementptr inbounds nuw i8, ptr %.011.i179364, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !153
  %i.ge = select i1 %i.gb, i64 %i.gd, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ge
  %.not.i180.not = icmp eq i64 %i.fj, 0
  br i1 %.not.i180.not, label %.critedge.a, label %.lr.ph365, !llvm.loop !3176

bb.af:                                            ; preds = %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit192
  %i.gg = getelementptr inbounds nuw i8, ptr %.011.i179364, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !3174
  %i.gi = and i64 %i.gh, 7
  %i.gj = icmp eq i64 %i.gi, 5
  br i1 %i.gj, label %bb.ag, label %.critedge.a

bb.ag:                                            ; preds = %bb.af
  %i.gk = getelementptr inbounds nuw i8, ptr %.011.i179364, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !153 ; 2 uses
  %.not119 = icmp eq ptr %i.gl, null
  br i1 %.not119, label %.critedge.a, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
end_hunk_0
begin_hunk_1_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.v = sub i64 %i.u, %.0176.i374
  br label %bb.y

.split:                                           ; preds = %bb.e, %bb.l
  %.1177.i282 = phi ptr [ %.2.i, %bb.l ], [ %.0176.i, %bb.e ] ; 4 uses
  %.0178.i281 = phi i64 [ %i.ac, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.w = load i8, ptr %.1177.i282, align 1, !tbaa !153, !noalias !3439 ; 3 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %.split284.us

bb.h:                                             ; preds = %.split
  %i.z = mul i64 %.0178.i281, 10
  %i.aa = zext nneg i8 %i.w to i64
  %i.ab = add i64 %i.z, -48
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1177.i282, i64 1 ; 4 uses
  %.not267.i = icmp eq ptr %i.ad, %1
  br i1 %.not267.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !153, !noalias !3439
  %i.af = icmp eq i8 %i.ae, 95
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.1177.i282, i64 2 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !153, !noalias !3439
  %i.aj = add i8 %i.ai, -48
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.l, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.2.i = phi ptr [ %i.ag, %bb.k ], [ %i.ad, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %.not252.i = icmp eq ptr %.2.i, %1
  br i1 %.not252.i, label %.thread, label %.split, !llvm.loop !3442

.split284.us:                                     ; preds = %.split, %.split.us
  %i.al = phi i8 [ %i.k, %.split.us ], [ %i.w, %.split ]
  %.us-phi = phi i64 [ %.0178.i281.us, %.split.us ], [ %.0178.i281, %.split ] ; 4 uses
  %.us-phi285 = phi ptr [ %.1177.i282.us, %.split.us ], [ %.1177.i282, %.split ] ; 5 uses
  %i.am = ptrtoint ptr %.us-phi285 to i64         ; 3 uses
  %i.an = sub i64 %i.am, %.0176.i374              ; 2 uses
  %i.ao = icmp eq i8 %i.al, %4
  br i1 %i.ao, label %bb.m, label %bb.y

bb.m:                                             ; preds = %.split284.us
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi285, i64 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.us-phi285, i64 9 ; 4 uses
  %.not253.i = icmp ugt ptr %i.aq, %1
  br i1 %.not253.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i70 = load i64, ptr %i.ap, align 1, !noalias !3439 ; 2 uses
  %i.ar = add i64 %.0.copyload.i70, 5063812098665367110
  %i.as = add i64 %.0.copyload.i70, -3472328296227680304 ; 3 uses
  %i.at = or i64 %i.ar, %i.as
  %i.au = and i64 %i.at, -9187201950435737472
  %.not.i67 = icmp eq i64 %i.au, 0
  br i1 %.not.i67, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = mul i64 %.us-phi, 100000000
  %i.aw = mul i64 %i.as, 10
  %i.ax = lshr i64 %i.as, 8
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = and i64 %i.ay, 1095216660735
  %i.ba = mul i64 %i.az, 4294967296000100
  %i.bb = lshr i64 %i.ay, 16
  %i.bc = and i64 %i.bb, 1095216660735
  %i.bd = mul i64 %i.bc, 42949672960001
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = lshr i64 %i.be, 32
  %i.bg = add i64 %i.bf, %i.av                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.us-phi285, i64 17 ; 2 uses
  %.not254.i = icmp ugt ptr %i.bh, %1
  br i1 %.not254.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i71 = load i64, ptr %i.aq, align 1, !noalias !3439 ; 2 uses
  %i.bi = add i64 %.0.copyload.i71, 5063812098665367110
  %i.bj = add i64 %.0.copyload.i71, -3472328296227680304 ; 3 uses
  %i.bk = or i64 %i.bi, %i.bj
  %i.bl = and i64 %i.bk, -9187201950435737472
  %.not.i68 = icmp eq i64 %i.bl, 0
  br i1 %.not.i68, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = mul i64 %i.bg, 100000000
  %i.bn = mul i64 %i.bj, 10
  %i.bo = lshr i64 %i.bj, 8
  %i.bp = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = and i64 %i.bp, 1095216660735
  %i.br = mul i64 %i.bq, 4294967296000100
  %i.bs = lshr i64 %i.bp, 16
  %i.bt = and i64 %i.bs, 1095216660735
  %i.bu = mul i64 %i.bt, 42949672960001
  %i.bv = add i64 %i.bu, %i.br
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = add i64 %i.bw, %i.bm
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.1179.i = phi i64 [ %i.bx, %bb.q ], [ %i.bg, %bb.p ], [ %i.bg, %bb.o ], [ %.us-phi, %bb.n ], [ %.us-phi, %bb.m ] ; 3 uses
  %.3.i = phi ptr [ %i.bh, %bb.q ], [ %i.aq, %bb.p ], [ %i.aq, %bb.o ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ] ; 6 uses
  %.3.i378 = ptrtoint ptr %.3.i to i64
  br i1 %3, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.r
  %.not255.i288.us = icmp eq ptr %.3.i, %1
  br i1 %.not255.i288.us, label %.outer._crit_edge, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.outer.us
  %i.by = sub i64 %i.a, %.3.i378
  %scevgep379 = getelementptr i8, ptr %.3.i, i64 %i.by
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.t, %.lr.ph.us.preheader
  %.4.i290.us = phi ptr [ %.3.i, %.lr.ph.us.preheader ], [ %i.cc, %bb.t ] ; 3 uses
  %.2180.i289.us = phi i64 [ %.1179.i, %.lr.ph.us.preheader ], [ %i.cf, %bb.t ] ; 2 uses
  %i.bz = load i8, ptr %.4.i290.us, align 1, !tbaa !153, !noalias !3439
  %i.ca = add i8 %i.bz, -48                       ; 2 uses
  %i.cb = icmp ult i8 %i.ca, 10
  br i1 %i.cb, label %bb.s, label %.outer._crit_edge

bb.s:                                             ; preds = %.lr.ph.us
  %i.cc = getelementptr inbounds nuw i8, ptr %.4.i290.us, i64 1 ; 3 uses
  %i.cd = mul i64 %.2180.i289.us, 10
  %i.ce = zext nneg i8 %i.ca to i64
  %i.cf = add i64 %i.cd, %i.ce                    ; 2 uses
  %.not256.i.us = icmp eq ptr %i.cc, %1
  br i1 %.not256.i.us, label %.outer._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = load i8, ptr %i.cc, align 1, !tbaa !153, !noalias !3439
  %i.ch = icmp eq i8 %i.cg, 95
  br i1 %i.ch, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.lr.ph.us

.outer:                                           ; preds = %bb.r, %bb.x
  %.0221.i.ph = phi i64 [ %i.ct, %bb.x ], [ 0, %bb.r ] ; 4 uses
  %.2180.i.ph = phi i64 [ %i.co, %bb.x ], [ %.1179.i, %bb.r ] ; 2 uses
  %.4.i.ph = phi ptr [ %i.cr, %bb.x ], [ %.3.i, %bb.r ] ; 5 uses
  %.not255.i288 = icmp eq ptr %.4.i.ph, %1
  br i1 %.not255.i288, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.v
  %.4.i290 = phi ptr [ %i.cl, %bb.v ], [ %.4.i.ph, %.outer ] ; 4 uses
  %.2180.i289 = phi i64 [ %i.co, %bb.v ], [ %.2180.i.ph, %.outer ] ; 2 uses
  %i.ci = load i8, ptr %.4.i290, align 1, !tbaa !153, !noalias !3439
  %i.cj = add i8 %i.ci, -48                       ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 10
  br i1 %i.ck, label %bb.u, label %.outer._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.4.i290, i64 1 ; 3 uses
  %i.cm = mul i64 %.2180.i289, 10
  %i.cn = zext nneg i8 %i.cj to i64
  %i.co = add i64 %i.cm, %i.cn                    ; 3 uses
  %.not256.i = icmp eq ptr %i.cl, %1
  br i1 %.not256.i, label %.outer._crit_edge.loopexit458.split.loop.exit498, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !153, !noalias !3439
  %i.cq = icmp eq i8 %i.cp, 95
  br i1 %i.cq, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %.4.i290, i64 2 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, %1
  br i1 %i.cs, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = add nuw nsw i64 %.0221.i.ph, 1
  %i.cu = load i8, ptr %i.cr, align 1, !tbaa !153, !noalias !3439
  %i.cv = add i8 %i.cu, -48
  %i.cw = icmp ult i8 %i.cv, 10
  br i1 %i.cw, label %.outer, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, !llvm.loop !3443

.outer._crit_edge.loopexit458.split.loop.exit498: ; preds = %bb.u
  %.4.i.ph376.le = ptrtoint ptr %.4.i.ph to i64
  %scevgep375.le = getelementptr i8, ptr %.4.i.ph, i64 %i.a
  %i.cx = sub i64 0, %.4.i.ph376.le
  %scevgep377.le = getelementptr i8, ptr %scevgep375.le, i64 %i.cx
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.lr.ph, %bb.s, %.lr.ph.us, %.outer._crit_edge.loopexit458.split.loop.exit498, %.outer.us
  %.0221.i.ph.lcssa = phi i64 [ %.0221.i.ph, %.outer._crit_edge.loopexit458.split.loop.exit498 ], [ %.0221.i.ph, %.lr.ph ], [ 0, %.outer.us ], [ 0, %bb.s ], [ 0, %.lr.ph.us ], [ %.0221.i.ph, %.outer ]
  %.2180.i.lcssa = phi i64 [ %i.co, %.outer._crit_edge.loopexit458.split.loop.exit498 ], [ %.2180.i289, %.lr.ph ], [ %.1179.i, %.outer.us ], [ %i.cf, %bb.s ], [ %.2180.i289.us, %.lr.ph.us ], [ %.2180.i.ph, %.outer ]
  %.4.i.lcssa = phi ptr [ %scevgep377.le, %.outer._crit_edge.loopexit458.split.loop.exit498 ], [ %.4.i290, %.lr.ph ], [ %.3.i, %.outer.us ], [ %scevgep379, %bb.s ], [ %.4.i290.us, %.lr.ph.us ], [ %.4.i.ph, %.outer ] ; 2 uses
  %i.cy = ptrtoint ptr %i.ap to i64
  %i.cz = ptrtoint ptr %.4.i.lcssa to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = add nsw i64 %i.da, %.0221.i.ph.lcssa    ; 2 uses
  %i.dc = sub nsw i64 %i.an, %i.db
  br label %bb.y

bb.y:                                             ; preds = %.outer._crit_edge, %.thread, %.split284.us
  %i.dd = phi i64 [ %i.u, %.thread ], [ %i.am, %.outer._crit_edge ], [ %i.am, %.split284.us ]
  %.1211.i = phi i64 [ 0, %.thread ], [ %i.db, %.outer._crit_edge ], [ 0, %.split284.us ] ; 3 uses
  %.1201.i = phi i64 [ %i.v, %.thread ], [ %i.dc, %.outer._crit_edge ], [ %i.an, %.split284.us ] ; 3 uses
  %.4182.i = phi i64 [ %.us-phi286, %.thread ], [ %.2180.i.lcssa, %.outer._crit_edge ], [ %.us-phi, %.split284.us ] ; 3 uses
  %.8.i = phi ptr [ %.us-phi287, %.thread ], [ %.4.i.lcssa, %.outer._crit_edge ], [ %.us-phi285, %.split284.us ] ; 7 uses
  %i.de = icmp eq i64 %.1201.i, 0
  br i1 %i.de, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = and i32 %5, 1
  %.not257.i = icmp eq i32 %i.df, 0
  %.not258.i = icmp eq ptr %.8.i, %1
  %or.cond.i = or i1 %.not257.i, %.not258.i
  br i1 %or.cond.i, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = load i8, ptr %.8.i, align 1, !tbaa !153, !noalias !3439
  switch i8 %i.dg, label %bb.am [
    i8 101, label %bb.ab
    i8 69, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not260.i = icmp eq ptr %i.dh, %1
  br i1 %.not260.i, label %.critedge269.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !153, !noalias !3439 ; 2 uses
  %i.dj = icmp eq i8 %i.di, 45
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  br label %.critedge269.i

bb.ae:                                            ; preds = %bb.ac
  %i.dl = icmp eq i8 %i.di, 43
  %i.dm = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  %spec.select.i = select i1 %i.dl, ptr %i.dm, ptr %i.dh
  br label %.critedge269.i

.critedge269.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0199.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.9.i = phi ptr [ %i.dk, %bb.ad ], [ %i.dh, %bb.ab ], [ %spec.select.i, %bb.ae ] ; 3 uses
  %i.dn = icmp eq ptr %.9.i, %1
  br i1 %i.dn, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.critedge269.i
  %i.do = load i8, ptr %.9.i, align 1, !tbaa !153, !noalias !3439
  %i.dp = add i8 %i.do, -48
  %i.dq = icmp ult i8 %i.dp, 10
  br i1 %i.dq, label %.lr.ph313, label %bb.al

.lr.ph313:                                        ; preds = %bb.af, %.backedge
  %.10.i312 = phi ptr [ %.10.i.be, %.backedge ], [ %.9.i, %bb.af ] ; 4 uses
  %.0204.i311 = phi i64 [ %.1205.i, %.backedge ], [ 0, %bb.af ] ; 4 uses
  %i.dr = load i8, ptr %.10.i312, align 1, !tbaa !153, !noalias !3439
  %i.ds = add i8 %i.dr, -48                       ; 2 uses
  %i.dt = icmp ult i8 %i.ds, 10
  br i1 %i.dt, label %bb.ag, label %.thread154

bb.ag:                                            ; preds = %.lr.ph313
  %i.du = icmp slt i64 %.0204.i311, 65536
  %i.dv = mul nsw i64 %.0204.i311, 10
  %i.dw = zext nneg i8 %i.ds to i64
  %i.dx = add nsw i64 %i.dv, %i.dw
  %.1205.i = select i1 %i.du, i64 %i.dx, i64 %.0204.i311 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.10.i312, i64 1 ; 4 uses
  %.not262.i = icmp eq ptr %i.dy, %1
  br i1 %.not262.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !153, !noalias !3439
  %i.ea = icmp eq i8 %i.dz, 95
  br i1 %i.ea, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %.10.i312, i64 2 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, %1
  br i1 %i.ec, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !153, !noalias !3439
  %i.ee = add i8 %i.ed, -48
  %i.ef = icmp ult i8 %i.ee, 10
  br i1 %i.ef, label %.backedge, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

.backedge:                                        ; preds = %bb.ag, %bb.ah, %bb.ak
  %.10.i.be = phi ptr [ %i.eb, %bb.ak ], [ %i.dy, %bb.ah ], [ %i.dy, %bb.ag ] ; 3 uses
  %.not261.i = icmp eq ptr %.10.i.be, %1
  br i1 %.not261.i, label %.thread154, label %.lr.ph313, !llvm.loop !3444

.thread154:                                       ; preds = %.lr.ph313, %.backedge
  %.0204.i.lcssa.ph = phi i64 [ %.0204.i311, %.lr.ph313 ], [ %.1205.i, %.backedge ] ; 2 uses
  %.10.i.lcssa.ph = phi ptr [ %.10.i312, %.lr.ph313 ], [ %.10.i.be, %.backedge ]
  %i.eg = sub nsw i64 0, %.0204.i.lcssa.ph
  %spec.select270.i = select i1 %.0199.i, i64 %i.eg, i64 %.0204.i.lcssa.ph ; 2 uses
  %i.eh = add nsw i64 %spec.select270.i, %.1211.i
  br label %bb.an

bb.al:                                            ; preds = %.critedge269.i, %bb.af
  %i.ei = and i32 %5, 4
  %.not263.i.not = icmp eq i32 %i.ei, 0
  br i1 %.not263.i.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.aa, %bb.z
  %i.ej = and i32 %5, 5
  %or.cond271.i.not.not = icmp eq i32 %i.ej, 1
  br i1 %or.cond271.i.not.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.an:                                            ; preds = %.thread154, %bb.am, %bb.al
  %.4214.i = phi i64 [ %.1211.i, %bb.al ], [ %.1211.i, %bb.am ], [ %i.eh, %.thread154 ] ; 5 uses
  %.5209.i = phi i64 [ 0, %bb.al ], [ 0, %bb.am ], [ %spec.select270.i, %.thread154 ] ; 2 uses
  %.15.i = phi ptr [ %.8.i, %bb.al ], [ %.8.i, %bb.am ], [ %.10.i.lcssa.ph, %.thread154 ] ; 3 uses
  %i.ek = icmp sgt i64 %.1201.i, 19
  br i1 %i.ek, label %.preheader258, label %bb.ba

.preheader258:                                    ; preds = %bb.an, %.critedge8.i
  %.0191.i320 = phi ptr [ %i.ep, %.critedge8.i ], [ %.0176.i, %bb.an ] ; 2 uses
  %.2202.i319 = phi i64 [ %spec.select273.i, %.critedge8.i ], [ %.1201.i, %bb.an ] ; 2 uses
  %i.el = load i8, ptr %.0191.i320, align 1, !tbaa !153, !noalias !3439 ; 2 uses
  %i.em = icmp eq i8 %i.el, 48                    ; 2 uses
  %i.en = icmp eq i8 %i.el, %4
  %or.cond272.i = or i1 %i.em, %i.en
  br i1 %or.cond272.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader258
  %i.eo = sext i1 %i.em to i64
  %spec.select273.i = add nsw i64 %.2202.i319, %i.eo ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0191.i320, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.ep, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader258, !llvm.loop !3445

.critedge.i:                                      ; preds = %.preheader258, %.critedge8.i
  %.2202.i.lcssa = phi i64 [ %.2202.i319, %.preheader258 ], [ %spec.select273.i, %.critedge8.i ]
  %i.eq = icmp sgt i64 %.2202.i.lcssa, 19
  br i1 %i.eq, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %.critedge.i, %bb.at
  %.16.i322 = phi ptr [ %.17.i, %bb.at ], [ %.0176.i, %.critedge.i ] ; 4 uses
  %.5183.i321 = phi i64 [ %i.ex, %bb.at ], [ 0, %.critedge.i ] ; 2 uses
  %i.er = load i8, ptr %.16.i322, align 1, !tbaa !153, !noalias !3439 ; 2 uses
  %i.es = add i8 %i.er, -48
  %i.et = icmp ult i8 %i.es, 10
  br i1 %i.et, label %bb.ao, label %.thread160

bb.ao:                                            ; preds = %.preheader
  %i.eu = mul nuw i64 %.5183.i321, 10
  %i.ev = zext nneg i8 %i.er to i64
  %i.ew = add i64 %i.eu, -48
  %i.ex = add i64 %i.ew, %i.ev                    ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.16.i322, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.ey, %1
  br i1 %.not266.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !153, !noalias !3439
  %i.fa = icmp eq i8 %i.ez, 95
  br i1 %i.fa, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fb = getelementptr inbounds nuw i8, ptr %.16.i322, i64 2 ; 3 uses
  %i.fc = icmp eq ptr %i.fb, %1
  br i1 %i.fc, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !153, !noalias !3439
  %i.fe = add i8 %i.fd, -48
  %i.ff = icmp ult i8 %i.fe, 10
  br i1 %i.ff, label %bb.at, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ao
  %.17.i = phi ptr [ %i.fb, %bb.as ], [ %i.ey, %bb.ap ], [ %i.ey, %bb.ao ] ; 4 uses
  %i.fg = icmp ult i64 %i.ex, 1000000000000000000
  %i.fh = icmp ne ptr %.17.i, %1
  %i.fi = and i1 %i.fg, %i.fh
  br i1 %i.fi, label %.preheader, label %bb.au, !llvm.loop !3446

bb.au:                                            ; preds = %bb.at
  %i.fj = icmp ugt i64 %i.ex, 999999999999999999
  br i1 %i.fj, label %.thread424.thread, label %.thread160

.thread424.thread:                                ; preds = %bb.au
  %i.fk = ptrtoint ptr %.17.i to i64
  %i.fl = add i64 %.5209.i, %i.dd
  %i.fm = sub i64 %i.fl, %i.fk
  br label %bb.bg

.thread160:                                       ; preds = %.preheader, %bb.au
  %.5183.i271 = phi i64 [ %i.ex, %bb.au ], [ %.5183.i321, %.preheader ] ; 2 uses
  %.16.i268 = phi ptr [ %.17.i, %bb.au ], [ %.16.i322, %.preheader ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.16.i268, i64 1 ; 4 uses
  %.not505 = icmp eq ptr %i.fn, %1
  br i1 %.not505, label %._crit_edge327, label %.lr.ph326

.lr.ph326:                                        ; preds = %.thread160, %bb.az
  %.0.i325 = phi i64 [ %.1.i, %bb.az ], [ 0, %.thread160 ] ; 4 uses
  %.18.i324 = phi ptr [ %.19.i, %bb.az ], [ %i.fn, %.thread160 ] ; 4 uses
  %.6184.i323 = phi i64 [ %i.fu, %bb.az ], [ %.5183.i271, %.thread160 ] ; 2 uses
  %i.fo = load i8, ptr %.18.i324, align 1, !tbaa !153, !noalias !3439 ; 2 uses
  %i.fp = add i8 %i.fo, -48
  %i.fq = icmp ult i8 %i.fp, 10
  br i1 %i.fq, label %bb.av, label %._crit_edge327

bb.av:                                            ; preds = %.lr.ph326
  %i.fr = mul nuw i64 %.6184.i323, 10
  %i.fs = zext nneg i8 %i.fo to i64
  %i.ft = add i64 %i.fr, -48
  %i.fu = add i64 %i.ft, %i.fs                    ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.18.i324, i64 1 ; 4 uses
  %.not265.i = icmp eq ptr %i.fv, %1
  br i1 %.not265.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !153, !noalias !3439
  %i.fx = icmp eq i8 %i.fw, 95
  br i1 %i.fx, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fy = getelementptr inbounds nuw i8, ptr %.18.i324, i64 2 ; 3 uses
  %i.fz = icmp eq ptr %i.fy, %1
  br i1 %i.fz, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ga = add nsw i64 %.0.i325, 1
  %i.gb = load i8, ptr %i.fy, align 1, !tbaa !153, !noalias !3439
  %i.gc = add i8 %i.gb, -48
  %i.gd = icmp ult i8 %i.gc, 10
  br i1 %i.gd, label %bb.az, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.av
  %.19.i = phi ptr [ %i.fy, %bb.ay ], [ %i.fv, %bb.aw ], [ %i.fv, %bb.av ] ; 3 uses
  %.1.i = phi i64 [ %i.ga, %bb.ay ], [ %.0.i325, %bb.aw ], [ %.0.i325, %bb.av ] ; 2 uses
  %i.ge = icmp ult i64 %i.fu, 1000000000000000000
  %i.gf = icmp ne ptr %.19.i, %1
  %i.gg = and i1 %i.ge, %i.gf
  br i1 %i.gg, label %.lr.ph326, label %._crit_edge327, !llvm.loop !3447

._crit_edge327:                                   ; preds = %bb.az, %.lr.ph326, %.thread160
  %.6184.i.lcssa = phi i64 [ %.5183.i271, %.thread160 ], [ %.6184.i323, %.lr.ph326 ], [ %i.fu, %bb.az ]
  %.18.i.lcssa = phi ptr [ %i.fn, %.thread160 ], [ %.18.i324, %.lr.ph326 ], [ %.19.i, %bb.az ]
  %.0.i.lcssa = phi i64 [ 0, %.thread160 ], [ %.0.i325, %.lr.ph326 ], [ %.1.i, %bb.az ]
  %i.gh = ptrtoint ptr %i.fn to i64
  %i.gi = ptrtoint ptr %.18.i.lcssa to i64
  %i.gj = add i64 %.5209.i, %i.gh
  %i.gk = sub i64 %i.gj, %i.gi
  %i.gl = add nsw i64 %i.gk, %.0.i.lcssa
  br label %.thread424

_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread: ; preds = %bb.j, %bb.k, %bb.g, %bb.w, %bb.x, %bb.t, %bb.ak, %bb.aj, %bb.ai, %bb.as, %bb.ar, %bb.aq, %bb.ax, %bb.ay, %bb.am, %bb.al, %bb.y, %bb.d, %bb.c
  %i.gm = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #48 ; 2 uses
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  %i.go = extractvalue { ptr, i32 } %i.gm, 1
  br label %bb.bs

bb.ba:                                            ; preds = %bb.an, %.critedge.i
  %i.gp = add i64 %.4214.i, -23
  %or.cond220 = icmp ult i64 %i.gp, -45
  %i.gq = icmp ugt i64 %.4182.i, 9007199254740992
  %or.cond251 = select i1 %or.cond220, i1 true, i1 %i.gq
  br i1 %or.cond251, label %.thread424, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gr = uitofp nneg i64 %.4182.i to double      ; 2 uses
  %i.gs = icmp slt i64 %.4214.i, 0
  br i1 %i.gs, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gt = sub nsw i64 0, %.4214.i
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !542
  %i.gw = fdiv double %i.gr, %i.gv
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %.4214.i
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !542
  %i.gz = fmul double %i.gy, %i.gr
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %storemerge = phi double [ %i.gz, %bb.bd ], [ %i.gw, %bb.bc ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !542
  br i1 %i.d, label %bb.bf, label %bb.bs

bb.bf:                                            ; preds = %bb.be
  %i.ha = fneg double %storemerge
  store double %i.ha, ptr %2, align 8, !tbaa !542
  br label %bb.bs

.thread424:                                       ; preds = %._crit_edge327, %bb.ba
  %.sroa.093.0.ph433 = phi i64 [ %.4214.i, %bb.ba ], [ %i.gl, %._crit_edge327 ] ; 2 uses
  %.sroa.7.0.ph432 = phi i64 [ %.4182.i, %bb.ba ], [ %.6184.i.lcssa, %._crit_edge327 ] ; 2 uses
  %.sroa.26.2.ph431 = phi i1 [ false, %bb.ba ], [ true, %._crit_edge327 ] ; 2 uses
  %i.hb = icmp eq i64 %.sroa.7.0.ph432, 0
  br i1 %i.hb, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.bg

bb.bg:                                            ; preds = %.thread424.thread, %.thread424
  %.sroa.26.2.ph431453 = phi i1 [ true, %.thread424.thread ], [ %.sroa.26.2.ph431, %.thread424 ] ; 6 uses
  %.sroa.7.0.ph432452 = phi i64 [ %i.ex, %.thread424.thread ], [ %.sroa.7.0.ph432, %.thread424 ] ; 8 uses
  %.sroa.093.0.ph433450 = phi i64 [ %i.fm, %.thread424.thread ], [ %.sroa.093.0.ph433, %.thread424 ] ; 11 uses
  %i.hc = icmp slt i64 %.sroa.093.0.ph433450, -342
  br i1 %i.hc, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hd = icmp sgt i64 %.sroa.093.0.ph433450, 308
  br i1 %i.hd, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %.noexc

.noexc:                                           ; preds = %bb.bh
  %i.he = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.7.0.ph432452, i1 true) ; 2 uses
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = shl i64 %.sroa.7.0.ph432452, %i.he
  %i.hh = trunc nsw i64 %.sroa.093.0.ph433450 to i32 ; 2 uses
  %i.hi = shl nsw i32 %i.hh, 1
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hj ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 5472
  %i.hm = load i64, ptr %i.hl, align 16, !tbaa !108
  %i.hn = zext i64 %i.hg to i128                  ; 2 uses
  %i.ho = zext i64 %i.hm to i128
  %i.hp = mul nuw i128 %i.ho, %i.hn               ; 2 uses
  %i.hq = trunc i128 %i.hp to i64                 ; 2 uses
  %i.hr = lshr i128 %i.hp, 64
  %i.hs = trunc nuw i128 %i.hr to i64             ; 3 uses
  %i.ht = and i64 %i.hs, 511
  %i.hu = icmp eq i64 %i.ht, 511
  br i1 %i.hu, label %.noexc73, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

.noexc73:                                         ; preds = %.noexc
  %i.hv = getelementptr i8, ptr %i.hk, i64 5480
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !108
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hn
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = trunc nuw i128 %i.hz to i64             ; 2 uses
  %i.ib = add i64 %i.ia, %i.hq                    ; 2 uses
  %i.ic = icmp ult i64 %i.ib, %i.ia
  %i.id = zext i1 %i.ic to i64
  %spec.select.i72 = add nuw i64 %i.id, %i.hs
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %.noexc73, %.noexc
  %.pn240 = phi i64 [ %i.ib, %.noexc73 ], [ %i.hq, %.noexc ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %.noexc73 ], [ %i.hs, %.noexc ] ; 3 uses
  %i.ie = icmp ne i64 %.pn240, -1
  %i.if = add nsw i64 %.sroa.093.0.ph433450, 27
  %i.ig = icmp ult i64 %i.if, 83
  %or.cond.i54 = or i1 %i.ig, %i.ie
  br i1 %or.cond.i54, label %.critedge.i60, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread

.critedge.i60:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.ih = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %i.ij = add nuw nsw i64 %i.ih, 9                ; 2 uses
  %i.ik = lshr i64 %spec.select.i72.pn, %i.ij     ; 5 uses
  %i.il = mul nsw i32 %i.hh, 217706
  %i.im = ashr i32 %i.il, 16
  %reass.sub = sub nsw i32 %i.im, %i.hf
  %i.in = add nsw i32 %reass.sub, 1086
  %i.io = add nsw i32 %i.in, %i.ii                ; 3 uses
  %i.ip = icmp slt i32 %i.io, 1
  br i1 %i.ip, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.critedge.i60
  %i.iq = sub nsw i32 1, %i.io                    ; 2 uses
  %i.ir = icmp samesign ugt i32 %i.iq, 63
  br i1 %i.ir, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.is = zext nneg i32 %i.iq to i64
  %i.it = lshr i64 %i.ik, %i.is                   ; 2 uses
  %i.iu = and i64 %i.it, 1
  %i.iv = add nuw nsw i64 %i.iu, %i.it            ; 2 uses
  %i.iw = lshr i64 %i.iv, 1                       ; 2 uses
  %i.ix = icmp samesign ugt i64 %i.iv, 9007199254740991
  %i.iy = zext i1 %i.ix to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph431453, label %bb.bl, label %bb.br

bb.bk:                                            ; preds = %.critedge.i60
  %i.iz = icmp ult i64 %.pn240, 2
  %i.ja = add nsw i64 %.sroa.093.0.ph433450, 4
  %i.jb = icmp ult i64 %i.ja, 28
  %or.cond222.not242 = and i1 %i.jb, %i.iz
  %i.jc = and i64 %i.ik, 3
  %i.jd = icmp eq i64 %i.jc, 1
  %or.cond224 = select i1 %or.cond222.not242, i1 %i.jd, i1 false
  %i.je = shl i64 %i.ik, %i.ij
  %i.jf = icmp eq i64 %i.je, %spec.select.i72.pn
  %or.cond226 = select i1 %or.cond224, i1 %i.jf, i1 false
  %i.jg = and i64 %i.ik, 72057594037927934
  %.sroa.0111.0 = select i1 %or.cond226, i64 %i.jg, i64 %i.ik ; 2 uses
  %i.jh = and i64 %.sroa.0111.0, 1
  %i.ji = add nuw nsw i64 %i.jh, %.sroa.0111.0    ; 2 uses
  %i.jj = lshr i64 %i.ji, 1
  %.not27.i61 = icmp samesign ugt i64 %i.ji, 18014398509481983 ; 2 uses
  %i.jk = zext i1 %.not27.i61 to i32
  %.sroa.19117.0 = add nuw nsw i32 %i.io, %i.jk   ; 2 uses
  %i.jl = and i64 %i.jj, 9218868437227405311
  %.not28.i62 = icmp samesign ugt i32 %.sroa.19117.0, 2046 ; 2 uses
  %.not = select i1 %.not28.i62, i1 true, i1 %.not27.i61
  %spec.select235 = select i1 %.not, i64 0, i64 %i.jl ; 2 uses
  %spec.select236 = select i1 %.not28.i62, i32 2047, i32 %.sroa.19117.0 ; 2 uses
  br i1 %.sroa.26.2.ph431453, label %bb.bl, label %bb.br

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66: ; preds = %bb.bi, %bb.bh, %.thread424, %bb.bg
  %.sroa.26.2.ph431454 = phi i1 [ %.sroa.26.2.ph431453, %bb.bh ], [ %.sroa.26.2.ph431, %.thread424 ], [ %.sroa.26.2.ph431453, %bb.bg ], [ %.sroa.26.2.ph431453, %bb.bi ]
  %.sroa.093.0.ph433451 = phi i64 [ %.sroa.093.0.ph433450, %bb.bh ], [ %.sroa.093.0.ph433, %.thread424 ], [ %.sroa.093.0.ph433450, %bb.bg ], [ %.sroa.093.0.ph433450, %bb.bi ]
  %.sroa.7.0173 = phi i64 [ %.sroa.7.0.ph432452, %bb.bh ], [ 0, %.thread424 ], [ %.sroa.7.0.ph432452, %bb.bg ], [ %.sroa.7.0.ph432452, %bb.bi ]
  %.sroa.19117.1 = phi i32 [ 2047, %bb.bh ], [ 0, %.thread424 ], [ 0, %bb.bg ], [ 0, %bb.bi ] ; 2 uses
  br i1 %.sroa.26.2.ph431454, label %bb.bl, label %bb.br

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread: ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  br i1 %.sroa.26.2.ph431453, label %bb.bl, label %.thread210

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66
  %.sroa.093.0.ph433449 = phi i64 [ %.sroa.093.0.ph433450, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.093.0.ph433451, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.093.0.ph433450, %bb.bj ], [ %.sroa.093.0.ph433450, %bb.bk ] ; 5 uses
  %.sroa.19117.1440 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iy, %bb.bj ], [ %spec.select236, %bb.bk ] ; 3 uses
  %.sroa.0111.2438 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iw, %bb.bj ], [ %spec.select235, %bb.bk ] ; 2 uses
  %.sroa.7.0173437 = phi i64 [ %.sroa.7.0.ph432452, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.7.0173, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.7.0.ph432452, %bb.bj ], [ %.sroa.7.0.ph432452, %bb.bk ]
  %i.jm = add i64 %.sroa.7.0173437, 1             ; 3 uses
  %i.jn = icmp eq i64 %i.jm, 0
  %i.jo = icmp slt i64 %.sroa.093.0.ph433449, -342
  %or.cond227 = or i1 %i.jo, %i.jn
  br i1 %or.cond227, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jp = icmp sgt i64 %.sroa.093.0.ph433449, 308
  br i1 %i.jp, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %.noexc76

.noexc76:                                         ; preds = %bb.bm
  %i.jq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jm, i1 true) ; 2 uses
  %i.jr = trunc nuw nsw i64 %i.jq to i32
  %i.js = shl i64 %i.jm, %i.jq
  %i.jt = trunc nsw i64 %.sroa.093.0.ph433449 to i32 ; 2 uses
  %i.ju = shl nsw i32 %i.jt, 1
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jv ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 5472
  %i.jy = load i64, ptr %i.jx, align 16, !tbaa !108
  %i.jz = zext i64 %i.js to i128                  ; 2 uses
  %i.ka = zext i64 %i.jy to i128
  %i.kb = mul nuw i128 %i.ka, %i.jz               ; 2 uses
  %i.kc = trunc i128 %i.kb to i64                 ; 2 uses
  %i.kd = lshr i128 %i.kb, 64
  %i.ke = trunc nuw i128 %i.kd to i64             ; 3 uses
  %i.kf = and i64 %i.ke, 511
  %i.kg = icmp eq i64 %i.kf, 511
  br i1 %i.kg, label %.noexc77, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

.noexc77:                                         ; preds = %.noexc76
  %i.kh = getelementptr i8, ptr %i.jw, i64 5480
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !108
  %i.kj = zext i64 %i.ki to i128
  %i.kk = mul nuw i128 %i.kj, %i.jz
  %i.kl = lshr i128 %i.kk, 64
  %i.km = trunc nuw i128 %i.kl to i64             ; 2 uses
  %i.kn = add i64 %i.km, %i.kc                    ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.km
  %i.kp = zext i1 %i.ko to i64
  %spec.select.i75 = add nuw i64 %i.kp, %i.ke
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78: ; preds = %.noexc77, %.noexc76
  %.pn244 = phi i64 [ %i.kn, %.noexc77 ], [ %i.kc, %.noexc76 ] ; 2 uses
  %spec.select.i75.pn = phi i64 [ %spec.select.i75, %.noexc77 ], [ %i.ke, %.noexc76 ] ; 3 uses
  %i.kq = icmp ne i64 %.pn244, -1
  %i.kr = add nsw i64 %.sroa.093.0.ph433449, 27
  %i.ks = icmp ult i64 %i.kr, 83
  %or.cond.i51 = or i1 %i.ks, %i.kq
  br i1 %or.cond.i51, label %.critedge.i52, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

.critedge.i52:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78
  %i.kt = lshr i64 %spec.select.i75.pn, 63        ; 2 uses
  %i.ku = trunc nuw nsw i64 %i.kt to i32
  %i.kv = add nuw nsw i64 %i.kt, 9                ; 2 uses
  %i.kw = lshr i64 %spec.select.i75.pn, %i.kv     ; 5 uses
  %i.kx = mul nsw i32 %i.jt, 217706
  %i.ky = ashr i32 %i.kx, 16
  %i.kz = add nsw i32 %i.ky, 1086
  %i.la = sub nsw i32 %i.kz, %i.jr
  %i.lb = add nsw i32 %i.la, %i.ku                ; 3 uses
  %i.lc = icmp slt i32 %i.lb, 1
  br i1 %i.lc, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.critedge.i52
  %i.ld = sub nsw i32 1, %i.lb                    ; 2 uses
  %i.le = icmp samesign ugt i32 %i.ld, 63
  br i1 %i.le, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lf = zext nneg i32 %i.ld to i64
  %i.lg = lshr i64 %i.kw, %i.lf                   ; 2 uses
  %i.lh = and i64 %i.lg, 1
  %i.li = add nuw nsw i64 %i.lh, %i.lg            ; 2 uses
  %i.lj = lshr i64 %i.li, 1
  %i.lk = icmp samesign ugt i64 %i.li, 9007199254740991
  %i.ll = zext i1 %i.lk to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.bp:                                            ; preds = %.critedge.i52
  %i.lm = icmp ult i64 %.pn244, 2
  %i.ln = add nsw i64 %.sroa.093.0.ph433449, 4
  %i.lo = icmp ult i64 %i.ln, 28
  %or.cond229.not247 = and i1 %i.lo, %i.lm
  %i.lp = and i64 %i.kw, 3
  %i.lq = icmp eq i64 %i.lp, 1
  %or.cond231 = select i1 %or.cond229.not247, i1 %i.lq, i1 false
  %i.lr = shl i64 %i.kw, %i.kv
  %i.ls = icmp eq i64 %i.lr, %spec.select.i75.pn
  %or.cond233 = select i1 %or.cond231, i1 %i.ls, i1 false
  %i.lt = and i64 %i.kw, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond233, i64 %i.lt, i64 %i.kw ; 2 uses
  %i.lu = and i64 %.sroa.0103.0, 1
  %i.lv = add nuw nsw i64 %i.lu, %.sroa.0103.0    ; 2 uses
  %i.lw = lshr i64 %i.lv, 1
  %.not27.i = icmp samesign ugt i64 %i.lv, 18014398509481983 ; 2 uses
  %i.lx = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.lb, %i.lx      ; 2 uses
  %i.ly = and i64 %i.lw, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not248 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select237 = select i1 %.not248, i64 0, i64 %i.ly
  %spec.select238 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bm, %bb.bl, %bb.bo
  %.sroa.0103.2 = phi i64 [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lj, %bb.bo ], [ %spec.select237, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bm ], [ 0, %bb.bl ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.ll, %bb.bo ], [ %spec.select238, %bb.bp ], [ 0, %bb.bn ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2438, %.sroa.0103.2
  %i.lz = icmp ne i32 %.sroa.19117.1440, %.sroa.19.1
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISB_cEEEEEEvNS0_17basic_string_viewIT0_EEOT1_:bb.a
  store ptr %.sroa.0.0.copyload.i7.i.i, ptr %i.h, align 8, !tbaa !364
  store ptr null, ptr %i.i, align 8, !tbaa !3485
  store ptr %i.c, ptr %i.j, align 8, !tbaa !3492
  store ptr %i.d, ptr %i.k, align 8, !tbaa !3494
  %i.aj = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENS0_20basic_format_contextISA_cEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.aj, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br label %bb.ag

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 16 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !2783 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2788
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i, %i.am
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 123, ptr %.pre.i.i.i.i.i.i.i.i, align 1, !tbaa !153
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !2783
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !2781 ; 4 uses
  %i.aq = ptrtoint ptr %.pre.i.i.i.i.i.i.i.i to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 7 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775807
  br i1 %i.at, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.au = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %i.as ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.as
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 9223372036854775807)
  %i.ax = select i1 %i.av, i64 9223372036854775807, i64 %i.aw ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #50
  %.pre = load i8, ptr %i.t, align 1, !tbaa !153
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.az = phi i8 [ %.pre, %bb.p ], [ 123, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ba = phi ptr [ %i.ay, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !153
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %.not.i17.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ba, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !2781
  store ptr %i.bd, ptr %i.ak, align 8, !tbaa !2783
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax
  store ptr %i.be, ptr %i.al, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, %bb.m
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.c, align 16
  br label %bb.ag

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  store ptr %2, ptr %9, align 8, !tbaa !3479
  %i.bf = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISC_cEEEEcEEEEPKT_SM_SM_OT0_(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  %.not46 = icmp eq ptr %i.bf, %i.a
  br i1 %.not46, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !153
  switch i8 %i.bg, label %.thread [
    i8 125, label %bb.u
    i8 58, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !3483 ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 %i.bk
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !3483
  %i.bm = load i64, ptr %i.f, align 16, !tbaa !3484
  %i.bn = sub i64 %i.bm, %i.bk
  store i64 %i.bn, ptr %i.f, align 16, !tbaa !3484
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %.sroa.0.0.copyload.i.i.i55 = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i56 = load ptr, ptr %i.g, align 8, !tbaa !364
  store ptr %.sroa.0.0.copyload.i.i.i55, ptr %3, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i56, ptr %i.l, align 8, !tbaa !364
  store ptr null, ptr %i.m, align 8, !tbaa !3485
  store ptr %i.c, ptr %i.n, align 8, !tbaa !3492
  store ptr %i.d, ptr %i.o, align 8, !tbaa !3494
  %i.bo = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENS0_20basic_format_contextISA_cEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.bo, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %bb.ag

bb.v:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bq = call noundef ptr @_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE15on_format_specsEPKcSH_(ptr noundef nonnull align 16 dereferenceable(112) %2, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.a) ; 3 uses
  %i.br = icmp eq ptr %i.bq, %i.a
  br i1 %i.br, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !153
  %.not48 = icmp eq i8 %i.bs, 125
  br i1 %.not48, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.390, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %10) #51
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.ab:                                            ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bv) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.aa
  %.pn49 = phi { ptr, i32 } [ %i.bt, %bb.aa ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.bu, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  br label %bb.ah

.thread:                                          ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.391, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %.thread
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %12) #51
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %.thread
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.af:                                            ; preds = %bb.ac
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.ca) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.by, %bb.ae ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.bz, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  br label %bb.ah

bb.ag:                                            ; preds = %bb.k, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i, %bb.w, %bb.u
  %.169 = phi ptr [ %i.bf, %bb.u ], [ %i.bq, %bb.w ], [ %i.t, %bb.k ], [ %i.t, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.169, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.cd, %i.a
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !3497

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  resume { ptr, i32 } %.pn52.pn

.loopexit:                                        ; preds = %bb.ag, %bb.a, %.thread70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISB_cEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSP_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.x
  %.013 = phi ptr [ %.1, %bb.x ], [ %1, %.preheader ] ; 5 uses
  %i.c = ptrtoint ptr %.013 to i64                ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = tail call noundef ptr @memchr(ptr noundef %.013, i32 noundef 125, i64 noundef %i.d) #53 ; 3 uses
  %.not33 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not33, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !3498, !nonnull !74, !align !3500
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 16 ; 5 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !2783
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.af, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ah, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i.i.i = phi ptr [ %.013, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ag, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !2788
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %.056.i.i.i.i.i.i.i.i, align 1, !tbaa !153
  store i8 %i.m, ptr %i.k, align 1, !tbaa !153
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !2783
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !2781 ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.g, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.s
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807)
  %i.x = select i1 %i.v, i64 9223372036854775807, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.s ; 2 uses
  %i.ab = load i8, ptr %.056.i.i.i.i.i.i.i.i, align 1, !tbaa !153
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !153
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.z, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !2781
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !2783
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.af = phi ptr [ %i.o, %bb.e ], [ %i.ad, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i.i.i, i64 1
  %i.ah = add nsw i64 %.07.i.i.i.i.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.07.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.d, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit, !llvm.loop !3501

_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i, %bb.c
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.g, align 16
  br label %bb.x

bb.k:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %2
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !153
  %.not = icmp eq i8 %i.al, 125
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = load ptr, ptr %0, align 8, !tbaa !3498, !nonnull !74, !align !3500
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.392, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull %3) #51
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ao) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  resume { ptr, i32 } %i.an

bb.p:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %0, align 8, !tbaa !3498, !nonnull !74, !align !3500
  %i.as = ptrtoint ptr %i.aj to i64
  %i.at = sub i64 %i.as, %i.c                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %i.au, align 16 ; 5 uses
  %i.av = icmp sgt i64 %i.at, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.i18, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit31

.lr.ph.i.i.i.i.i.i.i.i18:                         ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i19 = load ptr, ptr %i.aw, align 8, !tbaa !2783
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i.i.i18
  %i.ay = phi ptr [ %.pre.i.i.i.i.i.i.i.i19, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %i.bt, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23 ] ; 3 uses
  %.07.i.i.i.i.i.i.i.i20 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %i.bv, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23 ] ; 2 uses
  %.056.i.i.i.i.i.i.i.i21 = phi ptr [ %.013, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %i.bu, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23 ] ; 3 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !2788
  %.not.i.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.i.i.i.i.i22, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i8, ptr %.056.i.i.i.i.i.i.i.i21, align 1, !tbaa !153
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !153
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !2783
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  store ptr %i.bc, ptr %i.aw, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23

bb.s:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %.sroa.0.0.copyload.i.i17, align 8, !tbaa !2781 ; 4 uses
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 7 uses
end_hunk_2
