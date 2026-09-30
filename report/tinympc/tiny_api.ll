Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8IOFormatC2ERKS0_:bb.a
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !23
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc.i36, label %._crit_edge.i.i35

.noexc.i36:                                       ; preds = %bb.o
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc37 unwind label %bb.z   ; 2 uses

.noexc37:                                         ; preds = %.noexc.i36
  store ptr %i.cj, ptr %i.cc, align 8, !tbaa !21
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.ck, ptr %i.ce, align 8, !tbaa !24
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc37, %bb.o
  %i.cl = phi ptr [ %i.cj, %.noexc37 ], [ %i.ce, %bb.o ] ; 2 uses
  switch i64 %i.ch, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i35
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !24
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !24
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cf, i64 %i.ch, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i35
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !22
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  store i8 0, ptr %i.cq, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !18
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !21 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.cw, ptr %i.a, align 8, !tbaa !23
  %i.cx = icmp ugt i64 %i.cw, 15
  br i1 %i.cx, label %.noexc.i40, label %._crit_edge.i.i39

.noexc.i40:                                       ; preds = %bb.r
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc41 unwind label %bb.aa  ; 2 uses

.noexc41:                                         ; preds = %.noexc.i40
  store ptr %i.cy, ptr %i.cr, align 8, !tbaa !21
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.cz, ptr %i.ct, align 8, !tbaa !24
  br label %._crit_edge.i.i39

._crit_edge.i.i39:                                ; preds = %.noexc41, %bb.r
  %i.da = phi ptr [ %i.cy, %.noexc41 ], [ %i.ct, %bb.r ] ; 2 uses
  switch i64 %i.cw, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i39
  %i.db = load i8, ptr %i.cu, align 1, !tbaa !24
  store i8 %i.db, ptr %i.da, align 1, !tbaa !24
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.cu, i64 %i.cw, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i39
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !22
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dg, ptr noundef nonnull align 8 dereferenceable(12) %i.dh, i64 12, i1 false)
  ret void

