Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/rpc_service?download=true
inline.NumInlined: 42348
inline.NumDeleted: 16015
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN7easylog8appender14roll_log_filesEv:bb.a
          to label %bb.r unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.040 = phi i32 [ %i.aa, %.lr.ph ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %.040)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.aj = add nuw nsw i32 %.040, 1
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %i.aj)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_RSt10error_code(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #49
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !407 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i15, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ak) #49
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16: ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %7, align 8, !tbaa !240   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ad
  br i1 %i.am, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !230
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #51
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19

_ZNSt10filesystem7__cxx114pathD2Ev.exit19:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !407 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i20, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, label %bb.l

bb.l:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ap) #49
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21: ; preds = %bb.l, %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  %i.aq = load ptr, ptr %6, align 8, !tbaa !240   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21
  %i.as = load i64, ptr %i.af, align 8, !tbaa !230
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #51
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24

_ZNSt10filesystem7__cxx114pathD2Ev.exit24:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.au = load ptr, ptr %5, align 8, !tbaa !240   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !230
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.ay = load ptr, ptr %4, align 8, !tbaa !240   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ah
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ah, align 8, !tbaa !230
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.bc = add nsw i32 %.040, -1
  %i.bd = icmp sgt i32 %.040, 0
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !7144

bb.m:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.n:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.o:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #49
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %i.bg, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.bi = load ptr, ptr %5, align 8, !tbaa !240   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ag
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.q
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !230
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.bm = load ptr, ptr %4, align 8, !tbaa !240   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ah
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !230
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %i.bq = load ptr, ptr %1, align 8, !tbaa !240   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !230
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  ret void

bb.s:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.bv, %bb.s ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %i.bw = load ptr, ptr %1, align 8, !tbaa !240   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !230
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !263 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 3 uses
  %.neg.i = mul nsw i64 %i.b, -1000000000
  %i.c = add i64 %.neg.i, %.sroa.0.0.copyload.i
  %i.d = sdiv i64 %i.c, 1000                      ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E9last_sec_) ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !263
  %i.g = icmp eq i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.d to i32                    ; 6 uses
  %i.i = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 8 uses
  %i.j = srem i32 %i.h, 10
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  store i8 %i.m, ptr %i.n, align 1, !tbaa !230
  %i.o = sdiv i32 %i.h, 10
  %i.p = srem i32 %i.o, 10
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 %i.s, ptr %i.t, align 8, !tbaa !230
  %i.u = sdiv i32 %i.h, 100
  %i.v = srem i32 %i.u, 10
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !230
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  store i8 %i.y, ptr %i.z, align 1, !tbaa !230
  %i.aa = sdiv i32 %i.h, 1000
  %i.ab = srem i32 %i.aa, 10
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !230
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !230
  %i.ag = sdiv i32 %i.h, 10000
  %i.ah = srem i32 %i.ag, 10
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !230
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 21
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !230
  %i.am = sdiv i32 %i.h, 100000
  %.lhs.trunc.i = trunc nsw i32 %i.am to i16
  %i.an = srem i16 %.lhs.trunc.i, 10
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !230
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !230
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 19
  store i8 46, ptr %i.as, align 1, !tbaa !230
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !263
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !263
  %i.at = sdiv i64 %.sroa.0.0.copyload.i.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !263, !noalias !7147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !alias.scope !7147
  %i.au = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = trunc i64 %i.d to i32                   ; 6 uses
  %i.aw = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 27 uses
  %i.ax = srem i32 %i.av, 10
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !230
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !230
  %i.bc = sdiv i32 %i.av, 10
  %i.bd = srem i32 %i.bc, 10
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !230
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !230
  %i.bi = sdiv i32 %i.av, 100
  %i.bj = srem i32 %i.bi, 10
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !230
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !230
  %i.bo = sdiv i32 %i.av, 1000
  %i.bp = srem i32 %i.bo, 10
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !230
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !230
  %i.bu = sdiv i32 %i.av, 10000
  %2 = srem i32 %i.bu, 10
  %i.bv = sext i32 %2 to i64
  %i.bw = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !230
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !230
  %3 = sdiv i32 %i.av, 100000
  %.lhs.trunc.i11 = trunc nsw i32 %3 to i16
  %4 = srem i16 %.lhs.trunc.i11, 10
  %5 = sext i16 %4 to i64
  %i.bz = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %5
  %6 = load i8, ptr %i.bz, align 1, !tbaa !230
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i8 %6, ptr %i.ca, align 4, !tbaa !230
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  store i8 46, ptr %7, align 1, !tbaa !230
  %8 = load i32, ptr %1, align 8, !tbaa !7149     ; 2 uses
  %9 = srem i32 %8, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !230
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  store i8 %12, ptr %i.cb, align 2, !tbaa !230
  %13 = sdiv i32 %8, 10
  %14 = srem i32 %13, 10
  %i.cc = sext i32 %14 to i64
  %i.cd = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !230
  %15 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  store i8 %i.ce, ptr %15, align 1, !tbaa !230
  %16 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 58, ptr %16, align 16, !tbaa !230
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !7150   ; 2 uses
  %19 = srem i32 %18, 10
  %i.cf = sext i32 %19 to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !230
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !230
  %i.cj = sdiv i32 %18, 10
  %i.ck = srem i32 %i.cj, 10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !230
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !230
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 58, ptr %i.cp, align 1, !tbaa !230
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !7151 ; 2 uses
  %i.cs = srem i32 %i.cr, 10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !230
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i8 %i.cv, ptr %i.cw, align 4, !tbaa !230
  %i.cx = sdiv i32 %i.cr, 10
  %i.cy = srem i32 %i.cx, 10
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !230
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !230
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  store i8 32, ptr %i.dd, align 2, !tbaa !230
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7152 ; 2 uses
  %i.dg = srem i32 %i.df, 10
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !230
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !230
  %i.dl = sdiv i32 %i.df, 10
  %i.dm = srem i32 %i.dl, 10
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !230
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.dp, ptr %i.dq, align 8, !tbaa !230
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  store i8 45, ptr %i.dr, align 1, !tbaa !230
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !7153
  %i.du = add nsw i32 %i.dt, 1                    ; 2 uses
  %i.dv = srem i32 %i.du, 10
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !230
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !230
  %i.ea = sdiv i32 %i.du, 10
  %i.eb = srem i32 %i.ea, 10
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !230
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !230
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i8 45, ptr %i.eg, align 4, !tbaa !230
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !7154
  %i.ej = add nsw i32 %i.ei, 1900                 ; 4 uses
  %i.ek = srem i32 %i.ej, 10
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !230
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !230
  %i.ep = sdiv i32 %i.ej, 10
  %i.eq = srem i32 %i.ep, 10
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !230
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %i.et, ptr %i.eu, align 2, !tbaa !230
  %i.ev = sdiv i32 %i.ej, 100
  %i.ew = srem i32 %i.ev, 10
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !230
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !230
  %i.fb = sdiv i32 %i.ej, 1000
  %i.fc = srem i32 %i.fb, 10
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !230
  store i8 %i.ff, ptr %i.aw, align 16, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.aw, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1361) %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 8 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !237
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !240  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !241  ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #53
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !242

