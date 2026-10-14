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
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !8505

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
  %1 = alloca %struct.tm, align 8                 ; 11 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !411, !noalias !8508
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !alias.scope !8508
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
  %2 = sdiv i32 %i.av, 10000
  %3 = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  %i.bu = sdiv i32 %i.av, 100000
  %.lhs.trunc.i11 = trunc nsw i32 %i.bu to i16
  %4 = srem i16 %.lhs.trunc.i11, 10
  %i.bv = sext i16 %4 to i64
  %i.bw = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !279
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i8 %i.bx, ptr %i.by, align 4, !tbaa !279
  %5 = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  store i8 46, ptr %5, align 1, !tbaa !279
  %6 = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 58, ptr %i.bz, align 16, !tbaa !279
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load <2 x i32>, ptr %1, align 8, !tbaa !280
  %9 = load i32, ptr %i.ca, align 4, !tbaa !8510
  %10 = load i32, ptr %1, align 8, !tbaa !8511
  %11 = sdiv i32 %10, 10
  %12 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %13 = insertelement <4 x i32> %12, i32 %2, i64 0
  %14 = insertelement <4 x i32> %13, i32 %11, i64 2
  %15 = srem <4 x i32> %14, splat (i32 10)        ; 4 uses
  %16 = extractelement <4 x i32> %15, i64 0
  %17 = sext i32 %16 to i64
  %i.cb = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %17
  %18 = load i8, ptr %i.cb, align 1, !tbaa !279
  store i8 %18, ptr %3, align 1, !tbaa !279
  %19 = extractelement <4 x i32> %15, i64 1
  %i.cc = sext i32 %19 to i64
  %i.cd = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !279
  store i8 %i.ce, ptr %6, align 2, !tbaa !279
  %20 = extractelement <4 x i32> %15, i64 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !279
  store i8 %23, ptr %7, align 1, !tbaa !279
  %24 = extractelement <4 x i32> %15, i64 3
  %i.cf = sext i32 %24 to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !279
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !279
  %i.cj = sdiv i32 %9, 10
  %i.ck = srem i32 %i.cj, 10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !279
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !279
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 58, ptr %i.cp, align 1, !tbaa !279
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !8512 ; 2 uses
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
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8513 ; 2 uses
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
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8514
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
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8515
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
  call void @llvm.experimental.noalias.scope.decl(metadata !8528)
  call void @llvm.experimental.noalias.scope.decl(metadata !8529)
  %i.r = load ptr, ptr %5, align 8, !tbaa !286, !noalias !8530 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !290, !noalias !8530 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !289, !alias.scope !8530
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
!8310 = distinct !{null, null, null, null, null, null, null, null}
!8311 = distinct !{!8311, i1 false, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!8312 = distinct !{!8312, !8311, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!8313 = distinct !{!8313, i1 false, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!8314 = distinct !{!8314, !8313, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!8315 = distinct !{!8315, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!8316 = distinct !{!8316, !8315, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!8317 = distinct !{null}
!8318 = !{!8312}
!8319 = !{!8314}
!8320 = !{!8316, !8314, !8312}
!8321 = !{!8314, !8312}
!8322 = distinct !{null}
!8323 = distinct !{null, null, null, null, null, null}
!8324 = distinct !{null, null}
!8325 = distinct !{null}
!8326 = !{!2700, !929, i64 0}
!8327 = !{!"_ZTSZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt10error_codeZNS_15async_handshakeIPN4asio3ssl6streamIRNS7_19basic_stream_socketINS7_2ip3tcpENS7_15any_io_executorEEEEEEENS1_4coro4LazyIS5_EEOT_NS8_11stream_base14handshake_typeEEUlSM_E_SG_EENSJ_ISL_EET0_RT1_EUlvE_SD_EclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvSL_EUlvE_", !2703, i64 0, !1144, i64 8}
!8328 = !{!8327, !2703, i64 0}
!8329 = distinct !{!8329, i1 false, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_"}
!8330 = distinct !{!8330, !8329, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_: argument 0"}
!8331 = distinct !{!8331, i1 false, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!8332 = distinct !{!8332, !8331, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!8333 = distinct !{!8333, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE"}
!8334 = distinct !{!8334, !8333, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE: argument 0"}
!8335 = !{!8330}
!8336 = !{!8332}
!8337 = !{!8334, !8332, !8330}
!8338 = !{!8332, !8330}
!8339 = !{!2707, !929, i64 0}
!8340 = distinct !{!8340, i1 false, !"_ZNK4asio2ip7address9to_stringB5cxx11Ev"}
!8341 = distinct !{!8341, !8340, !"_ZNK4asio2ip7address9to_stringB5cxx11Ev: argument 0"}
!8342 = !{!8341}
!8343 = distinct !{null}
!8344 = distinct !{!8344, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIbLb0EE10coAwaitTryEv"}
!8345 = distinct !{!8345, !8344, !"_ZN12async_simple4coro6detail8LazyBaseIbLb0EE10coAwaitTryEv: argument 0"}
!8346 = !{!8345}
!8347 = distinct !{!8347, i1 false, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clIN7coro_io11ib_socket_tEEEDaSI_"}
!8348 = distinct !{!8348, !8347, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clIN7coro_io11ib_socket_tEEEDaSI_: argument 0"}
!8349 = distinct !{!8349, i1 false, !"_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS_11ib_socket_tERKT_"}
!8350 = distinct !{!8350, !8349, !"_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS_11ib_socket_tERKT_: argument 0"}
!8351 = distinct !{!8351, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8352 = distinct !{!8352, !8351, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8353 = distinct !{!8353, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8354 = distinct !{!8354, !8353, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8355 = distinct !{!8355, i1 false, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clISB_EEDaSI_"}
!8356 = distinct !{!8356, !8355, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clISB_EEDaSI_: argument 0"}
!8357 = distinct !{!8357, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8358 = distinct !{!8358, !8357, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8359 = distinct !{!8359, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8360 = distinct !{!8360, !8359, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8361 = distinct !{!8361, i1 false, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clIS9_EEDaSI_"}
!8362 = distinct !{!8362, !8361, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio3ssl6streamIRNS2_19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS6_14basic_endpointIS7_EESaISQ_EEENKUlSI_E_clIS9_EEDaSI_: argument 0"}
!8363 = distinct !{!8363, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8364 = distinct !{!8364, !8363, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8365 = distinct !{!8365, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8366 = distinct !{!8366, !8365, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8367 = !{!8348}
!8368 = !{!8350}
!8369 = !{!8350, !8348}
!8370 = !{!8352, !8350, !8348}
!8371 = !{!8354, !8350, !8348}
!8372 = !{!8356}
!8373 = !{!8358, !8356}
!8374 = !{!8360, !8356}
!8375 = !{!8362}
!8376 = !{!8364, !8362}
!8377 = !{!8366, !8362}
!8378 = distinct !{null}
!8379 = distinct !{!8379, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIbLb0EE10coAwaitTryEv"}
!8380 = distinct !{!8380, !8379, !"_ZN12async_simple4coro6detail8LazyBaseIbLb0EE10coAwaitTryEv: argument 0"}
!8381 = !{!8380}
!8382 = distinct !{!8382, i1 false, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clIN7coro_io11ib_socket_tEEEDaSE_"}
!8383 = distinct !{!8383, !8382, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clIN7coro_io11ib_socket_tEEEDaSE_: argument 0"}
!8384 = distinct !{!8384, i1 false, !"_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS_11ib_socket_tERKT_"}
!8385 = distinct !{!8385, !8384, !"_ZN7coro_io13async_connectISt6vectorIN4asio2ip14basic_endpointINS3_3tcpEEESaIS6_EEEEN12async_simple4coro4LazyISt10error_codeEERNS_11ib_socket_tERKT_: argument 0"}
!8386 = distinct !{!8386, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8387 = distinct !{!8387, !8386, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8388 = distinct !{!8388, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8389 = distinct !{!8389, !8388, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8390 = distinct !{!8390, i1 false, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clINS2_3ssl6streamIRS7_EEEEDaSE_"}
!8391 = distinct !{!8391, !8390, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clINS2_3ssl6streamIRS7_EEEEDaSE_: argument 0"}
!8392 = distinct !{!8392, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8393 = distinct !{!8393, !8392, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8394 = distinct !{!8394, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8395 = distinct !{!8395, !8394, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8396 = distinct !{!8396, i1 false, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clIS7_EEDaSE_"}
!8397 = distinct !{!8397, !8396, !"_ZZN8coro_rpc15coro_rpc_client12connect_implIN4asio19basic_stream_socketINS2_2ip3tcpENS2_15any_io_executorEEEEEN12async_simple4coro4LazyINS_8err_codeEEERT_NSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPSt6vectorINS4_14basic_endpointIS5_EESaISM_EEENKUlSE_E_clIS7_EEDaSE_: argument 0"}
!8398 = distinct !{!8398, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv"}
!8399 = distinct !{!8399, !8398, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE17get_return_objectEv: argument 0"}
!8400 = distinct !{!8400, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv"}
!8401 = distinct !{!8401, !8400, !"_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE39get_return_object_on_allocation_failureEv: argument 0"}
!8402 = !{!8383}
!8403 = !{!8385}
!8404 = !{!8385, !8383}
!8405 = !{!8387, !8385, !8383}
!8406 = !{!8389, !8385, !8383}
!8407 = !{!8391}
!8408 = !{!8393, !8391}
!8409 = !{!8395, !8391}
!8410 = !{!8397}
!8411 = !{!8399, !8397}
!8412 = !{!8401, !8397}
!8413 = distinct !{null}
!8414 = distinct !{!8414, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8415 = distinct !{!8415, !8414, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8416 = !{!8415}
!8417 = distinct !{null}
!8418 = distinct !{!8418, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorIiSaIiEEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8419 = distinct !{!8419, !8418, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorIiSaIiEEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8420 = !{!8419}
!8421 = distinct !{null}
!8422 = distinct !{!8422, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS9_EEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8423 = distinct !{!8423, !8422, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS9_EEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8424 = !{!8423}
!8425 = distinct !{null}
!8426 = distinct !{!8426, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorI4rectSaIS6_EEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8427 = distinct !{!8427, !8426, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedISt6vectorI4rectSaIS6_EEN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8428 = !{!8427}
!8429 = distinct !{null}
!8430 = distinct !{!8430, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIdN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8431 = distinct !{!8431, !8430, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIdN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8432 = !{!8431}
!8433 = distinct !{null}
!8434 = distinct !{!8434, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIvN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8435 = distinct !{!8435, !8434, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIvN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8436 = !{!8435}
!8437 = distinct !{!8437, !275}
!8438 = distinct !{!8438, !275}
!8439 = distinct !{null}
!8440 = distinct !{!8440, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIiN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv"}
!8441 = distinct !{!8441, !8440, !"_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIiN8coro_rpc9rpc_errorEEELb0EE10coAwaitTryEv: argument 0"}
!8442 = !{!8441}
!8443 = !{!"_ZTSZSt9call_onceIZN7coro_io15io_context_pool4stopEbEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !259, i64 0}
!8444 = !{!8443, !259, i64 0}
!8445 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8446 = distinct !{!8446, i1 false, !"_ZNSt7promiseIvE10get_futureEv"}
!8447 = distinct !{!8447, !8446, !"_ZNSt7promiseIvE10get_futureEv: argument 0"}
!8448 = !{!327, !327, i64 0}
!8449 = !{!8447}
!8450 = !{!"_ZTSZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_", !332, i64 0}
!8451 = !{!8450, !332, i64 0}
!8452 = distinct !{!8452, !275}
!8453 = distinct !{!8453, !275}
!8454 = distinct !{!8454, i1 false, !"_ZSt18make_exception_ptrISt12future_errorENSt15__exception_ptr13exception_ptrET_"}
!8455 = distinct !{!8455, !8454, !"_ZSt18make_exception_ptrISt12future_errorENSt15__exception_ptr13exception_ptrET_: argument 0"}
!8456 = !{!8455}
!8457 = distinct !{!8457, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8458 = distinct !{!8458, !8457, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8459 = distinct !{!8459, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!8460 = distinct !{!8460, !8459, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!8461 = !{!8458}
!8462 = !{!8460}
!8463 = !{!592, !591, i64 0}
!8464 = distinct !{!8464, i1 false, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8465 = distinct !{!8465, !8464, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8466 = !{!2738, !643, i64 0}
!8467 = !{!8465}
!8468 = distinct !{!8468, !275}
!8469 = distinct !{!8469, !2201}
!8470 = distinct !{!8470, !275}
!8471 = distinct !{!8471, !2201}
!8472 = !{!2760, !2759, i64 0}
!8473 = distinct !{null}
!8474 = distinct !{!8474, !275}
!8475 = distinct !{null, null}
!8476 = distinct !{null}
!8477 = !{!2747, !2747, i64 0}
!8478 = !{!"_ZTSSt8functionIFvRN7easylog8record_tEEE", !606, i64 0, !259, i64 24}
!8479 = !{!8478, !259, i64 24}
!8480 = distinct !{!8480, !275}
!8481 = distinct !{!8481, !275}
!8482 = distinct !{!8482, !275}
!8483 = distinct !{!8483, !275}
!8484 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !259, i64 0}
!8485 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !343, i64 0, !8484, i64 8}
!8486 = !{!8485, !8484, i64 8}
!8487 = distinct !{!8487, !275}
!8488 = distinct !{!8488, !275}
!8489 = !{!2784, !303, i64 72}
!8490 = !{!2799, !284, i64 0}
!8491 = !{!2799, !2796, i64 16}
!8492 = !{!2804, !2790, i64 0}
!8493 = distinct !{!8493, !275}
!8494 = distinct !{!8494, !275}
!8495 = distinct !{!8495, !275}
!8496 = distinct !{!8496, !275}
!8497 = distinct !{!8497, !275}
!8498 = !{!2797, !284, i64 96}
!8499 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15BlockIndexEntryE", !284, i64 0, !2768, i64 8}
!8500 = !{!8499, !284, i64 0}
!8501 = !{!8499, !2768, i64 8}
!8502 = !{!2779, !2768, i64 2560}
!8503 = distinct !{!8503, !275}
!8504 = distinct !{!8504, !275}
!8505 = distinct !{!8505, !275}
!8506 = distinct !{!8506, i1 false, !"_ZN7easylog14localtime_safeEl"}
!8507 = distinct !{!8507, !8506, !"_ZN7easylog14localtime_safeEl: argument 0"}
!8508 = !{!8507}
!8509 = !{!"_ZTS2tm", !256, i64 0, !256, i64 4, !256, i64 8, !256, i64 12, !256, i64 16, !256, i64 20, !256, i64 24, !256, i64 28, !256, i64 32, !284, i64 40, !282, i64 48}
!8510 = !{!8509, !256, i64 4}
!8511 = !{!8509, !256, i64 0}
!8512 = !{!8509, !256, i64 8}
!8513 = !{!8509, !256, i64 12}
!8514 = !{!8509, !256, i64 16}
!8515 = !{!8509, !256, i64 20}
!8516 = distinct !{!8516, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8517 = distinct !{!8517, !8516, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8518 = distinct !{!8518, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8519 = distinct !{!8519, !8518, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8520 = distinct !{!8520, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8521 = distinct !{!8521, !8520, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8522 = distinct !{!8522, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8523 = distinct !{!8523, !8522, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8524 = distinct !{!8524, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8525 = distinct !{!8525, !8524, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8526 = distinct !{!8526, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8527 = distinct !{!8527, !8526, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8528 = !{!8517}
!8529 = !{!8519}
!8530 = !{!8519, !8517}
!8531 = !{!8521}
!8532 = !{!8523}
!8533 = !{!8523, !8521}
!8534 = !{!8525}
!8535 = !{!8527}
!8536 = !{!8527, !8525}
!8537 = distinct !{!8537, i1 false, !"_ZN7easylog8appender14build_filenameB5cxx11Ei"}
!8538 = distinct !{!8538, !8537, !"_ZN7easylog8appender14build_filenameB5cxx11Ei: argument 0"}
!8539 = distinct !{!8539, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8540 = distinct !{!8540, !8539, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8541 = !{!8538}
!8542 = !{!8540}
!8543 = distinct !{!8543, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8544 = distinct !{!8544, !8543, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8545 = !{!8544}
!8546 = distinct !{!8546, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8547 = distinct !{!8547, !8546, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8548 = !{!8547}
!8549 = distinct !{!8549, !275}
!8550 = distinct !{!8550, !275}
!8551 = distinct !{!8551, !275}
!8552 = distinct !{!8552, !275}
!8553 = !{!2829, !256, i64 8}
!8554 = !{!2829, !256, i64 12}
!8555 = distinct !{!8555, i1 false, !"_ZN4asio10io_context12get_executorEv"}
!8556 = distinct !{!8556, !8555, !"_ZN4asio10io_context12get_executorEv: argument 0"}
!8557 = distinct !{!8557, i1 false, !"_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE14init_acceptorsESt17basic_string_viewIcSt11char_traitsIcEEtENKUlvE_clEv"}
!8558 = distinct !{!8558, !8557, !"_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE14init_acceptorsESt17basic_string_viewIcSt11char_traitsIcEEtENKUlvE_clEv: argument 0"}
!8559 = !{!8556}
!8560 = !{!8558}
!8561 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8562 = distinct !{null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8563 = distinct !{null, null, null, null, null, null}
!8564 = distinct !{!8564, !275}
!8565 = distinct !{!8565, !275}
!8566 = distinct !{!8566, !275}
!8567 = distinct !{null, null, null, null, null, null, null, null, null}
!8568 = distinct !{!8568, !275}
!8569 = distinct !{!8569, !275}
!8570 = !{!"branch_weights", i32 -1320871959, i32 1320871959}
!8571 = distinct !{!8571, i1 false, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code"}
!8572 = distinct !{!8572, !8571, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code: argument 0"}
!8573 = distinct !{!8573, i1 false, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!8574 = distinct !{!8574, !8573, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!8575 = distinct !{!8575, i1 false, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!8576 = distinct !{!8576, !8575, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!8577 = distinct !{!8577, i1 false, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!8578 = distinct !{!8578, !8577, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!8579 = distinct !{!8579, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!8580 = distinct !{!8580, !8579, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!8581 = distinct !{!8581, i1 false, !"_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code"}
!8582 = distinct !{!8582, !8581, !"_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code: argument 0"}
!8583 = !{!8572}
!8584 = !{!8574}
!8585 = !{!8576}
!8586 = !{!8576, !8574, !8572}
!8587 = !{!8574, !8572}
!8588 = !{!8578, !8574, !8572}
!8589 = !{!8580}
!8590 = !{!8582}
!8591 = distinct !{!8591, i1 false, !"_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8592 = distinct !{!8592, !8591, !"_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8593 = distinct !{!8593, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!8594 = distinct !{!8594, !8593, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!8595 = distinct !{!8595, !8593, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!8596 = distinct !{!8596, !275, !387, !388}
!8597 = distinct !{!8597, !275, !388, !387}
!8598 = distinct !{null, null}
!8599 = !{!8592}
!8600 = !{!8594}
!8601 = !{!8595}
!8602 = distinct !{!8602, i1 false, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code"}
!8603 = distinct !{!8603, !8602, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code: argument 0"}
!8604 = distinct !{!8604, i1 false, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!8605 = distinct !{!8605, !8604, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!8606 = distinct !{!8606, i1 false, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!8607 = distinct !{!8607, !8606, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!8608 = distinct !{!8608, i1 false, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!8609 = distinct !{!8609, !8608, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!8610 = !{!8603}
!8611 = !{!8605}
!8612 = !{!8607}
!8613 = !{!8607, !8605, !8603}
!8614 = !{!8605, !8603}
!8615 = !{!8609, !8605, !8603}
!8616 = distinct !{!8616, i1 false, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev"}
!8617 = distinct !{!8617, !8616, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev: argument 0"}
!8618 = distinct !{!8618, i1 false, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev"}
!8619 = distinct !{!8619, !8618, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev: argument 0"}
!8620 = distinct !{!8620, i1 false, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev"}
!8621 = distinct !{!8621, !8620, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev: argument 0"}
!8622 = distinct !{!8622, i1 false, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev"}
!8623 = distinct !{!8623, !8622, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev: argument 0"}
!8624 = !{!8617}
!8625 = !{!8619}
!8626 = !{!8621}
!8627 = !{!8623}
!8628 = distinct !{!8628, i1 false, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_"}
!8629 = distinct !{!8629, !8628, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8630 = distinct !{!8630, i1 false, !"_ZNSt7promiseIvE10get_futureEv"}
!8631 = distinct !{!8631, !8630, !"_ZNSt7promiseIvE10get_futureEv: argument 0"}
!8632 = !{!8629}
!8633 = !{!8631}
!8634 = distinct !{null, null}
!8635 = distinct !{!8635, i1 false, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!8636 = distinct !{!8636, !8635, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!8637 = distinct !{!8637, i1 false, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_"}
!8638 = distinct !{!8638, !8637, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_: argument 0"}
!8639 = distinct !{!8639, i1 false, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_"}
!8640 = distinct !{!8640, !8639, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_: argument 0"}
!8641 = distinct !{!8641, i1 false, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE"}
!8642 = distinct !{!8642, !8641, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE: argument 0"}
!8643 = distinct !{!8643, i1 false, !"_ZN4asio6detail12bind_handlerIZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_EENS0_7binder0INSt5decayIT_E4typeEEEOS7_"}
!8644 = distinct !{!8644, !8643, !"_ZN4asio6detail12bind_handlerIZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_EENS0_7binder0INSt5decayIT_E4typeEEEOS7_: argument 0"}
!8645 = !{!8636}
!8646 = !{!8642, !8640, !8638}
!8647 = !{!8644}
!8648 = distinct !{!8648, i1 false, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!8649 = distinct !{!8649, !8648, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!8650 = distinct !{!8650, i1 false, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!8651 = distinct !{!8651, !8650, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!8652 = distinct !{!8652, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8653 = distinct !{!8653, !8652, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8654 = distinct !{!8654, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8655 = distinct !{!8655, !8654, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8656 = distinct !{!8656, i1 false, !"_ZNK4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEE14local_endpointERSt10error_code"}
!8657 = distinct !{!8657, !8656, !"_ZNK4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEE14local_endpointERSt10error_code: argument 0"}
!8658 = distinct !{!8658, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8659 = distinct !{!8659, !8658, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8660 = !{!8649}
!8661 = !{!8651}
!8662 = !{!8653}
!8663 = !{!8655}
!8664 = !{!8657}
!8665 = !{!8659}
!8666 = distinct !{!8666, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE17get_return_objectEv"}
!8667 = distinct !{!8667, !8666, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE17get_return_objectEv: argument 0"}
!8668 = distinct !{!8668, i1 false, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE39get_return_object_on_allocation_failureEv"}
!8669 = distinct !{!8669, !8668, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE39get_return_object_on_allocation_failureEv: argument 0"}
!8670 = !{!8667}
!8671 = !{!8669}
!8672 = !{ptr @_ZN7coro_io20server_acceptor_baseD2Ev}
!8673 = !{!"_ZTSZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_", !2845, i64 0}
!8674 = !{!8673, !2845, i64 0}
!8675 = !{!"_ZTSN4asio6detail13socket_option7booleanILi1ELi2EEE", !256, i64 0}
!8676 = !{!8675, !256, i64 0}
!8677 = !{!"_ZTSN4asio6detail13socket_option7booleanILi41ELi26EEE", !256, i64 0}
!8678 = !{!8677, !256, i64 0}
!8679 = distinct !{!8679, i1 false, !"_ZZZN7coro_io12async_acceptERN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEERNS0_19basic_stream_socketIS3_S4_EEENKUlOT_E_clIZZNS_8async_ioISt10error_codeSC_S5_EEN12async_simple4coro4LazyISA_EET0_RT1_ENKUlSA_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSA_EUlDpOT_E_EEDaSB_ENKUlvE_clEv"}
!8680 = distinct !{!8680, !8679, !"_ZZZN7coro_io12async_acceptERN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEERNS0_19basic_stream_socketIS3_S4_EEENKUlOT_E_clIZZNS_8async_ioISt10error_codeSC_S5_EEN12async_simple4coro4LazyISA_EET0_RT1_ENKUlSA_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSA_EUlDpOT_E_EEDaSB_ENKUlvE_clEv: argument 0"}
!8681 = !{!8680}
!8682 = distinct !{null}
!8683 = !{!2864, !2385, i64 80}
!8684 = distinct !{!8684, i1 false, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!8685 = distinct !{!8685, !8684, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!8686 = distinct !{!8686, i1 false, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!8687 = distinct !{!8687, !8686, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!8688 = distinct !{!8688, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!8689 = distinct !{!8689, !8688, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!8690 = !{!8685}
!8691 = !{!8687}
!8692 = !{!8689, !8687, !8685}
!8693 = !{!8687, !8685}
!8694 = distinct !{null, null, null, null}
!8695 = distinct !{null}
!8696 = !{!2871, !929, i64 0}
!8697 = distinct !{!8697, !275}
!8698 = distinct !{ptr @_ZZZN7coro_io8async_ioISt10error_codeZNS_12async_acceptERN4asio21basic_socket_acceptorINS2_2ip3tcpENS2_15any_io_executorEEERNS2_19basic_stream_socketIS5_S6_EEEUlOT_E_S7_EEN12async_simple4coro4LazyISC_EET0_RT1_ENUlSC_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaSC_ENUlNSF_10SignalTypeEPNSF_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8699 = !{!"_ZTSZN7coro_io8async_ioISt10error_codeZNS_12async_acceptERN4asio21basic_socket_acceptorINS2_2ip3tcpENS2_15any_io_executorEEERNS2_19basic_stream_socketIS5_S6_EEEUlOT_E_S7_EEN12async_simple4coro4LazyISC_EET0_RT1_EUlSC_E0_", !1113, i64 0, !2856, i64 8, !916, i64 16, !1114, i64 24, !1115, i64 32, !259, i64 40}
!8700 = !{!8699, !1113, i64 0}
!8701 = !{!8699, !1114, i64 24}
!8702 = !{!8699, !2856, i64 8}
!8703 = !{!8699, !916, i64 16}
!8704 = !{!8699, !1115, i64 32}
!8705 = !{!8699, !259, i64 40}
!8706 = distinct !{!8706, i1 false, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12async_acceptERN4asio21basic_socket_acceptorINSB_2ip3tcpENSB_15any_io_executorEEERNSB_19basic_stream_socketISE_SF_EEEUlOT_E_SG_EENS0_4coro4LazyISL_EET0_RT1_ENUlSL_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSL_EUlS3_S5_E_EENSt8__detail9_MakeUniqISL_E15__single_objectEDpOT0_"}
!8707 = distinct !{!8707, !8706, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12async_acceptERN4asio21basic_socket_acceptorINSB_2ip3tcpENSB_15any_io_executorEEERNSB_19basic_stream_socketISE_SF_EEEUlOT_E_SG_EENS0_4coro4LazyISL_EET0_RT1_ENUlSL_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSL_EUlS3_S5_E_EENSt8__detail9_MakeUniqISL_E15__single_objectEDpOT0_: argument 0"}
!8708 = !{!8707}
!8709 = distinct !{!8709, i1 false, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt10error_codeZNS2_12async_acceptERNS_21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEEERNS_19basic_stream_socketIS7_S8_EEEUlOT_E_S9_EEN12async_simple4coro4LazyISE_EET0_RT1_ENUlSE_E0_clINS2_21callback_awaitor_baseIS4_NS2_16callback_awaitorIS4_EEE15awaitor_handlerEEEDaSE_EUlvE_EENS0_7binder0INSt5decayISE_E4typeEEESF_"}
!8710 = distinct !{!8710, !8709, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt10error_codeZNS2_12async_acceptERNS_21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEEERNS_19basic_stream_socketIS7_S8_EEEUlOT_E_S9_EEN12async_simple4coro4LazyISE_EET0_RT1_ENUlSE_E0_clINS2_21callback_awaitor_baseIS4_NS2_16callback_awaitorIS4_EEE15awaitor_handlerEEEDaSE_EUlvE_EENS0_7binder0INSt5decayISE_E4typeEEESF_: argument 0"}
!8711 = !{!8710}
end_hunk_1