bb.v:                                             ; preds = %.noexc.i21
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.w:                                             ; preds = %.noexc.i24
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.x:                                             ; preds = %.noexc.i28
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.y:                                             ; preds = %.noexc.i32
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.z:                                             ; preds = %.noexc.i36
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aa:                                            ; preds = %.noexc.i40
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ce
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.dq = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.z ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dn, %bb.aa ] ; 2 uses
  %i.ds = load ptr, ptr %i.bn, align 8, !tbaa !21 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bp
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.du = load i64, ptr %i.bp, align 8, !tbaa !24
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.y ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.dw = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ba
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.dy = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.x ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 2 uses
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.al
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.ec = load i64, ptr %i.al, align 8, !tbaa !24
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.w ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ] ; 2 uses
  %i.ee = load ptr, ptr %i.u, align 8, !tbaa !21  ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.w
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.eg = load i64, ptr %i.w, align 8, !tbaa !24
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.v
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.v ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  %i.ei = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.h
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.ek = load i64, ptr %i.h, align 8, !tbaa !24
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 39 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %i.e = mul nsw i64 %i.d, %i.b
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.g, i64 noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n) ; 0 uses
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27   ; 3 uses
  switch i32 %i.q, label %bb.d [
    i32 -1, label %.thread
    i32 -2, label %.thread117
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %i.q to i64
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread, label %.thread117

.thread117:                                       ; preds = %bb.c, %bb.d
  %.078120 = phi i64 [ %i.r, %bb.d ], [ 17, %bb.c ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !37
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !99
  store i64 %.078120, ptr %i.w, align 8, !tbaa !99
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread117, %bb.d
  %.not116 = phi i1 [ false, %.thread117 ], [ true, %bb.d ], [ true, %bb.c ]
  %.077 = phi i64 [ %i.x, %.thread117 ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28
  %i.aa = and i32 %i.z, 1
  %.not81 = icmp eq i32 %i.aa, 0
  %i.ab = icmp sgt i64 %i.d, 0
  %or.cond = and i1 %.not81, %i.ab
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24    ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bi = icmp sgt i64 %i.b, 0
  br i1 %i.bi, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bj = phi i64 [ %i.bm, %._crit_edge ], [ %i.d, %.preheader.lr.ph ]
  %i.bk = phi i64 [ %i.bn, %._crit_edge ], [ %i.b, %.preheader.lr.ph ] ; 2 uses
  %.076165 = phi i64 [ %i.bo, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.0113164 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.pre.a = load i64, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bm = phi i64 [ %i.bj, %.preheader ], [ %.pre.a, %._crit_edge.loopexit ] ; 2 uses
  %i.bn = phi i64 [ %i.bk, %.preheader ], [ %i.eh, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.0113164, %.preheader ], [ %.sroa.speculated, %._crit_edge.loopexit ] ; 2 uses
  %i.bo = add nuw nsw i64 %.076165, 1             ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %i.bm
  br i1 %i.bp, label %.preheader, label %.loopexit, !llvm.loop !497

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.075163 = phi i64 [ %i.eg, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ 0, %.preheader ] ; 2 uses
  %.1162 = phi i64 [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.0113164, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !37
  store ptr null, ptr %i.ad, align 8, !tbaa !100
  store i8 0, ptr %i.ae, align 8, !tbaa !101
  store i8 0, ptr %i.af, align 1, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  store ptr %i.ah, ptr %3, align 8, !tbaa !37
  %i.bq = load i64, ptr %i.aj, align 8
  %i.br = getelementptr inbounds i8, ptr %3, i64 %i.bq
  store ptr %i.ai, ptr %i.br, align 8, !tbaa !37
  store i64 0, ptr %i.ak, align 8, !tbaa !104
  %i.bs = load ptr, ptr %3, align 8, !tbaa !37
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, ptr noundef null)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.lr.ph
  store ptr %i.am, ptr %i.al, align 8, !tbaa !37
  %i.bw = load i64, ptr %i.ao, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.al, i64 %i.bw
  store ptr %i.an, ptr %i.bx, align 8, !tbaa !37
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.al, i64 %i.ca
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, ptr noundef null)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %3, align 8, !tbaa !37
  %i.cd = load i64, ptr %i.aj, align 8
  %i.ce = getelementptr inbounds i8, ptr %3, i64 %i.cd
  store ptr %i.ai, ptr %i.ce, align 8, !tbaa !37
  store i64 0, ptr %i.ak, align 8, !tbaa !104
  br label %.body.i

bb.f:                                             ; preds = %.noexc.i
  %i.cf = load i64, ptr %i.ar, align 8
  %i.cg = getelementptr inbounds i8, ptr %3, i64 %i.cf
  store ptr %i.aq, ptr %i.cg, align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.ac, align 8, !tbaa !37
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.al, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !37
  store i32 24, ptr %i.av, align 8, !tbaa !108
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !18
  store i64 0, ptr %i.ay, align 8, !tbaa !22
  store i8 0, ptr %i.ax, align 8, !tbaa !24
  %i.ch = load ptr, ptr %3, align 8, !tbaa !37
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.cj
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ck, ptr noundef nonnull %i.as)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.as) #26
  store ptr %i.ah, ptr %3, align 8, !tbaa !37
  %i.cn = load i64, ptr %i.aj, align 8
  %i.co = getelementptr inbounds i8, ptr %3, i64 %i.cn
  store ptr %i.ai, ptr %i.co, align 8, !tbaa !37
  store i64 0, ptr %i.ak, align 8, !tbaa !104
  br label %.body.i

common.resume:                                    ; preds = %bb.n, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.h, %bb.g, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %i.cm, %bb.h ], [ %i.cl, %bb.g ], [ %i.cc, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ac) #26
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.f
  %i.cp = load ptr, ptr %3, align 8, !tbaa !37
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %3, i64 %i.cr
  %i.ct = load ptr, ptr %0, align 8, !tbaa !37
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cv
  %i.cx = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.cs, ptr noundef nonnull align 8 dereferenceable(264) %i.cw)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.cy = load ptr, ptr %1, align 8, !tbaa !40
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !38
  %i.da = mul nsw i64 %i.cz, %.076165
  %i.db = getelementptr [8 x i8], ptr %i.cy, i64 %.075163
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %i.da
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !42
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, double noundef %i.dd)
          to label %_ZNSolsEd.exit unwind label %bb.m ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  store ptr %i.az, ptr %4, align 8, !tbaa !18, !alias.scope !508
  store i64 0, ptr %i.ba, align 8, !tbaa !22, !alias.scope !508
  store i8 0, ptr %i.az, align 8, !tbaa !24, !alias.scope !508
  %i.df = load ptr, ptr %i.bb, align 8, !tbaa !109, !noalias !508 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.df, null
  %i.dg = load ptr, ptr %i.bc, align 8, !noalias !508 ; 2 uses
  %i.dh = icmp ugt ptr %i.df, %i.dg
  %.08.i.i.i = select i1 %i.dh, ptr %i.df, ptr %i.dg ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.di = load ptr, ptr %i.bd, align 8, !tbaa !110, !noalias !508 ; 2 uses
  %i.dj = ptrtoint ptr %.08.i.i.i to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.di, i64 noundef %i.dl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !508 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.az
  br i1 %i.dp, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.dq = load i64, ptr %i.az, align 8, !tbaa !24, !alias.scope !508
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #27
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEd.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.ds = load i64, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.1162, i64 %i.ds) ; 2 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.az
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dv = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dw = load i64, ptr %i.az, align 8, !tbaa !24
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  store ptr %i.be, ptr %3, align 8, !tbaa !37
  %i.dy = load i64, ptr %i.bg, align 8
  %i.dz = getelementptr inbounds i8, ptr %3, i64 %i.dy
  store ptr %i.bf, ptr %i.dz, align 8, !tbaa !37
  store ptr %i.bh, ptr %i.al, align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !37
  %i.ea = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ax
  br i1 %i.eb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
end_hunk_0
