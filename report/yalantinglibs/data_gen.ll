Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN7easylog8appender14roll_log_filesEv:bb.a
          to label %bb.r unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.040 = phi i32 [ %i.aa, %.lr.ph ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %.040)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.aj = add nuw nsw i32 %.040, 1
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %i.aj)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_RSt10error_code(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #36
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !433 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i15, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ak) #36
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16: ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %7, align 8, !tbaa !286   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ad
  br i1 %i.am, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !279
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #50
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19

_ZNSt10filesystem7__cxx114pathD2Ev.exit19:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !433 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i20, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, label %bb.l

bb.l:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ap) #36
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21: ; preds = %bb.l, %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  %i.aq = load ptr, ptr %6, align 8, !tbaa !286   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21
  %i.as = load i64, ptr %i.af, align 8, !tbaa !279
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #50
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24

_ZNSt10filesystem7__cxx114pathD2Ev.exit24:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.au = load ptr, ptr %5, align 8, !tbaa !286   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !279
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ay = load ptr, ptr %4, align 8, !tbaa !286   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ah
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ah, align 8, !tbaa !279
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.bc = add nsw i32 %.040, -1
  %i.bd = icmp sgt i32 %.040, 0
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !8504

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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %i.bg, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.bi = load ptr, ptr %5, align 8, !tbaa !286   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ag
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.q
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !279
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.bm = load ptr, ptr %4, align 8, !tbaa !286   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ah
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !279
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.bq = load ptr, ptr %1, align 8, !tbaa !286   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !279
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.s:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.bv, %bb.s ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.bw = load ptr, ptr %1, align 8, !tbaa !286   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !279
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !411 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 3 uses
  %.neg.i = mul nsw i64 %i.b, -1000000000
  %i.c = add i64 %.neg.i, %.sroa.0.0.copyload.i
  %i.d = sdiv i64 %i.c, 1000                      ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E9last_sec_) ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !411
  %i.g = icmp eq i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.d to i32                    ; 6 uses
  %i.i = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 8 uses
  %i.j = srem i32 %i.h, 10
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !279
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  store i8 %i.m, ptr %i.n, align 1, !tbaa !279
  %i.o = sdiv i32 %i.h, 10
  %i.p = srem i32 %i.o, 10
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !279
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 %i.s, ptr %i.t, align 8, !tbaa !279
  %i.u = sdiv i32 %i.h, 100
  %i.v = srem i32 %i.u, 10
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !279
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  store i8 %i.y, ptr %i.z, align 1, !tbaa !279
  %i.aa = sdiv i32 %i.h, 1000
  %i.ab = srem i32 %i.aa, 10
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !279
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !279
  %i.ag = sdiv i32 %i.h, 10000
  %i.ah = srem i32 %i.ag, 10
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !279
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 21
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !279
  %i.am = sdiv i32 %i.h, 100000
  %.lhs.trunc.i = trunc nsw i32 %i.am to i16
  %i.an = srem i16 %.lhs.trunc.i, 10
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !279
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !279
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 19
  store i8 46, ptr %i.as, align 1, !tbaa !279
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !411
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !411
  %i.at = sdiv i64 %.sroa.0.0.copyload.i.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8507)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !411, !noalias !8507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !alias.scope !8507
  %i.au = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = trunc i64 %i.d to i32                   ; 6 uses
  %i.aw = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 27 uses
  %i.ax = srem i32 %i.av, 10
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !279
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !279
  %i.bc = sdiv i32 %i.av, 10
  %i.bd = srem i32 %i.bc, 10
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !279
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !279
  %i.bi = sdiv i32 %i.av, 100
  %i.bj = srem i32 %i.bi, 10
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !279
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !279
  %i.bo = sdiv i32 %i.av, 1000
  %i.bp = srem i32 %i.bo, 10
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !279
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !279
  %i.bu = sdiv i32 %i.av, 10000
  %2 = srem i32 %i.bu, 10
  %i.bv = sext i32 %2 to i64
  %i.bw = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !279
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !279
  %3 = sdiv i32 %i.av, 100000
  %.lhs.trunc.i11 = trunc nsw i32 %3 to i16
  %4 = srem i16 %.lhs.trunc.i11, 10
  %5 = sext i16 %4 to i64
  %i.bz = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %5
  %6 = load i8, ptr %i.bz, align 1, !tbaa !279
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i8 %6, ptr %i.ca, align 4, !tbaa !279
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  store i8 46, ptr %7, align 1, !tbaa !279
  %8 = load i32, ptr %1, align 8, !tbaa !8509     ; 2 uses
  %9 = srem i32 %8, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !279
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  store i8 %12, ptr %i.cb, align 2, !tbaa !279
  %13 = sdiv i32 %8, 10
  %14 = srem i32 %13, 10
  %i.cc = sext i32 %14 to i64
  %i.cd = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !279
  %15 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  store i8 %i.ce, ptr %15, align 1, !tbaa !279
  %16 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 58, ptr %16, align 16, !tbaa !279
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !8510   ; 2 uses
  %19 = srem i32 %18, 10
  %i.cf = sext i32 %19 to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !279
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !279
  %i.cj = sdiv i32 %18, 10
  %i.ck = srem i32 %i.cj, 10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !279
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !279
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 58, ptr %i.cp, align 1, !tbaa !279
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !8511 ; 2 uses
  %i.cs = srem i32 %i.cr, 10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !279
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i8 %i.cv, ptr %i.cw, align 4, !tbaa !279
  %i.cx = sdiv i32 %i.cr, 10
  %i.cy = srem i32 %i.cx, 10
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !279
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !279
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  store i8 32, ptr %i.dd, align 2, !tbaa !279
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8512 ; 2 uses
  %i.dg = srem i32 %i.df, 10
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !279
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !279
  %i.dl = sdiv i32 %i.df, 10
  %i.dm = srem i32 %i.dl, 10
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !279
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.dp, ptr %i.dq, align 8, !tbaa !279
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  store i8 45, ptr %i.dr, align 1, !tbaa !279
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8513
  %i.du = add nsw i32 %i.dt, 1                    ; 2 uses
  %i.dv = srem i32 %i.du, 10
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !279
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !279
  %i.ea = sdiv i32 %i.du, 10
  %i.eb = srem i32 %i.ea, 10
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !279
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !279
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i8 45, ptr %i.eg, align 4, !tbaa !279
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8514
  %i.ej = add nsw i32 %i.ei, 1900                 ; 4 uses
  %i.ek = srem i32 %i.ej, 10
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !279
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !279
  %i.ep = sdiv i32 %i.ej, 10
  %i.eq = srem i32 %i.ep, 10
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !279
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %i.et, ptr %i.eu, align 2, !tbaa !279
  %i.ev = sdiv i32 %i.ej, 100
  %i.ew = srem i32 %i.ev, 10
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !279
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !279
  %i.fb = sdiv i32 %i.ej, 1000
  %i.fc = srem i32 %i.fb, 10
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !279
  store i8 %i.ff, ptr %i.aw, align 16, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.aw, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1361) %1, i32 noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store ptr %i.d, ptr %0, align 8, !tbaa !289
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !286  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !290  ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #52
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !291

