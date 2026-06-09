inline.NumInlined: 924
inline.NumDeleted: 225
begin_hunk_0_@_ZN6Assimp13XFileExporter9WriteNodeEP6aiNode:bb.a
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.dj, i64 noundef %i.dk) ; 2 uses
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.dn = load ptr, ptr %i.bp, align 8
  %i.do = load i64, ptr %i.br, align 8
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.dn, i64 noundef %i.do)
  %i.dq = load ptr, ptr %i.bp, align 8
  %i.dr = load i64, ptr %i.br, align 8
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.dq, i64 noundef %i.dr) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.n:                                             ; preds = %.lr.ph34, %bb.n
  %.033 = phi i64 [ 0, %.lr.ph34 ], [ %i.dw, %bb.n ] ; 2 uses
  %i.dt = load ptr, ptr %i.ck, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.033
  %i.dv = load ptr, ptr %i.du, align 8
  call void @_ZN6Assimp13XFileExporter9WriteNodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.dv)
  %i.dw = add nuw nsw i64 %.033, 1                ; 2 uses
  %i.dx = load i32, ptr %i.ci, align 8
  %i.dy = zext i32 %i.dx to i64
  %i.dz = icmp samesign ult i64 %i.dw, %i.dy
  br i1 %i.dz, label %bb.n, label %._crit_edge, !llvm.loop !22

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.h
  %.pn22 = phi { ptr, i32 } [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %.pn22
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13XFileExporter13toXFileStringB5cxx11ER8aiString(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(1028) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8
  store i8 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i18, label %._crit_edge.i.i17

.noexc.i18:                                       ; preds = %._crit_edge.i.i
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.f   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i18
  store ptr %i.h, ptr %4, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.e, align 8
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc19, %._crit_edge.i.i
  %i.j = phi ptr [ %i.h, %.noexc19 ], [ %i.e, %._crit_edge.i.i ] ; 2 uses
  switch i64 %i.f, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i17
  %i.k = load i8, ptr %i.d, align 4
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 4 %i.d, i64 %i.f, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i17
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.p = load i64, ptr %i.c, align 8, !noalias !23
  %i.q = load ptr, ptr %3, align 8, !noalias !23
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.p)
          to label %.noexc21 unwind label %bb.g   ; 6 uses

.noexc21:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !alias.scope !23
  %i.t = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %.noexc21
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc21
  store ptr %i.t, ptr %0, align 8, !alias.scope !23
  %i.aa = load i64, ptr %i.u, align 8
  store i64 %i.aa, ptr %i.s, align 8, !alias.scope !23
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.ab, ptr %i.ad, align 8, !alias.scope !23
  store ptr %i.u, ptr %i.r, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.u, align 8
  %i.ae = load ptr, ptr %4, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.e
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.e
  %i.ag = load i64, ptr %i.e, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #19
  %.pre = load i64, ptr %i.ad, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.ai = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ab, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre38.a = load ptr, ptr %0, align 8
  br label %.lr.ph

bb.f:                                             ; preds = %.noexc.i18
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.g:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %4, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.e
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.g
  %i.ap = load i64, ptr %i.e, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ar = load ptr, ptr %3, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.av = phi i64 [ %i.ai, %.lr.ph.preheader ], [ %i.be, %bb.k ] ; 2 uses
  %i.aw = phi ptr [ %.pre38.a, %.lr.ph.preheader ], [ %i.bf, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1             ; 5 uses
  %i.az = icmp sgt i8 %i.ay, 47
  br i1 %i.az, label %bb.h, label %.thread33

bb.h:                                             ; preds = %.lr.ph
  %i.ba = icmp samesign ult i8 %i.ay, 58
  br i1 %i.ba, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp samesign ugt i8 %i.ay, 64
  br i1 %i.bb, label %bb.j, label %.thread33

bb.j:                                             ; preds = %bb.i
  %i.bc = icmp samesign ult i8 %i.ay, 91
  %i.bd = add nsw i8 %i.ay, -97
  %or.cond = icmp ult i8 %i.bd, 26
  %or.cond34 = select i1 %i.bc, i1 true, i1 %or.cond
  br i1 %or.cond34, label %bb.k, label %.thread33

.thread33:                                        ; preds = %bb.j, %.lr.ph, %bb.i
  store i8 95, ptr %i.ax, align 1
  %.pre37 = load ptr, ptr %0, align 8
  %.pre39 = load i64, ptr %i.ad, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %.thread33
  %i.be = phi i64 [ %i.av, %bb.h ], [ %i.av, %bb.j ], [ %.pre39, %.thread33 ] ; 2 uses
  %i.bf = phi ptr [ %i.aw, %bb.h ], [ %i.aw, %bb.j ], [ %.pre37, %.thread33 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %sext = shl i64 %i.be, 32
  %i.bg = ashr exact i64 %sext, 32
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load ptr, ptr %3, align 8               ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.b
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %._crit_edge
  %i.bk = load i64, ptr %i.b, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13XFileExporter9WriteMeshEP6aiMesh(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 55 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 38 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 41 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef %i.e) ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.82, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 236
  call void @_ZN6Assimp13XFileExporter13toXFileStringB5cxx11ER8aiString(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull align 8 poison, ptr noundef nonnull align 4 dereferenceable(1028) %i.h)
  %i.i = load ptr, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.83, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.81, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 37 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 37 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101 unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.y = load i64, ptr %i.d, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = icmp eq i64 %i.z, 4611686018427387902
  br i1 %i.aa, label %bb.b, label %_ZN6Assimp13XFileExporter7PushTagEv.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #18
  unreachable

_ZN6Assimp13XFileExporter7PushTagEv.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.103, i64 noundef 2) ; 0 uses
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = load i64, ptr %i.d, align 8
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ac, i64 noundef %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 20 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef %i.ah) ; 2 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.o, align 8
  %i.al = load i64, ptr %i.q, align 8
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ak, i64 noundef %i.al) ; 0 uses
  %i.an = load i32, ptr %i.af, align 4
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp13XFileExporter7PushTagEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN6Assimp13XFileExporter7PushTagEv.exit
  %i.ap = load ptr, ptr %i.b, align 8
  %i.aq = load i64, ptr %i.d, align 8
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ap, i64 noundef %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.au) ; 2 uses
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.ax = load ptr, ptr %i.o, align 8
  %i.ay = load i64, ptr %i.q, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.ax, i64 noundef %i.ay) ; 0 uses
  %i.ba = load i32, ptr %i.as, align 8
  %.not144 = icmp eq i32 %i.ba, 0
  br i1 %.not144, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %2, align 8               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.c
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.bc

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0112 = phi i64 [ 0, %.lr.ph ], [ %i.cj, %bb.d ] ; 3 uses
  %i.bi = load ptr, ptr %i.ao, align 8
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %.0112 ; 3 uses
  %i.bk = load ptr, ptr %i.b, align 8
  %i.bl = load i64, ptr %i.d, align 8
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.bk, i64 noundef %i.bl)
  %i.bn = load float, ptr %i.bj, align 4
  %i.bo = fpext float %i.bn to double
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, double noundef %i.bo) ; 2 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fpext float %i.bs to double
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, double noundef %i.bt) ; 2 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bx = load float, ptr %i.bw, align 4
  %i.by = fpext float %i.bx to double
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, double noundef %i.by)
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.cb = load i32, ptr %i.af, align 4
  %i.cc = add i32 %i.cb, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp samesign ult i64 %.0112, %i.cd
  %.str.77..str.84 = select i1 %i.ce, ptr @.str.77, ptr @.str.84
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.str.77..str.84, i64 noundef 1) ; 0 uses
  %i.cg = load ptr, ptr %i.o, align 8
  %i.ch = load i64, ptr %i.q, align 8
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.cg, i64 noundef %i.ch) ; 0 uses
  %i.cj = add nuw nsw i64 %.0112, 1               ; 2 uses
  %i.ck = load i32, ptr %i.af, align 4
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp samesign ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.d, label %._crit_edge, !llvm.loop !27