.noexc6.i:                                        ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #53
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #52 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !240
  store i64 %i.g, ptr %i.d, align 8, !tbaa !230
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.d, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !230
  store i8 %i.n, ptr %i.m, align 1, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !241
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !230
  br label %bb.cf

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  invoke void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.ak

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !7167)
  call void @llvm.experimental.noalias.scope.decl(metadata !7168)
  %i.r = load ptr, ptr %5, align 8, !tbaa !240, !noalias !7169 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !241, !noalias !7169 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !237, !alias.scope !7169
  %i.v = icmp eq ptr %i.r, null
  %i.w = icmp ne i64 %i.t, 0
  %or.cond.i.i.i = and i1 %i.v, %i.w
  br i1 %or.cond.i.i.i, label %.noexc.i23, label %bb.i

.noexc.i23:                                       ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.42) #53
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %.noexc.i23
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.x = icmp ugt i64 %i.t, 15
  br i1 %i.x, label %bb.j, label %._crit_edge.i.i.i.i

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i32
!6949 = distinct !{!6949, i1 false, !"_ZN4asio6detail17consuming_buffersINS_14mutable_bufferESt5arrayIS2_Lm2EEPKS2_E7prepareEm"}
!6950 = distinct !{!6950, !6949, !"_ZN4asio6detail17consuming_buffersINS_14mutable_bufferESt5arrayIS2_Lm2EEPKS2_E7prepareEm: argument 0"}
!6951 = !{!"_ZTSZN7coro_io8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_14mutable_bufferELm2EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_EUlSI_E0_", !1349, i64 0, !345, i64 8, !670, i64 16, !1350, i64 24, !1395, i64 32, !210, i64 40}
!6952 = !{!6951, !1349, i64 0}
!6953 = !{!6951, !1350, i64 24}
!6954 = !{!6951, !345, i64 8}
!6955 = !{!6951, !670, i64 16}
!6956 = !{!6951, !1395, i64 32}
!6957 = !{!6951, !210, i64 40}
!6958 = !{!6950}
!6959 = distinct !{!6959, i1 false, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS8_10async_readIN4asio19basic_stream_socketINSE_2ip3tcpENSE_15any_io_executorEEESt5arrayINSE_14mutable_bufferELm2EEEENS0_4coro4LazyISC_EERT_T0_EUlOSQ_E_SJ_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINS8_21callback_awaitor_baseISC_NS8_16callback_awaitorISC_EEE15awaitor_handlerEEEDaSQ_EUlS3_S5_E_EENSt8__detail9_MakeUniqISQ_E15__single_objectEDpOT0_"}
!6960 = distinct !{!6960, !6959, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS8_10async_readIN4asio19basic_stream_socketINSE_2ip3tcpENSE_15any_io_executorEEESt5arrayINSE_14mutable_bufferELm2EEEENS0_4coro4LazyISC_EERT_T0_EUlOSQ_E_SJ_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINS8_21callback_awaitor_baseISC_NS8_16callback_awaitorISC_EEE15awaitor_handlerEEEDaSQ_EUlS3_S5_E_EENSt8__detail9_MakeUniqISQ_E15__single_objectEDpOT0_: argument 0"}
!6961 = !{!6960}
!6962 = distinct !{!6962, i1 false, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_10async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEEEN12async_simple4coro4LazyIS6_EERT_T0_EUlOSK_E_SC_EENSI_ISK_EESM_RT1_ENUlSK_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSK_EUlvE_EENS0_7binder0INSt5decayISK_E4typeEEESN_"}
!6963 = distinct !{!6963, !6962, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_10async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_14mutable_bufferELm2EEEEN12async_simple4coro4LazyIS6_EERT_T0_EUlOSK_E_SC_EENSI_ISK_EESM_RT1_ENUlSK_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaSK_EUlvE_EENS0_7binder0INSt5decayISK_E4typeEEESN_: argument 0"}
!6964 = !{!6963}
!6965 = !{!"_ZTSZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_14mutable_bufferELm2EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_EUlNSE_10SignalTypeEPNSE_6SignalEE_", !345, i64 0, !1358, i64 8}
!6966 = !{!6965, !345, i64 0}
!6967 = distinct !{null, null, ptr @_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio19basic_stream_socketINS5_2ip3tcpENS5_15any_io_executorEEESt5arrayINS5_14mutable_bufferELm2EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSI_E_SA_EENSG_ISI_EESK_RT1_ENUlSI_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaSI_ENUlNSE_10SignalTypeEPNSE_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6968 = distinct !{null, null, null, null}
!6969 = distinct !{null}
!6970 = !{!2756, !682, i64 0}
!6971 = distinct !{!6971, i1 false, !"_ZN4asio6detail17consuming_buffersINS_14mutable_bufferESt5arrayIS2_Lm2EEPKS2_E7prepareEm"}
!6972 = distinct !{!6972, !6971, !"_ZN4asio6detail17consuming_buffersINS_14mutable_bufferESt5arrayIS2_Lm2EEPKS2_E7prepareEm: argument 0"}
!6973 = distinct !{null, null, null, null}
!6974 = distinct !{!6974, !226}
!6975 = distinct !{null, null, null}
!6976 = !{!6972}
!6977 = !{!2752, !1350, i64 8}
!6978 = distinct !{null}
!6979 = distinct !{null}
!6980 = distinct !{!6980, i1 false, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!6981 = distinct !{!6981, !6980, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!6982 = distinct !{!6982, i1 false, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!6983 = distinct !{!6983, !6982, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!6984 = distinct !{!6984, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!6985 = distinct !{!6985, !6984, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!6986 = distinct !{null}
!6987 = !{!6981}
!6988 = !{!6983}
!6989 = !{!6985, !6983, !6981}
!6990 = !{!6983, !6981}
!6991 = distinct !{null}
!6992 = distinct !{null}
!6993 = distinct !{null}
!6994 = !{!2769, !682, i64 0}
!6995 = !{!"_ZTSZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt4pairISt10error_codemEZNS_10async_readIN4asio19basic_stream_socketINS9_2ip3tcpENS9_15any_io_executorEEESt5arrayINS9_14mutable_bufferELm2EEEENS1_4coro4LazyIS7_EERT_T0_EUlOSL_E_SE_EENSJ_ISL_EESN_RT1_EUlvE_SD_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSL_EUlvE_", !2772, i64 0, !1376, i64 8}
!6996 = !{!6995, !2772, i64 0}
!6997 = distinct !{!6997, i1 false, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_"}
!6998 = distinct !{!6998, !6997, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_: argument 0"}
!6999 = distinct !{!6999, i1 false, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!7000 = distinct !{!7000, !6999, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!7001 = distinct !{!7001, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE"}
!7002 = distinct !{!7002, !7001, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE: argument 0"}
!7003 = !{!6998}
!7004 = !{!7000}
!7005 = !{!7002, !7000, !6998}
!7006 = !{!7000, !6998}
!7007 = !{!2776, !682, i64 0}
!7008 = distinct !{!7008, i1 false, !"_ZZN8coro_rpc15coro_rpc_client22handle_response_bufferISt17basic_string_viewIcSt11char_traitsIcEEEEN2tl8expectedIT_NS_9rpc_errorEEES5_hRbmENKUlvE_clEv"}
!7009 = distinct !{!7009, !7008, !"_ZZN8coro_rpc15coro_rpc_client22handle_response_bufferISt17basic_string_viewIcSt11char_traitsIcEEEEN2tl8expectedIT_NS_9rpc_errorEEES5_hRbmENKUlvE_clEv: argument 0"}
!7010 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!7011 = !{!2782, !2782, i64 0}
!7012 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!7013 = !{!7009}
!7014 = distinct !{!7014, i1 false, !"_ZNO12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE7coAwaitEPNS_8ExecutorE"}
!7015 = distinct !{!7015, !7014, !"_ZNO12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE7coAwaitEPNS_8ExecutorE: argument 0"}
!7016 = distinct !{!7016, i1 false, !"_ZN12async_simple4coro6detail10getAwaiterINS_6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEDaOT_"}
!7017 = distinct !{!7017, !7016, !"_ZN12async_simple4coro6detail10getAwaiterINS_6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEDaOT_: argument 0"}
!7018 = distinct !{!7018, i1 false, !"_ZN12async_simpleawISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEDaONS_6FutureIT_EE"}
!7019 = distinct !{!7019, !7018, !"_ZN12async_simpleawISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEDaONS_6FutureIT_EE: argument 0"}
!7020 = distinct !{!7020, !7016, !"_ZN12async_simple4coro6detail10getAwaiterINS_6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEEEDaOT_: argument 0:thread"}
!7021 = distinct !{!7021, !7018, !"_ZN12async_simpleawISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEDaONS_6FutureIT_EE: argument 0:thread"}
!7022 = !{!7015}
!7023 = !{!7019, !7017}
!7024 = !{!7021, !7020}
!7025 = !{!7017}
!7026 = !{!7019}
!7027 = distinct !{!7027, i1 false, !"_ZSt11make_uniqueIN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEJS8_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!7028 = distinct !{!7028, !7027, !"_ZSt11make_uniqueIN12async_simple6FutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEEJS8_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!7029 = distinct !{!7029, i1 false, !"_ZSt18make_exception_ptrIN12async_simple15SignalExceptionEENSt15__exception_ptr13exception_ptrET_"}
!7030 = distinct !{!7030, !7029, !"_ZSt18make_exception_ptrIN12async_simple15SignalExceptionEENSt15__exception_ptr13exception_ptrET_: argument 0"}
!7031 = distinct !{!7031, i1 false, !"_ZN12async_simple15makeReadyFutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEENS_6FutureIT_EENSt15__exception_ptr13exception_ptrE"}
!7032 = distinct !{!7032, !7031, !"_ZN12async_simple15makeReadyFutureISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEEENS_6FutureIT_EENSt15__exception_ptr13exception_ptrE: argument 0"}
!7033 = distinct !{!7033, i1 false, !"_ZSt11make_sharedISt6atomicIbEJbEESt10shared_ptrIT_EDpOT0_"}
!7034 = distinct !{!7034, !7033, !"_ZSt11make_sharedISt6atomicIbEJbEESt10shared_ptrIT_EDpOT0_: argument 0"}
!7035 = distinct !{null, ptr @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7036 = !{!7028}
!7037 = !{!7030}
!7038 = !{!7032}
!7039 = !{!7034}
!7040 = !{ptr @_ZZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE25await_suspend_cancellableINS1_11LazyPromiseIN2tl8expectedINS4_24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS4_9rpc_errorEEEEEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E0_clIJNS_3TryIS8_EEEEEDaSY_}
!7041 = distinct !{null, null, null}
!7042 = distinct !{!7042, i1 false, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZNS0_4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE25await_suspend_cancellableINS9_11LazyPromiseIN2tl8expectedINSC_24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENSC_9rpc_errorEEEEEEEbNSt7__n486116coroutine_handleIT_EEPNS0_8ExecutorEPvPNS0_4SlotEEUlDpOT_E_EENSt8__detail9_MakeUniqISX_E15__single_objectEDpOT0_"}
!7043 = distinct !{!7043, !7042, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZNS0_4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE25await_suspend_cancellableINS9_11LazyPromiseIN2tl8expectedINSC_24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENSC_9rpc_errorEEEEEEEbNSt7__n486116coroutine_handleIT_EEPNS0_8ExecutorEPvPNS0_4SlotEEUlDpOT_E_EENSt8__detail9_MakeUniqISX_E15__single_objectEDpOT0_: argument 0"}
!7044 = !{!7043}
!7045 = distinct !{null, null, null, null, null}
!7046 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7047 = distinct !{null, null, null, null}
!7048 = !{!"p1 _ZTSNSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS7_9rpc_errorEEEEEEE", !210, i64 0}
!7049 = !{!7048, !7048, i64 0}
!7050 = distinct !{null}
!7051 = distinct !{ptr @_ZZN12async_simple11FutureStateISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE15setContinuationIZNS_4coro6detail13FutureAwaiterIS6_E25await_suspend_cancellableINSA_11LazyPromiseIN2tl8expectedINS2_24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS2_9rpc_errorEEEEEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E0_EEvOSS_ENUlONS_3TryIS6_EEE_D2Ev, ptr @_ZZN12async_simple4coro6detail13FutureAwaiterISt7variantIJN8coro_rpc15coro_rpc_client31async_rpc_raw_result_value_typeESt10error_codeEEE25await_suspend_cancellableINS1_11LazyPromiseIN2tl8expectedINS4_24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS4_9rpc_errorEEEEEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E0_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7052 = distinct !{null, null, null, null, null, null}
!7053 = !{!"_ZTSSt10_Head_baseILm0ERSt17basic_string_viewIcSt11char_traitsIcEELb0EE", !2101, i64 0}
!7054 = !{!7053, !2101, i64 0}
!7055 = distinct !{!7055, i1 false, !"_ZZN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS_15io_context_poolEE7enqueueERNS_6detail12client_queueISt10unique_ptrIS2_St14default_deleteIS2_EEEESA_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEENKUlvE_clEv"}
!7056 = distinct !{!7056, !7055, !"_ZZN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS_15io_context_poolEE7enqueueERNS_6detail12client_queueISt10unique_ptrIS2_St14default_deleteIS2_EEEESA_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEENKUlvE_clEv: argument 0"}
!7057 = distinct !{!7057, i1 false, !"_ZNSt23enable_shared_from_thisIN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS0_15io_context_poolEEEE14weak_from_thisEv"}
!7058 = distinct !{!7058, !7057, !"_ZNSt23enable_shared_from_thisIN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS0_15io_context_poolEEEE14weak_from_thisEv: argument 0"}
!7059 = distinct !{null}
!7060 = distinct !{!7060, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!7061 = distinct !{!7061, !7060, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!7062 = distinct !{!7062, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!7063 = distinct !{!7063, !7062, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!7064 = distinct !{!7064, i1 false, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!7065 = distinct !{!7065, !7064, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!7066 = !{!7056}
!7067 = !{!7058}
!7068 = !{!825, !207, i64 2624}
!7069 = !{!7061}
!7070 = !{!7063}
!7071 = !{!7065}
!7072 = distinct !{null}
!7073 = distinct !{!7073, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!7074 = distinct !{!7074, !7073, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!7075 = distinct !{!7075, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!7076 = distinct !{!7076, !7075, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!7077 = !{!7074}
!7078 = !{!7076}
!7079 = distinct !{!7079, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN8coro_rpc15coro_rpc_clientESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!7080 = distinct !{!7080, !7079, !"_ZSt19__relocate_object_aISt10unique_ptrIN8coro_rpc15coro_rpc_clientESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!7081 = distinct !{!7081, !7079, !"_ZSt19__relocate_object_aISt10unique_ptrIN8coro_rpc15coro_rpc_clientESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!7082 = distinct !{!7082, i1 false, !"LVerDomain"}
!7083 = distinct !{!7083, !7082}
!7084 = distinct !{!7084, !7082}
!7085 = distinct !{!7085, !226, !478, !479}
!7086 = distinct !{!7086, !226, !478}
!7087 = distinct !{!7087, !226}
!7088 = !{!7080}
!7089 = !{!7081}
!7090 = !{!7081, !7083}
!7091 = !{!7080, !7084}
!7092 = !{!2809, !2809, i64 0}
!7093 = distinct !{null}
!7094 = distinct !{!7094, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!7095 = distinct !{!7095, !7094, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!7096 = !{!7095}
!7097 = !{ptr @_ZN2tl19bad_expected_accessIN8coro_rpc9rpc_errorEED2Ev}
!7098 = !{!930, !929, i64 0}
!7099 = distinct !{null, null, null}
!7100 = distinct !{null, null, ptr @_ZZZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_jENKUlS2_E_clISt10shared_ptrIS1_EEEDaS2_ENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io15io_context_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7101 = distinct !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZZN7coro_io17g_io_context_poolINS3_15io_context_poolEEERT_jENKUlS6_E_clISt10shared_ptrIS5_EEEDaS6_EUlvE_EEEEED2Ev, null, null, ptr @_ZZZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_jENKUlS2_E_clISt10shared_ptrIS1_EEEDaS2_ENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io15io_context_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7102 = !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZZN7coro_io17g_io_context_poolINS3_15io_context_poolEEERT_jENKUlS6_E_clISt10shared_ptrIS5_EEEDaS6_EUlvE_EEEEED2Ev}
!7103 = distinct !{!7103, i1 false, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!7104 = distinct !{!7104, !7103, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!7105 = !{!2819, !270, i64 0}
!7106 = !{!7104}
!7107 = distinct !{!7107, !226}
!7108 = distinct !{!7108, !861}
!7109 = distinct !{!7109, !226}
!7110 = distinct !{!7110, !861}
!7111 = !{!2841, !2840, i64 0}
!7112 = distinct !{null}
!7113 = distinct !{!7113, !226}
!7114 = distinct !{null, null}
!7115 = distinct !{null}
!7116 = !{!2828, !2828, i64 0}
!7117 = !{!"_ZTSSt8functionIFvRN7easylog8record_tEEE", !286, i64 0, !210, i64 24}
!7118 = !{!7117, !210, i64 24}
!7119 = distinct !{!7119, !226}
!7120 = distinct !{!7120, !226}
!7121 = distinct !{!7121, !226}
!7122 = distinct !{!7122, !226}
!7123 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !210, i64 0}
!7124 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !441, i64 0, !7123, i64 8}
!7125 = !{!7124, !7123, i64 8}
!7126 = distinct !{!7126, !226}
!7127 = distinct !{!7127, !226}
!7128 = !{!2865, !254, i64 72}
!7129 = !{!2880, !238, i64 0}
!7130 = !{!2880, !2877, i64 16}
!7131 = !{!2885, !2871, i64 0}
!7132 = distinct !{!7132, !226}
!7133 = distinct !{!7133, !226}
!7134 = distinct !{!7134, !226}
!7135 = distinct !{!7135, !226}
!7136 = distinct !{!7136, !226}
!7137 = !{!2878, !238, i64 96}
!7138 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15BlockIndexEntryE", !238, i64 0, !2849, i64 8}
!7139 = !{!7138, !238, i64 0}
!7140 = !{!7138, !2849, i64 8}
!7141 = !{!2860, !2849, i64 2560}
!7142 = distinct !{!7142, !226}
!7143 = distinct !{!7143, !226}
!7144 = distinct !{!7144, !226}
!7145 = distinct !{!7145, i1 false, !"_ZN7easylog14localtime_safeEl"}
!7146 = distinct !{!7146, !7145, !"_ZN7easylog14localtime_safeEl: argument 0"}
!7147 = !{!7146}
!7148 = !{!"_ZTS2tm", !207, i64 0, !207, i64 4, !207, i64 8, !207, i64 12, !207, i64 16, !207, i64 20, !207, i64 24, !207, i64 28, !207, i64 32, !238, i64 40, !235, i64 48}
!7149 = !{!7148, !207, i64 0}
!7150 = !{!7148, !207, i64 4}
!7151 = !{!7148, !207, i64 8}
!7152 = !{!7148, !207, i64 12}
!7153 = !{!7148, !207, i64 16}
!7154 = !{!7148, !207, i64 20}
!7155 = distinct !{!7155, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!7156 = distinct !{!7156, !7155, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!7157 = distinct !{!7157, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!7158 = distinct !{!7158, !7157, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!7159 = distinct !{!7159, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!7160 = distinct !{!7160, !7159, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!7161 = distinct !{!7161, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!7162 = distinct !{!7162, !7161, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!7163 = distinct !{!7163, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!7164 = distinct !{!7164, !7163, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!7165 = distinct !{!7165, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!7166 = distinct !{!7166, !7165, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!7167 = !{!7156}
!7168 = !{!7158}
!7169 = !{!7158, !7156}
!7170 = !{!7160}
!7171 = !{!7162}
!7172 = !{!7162, !7160}
!7173 = !{!7164}
!7174 = !{!7166}
!7175 = !{!7166, !7164}
!7176 = distinct !{!7176, i1 false, !"_ZN7easylog8appender14build_filenameB5cxx11Ei"}
!7177 = distinct !{!7177, !7176, !"_ZN7easylog8appender14build_filenameB5cxx11Ei: argument 0"}
!7178 = distinct !{!7178, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!7179 = distinct !{!7179, !7178, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!7180 = !{!7177}
!7181 = !{!7179}
!7182 = distinct !{!7182, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!7183 = distinct !{!7183, !7182, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!7184 = !{!7183}
!7185 = distinct !{!7185, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!7186 = distinct !{!7186, !7185, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!7187 = !{!7186}
!7188 = distinct !{!7188, !226}
!7189 = distinct !{!7189, !226}
!7190 = distinct !{!7190, !226}
!7191 = distinct !{!7191, !226}
!7192 = !{!2908, !207, i64 8}
!7193 = !{!2908, !207, i64 12}
!7194 = distinct !{!7194, !226}
!7195 = distinct !{null, null, ptr @"_ZZ22async_echo_by_callbackN8coro_rpc12context_baseISt17basic_string_viewIcSt11char_traitsIcEENS_8protocol17coro_rpc_protocolEEES4_EN3$_0D2Ev", null, null, null, null}
!7196 = distinct !{!7196, i1 false, !"_ZZN8coro_rpc12context_baseISt17basic_string_viewIcSt11char_traitsIcEENS_8protocol17coro_rpc_protocolEE12check_statusEvENKUlvE_clEv"}
!7197 = distinct !{!7197, !7196, !"_ZZN8coro_rpc12context_baseISt17basic_string_viewIcSt11char_traitsIcEENS_8protocol17coro_rpc_protocolEE12check_statusEvENKUlvE_clEv: argument 0"}
!7198 = distinct !{!7198, i1 false, !"_ZZN8coro_rpc12context_baseISt17basic_string_viewIcSt11char_traitsIcEENS_8protocol17coro_rpc_protocolEE12check_statusEvENKUlvE0_clEv"}
!7199 = distinct !{!7199, !7198, !"_ZZN8coro_rpc12context_baseISt17basic_string_viewIcSt11char_traitsIcEENS_8protocol17coro_rpc_protocolEE12check_statusEvENKUlvE0_clEv: argument 0"}
!7200 = !{!7197}
!7201 = !{!7199}
!7202 = distinct !{!7202, i1 false, !"_ZNKSt8functionIFN7coro_io9data_viewEvEEclEv"}
!7203 = distinct !{!7203, !7202, !"_ZNKSt8functionIFN7coro_io9data_viewEvEEclEv: argument 0"}
!7204 = distinct !{!7204, i1 false, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!7205 = distinct !{!7205, !7204, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!7206 = distinct !{!7206, i1 false, !"_ZNSt23enable_shared_from_thisIN8coro_rpc15coro_connectionEE14weak_from_thisEv"}
!7207 = distinct !{!7207, !7206, !"_ZNSt23enable_shared_from_thisIN8coro_rpc15coro_connectionEE14weak_from_thisEv: argument 0"}
!7208 = !{!7203}
!7209 = !{!7205}
!7210 = !{!7207}
!7211 = distinct !{!7211, i1 false, !"_ZZN8coro_rpc8protocol17coro_rpc_protocol16prepare_responseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_10req_headerEmNS_4errcESt17basic_string_viewIcS5_EENKUlvE_clEv"}
!7212 = distinct !{!7212, !7211, !"_ZZN8coro_rpc8protocol17coro_rpc_protocol16prepare_responseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_10req_headerEmNS_4errcESt17basic_string_viewIcS5_EENKUlvE_clEv: argument 0"}
!7213 = distinct !{!7213, i1 false, !"_ZZN8coro_rpc8protocol17coro_rpc_protocol16prepare_responseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_10req_headerEmNS_4errcESt17basic_string_viewIcS5_EENKUlvE0_clEv"}
!7214 = distinct !{!7214, !7213, !"_ZZN8coro_rpc8protocol17coro_rpc_protocol16prepare_responseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_10req_headerEmNS_4errcESt17basic_string_viewIcS5_EENKUlvE0_clEv: argument 0"}
!7215 = !{!7212}
!7216 = !{!7214}
!7217 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!7218 = !{!"_ZTSSt4pairItSt17basic_string_viewIcSt11char_traitsIcEEE", !1032, i64 0, !319, i64 8}
!7219 = !{!7218, !1032, i64 0}
!7220 = distinct !{!7220, i1 false, !"_ZN11struct_pack6detail18calculate_one_sizeISt4pairItSt17basic_string_viewIcSt11char_traitsIcEEELm0EEENS0_9size_infoERKT_"}
!7221 = distinct !{!7221, !7220, !"_ZN11struct_pack6detail18calculate_one_sizeISt4pairItSt17basic_string_viewIcSt11char_traitsIcEEELm0EEENS0_9size_infoERKT_: argument 0"}
!7222 = distinct !{!7222, i1 false, !"_ZN3ylt10reflection13visit_membersIRKSt4pairItSt17basic_string_viewIcSt11char_traitsIcEEEZN11struct_pack6detail18calculate_one_sizeIS7_Lm0EEENSB_9size_infoERKT_EUlDpOT_E_Lm2EEEDcOSE_OT0_"}
!7223 = distinct !{!7223, !7222, !"_ZN3ylt10reflection13visit_membersIRKSt4pairItSt17basic_string_viewIcSt11char_traitsIcEEEZN11struct_pack6detail18calculate_one_sizeIS7_Lm0EEENSB_9size_infoERKT_EUlDpOT_E_Lm2EEEDcOSE_OT0_: argument 0"}
!7224 = distinct !{!7224, i1 false, !"_ZN3ylt10reflection8internal10tuple_viewILm2ERKSt4pairItSt17basic_string_viewIcSt11char_traitsIcEEEZN11struct_pack6detail18calculate_one_sizeIS8_Lm0EEENSC_9size_infoERKT_EUlDpOT_E_EEDcOT0_OT1_"}
!7225 = distinct !{!7225, !7224, !"_ZN3ylt10reflection8internal10tuple_viewILm2ERKSt4pairItSt17basic_string_viewIcSt11char_traitsIcEEEZN11struct_pack6detail18calculate_one_sizeIS8_Lm0EEENSC_9size_infoERKT_EUlDpOT_E_EEDcOT0_OT1_: argument 0"}
!7226 = distinct !{!7226, i1 false, !"_ZN3ylt10reflection8internal24object_tuple_view_helperIRKSt4pairItSt17basic_string_viewIcSt11char_traitsIcEEELm2EE10tuple_viewIZN11struct_pack6detail18calculate_one_sizeIS8_Lm0EEENSE_9size_infoERKT_EUlDpOT_E_EEDcSA_OSH_"}
!7227 = distinct !{!7227, !7226, !"_ZN3ylt10reflection8internal24object_tuple_view_helperIRKSt4pairItSt17basic_string_viewIcSt11char_traitsIcEEELm2EE10tuple_viewIZN11struct_pack6detail18calculate_one_sizeIS8_Lm0EEENSE_9size_infoERKT_EUlDpOT_E_EEDcSA_OSH_: argument 0"}
!7228 = distinct !{!7228, i1 false, !"_ZN11struct_pack6detail22calculate_payload_sizeILm0EJtSt17basic_string_viewIcSt11char_traitsIcEEEEENS0_9size_infoEDpRKT0_"}
!7229 = distinct !{!7229, !7228, !"_ZN11struct_pack6detail22calculate_payload_sizeILm0EJtSt17basic_string_viewIcSt11char_traitsIcEEEEENS0_9size_infoEDpRKT0_: argument 0"}
!7230 = distinct !{!7230, i1 false, !"_ZN11struct_pack6detail18calculate_one_sizeISt17basic_string_viewIcSt11char_traitsIcEELm0EEENS0_9size_infoERKT_"}
!7231 = distinct !{!7231, !7230, !"_ZN11struct_pack6detail18calculate_one_sizeISt17basic_string_viewIcSt11char_traitsIcEELm0EEENS0_9size_infoERKT_: argument 0"}
!7232 = !{!7231, !7229, !7227, !7225, !7223, !7221}
!7233 = distinct !{!7233, i1 false, !"_ZN11struct_pack6detail18calculate_one_sizeISt17basic_string_viewIcSt11char_traitsIcEELm0EEENS0_9size_infoERKT_"}
!7234 = distinct !{!7234, !7233, !"_ZN11struct_pack6detail18calculate_one_sizeISt17basic_string_viewIcSt11char_traitsIcEELm0EEENS0_9size_infoERKT_: argument 0"}
!7235 = !{!7234}
!7236 = distinct !{!7236, i1 false, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_"}
!7237 = distinct !{!7237, !7236, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_: argument 0"}
!7238 = distinct !{!7238, i1 false, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SH_SJ_vvvvvvvE11result_typeEE4typeEOSH_OSI_"}
!7239 = distinct !{!7239, !7238, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SH_SJ_vvvvvvvE11result_typeEE4typeEOSH_OSI_: argument 0"}
!7240 = distinct !{!7240, i1 false, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireENS_9execution6detail8blocking10possibly_tILi0EEE"}
!7241 = distinct !{!7241, !7240, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireENS_9execution6detail8blocking10possibly_tILi0EEE: argument 0"}
!7242 = distinct !{!7242, i1 false, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_"}
!7243 = distinct !{!7243, !7242, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_: argument 0"}
!7244 = distinct !{!7244, i1 false, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE"}
!7245 = distinct !{!7245, !7244, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE: argument 0"}
!7246 = distinct !{!7246, i1 false, !"_ZN4asio6detail12bind_handlerIZN8coro_rpc15coro_connection12response_msgINS2_8protocol17coro_rpc_protocolEEEvNSt6chrono10time_pointINS7_3_V212steady_clockENS7_8durationIlSt5ratioILl1ELl1000000000EEEEEEmONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt8functionIFN7coro_io9data_viewEvEERKNT_10req_headerEOSN_IFvRKSt10error_codemEEEUlvE_EENS0_7binder0INSt5decayIST_E4typeEEEOST_"}
!7247 = distinct !{!7247, !7246, !"_ZN4asio6detail12bind_handlerIZN8coro_rpc15coro_connection12response_msgINS2_8protocol17coro_rpc_protocolEEEvNSt6chrono10time_pointINS7_3_V212steady_clockENS7_8durationIlSt5ratioILl1ELl1000000000EEEEEEmONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt8functionIFN7coro_io9data_viewEvEERKNT_10req_headerEOSN_IFvRKSt10error_codemEEEUlvE_EENS0_7binder0INSt5decayIST_E4typeEEEOST_: argument 0"}
!7248 = !{!7237}
!7249 = !{!7241, !7239, !7237}
!7250 = !{!7245, !7243, !7237}
!7251 = !{!7247}
!7252 = distinct !{!7252, i1 false, !"_ZNKSt8weak_ptrIN8coro_rpc15coro_connectionEE4lockEv"}
!7253 = distinct !{!7253, !7252, !"_ZNKSt8weak_ptrIN8coro_rpc15coro_connectionEE4lockEv: argument 0"}
!7254 = distinct !{!7254, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!7255 = distinct !{!7255, !7254, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!7256 = distinct !{!7256, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!7257 = distinct !{!7257, !7256, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!7258 = !{!7253}
!7259 = !{!7255}
!7260 = !{!7257}
!7261 = distinct !{null}
!7262 = distinct !{!7262, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!7263 = distinct !{!7263, !7262, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!7264 = !{!7263}
!7265 = distinct !{!7265, i1 false, !"_ZNSt5dequeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St8functionIFN7coro_io9data_viewEvEES7_IFvSt10error_codemEEEESaISF_EE3endEv"}
!7266 = distinct !{!7266, !7265, !"_ZNSt5dequeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St8functionIFN7coro_io9data_viewEvEES7_IFvSt10error_codemEEEESaISF_EE3endEv: argument 0"}
!7267 = !{!371, !369, i64 64}
!7268 = !{!7266}
!7269 = distinct !{!7269, i1 false, !"_ZZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEENKUlvE_clEv"}
!7270 = distinct !{!7270, !7269, !"_ZZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEENKUlvE_clEv: argument 0"}
!7271 = distinct !{!7271, i1 false, !"_ZNSt23enable_shared_from_thisIN8coro_rpc15coro_connectionEE16shared_from_thisEv"}
!7272 = distinct !{!7272, !7271, !"_ZNSt23enable_shared_from_thisIN8coro_rpc15coro_connectionEE16shared_from_thisEv: argument 0"}
!7273 = !{!7270}
!7274 = !{!395, !254, i64 184}
!7275 = !{!7272}
!7276 = distinct !{!7276, i1 false, !"_ZZN8coro_rpc15coro_connection8responseENSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_St8functionIFN7coro_io9data_viewEvEESG_IFvSt10error_codemEESt10shared_ptrIS0_EENKUlRT_E_clINSH_11ib_socket_tEEEDaSR_"}
!7277 = distinct !{!7277, !7276, !"_ZZN8coro_rpc15coro_connection8responseENSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_St8functionIFN7coro_io9data_viewEvEESG_IFvSt10error_codemEESt10shared_ptrIS0_EENKUlRT_E_clINSH_11ib_socket_tEEEDaSR_: argument 0"}
!7278 = distinct !{null}
!7279 = distinct !{!7279, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!7280 = distinct !{!7280, !7279, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!7281 = distinct !{!7281, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!7282 = distinct !{!7282, !7281, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!7283 = distinct !{!7283, i1 false, !"_ZZN8coro_rpc15coro_connection8responseENSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_St8functionIFN7coro_io9data_viewEvEESG_IFvSt10error_codemEESt10shared_ptrIS0_EENKUlRT_E_clIN4asio3ssl6streamIRNSU_19basic_stream_socketINSU_2ip3tcpENSU_15any_io_executorEEEEEEEDaSR_"}
!7284 = distinct !{!7284, !7283, !"_ZZN8coro_rpc15coro_connection8responseENSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_St8functionIFN7coro_io9data_viewEvEESG_IFvSt10error_codemEESt10shared_ptrIS0_EENKUlRT_E_clIN4asio3ssl6streamIRNSU_19basic_stream_socketINSU_2ip3tcpENSU_15any_io_executorEEEEEEEDaSR_: argument 0"}
!7285 = distinct !{null}
!7286 = distinct !{!7286, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!7287 = distinct !{!7287, !7286, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!7288 = distinct !{!7288, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!7289 = distinct !{!7289, !7288, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!7290 = distinct !{!7290, i1 false, !"_ZZN8coro_rpc15coro_connection8responseENSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_St8functionIFN7coro_io9data_viewEvEESG_IFvSt10error_codemEESt10shared_ptrIS0_EENKUlRT_E_clIN4asio19basic_stream_socketINSU_2ip3tcpENSU_15any_io_executorEEEEEDaSR_"}
!7291 = distinct !{!7291, !7290, !"_ZZN8coro_rpc15coro_connection8responseENSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_St8functionIFN7coro_io9data_viewEvEESG_IFvSt10error_codemEESt10shared_ptrIS0_EENKUlRT_E_clIN4asio19basic_stream_socketINSU_2ip3tcpENSU_15any_io_executorEEEEEDaSR_: argument 0"}
!7292 = distinct !{null}
!7293 = distinct !{!7293, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv"}
!7294 = distinct !{!7294, !7293, !"_ZN12async_simple4coro6detail11LazyPromiseIvE17get_return_objectEv: argument 0"}
!7295 = distinct !{!7295, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv"}
!7296 = distinct !{!7296, !7295, !"_ZN12async_simple4coro6detail11LazyPromiseIvE39get_return_object_on_allocation_failureEv: argument 0"}
!7297 = !{!7277}
!7298 = !{!7280, !7277}
!7299 = !{!7282, !7277}
!7300 = !{!7284}
!7301 = !{!7287, !7284}
!7302 = !{!7289, !7284}
!7303 = !{!7291}
!7304 = !{!7294, !7291}
!7305 = !{!7296, !7291}
!7306 = distinct !{null, ptr @_ZZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEENUlRKSt10error_codeE_D2Ev, ptr @_ZNSt12__shared_ptrIN8coro_rpc15coro_connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7307 = distinct !{!7307, i1 false, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!7308 = distinct !{!7308, !7307, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!7309 = distinct !{!7309, i1 false, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!7310 = distinct !{!7310, !7309, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!7311 = distinct !{!7311, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!7312 = distinct !{!7312, !7311, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!7313 = !{!7308}
!7314 = !{!7310}
!7315 = !{!7312, !7310, !7308}
!7316 = !{!7310, !7308}
!7317 = distinct !{!7317, i1 false, !"_ZZZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEENKUlRKSt10error_codeE_clES7_ENKUlvE_clEv"}
!7318 = distinct !{!7318, !7317, !"_ZZZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEENKUlRKSt10error_codeE_clES7_ENKUlvE_clEv: argument 0"}
!7319 = !{!7318}
!7320 = distinct !{!7320, i1 false, !"_ZZN8coro_rpc15coro_connection5closeEvENKUlvE_clEv"}
!7321 = distinct !{!7321, !7320, !"_ZZN8coro_rpc15coro_connection5closeEvENKUlvE_clEv: argument 0"}
!7322 = distinct !{null}
!7323 = !{!7321}
!7324 = !{!393, !210, i64 24}
!7325 = distinct !{null, ptr @_ZN4asio6detail7binder1IZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEEUlRKSt10error_codeE_S8_ED2Ev, ptr @_ZZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEENUlRKSt10error_codeE_D2Ev, ptr @_ZNSt12__shared_ptrIN8coro_rpc15coro_connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7326 = !{!371, !369, i64 32}
!7327 = !{!371, !369, i64 24}
!7328 = distinct !{!7328, i1 false, !"_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm"}
!7329 = distinct !{!7329, !7328, !"_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm: argument 0"}
!7330 = distinct !{null, null, null, null}
!7331 = distinct !{null, null, null, null, null}
!7332 = distinct !{!7332, !226, !2965}
!7333 = distinct !{!7333, !226}
!7334 = distinct !{null, null, null}
!7335 = !{!7329}
!7336 = distinct !{null, null, null, null}
!7337 = distinct !{null, null, null, null}
!7338 = distinct !{null, null, null, null, null, null, null, null, null, null}
!7339 = distinct !{null}
!7340 = distinct !{!7340, !226}
!7341 = !{!2968, !1958, i64 8}
!7342 = !{!2968, !345, i64 0}
!7343 = distinct !{null}
!7344 = distinct !{null}
!7345 = distinct !{!7345, i1 false, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!7346 = distinct !{!7346, !7345, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!7347 = distinct !{!7347, i1 false, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!7348 = distinct !{!7348, !7347, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!7349 = distinct !{!7349, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!7350 = distinct !{!7350, !7349, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
end_hunk_1