.noexc6.i:                                        ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #52
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #51 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !286
  store i64 %i.g, ptr %i.d, align 8, !tbaa !279
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.d, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !279
  store i8 %i.n, ptr %i.m, align 1, !tbaa !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !290
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !279
  br label %bb.cf

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.ak

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !8527)
  call void @llvm.experimental.noalias.scope.decl(metadata !8528)
  %i.r = load ptr, ptr %5, align 8, !tbaa !286, !noalias !8529 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !290, !noalias !8529 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !289, !alias.scope !8529
  %i.v = icmp eq ptr %i.r, null
  %i.w = icmp ne i64 %i.t, 0
  %or.cond.i.i.i = and i1 %i.v, %i.w
  br i1 %or.cond.i.i.i, label %.noexc.i23, label %bb.i

.noexc.i23:                                       ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #52
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %.noexc.i23
  unreachable

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i32
!8309 = distinct !{null, null, null, null, null, null, null, null}
!8310 = distinct !{!8310, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!8311 = distinct !{!8311, !8310, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!8312 = distinct !{!8312, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!8313 = distinct !{!8313, !8312, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!8314 = distinct !{!8314, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!8315 = distinct !{!8315, !8314, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!8316 = distinct !{null}
!8317 = !{!8311}
!8318 = !{!8313}
!8319 = !{!8315, !8313, !8311}
!8320 = !{!8313, !8311}
!8321 = distinct !{null}
!8322 = distinct !{null, null, null, null, null, null}
!8323 = distinct !{null, null}
!8324 = distinct !{null}
!8325 = !{!2700, !929, i64 0}
!8326 = !{!"_ZTSZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt10error_codeZNS_15async_handshakeIPN4asio3ssl6streamIRNS7_19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEEEEEENS1_4coro4LazyIS5_EEOT_NS8_11stream_base14handshake_typeEEUlSM_E_SG_EENSJ_ISL_EET0_RT1_EUlvE_SD_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSL_EUlvE_", !2703, i64 0, !1144, i64 8}
!8327 = !{!8326, !2703, i64 0}
!8328 = distinct !{!8328, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_"}
!8329 = distinct !{!8329, !8328, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_: argument 0"}
!8330 = distinct !{!8330, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!8331 = distinct !{!8331, !8330, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!8332 = distinct !{!8332, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE"}
!8333 = distinct !{!8333, !8332, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE: argument 0"}
!8334 = !{!8329}
!8335 = !{!8331}
!8336 = !{!8333, !8331, !8329}
!8337 = !{!8331, !8329}
!8338 = !{!2707, !929, i64 0}
!8339 = distinct !{!8339, !"_ZNK4asio2ip7address9to_stringB5cxx11Ev"}
!8340 = distinct !{!8340, !8339, !"_ZNK4asio2ip7address9to_stringB5cxx11Ev: argument 0"}
!8341 = !{!8340}
!8342 = distinct !{null}
!8343 = distinct !{!8343, !"_ZN12async_simple4coro6detail8LazyBaseIbLb0EE10coAwaitTryEv"}
!8344 = distinct !{!8344, !8343, !"_ZN12async_simple4coro6detail8LazyBaseIbLb0EE10coAwaitTryEv: argument 0"}
!8345 = !{!8344}
!8346 = distinct !{!8346, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clIN7coro_io11ib_socket_tEEEDaSI_"}
!8347 = distinct !{!8347, !8346, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clIN7coro_io11ib_socket_tEEEDaSI_: argument 0"}
!8348 = distinct !{!8348, !"_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS_11ib_socket_tERKT_"}
!8349 = distinct !{!8349, !8348, !"_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS_11ib_socket_tERKT_: argument 0"}
!8350 = distinct !{!8350, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8351 = distinct !{!8351, !8350, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8352 = distinct !{!8352, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8353 = distinct !{!8353, !8352, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8354 = distinct !{!8354, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clISB_EEDaSI_"}
!8355 = distinct !{!8355, !8354, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clISB_EEDaSI_: argument 0"}
!8356 = distinct !{!8356, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8357 = distinct !{!8357, !8356, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8358 = distinct !{!8358, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8359 = distinct !{!8359, !8358, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8360 = distinct !{!8360, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clIS9_EEDaSI_"}
!8361 = distinct !{!8361, !8360, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clIS9_EEDaSI_: argument 0"}
!8362 = distinct !{!8362, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8363 = distinct !{!8363, !8362, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8364 = distinct !{!8364, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8365 = distinct !{!8365, !8364, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8366 = !{!8347}
!8367 = !{!8349}
!8368 = !{!8349, !8347}
!8369 = !{!8351, !8349, !8347}
!8370 = !{!8353, !8349, !8347}
!8371 = !{!8355}
!8372 = !{!8357, !8355}
!8373 = !{!8359, !8355}
!8374 = !{!8361}
!8375 = !{!8363, !8361}
!8376 = !{!8365, !8361}
!8377 = distinct !{null}
!8378 = distinct !{!8378, !"_ZN12async_simple4coro6detail8LazyBaseIbLb0EE10coAwaitTryEv"}
!8379 = distinct !{!8379, !8378, !"_ZN12async_simple4coro6detail8LazyBaseIbLb0EE10coAwaitTryEv: argument 0"}
!8380 = !{!8379}
!8381 = distinct !{!8381, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clIN7coro_io11ib_socket_tEEEDaSE_"}
!8382 = distinct !{!8382, !8381, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clIN7coro_io11ib_socket_tEEEDaSE_: argument 0"}
!8383 = distinct !{!8383, !"_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS_11ib_socket_tERKT_"}
!8384 = distinct !{!8384, !8383, !"_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS_11ib_socket_tERKT_: argument 0"}
!8385 = distinct !{!8385, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8386 = distinct !{!8386, !8385, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8387 = distinct !{!8387, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8388 = distinct !{!8388, !8387, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8389 = distinct !{!8389, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clINS2_3ssl6streamIRS7_EEEEDaSE_"}
!8390 = distinct !{!8390, !8389, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clINS2_3ssl6streamIRS7_EEEEDaSE_: argument 0"}
!8391 = distinct !{!8391, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8392 = distinct !{!8392, !8391, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8393 = distinct !{!8393, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8394 = distinct !{!8394, !8393, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8395 = distinct !{!8395, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clIS7_EEDaSE_"}
!8396 = distinct !{!8396, !8395, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clIS7_EEDaSE_: argument 0"}
!8397 = distinct !{!8397, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8398 = distinct !{!8398, !8397, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8399 = distinct !{!8399, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8400 = distinct !{!8400, !8399, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8401 = !{!8382}
!8402 = !{!8384}
!8403 = !{!8384, !8382}
!8404 = !{!8386, !8384, !8382}
!8405 = !{!8388, !8384, !8382}
!8406 = !{!8390}
!8407 = !{!8392, !8390}
!8408 = !{!8394, !8390}
!8409 = !{!8396}
!8410 = !{!8398, !8396}
!8411 = !{!8400, !8396}
!8412 = distinct !{null}
!8413 = distinct !{!8413, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8414 = distinct !{!8414, !8413, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8415 = !{!8414}
!8416 = distinct !{null}
!8417 = distinct !{!8417, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorIiSaIiEEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8418 = distinct !{!8418, !8417, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorIiSaIiEEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8419 = !{!8418}
!8420 = distinct !{null}
!8421 = distinct !{!8421, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS9_EEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8422 = distinct !{!8422, !8421, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS9_EEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8423 = !{!8422}
!8424 = distinct !{null}
!8425 = distinct !{!8425, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorI4rectSaIS6_EEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8426 = distinct !{!8426, !8425, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorI4rectSaIS6_EEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8427 = !{!8426}
!8428 = distinct !{null}
!8429 = distinct !{!8429, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIdN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8430 = distinct !{!8430, !8429, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIdN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8431 = !{!8430}
!8432 = distinct !{null}
!8433 = distinct !{!8433, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIvN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8434 = distinct !{!8434, !8433, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIvN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8435 = !{!8434}
!8436 = distinct !{!8436, !275}
!8437 = distinct !{!8437, !275}
!8438 = distinct !{null}
!8439 = distinct !{!8439, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIiN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8440 = distinct !{!8440, !8439, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIiN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8441 = !{!8440}
!8442 = !{!"_ZTSZSt9call_onceIZN7coro_io15io_context_pool4stopEbEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !259, i64 0}
!8443 = !{!8442, !259, i64 0}
!8444 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8445 = distinct !{!8445, !"_ZNSt7promiseIvE10get_futureEv"}
!8446 = distinct !{!8446, !8445, !"_ZNSt7promiseIvE10get_futureEv: argument 0"}
!8447 = !{!327, !327, i64 0}
!8448 = !{!8446}
!8449 = !{!"_ZTSZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_", !332, i64 0}
!8450 = !{!8449, !332, i64 0}
!8451 = distinct !{!8451, !275}
!8452 = distinct !{!8452, !275}
!8453 = distinct !{!8453, !"_ZSt18make_exception_ptrISt12future_errorENSt15__exception_ptr13exception_ptrET_"}
!8454 = distinct !{!8454, !8453, !"_ZSt18make_exception_ptrISt12future_errorENSt15__exception_ptr13exception_ptrET_: argument 0"}
!8455 = !{!8454}
!8456 = distinct !{!8456, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8457 = distinct !{!8457, !8456, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8458 = distinct !{!8458, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!8459 = distinct !{!8459, !8458, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!8460 = !{!8457}
!8461 = !{!8459}
!8462 = !{!592, !591, i64 0}
!8463 = distinct !{!8463, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8464 = distinct !{!8464, !8463, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8465 = !{!2738, !643, i64 0}
!8466 = !{!8464}
!8467 = distinct !{!8467, !275}
!8468 = distinct !{!8468, !2201}
!8469 = distinct !{!8469, !275}
!8470 = distinct !{!8470, !2201}
!8471 = !{!2760, !2759, i64 0}
!8472 = distinct !{null}
!8473 = distinct !{!8473, !275}
!8474 = distinct !{null, null}
!8475 = distinct !{null}
!8476 = !{!2747, !2747, i64 0}
!8477 = !{!"_ZTSSt8functionIFvRN7easylog8record_tEEE", !606, i64 0, !259, i64 24}
!8478 = !{!8477, !259, i64 24}
!8479 = distinct !{!8479, !275}
!8480 = distinct !{!8480, !275}
!8481 = distinct !{!8481, !275}
!8482 = distinct !{!8482, !275}
!8483 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !259, i64 0}
!8484 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !343, i64 0, !8483, i64 8}
!8485 = !{!8484, !8483, i64 8}
!8486 = distinct !{!8486, !275}
!8487 = distinct !{!8487, !275}
!8488 = !{!2784, !303, i64 72}
!8489 = !{!2799, !284, i64 0}
!8490 = !{!2799, !2796, i64 16}
!8491 = !{!2804, !2790, i64 0}
!8492 = distinct !{!8492, !275}
!8493 = distinct !{!8493, !275}
!8494 = distinct !{!8494, !275}
!8495 = distinct !{!8495, !275}
!8496 = distinct !{!8496, !275}
!8497 = !{!2797, !284, i64 96}
!8498 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15BlockIndexEntryE", !284, i64 0, !2768, i64 8}
!8499 = !{!8498, !284, i64 0}
!8500 = !{!8498, !2768, i64 8}
!8501 = !{!2779, !2768, i64 2560}
!8502 = distinct !{!8502, !275}
!8503 = distinct !{!8503, !275}
!8504 = distinct !{!8504, !275}
!8505 = distinct !{!8505, !"_ZN7easylog14localtime_safeEl"}
!8506 = distinct !{!8506, !8505, !"_ZN7easylog14localtime_safeEl: argument 0"}
!8507 = !{!8506}
!8508 = !{!"_ZTS2tm", !256, i64 0, !256, i64 4, !256, i64 8, !256, i64 12, !256, i64 16, !256, i64 20, !256, i64 24, !256, i64 28, !256, i64 32, !284, i64 40, !282, i64 48}
!8509 = !{!8508, !256, i64 0}
!8510 = !{!8508, !256, i64 4}
!8511 = !{!8508, !256, i64 8}
!8512 = !{!8508, !256, i64 12}
!8513 = !{!8508, !256, i64 16}
!8514 = !{!8508, !256, i64 20}
!8515 = distinct !{!8515, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8516 = distinct !{!8516, !8515, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8517 = distinct !{!8517, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8518 = distinct !{!8518, !8517, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8519 = distinct !{!8519, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8520 = distinct !{!8520, !8519, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8521 = distinct !{!8521, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8522 = distinct !{!8522, !8521, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8523 = distinct !{!8523, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8524 = distinct !{!8524, !8523, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8525 = distinct !{!8525, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8526 = distinct !{!8526, !8525, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8527 = !{!8516}
!8528 = !{!8518}
!8529 = !{!8518, !8516}
!8530 = !{!8520}
!8531 = !{!8522}
!8532 = !{!8522, !8520}
!8533 = !{!8524}
!8534 = !{!8526}
!8535 = !{!8526, !8524}
!8536 = distinct !{!8536, !"_ZN7easylog8appender14build_filenameB5cxx11Ei"}
!8537 = distinct !{!8537, !8536, !"_ZN7easylog8appender14build_filenameB5cxx11Ei: argument 0"}
!8538 = distinct !{!8538, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8539 = distinct !{!8539, !8538, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8540 = !{!8537}
!8541 = !{!8539}
!8542 = distinct !{!8542, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8543 = distinct !{!8543, !8542, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8544 = !{!8543}
!8545 = distinct !{!8545, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8546 = distinct !{!8546, !8545, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8547 = !{!8546}
!8548 = distinct !{!8548, !275}
!8549 = distinct !{!8549, !275}
!8550 = distinct !{!8550, !275}
!8551 = distinct !{!8551, !275}
!8552 = !{!2829, !256, i64 8}
!8553 = !{!2829, !256, i64 12}
!8554 = distinct !{!8554, !"_ZN4asio10io_context12get_executorEv"}
!8555 = distinct !{!8555, !8554, !"_ZN4asio10io_context12get_executorEv: argument 0"}
!8556 = distinct !{!8556, !"_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE14init_acceptorsESt17basic_string_viewIcSt11char_traitsIcEEtENKUlvE_clEv"}
!8557 = distinct !{!8557, !8556, !"_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE14init_acceptorsESt17basic_string_viewIcSt11char_traitsIcEEtENKUlvE_clEv: argument 0"}
!8558 = !{!8555}
!8559 = !{!8557}
!8560 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8561 = distinct !{null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8562 = distinct !{null, null, null, null, null, null}
!8563 = distinct !{!8563, !275}
!8564 = distinct !{!8564, !275}
!8565 = distinct !{!8565, !275}
!8566 = distinct !{null, null, null, null, null, null, null, null, null}
!8567 = distinct !{!8567, !275}
!8568 = distinct !{!8568, !275}
!8569 = !{!"branch_weights", i32 -1320871959, i32 1320871959}
!8570 = distinct !{!8570, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code"}
!8571 = distinct !{!8571, !8570, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code: argument 0"}
!8572 = distinct !{!8572, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!8573 = distinct !{!8573, !8572, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!8574 = distinct !{!8574, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!8575 = distinct !{!8575, !8574, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!8576 = distinct !{!8576, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!8577 = distinct !{!8577, !8576, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!8578 = distinct !{!8578, !"_ZNSt7__cxx119to_stringEi"}
!8579 = distinct !{!8579, !8578, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!8580 = distinct !{!8580, !"_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code"}
!8581 = distinct !{!8581, !8580, !"_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code: argument 0"}
!8582 = !{!8571}
!8583 = !{!8573}
!8584 = !{!8575}
!8585 = !{!8575, !8573, !8571}
!8586 = !{!8573, !8571}
!8587 = !{!8577, !8573, !8571}
!8588 = !{!8579}
!8589 = !{!8581}
!8590 = distinct !{!8590, !"_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8591 = distinct !{!8591, !8590, !"_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8592 = distinct !{!8592, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!8593 = distinct !{!8593, !8592, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!8594 = distinct !{!8594, !8592, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!8595 = distinct !{!8595, !"LVerDomain"}
!8596 = distinct !{!8596, !8595}
!8597 = distinct !{!8597, !8595}
!8598 = distinct !{!8598, !275, !387, !388}
!8599 = distinct !{!8599, !275, !387}
!8600 = distinct !{null, null}
!8601 = !{!8591}
!8602 = !{!8593}
!8603 = !{!8594}
!8604 = !{!8594, !8596}
!8605 = !{!8593, !8597}
!8606 = distinct !{!8606, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code"}
!8607 = distinct !{!8607, !8606, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code: argument 0"}
!8608 = distinct !{!8608, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!8609 = distinct !{!8609, !8608, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!8610 = distinct !{!8610, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!8611 = distinct !{!8611, !8610, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!8612 = distinct !{!8612, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!8613 = distinct !{!8613, !8612, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!8614 = !{!8607}
!8615 = !{!8609}
!8616 = !{!8611}
!8617 = !{!8611, !8609, !8607}
!8618 = !{!8609, !8607}
!8619 = !{!8613, !8609, !8607}
!8620 = distinct !{!8620, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev"}
!8621 = distinct !{!8621, !8620, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev: argument 0"}
!8622 = distinct !{!8622, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev"}
!8623 = distinct !{!8623, !8622, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev: argument 0"}
!8624 = distinct !{!8624, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev"}
!8625 = distinct !{!8625, !8624, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev: argument 0"}
!8626 = distinct !{!8626, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev"}
!8627 = distinct !{!8627, !8626, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev: argument 0"}
!8628 = !{!8621}
!8629 = !{!8623}
!8630 = !{!8625}
!8631 = !{!8627}
!8632 = distinct !{!8632, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_"}
!8633 = distinct !{!8633, !8632, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8634 = distinct !{!8634, !"_ZNSt7promiseIvE10get_futureEv"}
!8635 = distinct !{!8635, !8634, !"_ZNSt7promiseIvE10get_futureEv: argument 0"}
!8636 = !{!8633}
!8637 = !{!8635}
!8638 = distinct !{null, null}
!8639 = distinct !{!8639, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!8640 = distinct !{!8640, !8639, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!8641 = distinct !{!8641, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_"}
!8642 = distinct !{!8642, !8641, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_: argument 0"}
!8643 = distinct !{!8643, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_"}
!8644 = distinct !{!8644, !8643, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_: argument 0"}
!8645 = distinct !{!8645, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE"}
!8646 = distinct !{!8646, !8645, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE: argument 0"}
!8647 = distinct !{!8647, !"_ZN4asio6detail12bind_handlerIZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_EENS0_7binder0INSt5decayIT_E4typeEEEOS7_"}
!8648 = distinct !{!8648, !8647, !"_ZN4asio6detail12bind_handlerIZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_EENS0_7binder0INSt5decayIT_E4typeEEEOS7_: argument 0"}
!8649 = !{!8640}
!8650 = !{!8646, !8644, !8642}
!8651 = !{!8648}
!8652 = distinct !{!8652, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!8653 = distinct !{!8653, !8652, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!8654 = distinct !{!8654, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!8655 = distinct !{!8655, !8654, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!8656 = distinct !{!8656, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8657 = distinct !{!8657, !8656, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8658 = distinct !{!8658, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8659 = distinct !{!8659, !8658, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8660 = distinct !{!8660, !"_ZNK4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEE14local_endpointERSt10error_code"}
!8661 = distinct !{!8661, !8660, !"_ZNK4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEE14local_endpointERSt10error_code: argument 0"}
!8662 = distinct !{!8662, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8663 = distinct !{!8663, !8662, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8664 = !{!8653}
!8665 = !{!8655}
!8666 = !{!8657}
!8667 = !{!8659}
!8668 = !{!8661}
!8669 = !{!8663}
!8670 = distinct !{!8670, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE17get_return_objectEv"}
!8671 = distinct !{!8671, !8670, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE17get_return_objectEv: argument 0"}
!8672 = distinct !{!8672, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE39get_return_object_on_allocation_failureEv"}
!8673 = distinct !{!8673, !8672, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE39get_return_object_on_allocation_failureEv: argument 0"}
!8674 = !{!8671}
!8675 = !{!8673}
!8676 = !{ptr @_ZN7coro_io20server_acceptor_baseD2Ev}
!8677 = !{!"_ZTSZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_", !2845, i64 0}
!8678 = !{!8677, !2845, i64 0}
!8679 = !{!"_ZTSN4asio6detail13socket_option7booleanILi1ELi2EEE", !256, i64 0}
!8680 = !{!8679, !256, i64 0}
!8681 = !{!"_ZTSN4asio6detail13socket_option7booleanILi41ELi26EEE", !256, i64 0}
!8682 = !{!8681, !256, i64 0}
!8683 = distinct !{!8683, !"_ZZZN7coro_io12async_acceptERN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEERNS0_19basic_stream_socketIS3_S4_EEENKUlOT_E_clIZZNS_8async_ioISt10error_codeSC_S5_EEN12async_simple4coro4LazyISA_EET0_RT1_ENKUlSA_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSA_EUlDpOT_E_EEDaSB_ENKUlvE_clEv"}
!8684 = distinct !{!8684, !8683, !"_ZZZN7coro_io12async_acceptERN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEERNS0_19basic_stream_socketIS3_S4_EEENKUlOT_E_clIZZNS_8async_ioISt10error_codeSC_S5_EEN12async_simple4coro4LazyISA_EET0_RT1_ENKUlSA_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSA_EUlDpOT_E_EEDaSB_ENKUlvE_clEv: argument 0"}
!8685 = !{!8684}
!8686 = distinct !{null}
!8687 = !{!2864, !2385, i64 80}
!8688 = distinct !{!8688, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!8689 = distinct !{!8689, !8688, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!8690 = distinct !{!8690, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!8691 = distinct !{!8691, !8690, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!8692 = distinct !{!8692, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!8693 = distinct !{!8693, !8692, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!8694 = !{!8689}
!8695 = !{!8691}
!8696 = !{!8693, !8691, !8689}
!8697 = !{!8691, !8689}
!8698 = distinct !{null, null, null, null}
!8699 = distinct !{null}
!8700 = !{!2871, !929, i64 0}
!8701 = distinct !{!8701, !275}
!8702 = distinct !{ptr @_ZZZN7coro_io8async_ioISt10error_codeZNS_12async_acceptERN4asio21basic_socket_acceptorINS2_2ip3tcpENS2_15any_io_executorEEERNS2_19basic_stream_socketIS5_S6_EEEUlOT_E_S7_EEN12async_simple4coro4LazyISC_EET0_RT1_ENUlSC_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaSC_ENUlNSF_10SignalTypeEPNSF_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8703 = !{!"_ZTSZN7coro_io8async_ioISt10error_codeZNS_12async_acceptERN4asio21basic_socket_acceptorINS2_2ip3tcpENS2_15any_io_executorEEERNS2_19basic_stream_socketIS5_S6_EEEUlOT_E_S7_EEN12async_simple4coro4LazyISC_EET0_RT1_EUlSC_E0_", !1113, i64 0, !2856, i64 8, !916, i64 16, !1114, i64 24, !1115, i64 32, !259, i64 40}
!8704 = !{!8703, !1113, i64 0}
!8705 = !{!8703, !1114, i64 24}
!8706 = !{!8703, !2856, i64 8}
!8707 = !{!8703, !916, i64 16}
!8708 = !{!8703, !1115, i64 32}
!8709 = !{!8703, !259, i64 40}
!8710 = distinct !{!8710, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12async_acceptERN4asio21basic_socket_acceptorINSB_2ip3tcpENSB_15any_io_executorEEERNSB_19basic_stream_socketISE_SF_EEEUlOT_E_SG_EENS0_4coro4LazyISL_EET0_RT1_ENUlSL_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSL_EUlS3_S5_E_EENSt8__detail9_MakeUniqISL_E15__single_objectEDpOT0_"}
end_hunk_1