._crit_edge120:                                   ; preds = %._crit_edge116, %._crit_edge
  %i.cn = load ptr, ptr %i.o, align 8
  %i.co = load i64, ptr %i.q, align 8
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.cn, i64 noundef %i.co) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not.i = icmp ne ptr %i.cr, null
  %i.cs = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = select i1 %.not.i, i1 %i.ct, i1 false
  br i1 %i.cu, label %bb.g, label %bb.o

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge116
  %.093117 = phi i64 [ 0, %.lr.ph119 ], [ %i.do, %._crit_edge116 ] ; 3 uses
  %i.cv = load ptr, ptr %i.bb, align 8
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.093117 ; 5 uses
  %i.cx = load ptr, ptr %i.b, align 8
  %i.cy = load i64, ptr %i.d, align 8
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.cx, i64 noundef %i.cy)
  %i.da = load i32, ptr %i.cw, align 8
  %i.db = zext i32 %i.da to i64
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i64 noundef %i.db)
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.de = load i32, ptr %i.cw, align 8
  %.not145 = icmp eq i32 %i.de, 0
  br i1 %.not145, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.e
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  br label %bb.f

._crit_edge116:                                   ; preds = %bb.f, %bb.e
  %i.dg = load i32, ptr %i.as, align 8
  %i.dh = add i32 %i.dg, -1
  %i.di = zext i32 %i.dh to i64
  %i.dj = icmp samesign ult i64 %.093117, %i.di
  %.str.77..str.84180 = select i1 %i.dj, ptr @.str.77, ptr @.str.84
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.str.77..str.84180, i64 noundef 1) ; 0 uses
  %i.dl = load ptr, ptr %i.o, align 8
  %i.dm = load i64, ptr %i.q, align 8
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.dl, i64 noundef %i.dm) ; 0 uses
  %i.do = add nuw nsw i64 %.093117, 1             ; 2 uses
  %i.dp = load i32, ptr %i.as, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.e, label %._crit_edge120, !llvm.loop !28

bb.f:                                             ; preds = %.lr.ph115, %bb.f
  %.097113 = phi i64 [ 0, %.lr.ph115 ], [ %i.ec, %bb.f ] ; 3 uses
  %i.ds = load ptr, ptr %i.df, align 8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.097113
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = zext i32 %i.du to i64
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.dv) ; 0 uses
  %i.dx = load i32, ptr %i.cw, align 8
  %i.dy = add i32 %i.dx, -1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = icmp samesign ult i64 %.097113, %i.dz
  %.str.77..str.84181 = select i1 %i.ea, ptr @.str.77, ptr @.str.84
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.str.77..str.84181, i64 noundef 1) ; 0 uses
  %i.ec = add nuw nsw i64 %.097113, 1             ; 2 uses
  %i.ed = load i32, ptr %i.cw, align 8
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp samesign ult i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.f, label %._crit_edge116, !llvm.loop !29

bb.g:                                             ; preds = %._crit_edge120
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %3, i8 0, i64 1028, i1 false)
  %i.ep = call noundef i32 @aiGetMaterialString(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull @.str.85, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(1028) %3) ; 0 uses
  %i.eq = load ptr, ptr %i.b, align 8
  %i.er = load i64, ptr %i.d, align 8
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.eq, i64 noundef %i.er) ; 2 uses
  %i.et = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull @.str.86, i64 noundef 18) ; 0 uses
  %i.eu = load ptr, ptr %i.o, align 8
  %i.ev = load i64, ptr %i.q, align 8
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef %i.eu, i64 noundef %i.ev) ; 0 uses
  %i.ex = load i64, ptr %i.d, align 8
  %i.ey = and i64 %i.ex, -2
  %i.ez = icmp eq i64 %i.ey, 4611686018427387902
  br i1 %i.ez, label %bb.h, label %_ZN6Assimp13XFileExporter7PushTagEv.exit105

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #18
  unreachable

_ZN6Assimp13XFileExporter7PushTagEv.exit105:      ; preds = %bb.g
  %i.fa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.103, i64 noundef 2) ; 0 uses
  %i.fb = load ptr, ptr %i.b, align 8
  %i.fc = load i64, ptr %i.d, align 8
  %i.fd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.fb, i64 noundef %i.fc) ; 2 uses
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull @.str.87, i64 noundef 2) ; 0 uses
  %i.ff = load ptr, ptr %i.o, align 8
  %i.fg = load i64, ptr %i.q, align 8
  %i.fh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef %i.ff, i64 noundef %i.fg) ; 0 uses
  %i.fi = load ptr, ptr %i.b, align 8
  %i.fj = load i64, ptr %i.d, align 8
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.fi, i64 noundef %i.fj)
  %i.fl = load i32, ptr %i.as, align 8
  %i.fm = zext i32 %i.fl to i64
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, i64 noundef %i.fm) ; 2 uses
  %i.fo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.fp = load ptr, ptr %i.o, align 8
  %i.fq = load i64, ptr %i.q, align 8
  %i.fr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef %i.fp, i64 noundef %i.fq) ; 0 uses
  %i.fs = load ptr, ptr %i.b, align 8
  %i.ft = load i64, ptr %i.d, align 8
  %i.fu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.fs, i64 noundef %i.ft) ; 0 uses
  %i.fv = load i32, ptr %i.as, align 8
  %.not146 = icmp eq i32 %i.fv, 0
  br i1 %.not146, label %._crit_edge123, label %.lr.ph122

._crit_edge123:                                   ; preds = %bb.n, %_ZN6Assimp13XFileExporter7PushTagEv.exit105
  %i.fw = load ptr, ptr %i.b, align 8
  %i.fx = load i64, ptr %i.d, align 8
  %i.fy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.fw, i64 noundef %i.fx) ; 2 uses
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull @.str.89, i64 noundef 10) ; 0 uses
  %i.ga = load ptr, ptr %i.o, align 8
  %i.gb = load i64, ptr %i.q, align 8
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef %i.ga, i64 noundef %i.gb) ; 0 uses
  %i.gd = load i64, ptr %i.d, align 8
  %i.ge = and i64 %i.gd, -2
  %i.gf = icmp eq i64 %i.ge, 4611686018427387902
  br i1 %i.gf, label %bb.i, label %_ZN6Assimp13XFileExporter7PushTagEv.exit106

bb.i:                                             ; preds = %._crit_edge123
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #18
  unreachable

_ZN6Assimp13XFileExporter7PushTagEv.exit106:      ; preds = %._crit_edge123
  %i.gg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @.str.103, i64 noundef 2) ; 0 uses
  %i.gh = load ptr, ptr %i.b, align 8
  %i.gi = load i64, ptr %i.d, align 8
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.gh, i64 noundef %i.gi) ; 2 uses
  %i.gk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull @.str.90, i64 noundef 25) ; 0 uses
  %i.gl = load ptr, ptr %i.o, align 8
  %i.gm = load i64, ptr %i.q, align 8
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef %i.gl, i64 noundef %i.gm) ; 0 uses
  %i.go = load ptr, ptr %i.b, align 8
  %i.gp = load i64, ptr %i.d, align 8
  %i.gq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.go, i64 noundef %i.gp) ; 2 uses
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull @.str.91, i64 noundef 9) ; 0 uses
  %i.gs = load ptr, ptr %i.o, align 8
  %i.gt = load i64, ptr %i.q, align 8
  %i.gu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef %i.gs, i64 noundef %i.gt) ; 0 uses
  %i.gv = load ptr, ptr %i.b, align 8
  %i.gw = load i64, ptr %i.d, align 8
  %i.gx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.gv, i64 noundef %i.gw) ; 2 uses
  %i.gy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull @.str.92, i64 noundef 30) ; 0 uses
  %i.gz = load ptr, ptr %i.o, align 8
  %i.ha = load i64, ptr %i.q, align 8
  %i.hb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef %i.gz, i64 noundef %i.ha) ; 0 uses
  %i.hc = load ptr, ptr %i.b, align 8
  %i.hd = load i64, ptr %i.d, align 8
  %i.he = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.hc, i64 noundef %i.hd) ; 2 uses
  %i.hf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.92, i64 noundef 30) ; 0 uses
  %i.hg = load ptr, ptr %i.o, align 8
  %i.hh = load i64, ptr %i.q, align 8
  %i.hi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef %i.hg, i64 noundef %i.hh) ; 0 uses
  %i.hj = load ptr, ptr %i.b, align 8
  %i.hk = load i64, ptr %i.d, align 8
  %i.hl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.hj, i64 noundef %i.hk)
  %i.hm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull @.str.93, i64 noundef 19) ; 0 uses
  call void @_ZN6Assimp13XFileExporter9writePathERK8aiString(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 4 dereferenceable(1028) %3)
  %i.hn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.94, i64 noundef 4) ; 0 uses
  %i.ho = load ptr, ptr %i.o, align 8
  %i.hp = load i64, ptr %i.q, align 8
  %i.hq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ho, i64 noundef %i.hp) ; 0 uses
  %i.hr = load i64, ptr %i.d, align 8             ; 3 uses
  %i.hs = add i64 %i.hr, -2                       ; 3 uses
  %i.ht = icmp ult i64 %i.hr, 2
  br i1 %i.ht, label %bb.j, label %_ZN6Assimp13XFileExporter6PopTagEv.exit

bb.j:                                             ; preds = %_ZN6Assimp13XFileExporter7PushTagEv.exit106
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %i.hs, i64 noundef %i.hr) #18
  unreachable

_ZN6Assimp13XFileExporter6PopTagEv.exit:          ; preds = %_ZN6Assimp13XFileExporter7PushTagEv.exit106
  store i64 %i.hs, ptr %i.d, align 8
  %i.hu = load ptr, ptr %i.b, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 0, ptr %i.hv, align 1
  %i.hw = load ptr, ptr %i.b, align 8
  %i.hx = load i64, ptr %i.d, align 8
  %i.hy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.hw, i64 noundef %i.hx) ; 2 uses
  %i.hz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.ia = load ptr, ptr %i.o, align 8
  %i.ib = load i64, ptr %i.q, align 8
  %i.ic = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef %i.ia, i64 noundef %i.ib) ; 0 uses
  %i.id = load i64, ptr %i.d, align 8             ; 3 uses
  %i.ie = add i64 %i.id, -2                       ; 3 uses
  %i.if = icmp ult i64 %i.id, 2
  br i1 %i.if, label %bb.k, label %_ZN6Assimp13XFileExporter6PopTagEv.exit107

bb.k:                                             ; preds = %_ZN6Assimp13XFileExporter6PopTagEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %i.ie, i64 noundef %i.id) #18
  unreachable

_ZN6Assimp13XFileExporter6PopTagEv.exit107:       ; preds = %_ZN6Assimp13XFileExporter6PopTagEv.exit
  store i64 %i.ie, ptr %i.d, align 8
  %i.ig = load ptr, ptr %i.b, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie
  store i8 0, ptr %i.ih, align 1
  %i.ii = load ptr, ptr %i.b, align 8
  %i.ij = load i64, ptr %i.d, align 8
  %i.ik = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ii, i64 noundef %i.ij) ; 2 uses
  %i.il = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ik, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.im = load ptr, ptr %i.o, align 8
  %i.in = load i64, ptr %i.q, align 8
  %i.io = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ik, ptr noundef %i.im, i64 noundef %i.in) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.pre = load i32, ptr %i.af, align 4
  br label %bb.o

.lr.ph122:                                        ; preds = %_ZN6Assimp13XFileExporter7PushTagEv.exit105, %bb.n
  %.099121 = phi i64 [ %i.iz, %bb.n ], [ 0, %_ZN6Assimp13XFileExporter7PushTagEv.exit105 ] ; 2 uses
  %i.ip = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.88, i64 noundef 1) ; 0 uses
  %i.iq = load i32, ptr %i.as, align 8
  %i.ir = add i32 %i.iq, -1
  %i.is = zext i32 %i.ir to i64
  %i.it = icmp samesign ult i64 %.099121, %i.is
  br i1 %i.it, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph122
  %i.iu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.76, i64 noundef 2) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph122
  %i.iv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.iw = load ptr, ptr %i.o, align 8
  %i.ix = load i64, ptr %i.q, align 8
  %i.iy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.iw, i64 noundef %i.ix) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.iz = add nuw nsw i64 %.099121, 1             ; 2 uses
  %i.ja = load i32, ptr %i.as, align 8
  %i.jb = zext i32 %i.ja to i64
  %i.jc = icmp samesign ult i64 %i.iz, %i.jb
  br i1 %i.jc, label %.lr.ph122, label %._crit_edge123, !llvm.loop !30

bb.o:                                             ; preds = %_ZN6Assimp13XFileExporter6PopTagEv.exit107, %._crit_edge120
  %i.jd = phi i32 [ %.pre, %_ZN6Assimp13XFileExporter6PopTagEv.exit107 ], [ %i.cs, %._crit_edge120 ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %.not.i108 = icmp ne ptr %i.jf, null
  %i.jg = icmp ne i32 %i.jd, 0
  %i.jh = select i1 %.not.i108, i1 %i.jg, i1 false
  br i1 %i.jh, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ji = load ptr, ptr %i.o, align 8
  %i.jj = load i64, ptr %i.q, align 8
  %i.jk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ji, i64 noundef %i.jj)
  %i.jl = load ptr, ptr %i.b, align 8
  %i.jm = load i64, ptr %i.d, align 8
  %i.jn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef %i.jl, i64 noundef %i.jm) ; 2 uses
  %i.jo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull @.str.95, i64 noundef 13) ; 0 uses
  %i.jp = load ptr, ptr %i.o, align 8
  %i.jq = load i64, ptr %i.q, align 8
  %i.jr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef %i.jp, i64 noundef %i.jq) ; 0 uses
  %i.js = load ptr, ptr %i.b, align 8
  %i.jt = load i64, ptr %i.d, align 8
  %i.ju = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.js, i64 noundef %i.jt)
  %i.jv = load i32, ptr %i.af, align 4
  %i.jw = zext i32 %i.jv to i64
  %i.jx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, i64 noundef %i.jw) ; 2 uses
  %i.jy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.jz = load ptr, ptr %i.o, align 8
  %i.ka = load i64, ptr %i.q, align 8
  %i.kb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef %i.jz, i64 noundef %i.ka) ; 0 uses
  %i.kc = load i32, ptr %i.af, align 4
  %.not147 = icmp eq i32 %i.kc, 0
  br i1 %.not147, label %._crit_edge127, label %.lr.ph126

._crit_edge127:                                   ; preds = %.lr.ph126, %bb.p
  %i.kd = load ptr, ptr %i.b, align 8
  %i.ke = load i64, ptr %i.d, align 8
  %i.kf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.kd, i64 noundef %i.ke)
  %i.kg = load i32, ptr %i.as, align 8
  %i.kh = zext i32 %i.kg to i64
  %i.ki = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, i64 noundef %i.kh) ; 2 uses
  %i.kj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.kk = load ptr, ptr %i.o, align 8
  %i.kl = load i64, ptr %i.q, align 8
  %i.km = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.kk, i64 noundef %i.kl) ; 0 uses
  %i.kn = load i32, ptr %i.as, align 8
  %.not148 = icmp eq i32 %i.kn, 0
  br i1 %.not148, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %._crit_edge127
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.q

.lr.ph126:                                        ; preds = %bb.p, %.lr.ph126
  %.098124 = phi i64 [ %i.lt, %.lr.ph126 ], [ 0, %bb.p ] ; 3 uses
  %i.kp = load ptr, ptr %i.je, align 8
  %i.kq = getelementptr inbounds nuw [12 x i8], ptr %i.kp, i64 %.098124 ; 3 uses
  %i.kr = load ptr, ptr %i.b, align 8
  %i.ks = load i64, ptr %i.d, align 8
  %i.kt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.kr, i64 noundef %i.ks)
  %i.ku = load float, ptr %i.kq, align 4
  %i.kv = fneg float %i.ku
  %i.kw = fpext float %i.kv to double
  %i.kx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, double noundef %i.kw) ; 2 uses
  %i.ky = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.la = load float, ptr %i.kz, align 4
  %i.lb = fneg float %i.la
  %i.lc = fpext float %i.lb to double
  %i.ld = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, double noundef %i.lc) ; 2 uses
  %i.le = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.lg = load float, ptr %i.lf, align 4
  %i.lh = fneg float %i.lg
  %i.li = fpext float %i.lh to double
  %i.lj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, double noundef %i.li)
  %i.lk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.ll = load i32, ptr %i.af, align 4
  %i.lm = add i32 %i.ll, -1
  %i.ln = zext i32 %i.lm to i64
  %i.lo = icmp samesign ult i64 %.098124, %i.ln
  %.str.77..str.84182 = select i1 %i.lo, ptr @.str.77, ptr @.str.84
  %i.lp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.str.77..str.84182, i64 noundef 1) ; 0 uses
  %i.lq = load ptr, ptr %i.o, align 8
  %i.lr = load i64, ptr %i.q, align 8
  %i.ls = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.lq, i64 noundef %i.lr) ; 0 uses
  %i.lt = add nuw nsw i64 %.098124, 1             ; 2 uses
  %i.lu = load i32, ptr %i.af, align 4
  %i.lv = zext i32 %i.lu to i64
  %i.lw = icmp samesign ult i64 %i.lt, %i.lv
  br i1 %i.lw, label %.lr.ph126, label %._crit_edge127, !llvm.loop !31

._crit_edge135:                                   ; preds = %._crit_edge131, %._crit_edge127
  %i.lx = load ptr, ptr %i.b, align 8
  %i.ly = load i64, ptr %i.d, align 8
  %i.lz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.lx, i64 noundef %i.ly) ; 2 uses
  %i.ma = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.mb = load ptr, ptr %i.o, align 8
  %i.mc = load i64, ptr %i.q, align 8
  %i.md = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef %i.mb, i64 noundef %i.mc) ; 0 uses
  %.pre152 = load i32, ptr %i.af, align 4
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph134, %._crit_edge131
  %.096132 = phi i64 [ 0, %.lr.ph134 ], [ %i.mx, %._crit_edge131 ] ; 3 uses
  %i.me = load ptr, ptr %i.ko, align 8
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %.096132 ; 5 uses
  %i.mg = load ptr, ptr %i.b, align 8
  %i.mh = load i64, ptr %i.d, align 8
  %i.mi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.mg, i64 noundef %i.mh)
  %i.mj = load i32, ptr %i.mf, align 8
  %i.mk = zext i32 %i.mj to i64
  %i.ml = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mi, i64 noundef %i.mk)
  %i.mm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.mn = load i32, ptr %i.mf, align 8
  %.not149 = icmp eq i32 %i.mn, 0
  br i1 %.not149, label %._crit_edge131, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.q
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  br label %bb.r

._crit_edge131:                                   ; preds = %bb.r, %bb.q
  %i.mp = load i32, ptr %i.as, align 8
  %i.mq = add i32 %i.mp, -1
  %i.mr = zext i32 %i.mq to i64
  %i.ms = icmp samesign ult i64 %.096132, %i.mr
  %.str.77..str.84183 = select i1 %i.ms, ptr @.str.77, ptr @.str.84
  %i.mt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.str.77..str.84183, i64 noundef 1) ; 0 uses
  %i.mu = load ptr, ptr %i.o, align 8
  %i.mv = load i64, ptr %i.q, align 8
  %i.mw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.mu, i64 noundef %i.mv) ; 0 uses
  %i.mx = add nuw nsw i64 %.096132, 1             ; 2 uses
  %i.my = load i32, ptr %i.as, align 8
  %i.mz = zext i32 %i.my to i64
  %i.na = icmp samesign ult i64 %i.mx, %i.mz
  br i1 %i.na, label %bb.q, label %._crit_edge135, !llvm.loop !32

bb.r:                                             ; preds = %.lr.ph130, %bb.r
  %.095128 = phi i64 [ 0, %.lr.ph130 ], [ %i.nl, %bb.r ] ; 3 uses
  %i.nb = load ptr, ptr %i.mo, align 8
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %.095128
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = zext i32 %i.nd to i64
  %i.nf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.ne) ; 0 uses
  %i.ng = load i32, ptr %i.mf, align 8
  %i.nh = add i32 %i.ng, -1
  %i.ni = zext i32 %i.nh to i64
  %i.nj = icmp samesign ult i64 %.095128, %i.ni
  %.str.77..str.84184 = select i1 %i.nj, ptr @.str.77, ptr @.str.84
  %i.nk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.str.77..str.84184, i64 noundef 1) ; 0 uses
  %i.nl = add nuw nsw i64 %.095128, 1             ; 2 uses
  %i.nm = load i32, ptr %i.mf, align 8
  %i.nn = zext i32 %i.nm to i64
  %i.no = icmp samesign ult i64 %i.nl, %i.nn
  br i1 %i.no, label %bb.r, label %._crit_edge131, !llvm.loop !33

bb.s:                                             ; preds = %._crit_edge135, %bb.o
  %i.np = phi i32 [ %.pre152, %._crit_edge135 ], [ %i.jd, %bb.o ] ; 2 uses
  %i.nq = load ptr, ptr %i.cq, align 8
  %.not.i109 = icmp ne ptr %i.nq, null
  %i.nr = icmp ne i32 %i.np, 0
  %i.ns = select i1 %.not.i109, i1 %i.nr, i1 false
  br i1 %i.ns, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.nt = load ptr, ptr %i.o, align 8
  %i.nu = load i64, ptr %i.q, align 8
  %i.nv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.nt, i64 noundef %i.nu)
  %i.nw = load ptr, ptr %i.b, align 8
  %i.nx = load i64, ptr %i.d, align 8
  %i.ny = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef %i.nw, i64 noundef %i.nx) ; 2 uses
  %i.nz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, ptr noundef nonnull @.str.96, i64 noundef 19) ; 0 uses
  %i.oa = load ptr, ptr %i.o, align 8
  %i.ob = load i64, ptr %i.q, align 8
  %i.oc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, ptr noundef %i.oa, i64 noundef %i.ob) ; 0 uses
  %i.od = load ptr, ptr %i.b, align 8
  %i.oe = load i64, ptr %i.d, align 8
  %i.of = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.od, i64 noundef %i.oe)
  %i.og = load i32, ptr %i.af, align 4
  %i.oh = zext i32 %i.og to i64
  %i.oi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.of, i64 noundef %i.oh) ; 2 uses
  %i.oj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.ok = load ptr, ptr %i.o, align 8
  %i.ol = load i64, ptr %i.q, align 8
  %i.om = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef %i.ok, i64 noundef %i.ol) ; 0 uses
  %i.on = load i32, ptr %i.af, align 4
  %.not150 = icmp eq i32 %i.on, 0
  br i1 %.not150, label %._crit_edge139, label %.lr.ph138

._crit_edge139:                                   ; preds = %.lr.ph138, %bb.t
  %i.oo = load ptr, ptr %i.b, align 8
  %i.op = load i64, ptr %i.d, align 8
  %i.oq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.oo, i64 noundef %i.op) ; 2 uses
  %i.or = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.os = load ptr, ptr %i.o, align 8
  %i.ot = load i64, ptr %i.q, align 8
  %i.ou = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef %i.os, i64 noundef %i.ot) ; 0 uses
  %.pre153 = load i32, ptr %i.af, align 4
  br label %bb.u

.lr.ph138:                                        ; preds = %bb.t, %.lr.ph138
  %.094136 = phi i64 [ %i.pq, %.lr.ph138 ], [ 0, %bb.t ] ; 3 uses
  %i.ov = load ptr, ptr %i.cq, align 8
  %i.ow = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.094136 ; 2 uses
  %i.ox = load ptr, ptr %i.b, align 8
  %i.oy = load i64, ptr %i.d, align 8
  %i.oz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ox, i64 noundef %i.oy)
  %i.pa = load float, ptr %i.ow, align 4
  %i.pb = fpext float %i.pa to double
  %i.pc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, double noundef %i.pb) ; 2 uses
  %i.pd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pc, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.pf = load float, ptr %i.pe, align 4
  %i.pg = fpext float %i.pf to double
  %i.ph = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pc, double noundef %i.pg) ; 0 uses
  %i.pi = load i32, ptr %i.af, align 4
  %i.pj = add i32 %i.pi, -1
  %i.pk = zext i32 %i.pj to i64
  %i.pl = icmp samesign ult i64 %.094136, %i.pk
  %.str.97..str.78 = select i1 %i.pl, ptr @.str.97, ptr @.str.78
  %i.pm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.str.97..str.78, i64 noundef 2) ; 0 uses
  %i.pn = load ptr, ptr %i.o, align 8
  %i.po = load i64, ptr %i.q, align 8
  %i.pp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.pn, i64 noundef %i.po) ; 0 uses
  %i.pq = add nuw nsw i64 %.094136, 1             ; 2 uses
  %i.pr = load i32, ptr %i.af, align 4
  %i.ps = zext i32 %i.pr to i64
  %i.pt = icmp samesign ult i64 %i.pq, %i.ps
  br i1 %i.pt, label %.lr.ph138, label %._crit_edge139, !llvm.loop !34

bb.u:                                             ; preds = %._crit_edge139, %bb.s
  %i.pu = phi i32 [ %.pre153, %._crit_edge139 ], [ %i.np, %bb.s ]
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8
  %.not.i110 = icmp ne ptr %i.pw, null
  %i.px = icmp ne i32 %i.pu, 0
  %i.py = select i1 %.not.i110, i1 %i.px, i1 false
  br i1 %i.py, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.pz = load ptr, ptr %i.o, align 8
  %i.qa = load i64, ptr %i.q, align 8
  %i.qb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.pz, i64 noundef %i.qa)
  %i.qc = load ptr, ptr %i.b, align 8
  %i.qd = load i64, ptr %i.d, align 8
  %i.qe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qb, ptr noundef %i.qc, i64 noundef %i.qd) ; 2 uses
  %i.qf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qe, ptr noundef nonnull @.str.98, i64 noundef 18) ; 0 uses
  %i.qg = load ptr, ptr %i.o, align 8
  %i.qh = load i64, ptr %i.q, align 8
  %i.qi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qe, ptr noundef %i.qg, i64 noundef %i.qh) ; 0 uses
  %i.qj = load ptr, ptr %i.b, align 8
  %i.qk = load i64, ptr %i.d, align 8
  %i.ql = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.qj, i64 noundef %i.qk)
  %i.qm = load i32, ptr %i.af, align 4
  %i.qn = zext i32 %i.qm to i64
  %i.qo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ql, i64 noundef %i.qn) ; 2 uses
  %i.qp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qo, ptr noundef nonnull @.str.84, i64 noundef 1) ; 0 uses
  %i.qq = load ptr, ptr %i.o, align 8
  %i.qr = load i64, ptr %i.q, align 8
end_hunk_0
